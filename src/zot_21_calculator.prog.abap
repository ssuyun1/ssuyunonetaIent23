*&---------------------------------------------------------------------*
*& Report zot_21_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_calculator.
DATA: gv_sonuc TYPE decfloat34 .
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_sayi1 TYPE i OBLIGATORY,
               p_sayi2 TYPE i OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS : p_toplam RADIOBUTTON GROUP gr1,
               p_cikar  RADIOBUTTON GROUP gr1,
               p_carpma RADIOBUTTON GROUP gr1,
               p_bolme  RADIOBUTTON GROUP gr1.
SELECTION-SCREEN  END OF BLOCK b2.


START-OF-SELECTION.

  IF p_toplam = 'X'.
    gv_sonuc = p_sayi1 + p_sayi2.
    cl_demo_output=>write( gv_sonuc ).

  ELSEIF p_cikar = 'X'.
    gv_sonuc = p_sayi1 - p_sayi2 .
    cl_demo_output=>write( gv_sonuc ).
  ELSEIF p_carpma = 'X'.
    gv_sonuc = p_sayi1 * p_sayi2 .
    cl_demo_output=>write( gv_sonuc ).

  ELSEIF p_bolme ='X' AND p_sayi2 = 0 .
    cl_demo_output=>write( |Sıfıra bölme yapılamaz!| ).
  ELSEIF p_bolme = 'X'.
    gv_sonuc = p_sayi1 / p_sayi2 .


    cl_demo_output=>write( gv_sonuc ).


  ENDIF.



  cl_demo_output=>display(  ).


""""""""tek satırla çözüm""""""""""""""""""""""

*  START-OF-SELECTION.
*
*
*cl_demo_output=>display( COND #(
*          WHEN p_tplma EQ 'X' THEN
*            |Islemin Sonucu: { p_sayi1 + p_sayi2 } |
*                      WHEN p_ckrma EQ 'X' THEN
*            |Islemin Sonucu: { p_sayi1 - p_sayi2 } |
*                      WHEN p_carpma EQ 'X' THEN
*            |Islemin Sonucu: { p_sayi1 * p_sayi2 } |
*                                  WHEN ( P_BOL EQ 'X' ) AND ( p_sayi2 EQ 0 ) THEN |Girmiş olduğunuz sayı sıfıra bölünemez|
*                      WHEN p_bol EQ 'X' THEN
*            |Islemin Sonucu: { p_sayi1 / p_sayi2 } |
*
*             ) ).
