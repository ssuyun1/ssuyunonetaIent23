*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_21_T_P_MAST.................................*
DATA:  BEGIN OF STATUS_ZOT_21_T_P_MAST               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_21_T_P_MAST               .
CONTROLS: TCTRL_ZOT_21_T_P_MAST
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZOT_21_T_P_MAST               .
TABLES: ZOT_21_T_P_MAST                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
