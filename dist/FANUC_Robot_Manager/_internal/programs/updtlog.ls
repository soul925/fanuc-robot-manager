26/02/04 17:31:30

Version:  V9.40P/62/None
Build ID: V9.40388       7/5/2024

1A05B-2500-H552
1A05B-2500-H521
1A05B-2500-R796
1A05B-2500-R651
1A05B-2500-R641
1A05B-2500-J500
1A05B-2500-FVRC
1A05B-2500-H632
Z

 ***At the beginning of Auto Update.***

Img.Backup Yes     * must have one ' ' then 'yes' or 'no'
! Next what devices should be backed up:
! Each line needs the word "BackupDevice", then space then 
! the device name with ":"
BackupDevice FR:
BackupDevice FRA:
!BackupDevice RD:
!BackupDevice FR1:
! Next is whether saving the backup (all and image) after 
! auto update or not. Select 'YES' or 'NO' after 
! "AfterBackup" and one space. YES: save, NO: not save.
! When MC: does not have enough capacity, backup is not
! saved even if "AfterBackup YES".
AfterBackup NO
!
! Restore I/O status,  must have one ' ' then 'yes' or 'no'
SetUpIOstat Yes

 ***At Controlled Start.***

F Number: F00000    
VERSION : HandlingTool         
$VERSION: V9.40518     11/14/2025
DATE:     26-FEB-26 17:40 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     981.5KB     981.5KB
PERM        3064.0KB    1494.1KB    1494.0KB
SYSTEM          .0KB       0.0KB       0.0KB
SHADOW      6698.3KB    5470.8KB      32.0KB
PAGE      378878.8KB  281726.0KB  281726.0KB
TEMP      150441.9KB  130103.3KB  110113.5KB
FROM      258095.0KB  223472.0KB

HARDWARE
FROM     256MB
DRAM    1000MB
SRAM       3MB

MEMORY DETAIL (MAIN - TASKS):
TASK        TOTAL     AVAILABLE     LARGEST   REALLOC
   1      146.8KB       115.5KB      68.3KB      1
   2       62.8KB        45.3KB      45.3KB      0
   3       62.8KB        46.1KB      46.1KB      0
   4       62.8KB        46.0KB      43.2KB      0
  33       62.8KB        61.6KB      61.6KB      0
  34       62.8KB        29.0KB      29.0KB      0
  36     1518.8KB      1383.3KB    1382.9KB      0
  37       62.8KB        61.5KB      61.5KB      0
  38     1998.8KB      1060.5KB    1060.2KB      0
  39     4586.5KB      4544.3KB     345.8KB     13
  40       62.8KB        61.9KB      61.9KB      0
  41       62.8KB        35.7KB      35.7KB      0
  42      254.8KB       187.3KB     187.2KB      0
  47       62.8KB        61.9KB      61.9KB      0
  51       62.8KB        61.1KB      61.1KB      0
  52     7998.8KB      6737.8KB    6047.8KB      0
  71       62.8KB        61.7KB      58.2KB      0
  72     3998.8KB      3997.9KB    3997.9KB      0
  73      138.8KB         6.2KB       3.9KB      1
  75       62.8KB        61.9KB      61.9KB      0
  76      126.8KB        68.2KB      67.5KB      0
  77       62.8KB        27.6KB      27.6KB      0
  78      254.8KB       220.8KB     220.8KB      0
  79       62.8KB        61.8KB      61.8KB      0
  99       62.8KB        61.9KB      61.9KB      0
 101       62.8KB        58.8KB      58.8KB      0
 102       94.8KB        93.9KB      93.9KB      0
 103       94.8KB        93.9KB      93.9KB      0
 104       94.8KB        93.9KB      93.9KB      0
 105       94.8KB        93.9KB      93.9KB      0
 106       94.8KB        93.9KB      93.9KB      0
 107       94.8KB        93.9KB      93.9KB      0
 108       94.8KB        19.7KB      19.7KB      0
 109      958.8KB       860.3KB     860.3KB      0
 112     6158.8KB      3578.6KB    3578.6KB      0
 132       62.8KB        61.4KB      61.4KB      0
 136       62.8KB        53.1KB      53.1KB      0
 150       62.8KB        51.9KB      51.9KB      0
 153       62.8KB        60.7KB      60.7KB      0
 159     4094.8KB      3340.1KB    3336.7KB      0
 166       62.8KB        28.9KB      28.9KB      0
 170      446.7KB        94.9KB      17.0KB      6
 171       62.8KB        56.7KB      56.7KB      0
 174       62.8KB        61.3KB      61.3KB      0
 177       62.8KB        49.1KB      49.1KB      0
 182       62.8KB        51.4KB      51.4KB      0
 186       62.8KB        51.9KB      51.9KB      0
 187      254.8KB       113.3KB      31.0KB      3
 188       62.8KB        62.8KB      62.8KB      0
 189       62.8KB        62.8KB      62.8KB      0
 190       62.8KB        62.8KB      62.8KB      0
 191       62.8KB        62.8KB      62.8KB      0
 192       62.8KB        61.9KB      61.9KB      0
 193       62.8KB        62.8KB      62.8KB      0
 198       62.8KB        61.8KB      61.8KB      0
 199       62.8KB        62.8KB      62.8KB      0
 209       62.8KB        61.9KB      61.9KB      0
 214       62.8KB        61.9KB      61.9KB      0
 221       62.8KB        54.1KB      54.1KB      0
 231       62.8KB        28.2KB      28.1KB      0
 232       62.8KB        61.9KB      61.9KB      0
 239       62.8KB        61.6KB      61.6KB      0
 240       62.8KB        52.8KB      52.8KB      0
 256       62.8KB        62.8KB      62.8KB      0
 257       62.8KB        62.8KB      62.8KB      0
 258       62.8KB        62.8KB      62.8KB      0
 259       62.8KB        62.8KB      62.8KB      0
 260       62.8KB        62.8KB      62.8KB      0
 261       62.8KB        62.8KB      62.8KB      0
 262       62.8KB        62.8KB      62.8KB      0
 263       62.8KB        62.8KB      62.8KB      0
 264       62.8KB        62.8KB      62.8KB      0
 265       62.8KB        62.8KB      62.8KB      0
 297      142.8KB        67.7KB      61.1KB      1
 298       62.8KB        61.4KB      61.4KB      0
 301       62.8KB        61.9KB      61.9KB      0
 302       62.8KB        61.9KB      61.9KB      0
 317       62.8KB        61.9KB      61.9KB      0
 322     9618.8KB      8574.5KB    6376.6KB      0
 323       62.8KB        61.9KB      61.9KB      0
 330       62.8KB        61.9KB      61.9KB      0

860 memconfig skipped for virtual.

TEACH PENDANT:
Total -    0.0KB   Current -   0.0KB    Minimum -    0.0KB
 ***At Cold Start.***

ERRALL.LS      Robot Name ROBOT 26-FEB-26 17:40:38  

1" 26-FEB-26 17:40:38 " SYST-042 DEADMAN defeated                         " " SERVO                         00110110" act"
2" 26-FEB-26 17:40:38 " R E S E T                                         " "                               00000000"    "
3" 26-FEB-26 17:40:34 " SYST-026 System normal power up                   " " WARN                          00000000"    "
4" 26-FEB-26 17:40:22 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
5" 26-FEB-26 17:40:22 " SYST-290 Cycle power to use new DCS parameter     " " STOP.G                        00100110"    "
6" 26-FEB-26 17:40:20 " TPIF-218 MED:\00\TEMP\SENDSYSV.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
7" 26-FEB-26 17:40:20 " TPIF-218 MED:\00\TEMP\SENDEVNT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
8" 26-FEB-26 17:40:20 " TPIF-218 MED:\00\TEMP\SENDDATA.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
9" 26-FEB-26 17:40:20 " TPIF-218 MED:\00\TEMP\REQMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
10" 26-FEB-26 17:40:20 " TPIF-218 MED:\00\TEMP\GETDATA.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
11" 26-FEB-26 17:39:58 " VARS-052 Variable SETUP_DATA converted            " " WARN                          00000000"    "
12" 26-FEB-26 17:39:58 " VARS-052 Variable FLOOR_SETUP converted           " " WARN                          00000000"    "
13" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS8 converted             " " WARN                          00000000"    "
14" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS7 converted             " " WARN                          00000000"    "
15" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS6 converted             " " WARN                          00000000"    "
16" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS5 converted             " " WARN                          00000000"    "
17" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS4 converted             " " WARN                          00000000"    "
18" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS3 converted             " " WARN                          00000000"    "
19" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS2 converted             " " WARN                          00000000"    "
20" 26-FEB-26 17:39:58 " VARS-052 Variable COMP_POS1 converted             " " WARN                          00000000"    "
21" 26-FEB-26 17:39:58 " VARS-052 Variable CELL_SETUP converted            " " WARN                          00000000"    "
22" 26-FEB-26 17:39:58 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
23" 26-FEB-26 17:39:58 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
24" 26-FEB-26 17:39:58 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
25" 26-FEB-26 17:39:58 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
26" 26-FEB-26 17:39:56 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
27" 26-FEB-26 17:39:56 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
28" 26-FEB-26 17:39:56 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
29" 26-FEB-26 17:39:56 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
30" 26-FEB-26 17:39:56 " VARS-052 Variable $FMS_GRP converted              " " WARN                          00000000"    "
31" 26-FEB-26 17:39:56 " VARS-052 Variable $DMR_GRP converted              " " WARN                          00000000"    "
32" 26-FEB-26 17:39:56 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
33" 26-FEB-26 17:39:56 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
34" 26-FEB-26 17:39:34 " VARS-052 Variable SETUP_DATA converted            " " WARN                          00000000"    "
35" 26-FEB-26 17:39:34 " VARS-052 Variable FLOOR_SETUP converted           " " WARN                          00000000"    "
36" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS8 converted             " " WARN                          00000000"    "
37" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS7 converted             " " WARN                          00000000"    "
38" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS6 converted             " " WARN                          00000000"    "
39" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS5 converted             " " WARN                          00000000"    "
40" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS4 converted             " " WARN                          00000000"    "
41" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS3 converted             " " WARN                          00000000"    "
42" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS2 converted             " " WARN                          00000000"    "
43" 26-FEB-26 17:39:34 " VARS-052 Variable COMP_POS1 converted             " " WARN                          00000000"    "
44" 26-FEB-26 17:39:34 " VARS-052 Variable CELL_SETUP converted            " " WARN                          00000000"    "
45" 26-FEB-26 17:39:34 " SYST-040 Operation mode AUTO Selected             " " SERVO                         00110110"    "
46" 26-FEB-26 17:39:32 " VARS-052 Variable $TABUI_SCRN converted           " " WARN                          00000000"    "
47" 26-FEB-26 17:39:32 " VARS-052 Variable $SNPX_PARAM converted           " " WARN                          00000000"    "
48" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE_TMP converted           " " WARN                          00000000"    "
49" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE8 converted              " " WARN                          00000000"    "
50" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE7 converted              " " WARN                          00000000"    "
51" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE6 converted              " " WARN                          00000000"    "
52" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE5 converted              " " WARN                          00000000"    "
53" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE4 converted              " " WARN                          00000000"    "
54" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE3 converted              " " WARN                          00000000"    "
55" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE2 converted              " " WARN                          00000000"    "
56" 26-FEB-26 17:39:32 " VARS-052 Variable $RSPACE1 converted              " " WARN                          00000000"    "
57" 26-FEB-26 17:39:30 " VARS-052 Variable $REFPOS8 converted              " " WARN                          00000000"    "
58" 26-FEB-26 17:39:30 " VARS-052 Variable $REFPOS7 converted              " " WARN                          00000000"    "
59" 26-FEB-26 17:39:30 " VARS-052 Variable $REFPOS6 converted              " " WARN                          00000000"    "
60" 26-FEB-26 17:39:28 " VARS-052 Variable $REFPOS5 converted              " " WARN                          00000000"    "
61" 26-FEB-26 17:39:28 " VARS-052 Variable $REFPOS4 converted              " " WARN                          00000000"    "
62" 26-FEB-26 17:39:28 " VARS-052 Variable $REFPOS3 converted              " " WARN                          00000000"    "
63" 26-FEB-26 17:39:26 " VARS-052 Variable $REFPOS2 converted              " " WARN                          00000000"    "
64" 26-FEB-26 17:39:26 " VARS-052 Variable $REFPOS1 converted              " " WARN                          00000000"    "
65" 26-FEB-26 17:39:26 " VARS-052 Variable $PSSAVE converted               " " WARN                          00000000"    "
66" 26-FEB-26 17:39:24 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
67" 26-FEB-26 17:39:24 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
68" 26-FEB-26 17:39:24 " VARS-052 Variable $MR_COM converted               " " WARN                          00000000"    "
69" 26-FEB-26 17:39:24 " VARS-052 Variable $MR_CABLE converted             " " WARN                          00000000"    "
70" 26-FEB-26 17:39:24 " VARS-052 Variable $DIAG_GRP converted             " " WARN                          00000000"    "
71" 26-FEB-26 17:39:24 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
72" 26-FEB-26 17:39:24 " VARS-005 $BIGALLOW PC array length ignored        " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
73" 26-FEB-26 17:39:24 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
74" 26-FEB-26 17:39:24 " VARS-052 Variable $REFPOS1 converted              " " WARN                          00000000"    "
75" 26-FEB-26 17:39:24 " VARS-052 Variable $PSSAVE converted               " " WARN                          00000000"    "
76" 26-FEB-26 17:39:22 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
77" 26-FEB-26 17:39:22 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
78" 26-FEB-26 17:39:22 " VARS-052 Variable $MR_COM converted               " " WARN                          00000000"    "
79" 26-FEB-26 17:39:22 " VARS-052 Variable $MR_CABLE converted             " " WARN                          00000000"    "
80" 26-FEB-26 17:39:22 " VARS-052 Variable $DIAG_GRP converted             " " WARN                          00000000"    "
81" 26-FEB-26 17:39:22 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
82" 26-FEB-26 17:39:22 " VARS-005 $BIGALLOW PC array length ignored        " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
83" 26-FEB-26 17:39:20 " VARS-054 Sysvars - V9.40388       7/5/2024 loaded " " WARN                          00000000"    "
84" 26-FEB-26 17:39:14 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
85" 26-FEB-26 17:39:10 " OPTN-018 No CUSTO additions on this media         " " WARN                          00000000"    "
86" 26-FEB-26 17:39:10 " OPTN-018 No Language additions on this media      " " WARN                          00000000"    "

 ***At Cold Start.***

F Number: F00000    
VERSION : HandlingTool         
$VERSION: V9.40518     11/14/2025
DATE:     26-FEB-26 17:40 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     981.5KB     981.5KB
PERM        3064.0KB    1466.2KB    1466.0KB
SYSTEM          .0KB       0.0KB       0.0KB
SHADOW      6698.3KB    5433.1KB      32.0KB
PAGE      378878.8KB  280493.8KB  280493.8KB
TEMP      150441.9KB  124184.4KB  104318.1KB
FROM      258095.0KB  223403.5KB

HARDWARE
FROM     256MB
DRAM    1000MB
SRAM       3MB

MEMORY DETAIL (MAIN - TASKS):
TASK        TOTAL     AVAILABLE     LARGEST   REALLOC
   1       62.8KB        40.3KB      40.3KB      0
   2       62.8KB        40.7KB      40.7KB      0
   3       62.8KB        40.7KB      40.7KB      0
   4       62.8KB        40.7KB      40.7KB      0
   5       62.8KB        40.7KB      40.7KB      0
   6       62.8KB        32.8KB      32.8KB      0
   7       62.8KB        33.1KB      32.9KB      0
  33       62.8KB        61.6KB      61.6KB      0
  34       62.8KB        29.0KB      29.0KB      0
  35     2398.8KB      1643.5KB    1561.5KB      0
  36     1518.8KB      1248.6KB    1247.9KB      0
  37       62.8KB        61.9KB      61.9KB      0
  38     1998.8KB      1091.2KB    1091.2KB      0
  39     4238.5KB      4194.0KB     346.9KB     12
  40       62.8KB        61.9KB      61.9KB      0
  41      134.8KB        42.6KB      35.7KB      1
  42      190.8KB        90.3KB      31.0KB      2
  47       62.8KB        61.9KB      61.9KB      0
  51       62.8KB        61.0KB      61.0KB      0
  52     7998.8KB      7146.5KB    6035.7KB      0
  54       62.8KB        49.6KB      49.6KB      0
  55       62.8KB        54.5KB      54.3KB      0
  63       62.8KB        48.8KB      48.8KB      0
  71       62.8KB        61.8KB      61.5KB      0
  72       62.8KB        61.9KB      61.9KB      0
  73      138.8KB         5.0KB       3.2KB      1
  74       62.8KB        61.8KB      61.8KB      0
  75       62.8KB        61.9KB      61.9KB      0
  76       62.8KB         3.1KB       3.1KB      0
  77       62.8KB        27.6KB      27.6KB      0
  78      254.8KB       220.8KB     220.8KB      0
  79       62.8KB        61.8KB      61.8KB      0
  97       62.8KB        58.5KB      58.5KB      0
  99       62.8KB        61.9KB      61.9KB      0
 100       62.8KB        60.2KB      60.1KB      0
 101       62.8KB        52.8KB      52.8KB      0
 102       94.8KB        93.9KB      93.9KB      0
 103       94.8KB        93.9KB      93.9KB      0
 104       94.8KB        93.9KB      93.9KB      0
 105       94.8KB        93.9KB      93.9KB      0
 106       94.8KB        93.9KB      93.9KB      0
 107       94.8KB        93.9KB      93.9KB      0
 108       94.8KB        19.7KB      19.7KB      0
 109      958.8KB       860.3KB     860.3KB      0
 111       62.8KB        61.9KB      61.9KB      0
 112     6158.8KB      3578.3KB    3578.3KB      0
 113       62.8KB        61.9KB      61.9KB      0
 114       62.8KB        61.9KB      61.9KB      0
 115       62.8KB        61.8KB      61.8KB      0
 119      254.8KB       229.8KB     229.8KB      0
 125       62.8KB        61.9KB      61.9KB      0
 132       62.8KB        61.4KB      61.4KB      0
 136       62.8KB        52.3KB      52.3KB      0
 150       62.8KB        51.9KB      51.9KB      0
 153       62.8KB        60.7KB      60.7KB      0
 159     4094.8KB      3346.6KB    3346.2KB      0
 166       62.8KB        28.9KB      28.9KB      0
 170       62.8KB        61.9KB      59.0KB      0
 171       62.8KB        56.7KB      56.7KB      0
 174       62.8KB        61.3KB      61.3KB      0
 177       62.8KB        49.1KB      49.1KB      0
 182       62.8KB        51.4KB      51.4KB      0
 184       62.8KB        61.5KB      61.5KB      0
 186       62.8KB        51.9KB      51.9KB      0
 187      254.8KB       105.3KB      31.0KB      3
 188       62.8KB        62.8KB      62.8KB      0
 189       62.8KB        62.8KB      62.8KB      0
 190       62.8KB        62.8KB      62.8KB      0
 191       62.8KB        62.8KB      62.8KB      0
 192       62.8KB        61.9KB      61.9KB      0
 193       62.8KB        62.8KB      62.8KB      0
 198       62.8KB        61.8KB      61.8KB      0
 199       62.8KB        62.8KB      62.8KB      0
 207       62.8KB        61.9KB      61.9KB      0
 209       62.8KB        61.9KB      61.9KB      0
 211       62.8KB        61.7KB      61.7KB      0
 214       62.8KB        61.9KB      61.9KB      0
 217       62.8KB        12.1KB      12.1KB      0
 221       62.8KB        54.1KB      54.1KB      0
 231       62.8KB        28.2KB      28.1KB      0
 232       62.8KB        61.8KB      61.8KB      0
 234       62.8KB        51.9KB      51.9KB      0
 239       62.8KB        61.6KB      61.6KB      0
 240       62.8KB        52.8KB      52.8KB      0
 241     1534.8KB        55.8KB      48.8KB      1
 256       62.8KB        62.8KB      62.8KB      0
 257       62.8KB        62.8KB      62.8KB      0
 258       62.8KB        62.8KB      62.8KB      0
 259       62.8KB        62.8KB      62.8KB      0
 260       62.8KB        62.8KB      62.8KB      0
 261       62.8KB        62.8KB      62.8KB      0
 262       62.8KB        62.8KB      62.8KB      0
 263       62.8KB        62.8KB      62.8KB      0
 264       62.8KB        62.8KB      62.8KB      0
 265       62.8KB        62.8KB      62.8KB      0
 297      142.8KB        67.7KB      61.1KB      1
 298       62.8KB        61.4KB      61.4KB      0
 300       62.8KB        42.9KB      42.7KB      0
 301       62.8KB        61.9KB      61.9KB      0
 302       62.8KB        61.9KB      61.9KB      0
 317       62.8KB        61.9KB      61.9KB      0
 322     9618.8KB      9449.0KB    9058.6KB      0
 323       62.8KB        61.9KB      61.9KB      0
 330       62.8KB        61.9KB      61.9KB      0
 332       62.8KB        59.6KB      59.6KB      0
 337      438.8KB         4.4KB       4.4KB      2
 341       62.8KB        61.9KB      61.9KB      0

860 memconfig skipped for virtual.

TEACH PENDANT:
Total -    0.0KB   Current -   0.0KB    Minimum -    0.0KB** Update Complete 26-FEB-26 17:40 

26/02/28 15:27:32

Version:  V9.40P/81/None
Build ID: V9.40518     11/14/2025

1A05B-2500-H552
1A05B-2500-H521
1A05B-2500-R796
1A05B-2500-R651
1A05B-2500-R641
1A05B-2500-J500
1A05B-2500-FVRC
1A05B-2500-H632
Z
