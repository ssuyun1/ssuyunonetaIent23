*&---------------------------------------------------------------------*
*& Report zot_21_data_objects
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_data_objects.

*DATA : gv_ogreci_adi(10) TYPE c ,   "redefined
*       gv_ogrenci_soyadi TYPE char12,  " data element
*       gv_tarih          TYPE sy-datum.
*
*
*
*gv_ogreci_adi = 'sena '.
*gv_ogrenci_soyadi = 'süyün'.
*gv_tarih = sy-datum.
*
**   BREAK OTSSUYUN.
*
*
*
*cl_demo_output=>write( gv_ogreci_adi ).
*cl_demo_output=>write( gv_ogrenci_soyadi ).
*cl_demo_output=>write( gv_tarih ).
**   cl_demo_output=>write( 'öğrencinin adı: { gv_ogrenci_adi } , soyadı : {gv_ogrenci_soyadi} '
**    ).     bak tekrar
*
*"tip tanımlaması
*TYPES : gty_char TYPE c LENGTH 50.
*
*DATA : gv_new TYPE gty_char .
*
*"if
*DATA : gv_langu TYPE sy-langu.
*
*gv_langu = sy-langu.
*
*IF gv_langu = 'T'.
*  cl_demo_output=>write( 'merhaba').
*ELSEIF gv_langu EQ 'E' .
*  cl_demo_output=>write( 'hello' ).
*ELSE.
*  cl_demo_output=>write( 'dil bilinmiyor').
*ENDIF.
*
*
*"case
*
*CASE gv_langu.
*  WHEN 'E'.
*    cl_demo_output=>write( 'hello' ).
*  WHEN 'T'.
*    cl_demo_output=>write( 'merhabad' ).
*  WHEN OTHERS.
*    cl_demo_output=>write( 'hello' ).
*ENDCASE.
*
*
*"do
*
*DATA : gv_text1 TYPE char12.
*gv_text1 = 'hello world'.
*
*DATA(gv_text2) = 'HELLO WORLD'. "YUKARDAKİYLE AYNI ŞEY (UZUNLUĞU OTOMATİK ATAR GİRİLEN TEXT NE KADAR UZUNSA)
*DATA(gv_text3) = gv_text1 . " gv_text3 in uzunluğu gv_text1 in uzunluğu yani char 12 olur
*
*DATA(lv_dongu_sayisi) = strlen( gv_text2 ).
*
*DO  lv_dongu_sayisi TIMES.
*
*  cl_demo_output=>write( sy-index ).
*
*ENDDO.
*
*
*"while
*
*WHILE lv_dongu_sayisi > 0.
*  cl_demo_output=>write( sy-index ).
*  lv_dongu_sayisi = lv_dongu_sayisi - 1 .
*
*ENDWHILE.
*
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*
*DATA : lv_num1 TYPE i VALUE 10,
*       lv_num2 TYPE i VALUE 5.
*
*DATA(lv_toplam) = lv_num1 + lv_num2.
*DATA(lv_cıkarma) = lv_num1 - lv_num2.
*DATA(lv_carpma) = lv_num1 * lv_num2.
*DATA(lv_bolme) = lv_num1 / lv_num2.
*
*
*cl_demo_output=>write( |{ lv_num1 } + { lv_num2 } = { lv_toplam }| ).
*cl_demo_output=>write( |{ lv_num1 } - { lv_num2 } = { lv_cıkarma }| ).
*cl_demo_output=>write( |{ lv_num1 } * { lv_num2 } = { lv_carpma }| ).
*cl_demo_output=>write( |{ lv_num1 } / { lv_num2 } = { lv_bolme }| ).
*cl_demo_output=>write( |clear işleminden sönce lv_bölmenin değeri: { lv_bolme }| ).
*
*
*CLEAR lv_bolme.
*
*cl_demo_output=>write( |clear işleminden sonra lv_bölmenin değeri: { lv_bolme }| ).
*
*
*
*
*TRY.
*    lv_bolme = lv_num1 / lv_num2 .
*  CATCH cx_sy_zerodivide.
*    cl_demo_output=>write( |sıfıra bölme işlemi yapılamz| ).
*  CATCH cx_sy_arithmetic_overflow.
*    cl_demo_output=>write( |aritmetik overflow| ).
*ENDTRY.
*
*
*"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*
*"FONKSİYON
*
*DATA : lv_number1 TYPE i VALUE 10,
*       lv_number2 TYPE i VALUE 5,
*       lv_op TYPE c VALUE '+',
*       lv_result TYPE i.
*
*CALL FUNCTION 'ZOT_21_DO_MATH_OPERATIONS'
*
**    EXPORTING"parametreleri göndercez
**
**
**
**"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
**"class methot
**
***    DATA(lo_math_op) = NEW zcl_ot_21_math_opetrations(  ).
**
**
**
**"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*"
*   TYPES : gty_tip TYPE c LENGTH 12.
*
*   TYPES : BEGIN OF gty_komplex,
*           alan1 TYPE c LENGTH 10,
*           alan2 TYPE c LENGTH 12,
*           alan3 TYPE i,
*         END OF gty_komplex.
*
*
*      TYPES : BEGIN OF gty_student,
*           name TYPE c LENGTH 10,
*           age TYPE c LENGTH 12,
*           alan3 TYPE i,
*         END OF gty_komplex.
*
*""""selection screen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"elementary

"elementary data type
"int, float, decimal, char(data element kullanmaya gerek yok)

"data object

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""1
DATA: gv_text  TYPE i,
      gv_text1 TYPE char12,
      gv_date  TYPE sy-datum.


gv_text = 10.

gv_date = sy-datum.

cl_demo_output=>write( gv_date ).

*BREAK-POINT.
*BREAK oozturk.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""2
TYPES: ty_char TYPE c LENGTH 50.

DATA: gv_new TYPE ty_char.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""3
"while
"do
"if
"case

DATA: gv_langu TYPE char1.

gv_langu = sy-langu.


IF gv_langu = 'E'.
  cl_demo_output=>write( 'Hello World' ).
ELSEIF gv_langu EQ 'T'.
  cl_demo_output=>write( 'Merhaba Dünya' ).
ELSE.
  cl_demo_output=>write( 'Başka dil bilmiyorum' ).
ENDIF.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""4
CASE gv_langu.
  WHEN 'E'.
    cl_demo_output=>write( 'Hello World' ).
  WHEN 'T'.
    cl_demo_output=>write( 'Merhaba Dünya' ).
  WHEN OTHERS.
    cl_demo_output=>write( 'Başka dil bilmiyorum' ).
ENDCASE.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""5
DATA: lv_text1 TYPE char12.

lv_text1 = 'Hello World'.

DATA(lv_text2) = 'Hello World'.

lv_text2 = 'Hello Worldddddddddddd'.        "NE OLACAK???

DATA(lv_num) = 10.

DATA(lv_len) = strlen( lv_text2 ).

DO lv_num TIMES.
  DATA(lv_index) = sy-index - 1.
  cl_demo_output=>write( lv_text2 ).
*  cl_demo_output=>write( lv_text2(sy-index) ).
*  cl_demo_output=>write( lv_text2+lv_index(1) ).
ENDDO.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""6
WHILE lv_num > 0.
  lv_num -= 1.
  cl_demo_output=>write( |{ sy-index } { lv_text2 }| ).
ENDWHILE.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""7

DATA: lv_number1 TYPE i,
      lv_number2 TYPE i.

lv_number1 = 10.
lv_number2 = 1.

DATA(lv_toplama) = lv_number1 + lv_number2.
DATA(lv_cikarma) = lv_number1 - lv_number2.
DATA(lv_carpma)  = lv_number1 * lv_number2.
DATA(lv_bolme)   = lv_number1 / lv_number2.

cl_demo_output=>write( |{ lv_number1 }+{ lv_number2 }={ lv_toplama }| ).
cl_demo_output=>write( |{ lv_number1 }-{ lv_number2 }={ lv_cikarma }| ).
cl_demo_output=>write( |{ lv_number1 }*{ lv_number2 }={ lv_carpma }| ).
cl_demo_output=>write( |{ lv_number1 }/{ lv_number2 }={ lv_bolme }| ).


cl_demo_output=>write( |Clear öncesi lv_bolme'nin değeri:{ lv_bolme }| ).
CLEAR lv_bolme.
cl_demo_output=>write( |Clear sonrası lv_bolme'nin değeri:{ lv_bolme }| ).

lv_number2 = 0.

TRY.
    lv_bolme = lv_number1 / lv_number2.
  CATCH cx_sy_zerodivide.
    cl_demo_output=>write( |Sıfıra bölme yapılamaz!| ).
ENDTRY.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""8
DATA: lv_result    TYPE i,
      lv_operation TYPE c.

lv_operation = '*'.

CALL FUNCTION 'ZOT_99_MATH_OPERATIONS'
  EXPORTING
    iv_number1   = lv_number1
    iv_number2   = lv_number2
    iv_operation = lv_operation
  IMPORTING
    ev_result    = lv_result.

cl_demo_output=>write( |Fonksiyon sonucu: { lv_number1 }{ lv_operation }{ lv_number2 }={ lv_result }| ).


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""9
CLEAR lv_result.
lv_number1 = 12.
lv_number2 = 2.

DATA(lo_mat_op) = NEW zcl_ot_99_math_operations( ).

lo_mat_op->calculate_result(
  EXPORTING
    iv_number1   = lv_number1
    iv_number2   = lv_number2
    iv_operation = lv_operation
  IMPORTING
    ev_result    = lv_result
).

cl_demo_output=>write( |Metot sonucu: { lv_number1 }{ lv_operation }{ lv_number2 }={ lv_result }| ).

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""10
"Structure
TYPES: ty_tip TYPE c LENGTH 12.

TYPES: BEGIN OF ty_komplex,
         alan1 TYPE c LENGTH 10,
         alan2 TYPE c LENGTH 12,
         alan3 TYPE i,
       END OF ty_komplex.

DATA: lv_alan1   TYPE ty_tip,
      ls_komplex TYPE ty_komplex,
      lv_alan2   TYPE ty_komplex-alan2,
      lt_komplex TYPE TABLE OF ty_komplex.

lv_alan1 = 'Hello World'.

ls_komplex-alan1 = 'One'.
ls_komplex-alan2 = 'Talent'.
ls_komplex-alan3 = 23.

lt_komplex = VALUE #( ( alan1 = 'Ahmet'  alan2 = 'Ezdeşir' alan3 = 01 )
                      ( alan1 = 'Alper'  alan2 = 'Birinci' alan3 = 02 )
                      ( alan1 = 'Atahan' alan2 = 'Cesur'   alan3 = 03 ) ).

APPEND VALUE #( alan1 = 'Atalak'  alan2 = 'Şendur'  alan3 = 04 ) TO lt_komplex.
APPEND VALUE #( alan1 = 'Berkay'  alan2 = 'Alışkan' alan3 = 05 ) TO lt_komplex.

APPEND ls_komplex TO lt_komplex.

CLEAR ls_komplex.

ls_komplex = VALUE #( alan1 = 'Eren'  alan2 = 'Ünal' alan3 = 06 ).
APPEND ls_komplex TO lt_komplex.

cl_demo_output=>write( ls_komplex ).
cl_demo_output=>write( lt_komplex ).


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""11
*
*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
*
*PARAMETERS : sayi1 TYPE i ,
*            sayi2 TYPE i.
*
*SELECTION-SCREEN END OF BLOCK b1.
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE title2.
*PARAMETERS : toplam RADIOBUTTON GROUP gr1,
*             cıkarma RADIOBUTTON GROUP gr1,
*             carpma RADIOBUTTON GROUP gr1,
*             bolme RADIOBUTTON GROUP gr1.
* SELECTION-SCREEN  END OF BLOCK b2.
* SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE title3.
*
*PARAMETERS : sonuc TYPE i .
*
*
*SELECTION-SCREEN END OF BLOCK b3.
*
*INITIALIZATION.
*  title = 'Sayılar'.
*  title2 = 'İşlemler'.
*  title3 = 'sonuç'.
*


lv_number2 = 0.

TRY.
    lv_bolme = lv_number1 / lv_number2.
  CATCH cx_sy_zerodivide.
    cl_demo_output=>write( |Sıfıra bölme yapılamaz!| ).
ENDTRY.













cl_demo_output=>display(  ).
