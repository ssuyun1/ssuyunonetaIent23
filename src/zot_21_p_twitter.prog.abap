*&---------------------------------------------------------------------*
*& Report zot_21_p_twitter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_twitter.
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text_001.

  PARAMETERS : p_t_id  TYPE i OBLIGATORY,
               p_tweet TYPE c LENGTH 500 OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS : p_t_at  RADIOBUTTON GROUP gr1,
               p_t_deg RADIOBUTTON GROUP gr1,
               p_t_sil RADIOBUTTON GROUP gr1,
               p_t_gos RADIOBUTTON GROUP gr1.
SELECTION-SCREEN  END OF BLOCK b2.

DATA : ls_tweet TYPE zot_21_t_ttable,
       lt_tweet TYPE TABLE OF zot_21_t_ttable.


START-OF-SELECTION.

  IF p_t_at = 'X'.

    TRY.
        APPEND VALUE #( id = p_t_id
                        tweet = p_tweet
                        ) TO lt_tweet.
        INSERT zot_21_t_ttable FROM TABLE lt_tweet.
        cl_demo_output=>display( ' Tweet atıldı.').
      CATCH cx_sy_open_sql_db.
        cl_demo_output=>display( 'Farklı bir id giriniz.' ).
    ENDTRY.

  ELSEIF p_t_deg = 'X'.
    ls_tweet = VALUE #(  id = p_t_id
                        tweet = p_tweet ).

    MODIFY zot_21_t_ttable FROM ls_tweet.
    COMMIT WORK AND WAIT.
    IF sy-subrc = 0.
      cl_demo_output=>display( ' Tweet değiştirildi.' ).

    ENDIF.

  ELSEIF    p_t_sil = 'X'.
    DELETE FROM zot_21_t_ttable WHERE id = p_t_id.
    COMMIT WORK AND WAIT.
    IF sy-subrc = 0.
      cl_demo_output=>display( 'Silindi').
    ELSE.
      cl_demo_output=>display( 'Silinirken hata oluştu').
    ENDIF.

  ELSEIF p_t_gos = 'X'.
    SELECT id , tweet
    FROM zot_21_t_ttable
    INTO TABLE @DATA(lt_tweets).
    cl_demo_output=>display( lt_tweets ).

  ENDIF.
