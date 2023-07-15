*&---------------------------------------------------------------------*
*& Report zot_21_p_alistirma
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_alistirma.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text_001.

  PARAMETERS : p_Pmax   TYPE i  OBLIGATORY,
               p_Pkiril TYPE   i OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.


  DATA : lv_index TYPE i.


  IF p_pmax > 100.
    cl_demo_output=>display( ' P1 girişine 10000 den küçük sayı giriniz. ').


  ELSEIF p_pkiril GT 9 .
    cl_demo_output=>display(  'P2 girişine 9 den küçük sayı giriniz.' ).

  Else .

  DO  .

    lv_index = lv_index + 1 .
    WRITE lv_index .
    IF lv_index LE p_pmax .
      IF lv_index MOD p_pkiril EQ 0 .
        WRITE / .
      ENDIF.
    ELSE.
      EXIT.

    ENDIF.



  ENDDO.
  ENDIF.
