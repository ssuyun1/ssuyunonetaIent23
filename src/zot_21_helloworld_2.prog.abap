*&---------------------------------------------------------------------*
*& Report zot_21_helloworld_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_helloworld_2.


DATA : a , b , c TYPE i.

 a = '81'.
 b = '12'.
 c = a + b .

 write c .
 c = a - b .
 WRITE c.
