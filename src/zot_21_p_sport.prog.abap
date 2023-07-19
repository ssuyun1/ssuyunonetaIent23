*&---------------------------------------------------------------------*
*& Report zot_21_p_sport
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_sport.
TYPES : BEGIN OF lty_pouch ,
          no        TYPE i,
          name      TYPE c LENGTH 15,
          counTRy   TYPE c LENGTH 2,
          pouch_num TYPE c LENGTH 15,
        END OF lty_pouch.

TYPES: BEGIN OF lty_groups ,
         name    TYPE  c LENGTH 15,
         counTRy TYPE c LENGTH 2,
       END OF lty_groups.

DATA : lt_pouch1 TYPE TABLE OF lty_pouch,
       lt_pouch2 TYPE TABLE OF lty_pouch,
       lt_pouch3 TYPE TABLE OF lty_pouch,
       lt_pouch4 TYPE TABLE OF lty_pouch,

       ls_pouch  TYPE lty_pouch.

DATA : lt_pouchA TYPE TABLE OF lty_groups,
       lt_pouchB TYPE TABLE OF lty_groups,
       lt_pouchC TYPE TABLE OF lty_groups,
       lt_pouchD TYPE TABLE OF lty_groups,
       lt_dongu  TYPE TABLE OF lty_groups.


lt_pouch1 = VALUE #( BASE lt_pouch1 ( no  = 1
                                       name = 'Liverpool'
                                       country = 'EN'
                                       pouch_num = 1 )
                                       (  no  = 2
                                       name = 'Bayern Münih'
                                       country = 'DE'
                                       pouch_num = 1  )
                                       (  no  = 3
                                       name = 'Inter'
                                       country = 'IT'
                                       pouch_num = 1 )
                                       ( no  = 4
                                       name = 'PSG'
                                       country = 'FR'
                                       pouch_num = 1 )


  )     .
lt_pouch2 = VALUE #( BASE lt_pouch2  ( no  = 1
                                     name = 'Manchester City'
                                     country = 'EN'
                                     pouch_num = 2 )
                                     ( no  = 2
                                     name = 'PSV'
                                     country = 'NE'
                                     pouch_num = 3 )
                                     ( no  = 7
                                     name = 'Porto'
                                     country = 'PO'
                                     pouch_num = 2 )
                                     ( no  = 4
                                     name = 'Real Madrid'
                                     country = 'ES'
                                     pouch_num = 2 ) ) .



lt_pouch3 = VALUE #( BASE lt_pouch3 (  no  = 1
                                     name = 'Dortmund'
                                     country = 'DE'
                                     pouch_num = 3 )
                                     ( no  = 2
                                     name = 'Galatasaray'
                                     country = 'TR'
                                     pouch_num = 3 )
                                     ( no  = 3
                                     name = 'Morsilyo'
                                     country = 'FR'
                                     pouch_num = 3 )
                                     ( no  = 4
                                     name = 'Ajax'
                                     country = 'NE'
                                     pouch_num = 3 ) ) .
lt_pouch4 = VALUE #( BASE lt_pouch4   ( no  = 1
                                     name = 'AEK'
                                     country = 'GR'
                                     pouch_num = 4 )
                                     (   no  = 2
                                     name = 'Roma'
                                     country = 'IT'
                                     pouch_num = 4 )
                                     (  no  = 3
                                     name = 'StaBükreş'
                                     country = 'RO'
                                     pouch_num = 4 )
                                     (  no  = 4
                                     name = 'Atletico Madrid'
                                     country = 'ES'
                                     pouch_num = 4 ) ).






DATA : lv_index TYPE i VALUE 4.

WHILE lv_index  > 0 .
  DATA(lv_random_num1) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                     min  = 1
                                                     max  = 4 )->get_next( ).
  DATA(lv_random_num2) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                     min  = 1
                                                     max  = 4 )->get_next( ).
  DATA(lv_random_num3) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                     min  = 1
                                                     max  = 4 )->get_next( ).
  DATA(lv_random_num4) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                     min  = 1
                                                     max  = 4 )->get_next( ).
  IF lv_index = 4 .


    READ TABLE lt_pouch1 INTO DATA(ls_read_a) WITH KEY no = lv_random_num1.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read_a-name
                      country = ls_read_a-country ) TO  lt_pouchA .

    ENDIF.

    READ TABLE lt_pouch2 INTO DATA(ls_read2_a) WITH KEY no = lv_random_num2. "?
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read2_a-name
                      country = ls_read2_A-country ) TO  lt_pouchA .
    ENDIF.

    READ TABLE lt_pouch3 INTO DATA(ls_read3_a) WITH KEY no = lv_random_num3.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read3_A-name
                      country = ls_read3_a-country ) TO  lt_pouchA .
    ENDIF.
    READ TABLE lt_pouch4 INTO DATA(ls_read4_A) WITH KEY no = lv_random_num4.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read4_A-name
                      country = ls_read4_A-country ) TO  lt_pouchA .
    ENDIF.





  ELSEIF lv_index = 3 .

*  DATA(lv_random_num1) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num2) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num3) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num4) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).

    READ TABLE lt_pouch1 INTO DATA(ls_read_b) WITH KEY no = lv_random_num1.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read_b-name
                      country = ls_read_B-country ) TO  lt_pouchB .

    ENDIF.

    READ TABLE lt_pouch2 INTO DATA(ls_read2_B) WITH KEY no = lv_random_num2. "?
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read2_B-name
                      country = ls_read2_B-country ) TO  lt_pouchB .
    ENDIF.

    READ TABLE lt_pouch3 INTO DATA(ls_read3_B) WITH KEY no = lv_random_num3.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read3_B-name
                      country = ls_read3_B-country ) TO lt_pouchB .
    ENDIF.
    READ TABLE lt_pouch4 INTO DATA(ls_read4_b) WITH KEY no = lv_random_num4.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read4_B-name
                      country = ls_read4_B-country ) TO  lt_pouchB .
    ENDIF.

  ELSEIF lv_index = 2 .

*  DATA(lv_random_num1) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num2) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num3) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num4) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).

    READ TABLE lt_pouch1 INTO DATA(ls_read_c) WITH KEY no = lv_random_num1.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read_c-name
                      country = ls_read_C-country ) TO lt_pouchC .

    ENDIF.

    READ TABLE lt_pouch2 INTO DATA(ls_read2_c) WITH KEY no = lv_random_num2. "?
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read2_C-name
                      country = ls_read2_C-country ) TO  lt_pouchC .
    ENDIF.

    READ TABLE lt_pouch3 INTO DATA(ls_read3_C) WITH KEY no = lv_random_num3.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read3_C-name
                      country = ls_read3_C-country ) TO  lt_pouchC .
    ENDIF.
    READ TABLE lt_pouch4 INTO DATA(ls_read4_C) WITH KEY no = lv_random_num4.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read4_C-name
                      country = ls_read4_C-country ) TO  lt_pouchC .
    ENDIF.
  ELSEIF lv_index = 1 .

*  DATA(lv_random_num1) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num2) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num3) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).
*                                                     DATA(lv_random_num4) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
*                                                    min  = 1
*                                                    max  = 4 )->get_next( ).

    READ TABLE lt_pouch1 INTO DATA(ls_read_d) WITH KEY no = lv_random_num1.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read_D-name
                      country = ls_read_D-country ) TO  lt_pouchD.

    ENDIF.

    READ TABLE lt_pouch2 INTO DATA(ls_read2_D) WITH KEY no = lv_random_num2. "?
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read2_D-name
                      country = ls_read2_D-country ) TO  lt_pouchD .
    ENDIF.

    READ TABLE lt_pouch3 INTO DATA(ls_read3_D) WITH KEY no = lv_random_num3.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read3_D-name
                      country = ls_read3_D-country ) TO  lt_pouchD .
    ENDIF.
    READ TABLE lt_pouch4 INTO DATA(ls_read4_D) WITH KEY no = lv_random_num4.
    IF sy-subrc = 0 .
      APPEND VALUE #( name = ls_read4_D-name
                      country = ls_read4_D-country ) TO lt_pouchD .
    ENDIF.

  ENDIF.

  lv_index -= 1 .
ENDWHILE.




cl_demo_output=>write( lt_pouchA ).
cl_demo_output=>write( lt_pouchB ).
cl_demo_output=>write( lt_pouchC ).
cl_demo_output=>write( lt_pouchD ).
cl_demo_output=>display(  ).
