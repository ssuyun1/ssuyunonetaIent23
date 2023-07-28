*&---------------------------------------------------------------------*
*& Include zot_21_i_cls
*&---------------------------------------------------------------------*
CLASS lcl_main_controller DEFINITION CREATE PRIVATE FINAL.
  PUBLIC SECTION.
    METHODS : getdata_sat ,
              getdata_sas ,
              display_sat,
              display_grid,
              display_sas,
              display.
ENDCLASS.

*   PRIVATE SECTION.
*    CLASS-DATA:mt_eban_list              TYPE TABLE OF zot_02_s_eban,
*                mt_ekpo_list              TYPE TABLE OF zot_02_s_ekpo.
*


CLASS lcl_main_controller IMPLEMENTATION.
  METHOD getdata_sat.
*    select banfn , bnfpo , bsart , matnr , menge , meins
*    from eban
*    INTO TABLE @DATA(gt_sat)
*    WHERE banfn in @sat_no and bsart in @sat_bel.
    SELECT eban~banfn,
           eban~bnfpo,
           eban~bsart,
           eban~matnr,
           eban~menge,
           eban~meins
    FROM eban
    INNER JOIN ekpo ON ekpo~banfn = eban~banfn AND ekpo~matkl = eban~matkl
    WHERE eban~banfn IN @sat_no AND eban~bsart IN @sat_bel
       INTO TABLE @gt_sat.
    LOOP AT gt_sat ASSIGNING FIELD-SYMBOL(<ls_point>).
      IF <ls_point>-menge > 10 .
        <ls_point>-color = 'C510'.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.




  METHOD getdata_sas.
    SELECT ekpo~ebeln,
          ekpo~ebelp,
          ekpo~matnr,
          ekpo~menge,
          ekpo~meins
   FROM ekpo
   INNER JOIN eban ON eban~banfn = ekpo~banfn AND ekpo~matkl = eban~matkl
   WHERE ekpo~ebeln IN @sas_no AND ekpo~matkl IN @sas_mal
   INTO TABLE @gt_sas.



    LOOP AT gt_sas INTO gs_sas.
      IF gs_sas-menge > 10.
        gs_sas-color = 'C510'.
      ENDIF.
      MODIFY gt_sas FROM gs_sas.
    ENDLOOP.

  ENDMETHOD.
  METHOD display_sat.
    IF gt_sat IS INITIAL.
      MESSAGE 'Veri bulunamadı!' TYPE 'S' DISPLAY LIKE 'E'.
    ELSE.
      CALL SCREEN 0100.
    ENDIF.
  ENDMETHOD.

  METHOD display_sas.
    IF gt_sas IS INITIAL.
      MESSAGE 'Veri bulunamadı!' TYPE 'S' DISPLAY LIKE 'E'.
    ELSE.
      CALL SCREEN 0100.
    ENDIF.
  ENDMETHOD.
  ENDCLASS.
