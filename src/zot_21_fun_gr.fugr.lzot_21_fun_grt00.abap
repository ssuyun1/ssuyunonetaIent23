*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_21_T_P_AILE.................................*
DATA:  BEGIN OF STATUS_ZOT_21_T_P_AILE               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_21_T_P_AILE               .
CONTROLS: TCTRL_ZOT_21_T_P_AILE
            TYPE TABLEVIEW USING SCREEN '0007'.
*...processing: ZOT_21_T_P_ATUR.................................*
DATA:  BEGIN OF STATUS_ZOT_21_T_P_ATUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_21_T_P_ATUR               .
CONTROLS: TCTRL_ZOT_21_T_P_ATUR
            TYPE TABLEVIEW USING SCREEN '0006'.
*...processing: ZOT_21_T_P_ILTSM................................*
DATA:  BEGIN OF STATUS_ZOT_21_T_P_ILTSM              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_21_T_P_ILTSM              .
CONTROLS: TCTRL_ZOT_21_T_P_ILTSM
            TYPE TABLEVIEW USING SCREEN '0004'.
*...processing: ZOT_21_T_P_ITUR.................................*
DATA:  BEGIN OF STATUS_ZOT_21_T_P_ITUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_21_T_P_ITUR               .
CONTROLS: TCTRL_ZOT_21_T_P_ITUR
            TYPE TABLEVIEW USING SCREEN '0002'.
*...processing: ZOT_21_T_P_MAST1................................*
DATA:  BEGIN OF STATUS_ZOT_21_T_P_MAST1              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_21_T_P_MAST1              .
CONTROLS: TCTRL_ZOT_21_T_P_MAST1
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZOT_21_T_P_AILE               .
TABLES: *ZOT_21_T_P_ATUR               .
TABLES: *ZOT_21_T_P_ILTSM              .
TABLES: *ZOT_21_T_P_ITUR               .
TABLES: *ZOT_21_T_P_MAST1              .
TABLES: ZOT_21_T_P_AILE                .
TABLES: ZOT_21_T_P_ATUR                .
TABLES: ZOT_21_T_P_ILTSM               .
TABLES: ZOT_21_T_P_ITUR                .
TABLES: ZOT_21_T_P_MAST1               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
