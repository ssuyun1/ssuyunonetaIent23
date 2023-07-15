*&---------------------------------------------------------------------*
*& Report zot_21_p_alistirma_asal
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_alistirma_asal.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text_001.

  PARAMETERS : p_i_sayi TYPE i  OBLIGATORY,
               p_s_sayi TYPE i OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.




  IF p_i_sayi > 100000.
    cl_demo_output=>display( ' P1 girişine 10000 den küçük sayı giriniz. ').


  ELSEIF p_s_sayi GT 10000 .
    cl_demo_output=>display(  'P2 girişine 9 den küçük sayı giriniz.' ).




  ELSE.
    WRITE 'P1 = ' &&  p_i_sayi && ' (İlk sayı) ' .
    NEW-LINE.
    WRITE 'P2 = ' &&  p_s_sayi && ' (Son sayı) ' .
    NEW-LINE.
    DATA : lv_kont TYPE i,
           lv_sayi TYPE i,
           lv_kalan TYPE p,
           lv_flag  TYPE c.

    lv_sayi = p_i_sayi.
    WHILE lv_sayi le p_s_sayi.
      lv_kont = 2.
      CLEAR lv_flag.
      WHILE lv_kont < lv_sayi.
        lv_kalan =  lv_sayi MOD lv_kont.
        IF lv_kalan = 0.
          lv_flag = 'X'.
          EXIT.
        ENDIF.
        lv_kont = lv_kont + 1.
      ENDWHILE.
      IF lv_flag = ''.
        WRITE : / lv_sayi.

      ENDIF.
      lv_sayi = lv_sayi + 1.
    ENDWHILE.

  ENDIF.
