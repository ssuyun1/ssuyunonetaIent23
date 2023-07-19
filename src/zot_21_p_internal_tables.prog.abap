*&---------------------------------------------------------------------*
*& Report zot_21_p_internal_tables
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_internal_tables.



DATA : lt_materia_1 TYPE TABLE OF zot_00_t_materia.

SELECT *
INTO TABLE lt_materia_1
FROM zot_00_t_materia.


DATA : lt_materia_2 TYPE TABLE OF zot_00_t_materia.

DATA : lt_materia_join TYPE TABLE OF zot_00_t_materia.

lt_materia_2 =  VALUE #( BASE lt_materia_2  (  matkl = 'C'
                                               matnr  = '01'
                                               maktx = 'Çekiç'
                                               menge = 10
                                               meins    = 'ST'     )
                                               ( matkl = 'C'
                                               matnr  = '02'
                                               maktx = 'Pense'
                                               menge = 15
                                               meins    = 'ST' )
                                               ( matkl = 'C'
                                               matnr  = '03'
                                               maktx = 'Çivi'
                                               menge = 10
                                               meins    = 'ST' )
                                               (  matkl = 'C'
                                               matnr  = '04'
                                               maktx = 'Kalem'
                                               menge = 5
                                               meins    = 'ST' )
                                               (  matkl = 'C'
                                               matnr  = '05'
                                               maktx = 'Kağıt'
                                               menge = 5
                                               meins    = 'ST' ) ).

"""""""""""""""""
LOOP AT lt_materia_1 INTO data(ls_materia_1).
  READ TABLE lt_materia_2 INTO DATA(ls_materia_2) WITH KEY meins = ls_materia_1-meins.
  IF sy-subrc = 0 .
    ls_materia_1-menge = ls_materia_1-menge + 10 .
    MODIFY lt_materia_1 FROM ls_materia_1 .
  ENDIF.

ENDLOOP.


""""""""""""""birleştirme

LOOP AT lt_materia_1 INTO DATA(ls_materia_j).
  APPEND  ls_materia_j TO  lt_materia_join .
ENDLOOP.
LOOP AT lt_materia_2 INTO DATA(ls_materia_j2).
  APPEND  ls_materia_j2 TO  lt_materia_join .
ENDLOOP.
"önce zli tablodan çekilenlerle oluşan internal tabloyu materia_joine ekliyorum sonra diğer loopta diğerini ekliyorum
TYPES : BEGIN OF lty_materia_collect,
          matkl TYPE matkl,
          menge TYPE menge_d,
        END OF lty_materia_collect.
DATA : lt_materia_collect TYPE TABLE OF   lty_materia_collect,
       ls_materia_collect TYPE lty_materia_collect.


LOOP AT lt_materia_join INTO DATA(ls_materia_c).
  ls_materia_collect = VALUE #( matkl =  ls_materia_c-matkl
                                menge = ls_materia_c-menge ).

  COLLECT ls_materia_collect INTO    lt_materia_collect .
  CLEAR  ls_materia_collect.


ENDLOOP.

""""""""""""
DELETE lt_materia_join WHERE menge < 10 .

"""""""""""""
SORT lt_materia_join BY menge ASCENDING.
SORT lt_materia_collect BY menge DESCENDING.

""""""""""
cl_demo_output=>write( lt_materia_join ).
cl_demo_output=>write( lt_materia_collect ).
cl_demo_output=>display( ).
