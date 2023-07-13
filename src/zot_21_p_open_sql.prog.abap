*&---------------------------------------------------------------------*
*& Report zot_21_p_open_sql
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_open_sql.

 DATA gv_banfn TYPE eban-banfn.

DATA gs_eban TYPE eban.
data gt_eban TYPE TABLE OF eban.

START-OF-SELECTION.

SELECT SINGLE banfn
FROM eban
WHERE bsart EQ 'NB'
ınto   @gv_banfn.

WRITE : / gv_banfn.
