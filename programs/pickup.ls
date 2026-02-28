/PROG  PICKUP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 880;
CREATE		= DATE 26-02-27  TIME 18:21:24;
MODIFIED	= DATE 26-02-27  TIME 18:21:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 1204;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/MN
   1:  !FANUC America Corp. ;
   2:  !ROBOGUIDE Generated This TPP ;
   3:  !Run SimPRO.cf to setup frame and ;
   4:  !This program will be overwritten ;
   5:  UTOOL_NUM[GP1]=1 ;
   6:  UFRAME_NUM[GP1]=0 ;
   7:L P[1] 2000mm/sec FINE    ;
   8:L P[2] 2000mm/sec FINE    ;
   9:L P[3] 2000mm/sec FINE    ;
  10:  ! Pickup ('Part1') From ('Wooden  ;
  11:  !WAIT 0.00 (sec) ;
  12:L P[4] 2000mm/sec FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'U T, 0, 0',
	X =  1945.000  mm,	Y =     0.000  mm,	Z =   876.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'U T, 0, 0',
	X =  1774.420  mm,	Y =   128.000  mm,	Z =   213.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =    90.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'U T, 0, 0',
	X =  1774.420  mm,	Y =   128.000  mm,	Z =  -215.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =    90.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'U T, 0, 0',
	X =  1774.420  mm,	Y =   128.000  mm,	Z =   213.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =    90.000 deg
};
/END
