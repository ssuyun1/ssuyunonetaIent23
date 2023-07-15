*&---------------------------------------------------------------------*
*& Report zot_21_p_open_sql
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_open_sql.

*DATA gv_banfn TYPE eban-banfn.
*
*DATA gs_eban TYPE eban.
*
*DATA gt_eban TYPE TABLE OF eban.

*DATA gs_main TYPE zot_098_t_main.
*SELECT-OPTIONS : s_id FOR gs_main-id.

START-OF-SELECTION.

*  SELECT SINGLE banfn
*  FROM eban
*  WHERE bsart EQ 'NB'
*  INTO @gv_banfn.
*
*  SELECT SINGLE loekz
*  FROM eban
*  WHERE banfn = '0010000023'
*    AND bnfpo = '0020'
*  INTO @DATA(lv_loekz).
*  IF sy-subrc = 0.
*    WRITE :/ lv_loekz.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.

*  SELECT SINGLE loekz
*    FROM eban
*    WHERE banfn = '0010000023'
*    AND bnfpo = '0020'
*    INTO @lv_loekz.
*
*  IF sy-subrc = 0.
*    WRITE :/ lv_loekz.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.

*  SELECT SINGLE id
*  FROM zot_098_t_main
*  WHERE age GT 10
*  INTO @DATA(lv_id).



*  SELECT SINGLE banfn, bsart
*  FROM eban
*  WHERE banfn = '0010000023'
*  AND bnfpo = '0020'
*  INTO CORRESPONDING FIELDS OF @gs_eban.
*
*  IF sy-subrc = 0.
*    WRITE :/ gs_eban-banfn, gs_eban-bsart.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.



*  SELECT SINGLE banfn, bsart
*  FROM eban
*  WHERE banfn = '0010000023'
*  AND bnfpo = '0020'
*  INTO @DATA(ls_eban).
*
*  IF sy-subrc = 0.
**    WRITE :/ ls_eban-banfn, ls_eban-bsart.
*    cl_demo_output=>display( ls_eban ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.


*  SELECT *
*  FROM eban
*  WHERE banfn = '0010000023'
**  AND bnfpo = '20
*  INTO TABLE @gt_eban.
*
*  SELECT banfn,
*         bnfpo,
*         bsart
*  FROM eban
*  WHERE banfn = '0010000023'
*    AND bnfpo = '00020'
*  INTO TABLE @DATA(lt_eban).
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_eban ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.

*  DATA lr_id TYPE RANGE OF zot_098_t_main-id.
*  APPEND VALUE #( sign = 'I ' option = 'EQ' low = 001 ) TO lr_id.
*  APPEND VALUE #( sign = 'I ' option = 'EQ' low = 016 ) TO lr_id.

*  APPEND VALUE #( sign = 'I ' option = 'BT' low = 001 high = 016 ) TO lr_id.

*  SELECT id,
*         name
*  FROM zot_098_t_main
*  WHERE id IN @lr_id
*  INTO TABLE @DATA(lt_main).
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_main ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.



*  SELECT id,
*         name
*  FROM zot_098_t_main
*  WHERE id IN @s_id
*  INTO TABLE @DATA(lt_main).
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_main ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.


*  SELECT id,
*         name
*    FROM zot_098_t_main
*    WHERE id GT 10
*    INTO TABLE @DATA(lt_main)
*    UP TO 1 ROWS.
*  IF sy-subrc = 0.
**    DATA(ls_main) = VALUE #( lt_main[  1 ] OPTIONAL ).
**    DATA(lv_id) = VALUE #( lt_main[  1 ]-id OPTIONAL ).
**    cl_demo_output=>display( ls_main ).
**    WRITE :/ lv_id.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.


*  SELECT mara~matnr,
*         makt~maktx
*  FROM mara
*  INNER JOIN makt ON makt~matnr = mara~matnr
*                 AND makt~spras = @sy-langu
*  WHERE mara~matnr = '000000000000000074'
**    AND makt~spras = @sy-langu
*  INTO TABLE @DATA(lt_mara).
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_mara ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.



*  SELECT mara~matnr,
*         makt1~maktx AS makt_1,
*         makt2~maktx AS makt_2
*  FROM mara
*  LEFT JOIN makt AS makt1 ON makt1~matnr = mara~matnr
*                 AND makt1~spras = @sy-langu
*  LEFT JOIN makt AS makt2 ON makt2~matnr = mara~matnr
*                 AND makt2~spras = 'T'
*  WHERE mara~matnr = '000000000000000074'
*  INTO TABLE @DATA(lt_mara).
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_mara ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.

*
*  DATA(lv_mtart) = CONV mara-mtart( 'HALB' ).

*  SELECT mara~matnr,
*         makt1~maktx
*  FROM mara
*  INNER JOIN makt AS makt1 ON makt1~matnr = mara~matnr
*                          AND makt1~spras = @sy-langu
*  WHERE mara~matnr = '000000000000000074'
*    AND mara~mtart = @lv_mtart
*  INTO TABLE @DATA(lt_mara).
*
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_mara ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.

*  SELECT ekko~ebeln,
*         ekpo~ebelp
*    FROM ekko
*    INNER JOIN ekpo ON ekpo~ebeln = ekko~ebeln
*    WHERE ekko~loekz = @space
*    INTO TABLE @DATA(lt_purchasing).
*  IF sy-subrc = 0.
*    cl_demo_output=>display( lt_purchasing ).
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.


*  DELETE FROM zot_098_t_main WHERE id = 020
*                               AND save_date = '20240101'.
*  COMMIT WORK AND WAIT.
*  IF sy-subrc = 0.
*    WRITE :/ 'Success'.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.

*  UPDATE zot_098_t_main SET name = 'Ahmet'
*  WHERE id = 003
*    AND save_date = '20230107'.
*  COMMIT WORK AND WAIT.
*  IF sy-subrc = 0.
*    WRITE :/ 'Success'.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.


*  SELECT id,
*         save_date,
*         name,
*         surname,
*         age
*     FROM zot_098_t_main
*     WHERE id = 003
*     INTO TABLE @DATA(lt_main_in_db).

*  DATA lt_main_modify TYPE TABLE OF zot_098_t_main.
*
*  APPEND VALUE #( id        = 098
*                  save_date = sy-datum
*                  name      = 'Tarık'
*                  surname   = 'Tekin'
*                  age       =  65 ) TO lt_main_modify.
*
*  APPEND VALUE #( id        = 005
*                  save_date = sy-datum
*                  name      = 'Hakan'
*                  surname   = 'KPR'
*                  age       =  55 ) TO lt_main_modify.
*
*  MODIFY zot_098_t_main FROM TABLE lt_main_modify.
*  IF sy-subrc = 0.
*    COMMIT WORK AND WAIT.
*    WRITE :/ 'Success'.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.




*  SELECT a~matnr,
*         b~maktx
*    FROM mara AS a
*    INNER JOIN makt AS b ON b~matnr = a~matnr
*                        AND b~spras = @sy-langu
*    WHERE a~matnr =  '000000000000000074'
*    INTO TABLE @DATA(lt_mara).
*  IF sy-subrc = 0.
*    WRITE :/ 'Success'.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.





  TYPES : BEGIN OF ty_creation,
            number      TYPE i,
            create_date TYPE datum,
          END OF ty_creation,
          tt_creation TYPE TABLE OF ty_creation.
  DATA lt_creation TYPE tt_creation.


  TYPES : BEGIN OF ty_material,
            number TYPE i,
            matnr  TYPE mara-matnr,
            matkl  TYPE mara-matkl,
          END OF ty_material,
          tt_material TYPE TABLE OF ty_material.
  DATA ls_material TYPE ty_material.
  DATA lt_material TYPE tt_material.

  APPEND VALUE #(  number = 1
                   create_date = '20230101' ) TO lt_creation.
  APPEND VALUE #(  number = 2
                   create_date = '20240101' ) TO lt_creation.
  APPEND VALUE #(  number = 3
                   create_date = '20250101' ) TO lt_creation.
  APPEND VALUE #(  number = 4
                   create_date = '20260101' ) TO lt_creation.

  ls_material-number = 1.
  ls_material-matnr = '000000000000000074'.
  ls_material-matkl = 'L003'.
  APPEND ls_material TO lt_material.
  CLEAR ls_material.

  APPEND VALUE #( number = 2
                  matnr  = '000000000000000075'
                  matkl  = 'L004'
                  ) TO lt_material.

  lt_material = VALUE #( BASE lt_material ( number = 3
                                            matnr = '000000000000000076'
                                            matkl = 'L005'
                                          ) ).

  INSERT VALUE #( number = 4
                  matnr = '000000000000000077'
                  matkl = 'L007'
                  ) INTO TABLE lt_material.

*  SELECT SUM( number ) AS total
*  FROM @lt_material AS lt
*  WHERE number NE @space
*  INTO @DATA(lv_sum).
*
*  SELECT MAX( number ) AS max
*  FROM @lt_material AS lt
*  WHERE number NE @space
*  INTO @DATA(lv_max).

*  LOOP AT lt_material ASSIGNING FIELD-SYMBOL(<ls_main>).
*    <ls_main>-number = 5.
*  ENDLOOP.
*
*  LOOP AT lt_material REFERENCE INTO DATA(ls_ref_main).
*    ls_ref_main->number = 6.
*  ENDLOOP.

*  SORT lt_material ASCENDING BY number.
*  SORT lt_material DESCENDING BY number.
*  DELETE lt_material WHERE number = 4.

*  DATA lv_counter TYPE i.
*  DO 10 TIMES.
*    lv_counter += 1.
*    APPEND VALUE #( number = lv_counter
*                    matnr  = 'A' && lv_counter
*                    matkl  = 'L' && lv_counter
*                   ) TO lt_material.
*
*  ENDDO.

  SORT lt_creation ASCENDING BY number.
  LOOP AT lt_material INTO ls_material.
    READ TABLE lt_creation INTO DATA(ls_creation) WITH KEY number = ls_material-number BINARY SEARCH.
    IF sy-subrc = 0.
      WRITE :/ ls_creation-number, ls_material-matnr, ls_creation-create_date.
    ENDIF.
  ENDLOOP.

*  IF lines( lt_material ) > 0.
*    cl_demo_output=>display( lt_material ).
*    WRITE : lv_max.
*  ELSE.
*    WRITE :/ 'Error'.
*  ENDIF.
