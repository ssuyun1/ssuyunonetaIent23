*&---------------------------------------------------------------------*
*& Report zot_21_p_nested
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_21_p_nested.






data(lt_table) = VALUE zot_21_tt_ogr_not( (  ogr_id = '001'
                                    ogr_ad ='Sena Süyün'
                                    ogr_do_tar ='01.03.2001'
                                    ogr_bolum ='Bilgisayar Müh'
                                    ogr_nots =  value zot_21_s_sinif(  1_sinif_nots = value zot_21_s_ders(   ders_1 =  value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90' )
                                                                                                             ders_2 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_3 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                               ders_4 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_5 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  ) )

                                                                         2_sinif_nots = value zot_21_s_ders(   ders_1 =  value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90' )
                                                                                                             ders_2 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_3 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                               ders_4 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_5 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  ) )


                                                                         3_sinif_nots =  value zot_21_s_ders(   ders_1 =  value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90' )
                                                                                                             ders_2 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_3 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                               ders_4 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_5 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  ) )


                                                                      4_sinif_nots =   value zot_21_s_ders(   ders_1 =  value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90' )
                                                                                                             ders_2 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_3 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                               ders_4 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  )
                                                                                                             ders_5 = value zot_21_s_not(  vize_1 = '100'
                                                                                                                                              vize_2 ='90'
                                                                                                                                              final = '10'
                                                                                                                                              butunleme = '90'  ) )  ) ) ) .


 cl_demo_output=>display( lt_table ).
