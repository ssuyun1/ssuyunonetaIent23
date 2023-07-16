*&---------------------------------------------------------------------*
*& Report zot_21_p_zmn
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_zmn.


DATA   lt_zaman TYPE TABLE OF zot_21_t_zmn.
DATA        ls_zaman TYPE zot_21_t_zmn.

SELECT-OPTIONS : s_index FOR ls_zaman-indexi .

START-OF-SELECTION.

  SELECT *
  FROM zot_21_t_zmn
  INTO TABLE lt_zaman
  WHERE indexi IN s_index.


  APPEND VALUE #( indexi        = 1
              bas_tarih = '20230201'
              bas_saat    = '090000'
              bit_tarih   = '20230401'
              bit_saat     =  '080000' ) TO lt_zaman.

  APPEND VALUE #( indexi        = 2
                  bas_tarih = '20230201'
                  bas_saat    = '101010'
                  bit_tarih   = '20250405'
                  bit_saat     =  '111111' ) TO lt_zaman.
  APPEND VALUE #( indexi        = 3
                  bas_tarih = '20230201'
                  bas_saat    = '121212'
                  bit_tarih   = '20240101'
                  bit_saat     =  '181210' ) TO lt_zaman.
  APPEND VALUE #( indexi        = 4
                  bas_tarih = '20230201'
                  bas_saat    = '151315'
                  bit_tarih   = '20230228'
                  bit_saat     =  '151015' ) TO lt_zaman.


  LOOP AT lt_zaman INTO ls_zaman .
    DATA : lv_tarih1    TYPE dats,
           lv_tarih2    TYPE dats,
           lv_zmn1      TYPE tims,
           lv_zmn2      TYPE tims,
           lv_s_yil     TYPE i,
           lv_s_ay      TYPE i,
           lv_s_gun     TYPE i,
           lv_s_saat    TYPE i,
           lv_s_dk      TYPE i,
           lv_s_saniye  TYPE i,
           lv_fark1     TYPE i,
           lv_fark2     TYPE i,
           lv_saat_fark TYPE i.

    lv_tarih1 = ls_zaman-bas_tarih.
    lv_tarih2 = ls_zaman-bit_tarih.
    lv_zmn1 = ls_zaman-bas_saat.
    lv_zmn2 = ls_zaman-bit_saat.
    lv_fark1 = lv_tarih2 - lv_tarih1.
    lv_s_yil = lv_fark1 DIV 365.


    lv_fark2 = lv_fark1 MOD 365.
    lv_s_ay = lv_fark2 DIV 30 .
    lv_s_gun = lv_fark2 MOD 30.
    IF lv_zmn2 > lv_zmn1.

      lv_saat_fark = lv_zmn2 - lv_zmn1 .
    ELSE.
      lv_saat_fark = 86400 + lv_zmn2 - lv_zmn1 .
      lv_s_gun -= 1.
    ENDIF.

    lv_s_saat = lv_saat_fark DIV 3600.
    lv_saat_fark = lv_saat_fark MOD 3600.
    lv_s_dk = lv_saat_fark DIV 60 .
    lv_s_saniye = lv_saat_fark MOD 60 .

WRITE: | { ls_zaman-indexi }. INDEX'E AIT KAYIT; |.
    IF lv_s_yil NE 0.
      WRITE : | { lv_s_yil } YIL| .
    ENDIF.
    IF lv_s_ay NE 0.
      WRITE : | { lv_s_ay } AY| .
    ENDIF.
    IF lv_s_gun NE 0 .
      WRITE : | { lv_s_gun } GÜN| .
    ENDIF.
    IF lv_s_saat NE 0.
      WRITE : | { lv_s_saat } SAAT| .
    ENDIF.
    IF lv_s_dk NE 0 .
      WRITE : | { lv_s_dk } DAKİKA| .
    ENDIF.
    IF lv_s_saniye NE 0 .
      WRITE : | { lv_s_saniye } SANİYE| .
    ENDIF.
    WRITE: /.

  ENDLOOP.

END-OF-SELECTION.
