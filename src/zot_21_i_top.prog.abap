*&---------------------------------------------------------------------*
*& Include zot_21_i_top
*&---------------------------------------------------------------------*
DATA: go_alv    TYPE REF TO cl_salv_table,
      gv_ucomm  TYPE sy-ucomm,
      gv_okcode TYPE sy-ucomm.

TYPES: BEGIN OF gty_sat,
         banfn    TYPE banfn,
         bnfpo    TYPE bnfpo,
         bsart    TYPE bsart,
         matnr    TYPE matnr,
         menge    TYPE menge_d,
         meins    TYPE meins,
         color(4),
       END OF gty_sat,

       BEGIN OF gty_sas,
         ebeln    TYPE ebeln,
         ebelp    TYPE ebelp,
         matnr    TYPE matnr,
         menge    TYPE menge_d,
         meins    TYPE meins,
         color(4),
       END OF gty_sas.





DATA: gs_sat TYPE gty_sat,
      gs_sas TYPE gty_sas,
      gt_sat TYPE TABLE OF gty_sat,
      gt_sas TYPE TABLE OF gty_sas.
