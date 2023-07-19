*&---------------------------------------------------------------------*
*& Include zot_21_i_sel
*&---------------------------------------------------------------------*
TABLES : eban, ekpo.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
  SELECT-OPTIONS : sat_no FOR eban-banfn ,
                   sat_bel FOR eban-bsart.
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  SELECT-OPTIONS : sas_no FOR eban-bnfpo ,
                   sas_mal FOR eban-matkl.
SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
  PARAMETERS: p_sat_b TYPE char1 RADIOBUTTON GROUP gr1,
              p_sas_b TYPE char1 RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b3.
