+================================================
+                                                
+ Vectric machine output configuration file   
+                                                
+================================================
+ AXEL     06/12/2023
+     -Maj 08/02/2024
+     -ajout plateau aspirant 26/03/2024
+================================================

POST_NAME = "STRATO 1015 v3"

FILE_EXTENSION = "PRG"

UNITS = "MM"

+------------------------------------------------
+    Line terminating characters                 
+------------------------------------------------

LINE_ENDING = "[13][10]"

+------------------------------------------------
+    Block numbering                             
+------------------------------------------------

LINE_NUMBER_START     = 0
LINE_NUMBER_INCREMENT = 1
LINE_NUMBER_MAXIMUM = 999999

+================================================
+                                                
+    Formating for variables                     
+                                                
+================================================

VAR LINE_NUMBER = [N|A|N|1.0]
VAR SPINDLE_SPEED = [S|A|S|1.0]
VAR FEED_RATE = [F|C|F|1.1]
VAR X_POSITION = [X|C|X|1.3]
VAR Y_POSITION = [Y|C|Y|1.3]
VAR Z_POSITION = [Z|C|Z|1.3]
VAR ARC_CENTRE_I_INC_POSITION = [I|A|I|1.3]
VAR ARC_CENTRE_J_INC_POSITION = [J|A|J|1.3]
VAR X_HOME_POSITION = [XH|A|X|1.3]
VAR Y_HOME_POSITION = [YH|A|Y|1.3]
VAR Z_HOME_POSITION = [ZH|A|Z|1.3]
VAR ARC_RADIUS = [Radius|A||1.3]

+================================================
+                                                
+    Block definitions for toolpath output       
+                                                
+================================================

+---------------------------------------------------
+  Commands output at the start of the file
+---------------------------------------------------

begin HEADER

"%"
"P1"
"[N] (STRATOCONCEPT III)"
"[N] (MECANUMERIC_CN7000)"
"[N] (Vectric [PRODUCT])"
"[N] (Post-processeur: [POST_NAME])"
"[N] (Dimensions du brut  X=[XLENGTH] Y=[YLENGTH] Z=[ZLENGTH])"
"[N] (Z zéro placé sur : [Z_ORIGIN])"
"[N] (XY zéro placés sur : [XY_ORIGIN])"
"[N] M200"
"[N] T[T]"
"[N] M6"
"[N] M51"
"[N] M202"
"[N] M3 [S]"
"[N] G10"
"[N] G0 [ZH]"
"[N] G0 [XH] [YH]"

+---------------------------------------------------
+  Commands output for rapid moves 
+---------------------------------------------------

begin RAPID_MOVE

"[N] G0 [X] [Y] [Z]"


+---------------------------------------------------
+  Commands output for the first feed rate move
+---------------------------------------------------

begin FIRST_FEED_MOVE

"[N] G1 [X] [Y] [Z] [F]"


+---------------------------------------------------
+  Commands output for feed rate moves
+---------------------------------------------------

begin FEED_MOVE

"[N] [X] [Y] [Z]"

+---------------------------------------------------
+  Commands output for the first clockwise arc move
+---------------------------------------------------

begin FIRST_CW_ARC_MOVE

"[N] G2 [X] [Y] [I] [J] [F]"

+---------------------------------------------------
+  Commands output for clockwise arc  move
+---------------------------------------------------

begin CW_ARC_MOVE

"[N] G2 [X] [Y] [I] [J]"

+---------------------------------------------------
+  Commands output for the first counterclockwise arc move
+---------------------------------------------------

begin FIRST_CCW_ARC_MOVE

"[N] G3 [X] [Y] [I] [J] [F]"

+---------------------------------------------------
+  Commands output for counterclockwise arc  move
+---------------------------------------------------

begin CCW_ARC_MOVE

"[N] G3 [X] [Y] [I] [J]"


+---------------------------------------------------
+  Commands output at toolchange
+---------------------------------------------------

begin TOOLCHANGE

"[N] T[T] M6"
"[N] M51"
"[N] M202"
"[N] M03 [S]"

+---------------------------------------------------
+  Commands output at the end of the file
+---------------------------------------------------

begin FOOTER

"[N] (Footer)"
"[N] G0 [ZH]"
"[N] G0 [XH] [YH]"
"[N] M9"
"[N] M203"
"[N] M201"
"[N] M2"


