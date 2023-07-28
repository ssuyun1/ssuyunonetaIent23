*&---------------------------------------------------------------------*
*& Include zot_21_i_sip_sel
*&---------------------------------------------------------------------*
TABLES : vbak , vbap .
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

 PARAMETERS: p_stur TYPE char1 RADIOBUTTON GROUP gr1,
            p_sver TYPE char1 RADIOBUTTON GROUP gr1.

 SELECTION-SCREEN END OF BLOCK b1 .
 SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

 PARAMETERS: p_mal_No TYPE char1 RADIOBUTTON GROUP gr2,
             p_parti TYPE char1 RADIOBUTTON GROUP gr2,
            p_mal_gr TYPE char1 RADIOBUTTON GROUP gr2.

 SELECTION-SCREEN END OF BLOCK b2 .
