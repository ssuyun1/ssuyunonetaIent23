*&---------------------------------------------------------------------*
*& Report zot_21_abap_dictionary
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_abap_dictionary.

*
*TYPES: BEGIN OF lty_personal,
*         id  TYPE zot_21_e_id,
*         ad  TYPE zot_21_e_ad,
*         yas TYPE zot_21_e_yas,
*
*       END OF lty_personal.


       DATA : ls_personal TYPE zot_00_s_personel,
              lt_personal TYPE TABLE OF  zot_00_s_personel.
