*&---------------------------------------------------------------------*
*& Report zot_21_helloworld
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_helloworld.

*WRITE 'hello world'. "comment tırnaktan sonrakiileri commentler


DATA : lv_int  TYPE i,
       lv_int2 TYPE i.

       cl_demo_output=>write_text( 'hello' ).
       cl_demo_output=>display( ).
*       *class ile yazılmış hali.
