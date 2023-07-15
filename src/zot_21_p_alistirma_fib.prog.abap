*&---------------------------------------------------------------------*
*& Report zot_21_p_alistirma_fib
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_alistirma_fib.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text_001.

  PARAMETERS : p_Pmax   TYPE i  OBLIGATORY,
               p_pkiril TYPE i OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.


  DATA :
    lv_a     TYPE i,
    lv_b     TYPE i,
    lv_c     TYPE i,
    lv_sonuc TYPE i.


  IF p_pmax > 100000.
    cl_demo_output=>display( ' P1 girişine 10000 den küçük sayı giriniz. ').


  ELSEIF p_pkiril GT 9 .
    cl_demo_output=>display(  'P2 girişine 9 den küçük sayı giriniz.' ).




  ELSE.

    WRITE 'P1 = ' &&  p_pmax && ' (Max Numara) ' .
    NEW-LINE.
    WRITE 'P2 = ' &&  p_pkiril && ' (Kırılım) ' .
    NEW-LINE.
    lv_a = 0 .
    lv_b = 1 .
    lv_sonuc = 0 .

    DO .
      lv_sonuc = lv_a + lv_b .
      IF lv_sonuc LE p_pmax.
        lv_a = lv_b.
        lv_b = lv_sonuc.



        WRITE lv_sonuc.
        IF sy-index MOD p_pkiril EQ 0 .
          WRITE / .

        ENDIF.
      ELSE .
        EXIT.
      ENDIF.

    ENDDO.






  ENDIF.
