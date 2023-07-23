*&---------------------------------------------------------------------*
*& Report zot_21_p_karsilastirma
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_karsilastirma.
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text_001.

  PARAMETERS : p_deger1 TYPE char6 OBLIGATORY,
               p_deger2 TYPE char6 OBLIGATORY,
               p_deger3 TYPE char6 OBLIGATORY,
               p_deger4 TYPE char6 OBLIGATORY,
               p_deger5 TYPE char6 OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.


DATA: lt_table TYPE TABLE OF char6,
      lv_cont  TYPE char6,
      lv_found TYPE i,
      lv_cikti TYPE char6.
TYPES : BEGIN OF lty_type,
          name TYPE char6,
        END OF lty_type,
        ls_type TYPE lty_type.
DATA : lt_table2 TYPE TABLE OF ls_type .

START-OF-SELECTION.

  APPEND : p_deger1 TO lt_table,
          p_deger2 TO lt_table,
          p_deger3  TO lt_table,
          p_deger4 TO lt_table,
          p_deger5 TO lt_table.

  SORT lt_table .

  LOOP AT lt_table INTO DATA(lv_parametre).

    IF lv_parametre NE p_deger1 AND  lv_parametre CO p_deger1 .
      READ TABLE lt_table2 WITH KEY name = p_deger1 TRANSPORTING NO FIELDS.
      IF sy-subrc NE 0 .
        WRITE / | { lv_parametre } - { p_deger1 }|.
      ENDIF.
      APPEND : lv_parametre TO lt_table2,
               p_deger1 TO lt_table2.

    ELSEIF  lv_parametre NE p_deger2 AND lv_parametre CO p_deger2.

      READ TABLE lt_table2 WITH KEY name = p_deger2 TRANSPORTING NO FIELDS.
      IF sy-subrc NE 0 .
        WRITE / | { lv_parametre } - { p_deger2 }|.
      ENDIF.
      APPEND : lv_parametre TO lt_table2,
               p_deger2 TO lt_table2.

    ELSEIF lv_parametre NE p_deger3 AND lv_parametre CO p_deger3.

      READ TABLE lt_table2 WITH KEY name = p_deger3 TRANSPORTING NO FIELDS.
      IF sy-subrc NE 0 .
        WRITE / | { lv_parametre } - { p_deger3 }|.
      ENDIF.
      APPEND : lv_parametre TO lt_table2,
               p_deger3 TO lt_table2.
    ELSEIF  lv_parametre NE p_deger4 AND lv_parametre CO p_deger4.

      READ TABLE lt_table2 WITH KEY name = p_deger4 TRANSPORTING NO FIELDS.
      IF sy-subrc NE 0 .
        WRITE / | { lv_parametre } - { p_deger4 }|.
      ENDIF.
      APPEND : lv_parametre TO lt_table2,
               p_deger4 TO lt_table2.
    ELSEIF  lv_parametre NE p_deger5 AND lv_parametre CO p_deger5.

      READ TABLE lt_table2 WITH KEY name = p_deger5 TRANSPORTING NO FIELDS.
      IF sy-subrc NE 0 .
        WRITE / | { lv_parametre } - { p_deger5 }|.
      ENDIF.
      APPEND : lv_parametre TO lt_table2,
              p_deger5 TO lt_table2.
    ELSE.
      WRITE /  lv_parametre .
    ENDIF.


  ENDLOOP.
