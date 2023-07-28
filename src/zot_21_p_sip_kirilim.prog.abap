*&---------------------------------------------------------------------*
*& Report zot_21_p_sip_kirilim
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_sip_kirilim.

TABLES : vbak , vbap .
sELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

 PARAMETERS: p_stur TYPE char1 RADIOBUTTON GROUP gr1,
            p_sver TYPE char1 RADIOBUTTON GROUP gr1.

 SELECTION-SCREEN END OF BLOCK b1 .
 SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

 PARAMETERS: p_mal_No TYPE char1 RADIOBUTTON GROUP gr2,
             p_parti TYPE char1 RADIOBUTTON GROUP gr2,
            p_mal_gr TYPE char1 RADIOBUTTON GROUP gr2.

 SELECTION-SCREEN END OF BLOCK b2 .

SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
select-OPTIONS : sip_no FOR VBAK-VBELN ,
                sip_ver FOR VBAK-KUNNR ,
                sip_tur FOR VBAK-AUART ,
                belg_ta FOR VBAK-AUDAT.
  SELECTION-SCREEN END OF BLOCK b3.

 SELECTION-SCREEN BEGIN OF BLOCK b4 WITH FRAME TITLE TEXT-004.
select-OPTIONS : kal_mal FOR VBAP-MATNR ,
                uret_yer FOR VBAP-WERKS ,
                kal_tip FOR VBAP-PSTYV  ,
                mal_grp FOR VBAP-MATKL,
                k_parti for VBAP-CHARG .
  SELECTION-SCREEN END OF BLOCK b4.

*VBAK- VBELN Sipariş No
*VBAK- KUNNR Sipariş Veren
*VBAK- AUART Sipariş Türü
*VBAK- AUDAT Belge Tarihi
*
**
*KALEM
*VBAP- MATNR Malzeme
*VBAP- WERKS Üretim Yeri
*VBAP- PSTYV  Kalem Tipi
*VBAP- MATKL Mal Grubu
*VBAP- CHARG Pari

types : BEGIN OF gty_vbak,
        vbeln type VBELN_VA ,
        kunnr TYPE KUNAG ,
        auart TYPE AUART ,
        audat TYPE AUDAT ,
        END OF gty_vbak,

        BEGIN OF gty_vbap,
        matnr TYPE MATNR ,
        werks TYPE WERKS_EXT ,
        pstyv TYPE PSTYV ,
        matkl TYPE MATKL,
        charg TYPE CHARG_D ,
        END OF GTY_VBAP.



data : gs_vbak TYPE gty_vbak,
       gs_vbap TYPE gty_vbap,
       gt_vbak TYPE TABLE of gty_vbak,
       gt_vbap TYPE TABLE of gty_vbap.
