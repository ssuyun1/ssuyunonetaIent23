*&---------------------------------------------------------------------*
*& Include zot_21_i_sip_top
*&---------------------------------------------------------------------*
DATA: go_alv    TYPE REF TO cl_salv_table,
      gv_ucomm  TYPE sy-ucomm,
      gv_okcode TYPE sy-ucomm.

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
        END OF gty_bas,

        BEGIN OF gty_vbap,
        matnr TYPE MATNR ,
        werks TYPE WERKS_EXT ,
        pstyv TYPE PSTYV ,
        matkl TYPE MATKL,
        charg TYPE CHARG_D ,
        END OF GTY_VBAP.



data : gs_vbak TYPE gty_vbak,
       gs_vban TYPE gty_vbak,
       gt_vbak TYPE TABLE of gty_vbak,
       gt_vban TYPE TABLE of gty_vban.
