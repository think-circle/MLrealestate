??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
?
Adam/sequential/Price/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/sequential/Price/bias/v
?
0Adam/sequential/Price/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/Price/bias/v*
_output_shapes
:*
dtype0
?
Adam/sequential/Price/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*/
shared_name Adam/sequential/Price/kernel/v
?
2Adam/sequential/Price/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/Price/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/sequential/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/sequential/dense_1/bias/v
?
2Adam/sequential/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*1
shared_name" Adam/sequential/dense_1/kernel/v
?
4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/sequential/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/sequential/dense/bias/v
?
0Adam/sequential/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/sequential/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*/
shared_name Adam/sequential/dense/kernel/v
?
2Adam/sequential/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/sequential/Price/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/sequential/Price/bias/m
?
0Adam/sequential/Price/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/Price/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/Price/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*/
shared_name Adam/sequential/Price/kernel/m
?
2Adam/sequential/Price/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/Price/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/sequential/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/sequential/dense_1/bias/m
?
2Adam/sequential/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*1
shared_name" Adam/sequential/dense_1/kernel/m
?
4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/sequential/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/sequential/dense/bias/m
?
0Adam/sequential/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/sequential/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*/
shared_name Adam/sequential/dense/kernel/m
?
2Adam/sequential/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/m* 
_output_shapes
:
??*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name275*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name239*
value_dtype0	
m
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name203*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
?
sequential/Price/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namesequential/Price/bias
{
)sequential/Price/bias/Read/ReadVariableOpReadVariableOpsequential/Price/bias*
_output_shapes
:*
dtype0
?
sequential/Price/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_namesequential/Price/kernel
?
+sequential/Price/kernel/Read/ReadVariableOpReadVariableOpsequential/Price/kernel*
_output_shapes

:@*
dtype0
?
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:@*
dtype0
?
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@**
shared_namesequential/dense_1/kernel
?
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes
:	?@*
dtype0
?
sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:?*
dtype0
?
sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_namesequential/dense/kernel
?
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel* 
_output_shapes
:
??*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
w
Const_3Const*
_output_shapes
:*
dtype0*<
value3B1Bprivate treatyBauctionBAnother Method
h
Const_4Const*
_output_shapes
:*
dtype0	*-
value$B"	"                      
?+
Const_5Const*
_output_shapes	
:?*
dtype0*?+
value?+B?+?B
ABERFELDIEBAIRPORT WESTBALBERT PARKBALBIONBALTONABALTONA MEADOWSBALTONA NORTHBARDEERBARMADALEBARTHURS CREEKBARTHURS SEATB
ASCOT VALEB	ASHBURTONBASHWOODB	ASPENDALEBASPENDALE GARDENSBATTWOODBAVONDALE HEIGHTSB
AVONSLEIGHBBADGER CREEKB	BALACLAVAB
BALNARRINGBBALNARRING BEACHBBALWYNB	BANGHOLMEBBAXTERBBAYLESBBAYSWATER NORTHBBEACONSFIELD UPPERB	BEAUMARISBBELGRAVE HEIGHTSBBELGRAVE SOUTHB	BELLFIELDBBEND OF ISLANDSB	BENTLEIGHBBENTLEIGH EASTBBERWICKB	BEVERIDGEBBITTERNB
BLACK ROCKBBLACKBURN NORTHBBLACKBURN SOUTHBBLIND BIGHTBBONEOBBORONIABBOTANIC RIDGEBBOX HILLBBOX HILL NORTHBBOX HILL SOUTHB	BRAYBROOKB
BRIAR HILLBBRIGHTONBBRIGHTON EASTBBROADMEADOWSB
BROOKFIELDBBROOKLYNB	BRUNSWICKBBRUNSWICK EASTBBULLABBULLEENBBULLENGAROOKBBUNYIP NORTHBBURNLEYBBURNSIDEBBURWOODBBURWOOD EASTBCAIRNLEABCALDERMEADEB
CAMBERWELLBCAMPBELLFIELDBCANNONS CREEKB
CANTERBURYBCARLTONBCARNEGIEBCAROLINE SPRINGSBCARRUMBCARRUM DOWNSBCASTELLAB	CAULFIELDBCAULFIELD NORTHBCAULFIELD SOUTHB	CHADSTONEBCHELSEABCHELSEA HEIGHTSB
CHELTENHAMBCHEROKEEBCHINTINBCHIRNSIDE PARKBCHRISTMAS HILLSBCLARINDABCLAYTONBCLAYTON SOUTHBCLIFTON HILLBCLYDE NORTHBCOBURGBCOBURG NORTHBCOCKATOOB
COLDSTREAMBCOLLINGWOODB	CORA LYNNBCOTTLES BRIDGEBCRAIGIEBURNB
CRANBOURNEBCRANBOURNE EASTBCREMORNEB
CRIB POINTBCROYDONBCROYDON NORTHBCROYDON SOUTHBDALMOREBDANDENONG NORTHBDARLEYBDARRAWEIT GUIMBDEEPDENEB	DEER PARKBDERRIMUTBDEVON MEADOWSBDEWHURSTBDIAMOND CREEKBDIGGERS RESTBDINGLEY VILLAGEBDIXONS CREEKBDONCASTER EASTB
DONNYBROOKBDOREENBDOVETONBDROMANABEAST MELBOURNEBEAST WARBURTONB	EDEN PARKB	EDITHVALEBELTHAMBELTHAM NORTHBELWOODBEMERALDBENDEAVOUR HILLSBEPPINGBESSENDONBESSENDON NORTHBESSENDON WESTBEUMEMMERRINGB	EYNESBURYB	FAIRFIELDBFERNTREE GULLYBFERNY CREEKBFINGALBFITZROYBFITZROY NORTHB	FOOTSCRAYBFOREST HILLB	FRANKSTONBFRANKSTON NORTHBFRANKSTON SOUTHBGARFIELD NORTHBGILDEROYBGISBORNEBGISBORNE SOUTHB
GLADYSDALEB	GLEN IRISBGLENROYB	GOWANBRAEB	GREENVALEB	GUYS HILLBHADFIELDBHALLAMBHAMPTON EASTBHAMPTON PARKBHARKAWAYBHAWTHORNBHEALESVILLEB
HEATHERTONB	HEATHMONTBHEIDELBERG WESTBHESKETBHIGHETTBHILLSIDEBHODDLES CREEKBHOPETOUN PARKBHOPPERS CROSSINGB
HUGHESDALEBHUMEVALEBHUNTINGDALEBHURSTBRIDGEBIVANHOEBIVANHOE EASTBJACANABJUNCTION VILLAGEBKALKALLOBKALLISTABKALORAMABKANGAROO GROUNDBKEILORBKEILOR DOWNSBKEILOR EASTBKEILOR NORTHBKEILOR PARKB
KENSINGTONBKEWBKEW EASTBKEYSBOROUGHBKILSYTHBKILSYTH SOUTHBKINGLAKEBKINGLAKE CENTRALB	HAZELDENEB
KINGS PARKB	KINGSBURYB
KINGSVILLEB	KNOXFIELDBKOO WEE RUPBKOOYONGB	KURUNJANGBLALORB
LANGWARRINBLANGWARRIN SOUTHBLAUNCHING PLACEBLAVERTONBLILYDALEBLONG FORESTBLOWER PLENTYBLYNBROOKB	LYNDHURSTBLYSTERFIELDBLYSTERFIELD SOUTHBMACCLESFIELDBMACEDONBMACLEODB
MADDINGLEYB	MAIDSTONEB
MAIN RIDGEBMALVERNBMALVERN EASTBMARIBYRNONGBMCCRAEBMCKINNONBMEADOW HEIGHTSB	MELBOURNEBMELBOURNE 3004BMELTONBMELTON SOUTHBMELTON WESTBMENTONEBMENZIES CREEKBMERNDABMERRICKSBMERRICKS BEACHBMERRICKS NORTHB	MICKLEHAMBMIDDLE PARKB	MILL PARKB	MILLGROVEBMITCHAMBMONBULKB
MONEGEETTABMONT ALBERTBMONT ALBERT NORTHBMONTMORENCYBMONTROSEBMOONEE PONDSB	MOORABBINB	MOOROODUCBMOOROOLBARKB
MORDIALLOCB
MORNINGTONBMOUNT BURNETTBMOUNT COTTRELLBMOUNT DANDENONGBMOUNT ELIZABMOUNT EVELYNBMOUNT MACEDONBMOUNT MARTHABMOUNT TOOLEBEWONGBMOUNT WAVERLEYBMURRUMBEENABNANGANABNAR NAR GOONBNARBNARRE WARRENBNARRE WARREN EASTBNARRE WARREN NORTHBNARRE WARREN SOUTHBNEW GISBORNEBNEWPORTBNIDDRIEB
NOBLE PARKBNOBLE PARK NORTHBNORTH MELBOURNEBNORTH WARRANDYTEB	NORTHCOTEBNOTTING HILLB
NUNAWADINGBNUTFIELDBOAK PARKBOAKLANDS JUNCTIONBOAKLEIGHBOAKLEIGH SOUTHBOFFICER SOUTHBOLINDABORMONDBPAKENHAMBPAKENHAM SOUTHBPAKENHAM UPPERBPANTON HILLBPARK ORCHARDSBPARKDALEBPASCOE VALEBPASCOE VALE SOUTHBPATTERSON LAKESB
PEARCEDALEBPLENTYBPLUMPTONB
POINT COOKB	POINT LEOBPORT MELBOURNEBPORTSEAB
POWELLTOWNBPRAHRANBPRESTONBPRINCES HILLBRED HILLBRED HILL SOUTHBRESEARCHB	RESERVOIRBRICHMONDBRIDDELLS CREEKBRINGWOODBRINGWOOD EASTBRINGWOOD NORTHB	RIPPONLEABROCHFORDBROCKBANKBROMSEYBROSANNABROSEBUDBROWVILLEBROXBURGH PARKBSAFETY BEACHB	SANDHURSTBSANDRINGHAMB	SASSAFRASBSCORESBYBSEABROOKBSEAFORDBSEAHOLMEBSEDDONBSELBYBSEVILLEBSEVILLE EASTB
SHERBROOKEBSHOREHAMBSILVANBSKYEBSMITHS GULLYBSOMERSB
SOMERVILLEBSORRENTOBSOUTH KINGSVILLEBSOUTH MELBOURNEBSOUTH YARRAB	SOUTHBANKB	SPOTSWOODB
SPRINGVALEBSPRINGVALE SOUTHB
ST ANDREWSBST ANDREWS BEACHB	ST HELENABST KILDABST KILDA EASTBST KILDA WESTB
STRATHMOREBSTRATHMORE HEIGHTSBSUNBURYBSUNSHINEBSUNSHINE NORTHBSUNSHINE WESTBSURREY HILLSBSYDENHAMBTARNEITBTAYLORS HILLBTAYLORS LAKESBTECOMABTEMPLESTOWEBTEMPLESTOWE LOWERB	THE BASINB	THE PATCHB
THOMASTOWNB	THORNBURYBTHREE BRIDGESBTONIMBUKBTOOLANGIBTOOLERN VALEBTOORADINBTOORAKB
TOOTGAROOKB
TRAVANCOREBTREMONTB	TRUGANINABTUERONGBTULLAMARINEBTYABBBTYNONGBTYNONG NORTHBUPPER FERNTREE GULLYBUPPER PLENTYBUPWEYBVERMONTBVERMONT SOUTHBVIEWBANKBWALLANBWANDIN EASTBWANDIN NORTHBWANDONGBWANTIRNA SOUTHB	WARBURTONBWARNEETB
WARRANDYTEBWARRANDYTE SOUTHB
WARRANWOODB	WATERWAYSBWATSONIABWATSONIA NORTHBWATTLE GLENBWERRIBEEBWERRIBEE SOUTHBWESBURNBWEST FOOTSCRAYBWEST MELBOURNEBWESTMEADOWSBWHEELERS HILLB
WHITTLESEABWILLIAMS LANDINGBWILLIAMSTOWNBWILLIAMSTOWN NORTHBWINDSORBWOLLERTB
WONGA PARKBWOORI YALLOCKBWYNDHAM VALEB	YALLAMBIEBYAN YEANB
YARRA GLENBYARRA JUNCTIONB	YARRAMBATB
YARRAVILLEB	YELLINGBOBYERINGBYUROKE
?
Const_6Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
Const_7Const*
_output_shapes
:*
dtype0*?
value?B?BHouseB
Apartment B	TownhouseBDevelopment siteBVillaBDuplexBVacant landBBlock of unitsBSemi-detachedBNew house and landBNew apartments / off the planBNew home designsBAcreage / Semi-ruralBRuralBRetirement LivingBUnknownBTerraceBFarmBNew landBStudio
?
Const_8Const*
_output_shapes
:*
dtype0	*?
value?B?	"?                                                                	       
                                                                      
?
StatefulPartitionedCallStatefulPartitionedCallhash_table_2Const_3Const_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_436365
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_5Const_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_436373
?
StatefulPartitionedCall_2StatefulPartitionedCall
hash_tableConst_7Const_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_436381
^
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2
?9
Const_9Const"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?8
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
.
0
1
%2
&3
-4
.5*
.
0
1
%2
&3
-4
.5*
* 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
4trace_0
5trace_1
6trace_2
7trace_3* 
6
8trace_0
9trace_1
:trace_2
;trace_3* 
* 
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratem?m?%m?&m?-m?.m?v?v?%v?&v?-v?.v?*
* 

Aserving_default* 
* 
* 
* 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Gtrace_0
Htrace_1* 

Itrace_0
Jtrace_1* 
* 
$

KMethod

LSuburb
MType* 

0
1*

0
1*
* 
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Strace_0* 

Ttrace_0* 
ga
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Ztrace_0* 

[trace_0* 
ic
VARIABLE_VALUEsequential/dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential/dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

atrace_0* 

btrace_0* 
ga
VARIABLE_VALUEsequential/Price/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential/Price/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

c0
d1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

eMethod_lookup* 

fSuburb_lookup* 

gType_lookup* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
h	variables
i	keras_api
	jtotal
	kcount*
H
l	variables
m	keras_api
	ntotal
	ocount
p
_fn_kwargs*
R
q_initializer
r_create_resource
s_initialize
t_destroy_resource* 
R
u_initializer
v_create_resource
w_initialize
x_destroy_resource* 
R
y_initializer
z_create_resource
{_initialize
|_destroy_resource* 

j0
k1*

h	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

n0
o1*

l	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

}trace_0* 

~trace_0* 

trace_0* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUEAdam/sequential/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
t
serving_default_BathroomsPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
s
serving_default_BedroomsPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
o
serving_default_CarsPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
s
serving_default_DistancePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
s
serving_default_LatitudePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
serving_default_LogAreaPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
serving_default_LongitudePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
serving_default_MethodPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
serving_default_SuburbPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
o
serving_default_TypePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
o
serving_default_YearPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCall_3StatefulPartitionedCallserving_default_Bathroomsserving_default_Bedroomsserving_default_Carsserving_default_Distanceserving_default_Latitudeserving_default_LogAreaserving_default_Longitudeserving_default_Methodserving_default_Suburbserving_default_Typeserving_default_Yearhash_table_2Consthash_table_1Const_1
hash_tableConst_2sequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/Price/kernelsequential/Price/bias*"
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_435352
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOp-sequential/dense_1/kernel/Read/ReadVariableOp+sequential/dense_1/bias/Read/ReadVariableOp+sequential/Price/kernel/Read/ReadVariableOp)sequential/Price/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/sequential/dense/kernel/m/Read/ReadVariableOp0Adam/sequential/dense/bias/m/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_1/bias/m/Read/ReadVariableOp2Adam/sequential/Price/kernel/m/Read/ReadVariableOp0Adam/sequential/Price/bias/m/Read/ReadVariableOp2Adam/sequential/dense/kernel/v/Read/ReadVariableOp0Adam/sequential/dense/bias/v/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_1/bias/v/Read/ReadVariableOp2Adam/sequential/Price/kernel/v/Read/ReadVariableOp0Adam/sequential/Price/bias/v/Read/ReadVariableOpConst_9*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_436510
?
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenamesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/Price/kernelsequential/Price/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/sequential/dense/kernel/mAdam/sequential/dense/bias/m Adam/sequential/dense_1/kernel/mAdam/sequential/dense_1/bias/mAdam/sequential/Price/kernel/mAdam/sequential/Price/bias/mAdam/sequential/dense/kernel/vAdam/sequential/dense/bias/v Adam/sequential/dense_1/kernel/vAdam/sequential/dense_1/bias/vAdam/sequential/Price/kernel/vAdam/sequential/Price/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_436601??
?
?
+__inference_sequential_layer_call_fn_435391
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_logarea
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_bathroomsinputs_bedroomsinputs_carsinputs_distanceinputs_latitudeinputs_logareainputs_longitudeinputs_methodinputs_suburbinputs_typeinputs_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_434760o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/LogArea:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Longitude:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Method:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Suburb:P	L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Type:P
L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_436244
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_logarea
features_longitude
features_method
features_suburb
features_type
features_year	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_indicator_none_lookup_lookuptablefindv2_table_handle@
<suburb_indicator_none_lookup_lookuptablefindv2_default_value	=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_indicator/None_Lookup/LookupTableFindV2?,Type_indicator/None_Lookup/LookupTableFindV2c
Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bathrooms/ExpandDims
ExpandDimsfeatures_bathrooms!Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????v
Bathrooms/CastCastBathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Q
Bathrooms/ShapeShapeBathrooms/Cast:y:0*
T0*
_output_shapes
:g
Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bathrooms/strided_sliceStridedSliceBathrooms/Shape:output:0&Bathrooms/strided_slice/stack:output:0(Bathrooms/strided_slice/stack_1:output:0(Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bathrooms/Reshape/shapePack Bathrooms/strided_slice:output:0"Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bathrooms/ReshapeReshapeBathrooms/Cast:y:0 Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bedrooms/ExpandDims
ExpandDimsfeatures_bedrooms Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????t
Bedrooms/CastCastBedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????O
Bedrooms/ShapeShapeBedrooms/Cast:y:0*
T0*
_output_shapes
:f
Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bedrooms/strided_sliceStridedSliceBedrooms/Shape:output:0%Bedrooms/strided_slice/stack:output:0'Bedrooms/strided_slice/stack_1:output:0'Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bedrooms/Reshape/shapePackBedrooms/strided_slice:output:0!Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bedrooms/ReshapeReshapeBedrooms/Cast:y:0Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Cars/ExpandDims
ExpandDimsfeatures_carsCars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Cars/CastCastCars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Cars/ShapeShapeCars/Cast:y:0*
T0*
_output_shapes
:b
Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cars/strided_sliceStridedSliceCars/Shape:output:0!Cars/strided_slice/stack:output:0#Cars/strided_slice/stack_1:output:0#Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Cars/Reshape/shapePackCars/strided_slice:output:0Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Cars/ReshapeReshapeCars/Cast:y:0Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Distance/ExpandDims
ExpandDimsfeatures_distance Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Distance/ShapeShapeDistance/ExpandDims:output:0*
T0*
_output_shapes
:f
Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Distance/strided_sliceStridedSliceDistance/Shape:output:0%Distance/strided_slice/stack:output:0'Distance/strided_slice/stack_1:output:0'Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Distance/Reshape/shapePackDistance/strided_slice:output:0!Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Distance/ReshapeReshapeDistance/ExpandDims:output:0Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Latitude/ExpandDims
ExpandDimsfeatures_latitude Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Latitude/ShapeShapeLatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Latitude/strided_sliceStridedSliceLatitude/Shape:output:0%Latitude/strided_slice/stack:output:0'Latitude/strided_slice/stack_1:output:0'Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Latitude/Reshape/shapePackLatitude/strided_slice:output:0!Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Latitude/ReshapeReshapeLatitude/ExpandDims:output:0Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
LogArea/ExpandDims
ExpandDimsfeatures_logareaLogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????X
LogArea/ShapeShapeLogArea/ExpandDims:output:0*
T0*
_output_shapes
:e
LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LogArea/strided_sliceStridedSliceLogArea/Shape:output:0$LogArea/strided_slice/stack:output:0&LogArea/strided_slice/stack_1:output:0&LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LogArea/Reshape/shapePackLogArea/strided_slice:output:0 LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LogArea/ReshapeReshapeLogArea/ExpandDims:output:0LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Longitude/ExpandDims
ExpandDimsfeatures_longitude!Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
Longitude/ShapeShapeLongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Longitude/strided_sliceStridedSliceLongitude/Shape:output:0&Longitude/strided_slice/stack:output:0(Longitude/strided_slice/stack_1:output:0(Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Longitude/Reshape/shapePack Longitude/strided_slice:output:0"Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Longitude/ReshapeReshapeLongitude/ExpandDims:output:0 Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Method_indicator/ExpandDims
ExpandDimsfeatures_method(Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Method_indicator/to_sparse_input/NotEqualNotEqual$Method_indicator/ExpandDims:output:08Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Method_indicator/to_sparse_input/indicesWhere-Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Method_indicator/to_sparse_input/valuesGatherNd$Method_indicator/ExpandDims:output:00Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Method_indicator/to_sparse_input/dense_shapeShape$Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;method_indicator_none_lookup_lookuptablefindv2_table_handle0Method_indicator/to_sparse_input/values:output:0<method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Method_indicator/SparseToDenseSparseToDense0Method_indicator/to_sparse_input/indices:index:05Method_indicator/to_sparse_input/dense_shape:output:07Method_indicator/None_Lookup/LookupTableFindV2:values:05Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Method_indicator/ShapeShapeMethod_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Method_indicator/strided_sliceStridedSliceMethod_indicator/Shape:output:0-Method_indicator/strided_slice/stack:output:0/Method_indicator/strided_slice/stack_1:output:0/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_indicator/ExpandDims
ExpandDimsfeatures_suburb(Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_indicator/to_sparse_input/NotEqualNotEqual$Suburb_indicator/ExpandDims:output:08Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_indicator/to_sparse_input/indicesWhere-Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_indicator/to_sparse_input/valuesGatherNd$Suburb_indicator/ExpandDims:output:00Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_indicator/to_sparse_input/dense_shapeShape$Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_indicator_none_lookup_lookuptablefindv2_table_handle0Suburb_indicator/to_sparse_input/values:output:0<suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Suburb_indicator/SparseToDenseSparseToDense0Suburb_indicator/to_sparse_input/indices:index:05Suburb_indicator/to_sparse_input/dense_shape:output:07Suburb_indicator/None_Lookup/LookupTableFindV2:values:05Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    a
Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/one_hotOneHot&Suburb_indicator/SparseToDense:dense:0'Suburb_indicator/one_hot/depth:output:0'Suburb_indicator/one_hot/Const:output:0)Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????y
&Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Suburb_indicator/SumSum!Suburb_indicator/one_hot:output:0/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????c
Suburb_indicator/ShapeShapeSuburb_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_indicator/strided_sliceStridedSliceSuburb_indicator/Shape:output:0-Suburb_indicator/strided_slice/stack:output:0/Suburb_indicator/strided_slice/stack_1:output:0/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/Reshape/shapePack'Suburb_indicator/strided_slice:output:0)Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_indicator/ReshapeReshapeSuburb_indicator/Sum:output:0'Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Type_indicator/ExpandDims
ExpandDimsfeatures_type&Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Type_indicator/to_sparse_input/NotEqualNotEqual"Type_indicator/ExpandDims:output:06Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Type_indicator/to_sparse_input/indicesWhere+Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Type_indicator/to_sparse_input/valuesGatherNd"Type_indicator/ExpandDims:output:0.Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Type_indicator/to_sparse_input/dense_shapeShape"Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
,Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29type_indicator_none_lookup_lookuptablefindv2_table_handle.Type_indicator/to_sparse_input/values:output:0:type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Type_indicator/SparseToDenseSparseToDense.Type_indicator/to_sparse_input/indices:index:03Type_indicator/to_sparse_input/dense_shape:output:05Type_indicator/None_Lookup/LookupTableFindV2:values:03Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
Type_indicator/ShapeShapeType_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Type_indicator/strided_sliceStridedSliceType_indicator/Shape:output:0+Type_indicator/strided_slice/stack:output:0-Type_indicator/strided_slice/stack_1:output:0-Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Year/ExpandDims
ExpandDimsfeatures_yearYear/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0LogArea/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_indicator/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_indicator/None_Lookup/LookupTableFindV2-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_indicator/None_Lookup/LookupTableFindV2.Suburb_indicator/None_Lookup/LookupTableFindV22\
,Type_indicator/None_Lookup/LookupTableFindV2,Type_indicator/None_Lookup/LookupTableFindV2:W S
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/LogArea:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Method:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Suburb:R	N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Type:R
N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_4363162
.table_init202_lookuptableimportv2_table_handle*
&table_init202_lookuptableimportv2_keys,
(table_init202_lookuptableimportv2_values	
identity??!table_init202/LookupTableImportV2?
!table_init202/LookupTableImportV2LookupTableImportV2.table_init202_lookuptableimportv2_table_handle&table_init202_lookuptableimportv2_keys(table_init202_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init202/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init202/LookupTableImportV2!table_init202/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_435834
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_logarea
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	N
Jdense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_method_indicator_none_lookup_lookuptablefindv2_default_value	N
Jdense_features_suburb_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_suburb_indicator_none_lookup_lookuptablefindv2_default_value	L
Hdense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_type_indicator_none_lookup_lookuptablefindv2_default_value	8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@6
$price_matmul_readvariableop_resource:@3
%price_biasadd_readvariableop_resource:
identity??Price/BiasAdd/ReadVariableOp?Price/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?=dense_features/Method_indicator/None_Lookup/LookupTableFindV2?=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2?;dense_features/Type_indicator/None_Lookup/LookupTableFindV2i
dense_features/CastCastinputs_distance*

DstT0*

SrcT0*#
_output_shapes
:?????????k
dense_features/Cast_1Castinputs_latitude*

DstT0*

SrcT0*#
_output_shapes
:?????????j
dense_features/Cast_2Castinputs_logarea*

DstT0*

SrcT0*#
_output_shapes
:?????????l
dense_features/Cast_3Castinputs_longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????r
'dense_features/Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#dense_features/Bathrooms/ExpandDims
ExpandDimsinputs_bathrooms0dense_features/Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Bathrooms/CastCast,dense_features/Bathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????o
dense_features/Bathrooms/ShapeShape!dense_features/Bathrooms/Cast:y:0*
T0*
_output_shapes
:v
,dense_features/Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.dense_features/Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.dense_features/Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&dense_features/Bathrooms/strided_sliceStridedSlice'dense_features/Bathrooms/Shape:output:05dense_features/Bathrooms/strided_slice/stack:output:07dense_features/Bathrooms/strided_slice/stack_1:output:07dense_features/Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(dense_features/Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
&dense_features/Bathrooms/Reshape/shapePack/dense_features/Bathrooms/strided_slice:output:01dense_features/Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 dense_features/Bathrooms/ReshapeReshape!dense_features/Bathrooms/Cast:y:0/dense_features/Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????q
&dense_features/Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Bedrooms/ExpandDims
ExpandDimsinputs_bedrooms/dense_features/Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Bedrooms/CastCast+dense_features/Bedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????m
dense_features/Bedrooms/ShapeShape dense_features/Bedrooms/Cast:y:0*
T0*
_output_shapes
:u
+dense_features/Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Bedrooms/strided_sliceStridedSlice&dense_features/Bedrooms/Shape:output:04dense_features/Bedrooms/strided_slice/stack:output:06dense_features/Bedrooms/strided_slice/stack_1:output:06dense_features/Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Bedrooms/Reshape/shapePack.dense_features/Bedrooms/strided_slice:output:00dense_features/Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Bedrooms/ReshapeReshape dense_features/Bedrooms/Cast:y:0.dense_features/Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????m
"dense_features/Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Cars/ExpandDims
ExpandDimsinputs_cars+dense_features/Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Cars/CastCast'dense_features/Cars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????e
dense_features/Cars/ShapeShapedense_features/Cars/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Cars/strided_sliceStridedSlice"dense_features/Cars/Shape:output:00dense_features/Cars/strided_slice/stack:output:02dense_features/Cars/strided_slice/stack_1:output:02dense_features/Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Cars/Reshape/shapePack*dense_features/Cars/strided_slice:output:0,dense_features/Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Cars/ReshapeReshapedense_features/Cars/Cast:y:0*dense_features/Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????q
&dense_features/Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Distance/ExpandDims
ExpandDimsdense_features/Cast:y:0/dense_features/Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
dense_features/Distance/ShapeShape+dense_features/Distance/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Distance/strided_sliceStridedSlice&dense_features/Distance/Shape:output:04dense_features/Distance/strided_slice/stack:output:06dense_features/Distance/strided_slice/stack_1:output:06dense_features/Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Distance/Reshape/shapePack.dense_features/Distance/strided_slice:output:00dense_features/Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Distance/ReshapeReshape+dense_features/Distance/ExpandDims:output:0.dense_features/Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????q
&dense_features/Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Latitude/ExpandDims
ExpandDimsdense_features/Cast_1:y:0/dense_features/Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
dense_features/Latitude/ShapeShape+dense_features/Latitude/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Latitude/strided_sliceStridedSlice&dense_features/Latitude/Shape:output:04dense_features/Latitude/strided_slice/stack:output:06dense_features/Latitude/strided_slice/stack_1:output:06dense_features/Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Latitude/Reshape/shapePack.dense_features/Latitude/strided_slice:output:00dense_features/Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Latitude/ReshapeReshape+dense_features/Latitude/ExpandDims:output:0.dense_features/Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%dense_features/LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!dense_features/LogArea/ExpandDims
ExpandDimsdense_features/Cast_2:y:0.dense_features/LogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????v
dense_features/LogArea/ShapeShape*dense_features/LogArea/ExpandDims:output:0*
T0*
_output_shapes
:t
*dense_features/LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,dense_features/LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,dense_features/LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$dense_features/LogArea/strided_sliceStridedSlice%dense_features/LogArea/Shape:output:03dense_features/LogArea/strided_slice/stack:output:05dense_features/LogArea/strided_slice/stack_1:output:05dense_features/LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&dense_features/LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$dense_features/LogArea/Reshape/shapePack-dense_features/LogArea/strided_slice:output:0/dense_features/LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/LogArea/ReshapeReshape*dense_features/LogArea/ExpandDims:output:0-dense_features/LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'dense_features/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#dense_features/Longitude/ExpandDims
ExpandDimsdense_features/Cast_3:y:00dense_features/Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????z
dense_features/Longitude/ShapeShape,dense_features/Longitude/ExpandDims:output:0*
T0*
_output_shapes
:v
,dense_features/Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.dense_features/Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.dense_features/Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&dense_features/Longitude/strided_sliceStridedSlice'dense_features/Longitude/Shape:output:05dense_features/Longitude/strided_slice/stack:output:07dense_features/Longitude/strided_slice/stack_1:output:07dense_features/Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(dense_features/Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
&dense_features/Longitude/Reshape/shapePack/dense_features/Longitude/strided_slice:output:01dense_features/Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 dense_features/Longitude/ReshapeReshape,dense_features/Longitude/ExpandDims:output:0/dense_features/Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Method_indicator/ExpandDims
ExpandDimsinputs_method7dense_features/Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Method_indicator/to_sparse_input/NotEqualNotEqual3dense_features/Method_indicator/ExpandDims:output:0Gdense_features/Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Method_indicator/to_sparse_input/indicesWhere<dense_features/Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Method_indicator/to_sparse_input/valuesGatherNd3dense_features/Method_indicator/ExpandDims:output:0?dense_features/Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Method_indicator/to_sparse_input/dense_shapeShape3dense_features/Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features/Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_method_indicator_none_lookup_lookuptablefindv2_table_handle?dense_features/Method_indicator/to_sparse_input/values:output:0Kdense_features_method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features/Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/Method_indicator/SparseToDenseSparseToDense?dense_features/Method_indicator/to_sparse_input/indices:index:0Ddense_features/Method_indicator/to_sparse_input/dense_shape:output:0Fdense_features/Method_indicator/None_Lookup/LookupTableFindV2:values:0Ddense_features/Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features/Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features/Method_indicator/one_hotOneHot5dense_features/Method_indicator/SparseToDense:dense:06dense_features/Method_indicator/one_hot/depth:output:06dense_features/Method_indicator/one_hot/Const:output:08dense_features/Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features/Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/Method_indicator/SumSum0dense_features/Method_indicator/one_hot:output:0>dense_features/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features/Method_indicator/ShapeShape,dense_features/Method_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Method_indicator/strided_sliceStridedSlice.dense_features/Method_indicator/Shape:output:0<dense_features/Method_indicator/strided_slice/stack:output:0>dense_features/Method_indicator/strided_slice/stack_1:output:0>dense_features/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/Method_indicator/Reshape/shapePack6dense_features/Method_indicator/strided_slice:output:08dense_features/Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Method_indicator/ReshapeReshape,dense_features/Method_indicator/Sum:output:06dense_features/Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Suburb_indicator/ExpandDims
ExpandDimsinputs_suburb7dense_features/Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Suburb_indicator/to_sparse_input/NotEqualNotEqual3dense_features/Suburb_indicator/ExpandDims:output:0Gdense_features/Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Suburb_indicator/to_sparse_input/indicesWhere<dense_features/Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Suburb_indicator/to_sparse_input/valuesGatherNd3dense_features/Suburb_indicator/ExpandDims:output:0?dense_features/Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Suburb_indicator/to_sparse_input/dense_shapeShape3dense_features/Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_suburb_indicator_none_lookup_lookuptablefindv2_table_handle?dense_features/Suburb_indicator/to_sparse_input/values:output:0Kdense_features_suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features/Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/Suburb_indicator/SparseToDenseSparseToDense?dense_features/Suburb_indicator/to_sparse_input/indices:index:0Ddense_features/Suburb_indicator/to_sparse_input/dense_shape:output:0Fdense_features/Suburb_indicator/None_Lookup/LookupTableFindV2:values:0Ddense_features/Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    p
-dense_features/Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
'dense_features/Suburb_indicator/one_hotOneHot5dense_features/Suburb_indicator/SparseToDense:dense:06dense_features/Suburb_indicator/one_hot/depth:output:06dense_features/Suburb_indicator/one_hot/Const:output:08dense_features/Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
5dense_features/Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/Suburb_indicator/SumSum0dense_features/Suburb_indicator/one_hot:output:0>dense_features/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
%dense_features/Suburb_indicator/ShapeShape,dense_features/Suburb_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Suburb_indicator/strided_sliceStridedSlice.dense_features/Suburb_indicator/Shape:output:0<dense_features/Suburb_indicator/strided_slice/stack:output:0>dense_features/Suburb_indicator/strided_slice/stack_1:output:0>dense_features/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/dense_features/Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
-dense_features/Suburb_indicator/Reshape/shapePack6dense_features/Suburb_indicator/strided_slice:output:08dense_features/Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Suburb_indicator/ReshapeReshape,dense_features/Suburb_indicator/Sum:output:06dense_features/Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????w
,dense_features/Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features/Type_indicator/ExpandDims
ExpandDimsinputs_type5dense_features/Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????}
<dense_features/Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
6dense_features/Type_indicator/to_sparse_input/NotEqualNotEqual1dense_features/Type_indicator/ExpandDims:output:0Edense_features/Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
5dense_features/Type_indicator/to_sparse_input/indicesWhere:dense_features/Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
4dense_features/Type_indicator/to_sparse_input/valuesGatherNd1dense_features/Type_indicator/ExpandDims:output:0=dense_features/Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
9dense_features/Type_indicator/to_sparse_input/dense_shapeShape1dense_features/Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
;dense_features/Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Hdense_features_type_indicator_none_lookup_lookuptablefindv2_table_handle=dense_features/Type_indicator/to_sparse_input/values:output:0Idense_features_type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9dense_features/Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
+dense_features/Type_indicator/SparseToDenseSparseToDense=dense_features/Type_indicator/to_sparse_input/indices:index:0Bdense_features/Type_indicator/to_sparse_input/dense_shape:output:0Ddense_features/Type_indicator/None_Lookup/LookupTableFindV2:values:0Bdense_features/Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????p
+dense_features/Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??r
-dense_features/Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    m
+dense_features/Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Type_indicator/one_hotOneHot3dense_features/Type_indicator/SparseToDense:dense:04dense_features/Type_indicator/one_hot/depth:output:04dense_features/Type_indicator/one_hot/Const:output:06dense_features/Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
3dense_features/Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
!dense_features/Type_indicator/SumSum.dense_features/Type_indicator/one_hot:output:0<dense_features/Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????}
#dense_features/Type_indicator/ShapeShape*dense_features/Type_indicator/Sum:output:0*
T0*
_output_shapes
:{
1dense_features/Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features/Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features/Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features/Type_indicator/strided_sliceStridedSlice,dense_features/Type_indicator/Shape:output:0:dense_features/Type_indicator/strided_slice/stack:output:0<dense_features/Type_indicator/strided_slice/stack_1:output:0<dense_features/Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features/Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features/Type_indicator/Reshape/shapePack4dense_features/Type_indicator/strided_slice:output:06dense_features/Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features/Type_indicator/ReshapeReshape*dense_features/Type_indicator/Sum:output:04dense_features/Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????m
"dense_features/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Year/ExpandDims
ExpandDimsinputs_year+dense_features/Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Year/CastCast'dense_features/Year/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????e
dense_features/Year/ShapeShapedense_features/Year/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Year/strided_sliceStridedSlice"dense_features/Year/Shape:output:00dense_features/Year/strided_slice/stack:output:02dense_features/Year/strided_slice/stack_1:output:02dense_features/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Year/Reshape/shapePack*dense_features/Year/strided_slice:output:0,dense_features/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Year/ReshapeReshapedense_features/Year/Cast:y:0*dense_features/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV2)dense_features/Bathrooms/Reshape:output:0(dense_features/Bedrooms/Reshape:output:0$dense_features/Cars/Reshape:output:0(dense_features/Distance/Reshape:output:0(dense_features/Latitude/Reshape:output:0'dense_features/LogArea/Reshape:output:0)dense_features/Longitude/Reshape:output:00dense_features/Method_indicator/Reshape:output:00dense_features/Suburb_indicator/Reshape:output:0.dense_features/Type_indicator/Reshape:output:0$dense_features/Year/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Price/MatMul/ReadVariableOpReadVariableOp$price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Price/MatMulMatMuldense_1/Relu:activations:0#Price/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
Price/BiasAdd/ReadVariableOpReadVariableOp%price_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Price/BiasAddBiasAddPrice/MatMul:product:0$Price/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentityPrice/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/BiasAdd/ReadVariableOp^Price/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp>^dense_features/Method_indicator/None_Lookup/LookupTableFindV2>^dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2<^dense_features/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2<
Price/BiasAdd/ReadVariableOpPrice/BiasAdd/ReadVariableOp2:
Price/MatMul/ReadVariableOpPrice/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2~
=dense_features/Method_indicator/None_Lookup/LookupTableFindV2=dense_features/Method_indicator/None_Lookup/LookupTableFindV22~
=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV22z
;dense_features/Type_indicator/None_Lookup/LookupTableFindV2;dense_features/Type_indicator/None_Lookup/LookupTableFindV2:U Q
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/LogArea:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Longitude:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Method:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Suburb:P	L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Type:P
L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
$__inference_signature_wrapper_435352
	bathrooms	
bedrooms	
cars	
distance
latitude
logarea
	longitude

method

suburb
type
year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	bathroomsbedroomscarsdistancelatitudelogarea	longitudemethodsuburbtypeyearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_434486o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:LH
#
_output_shapes
:?????????
!
_user_specified_name	LogArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Longitude:KG
#
_output_shapes
:?????????
 
_user_specified_nameMethod:KG
#
_output_shapes
:?????????
 
_user_specified_nameSuburb:I	E
#
_output_shapes
:?????????

_user_specified_nameType:I
E
#
_output_shapes
:?????????

_user_specified_nameYear:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_434695
features	

features_1	

features_2	

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_indicator_none_lookup_lookuptablefindv2_table_handle@
<suburb_indicator_none_lookup_lookuptablefindv2_default_value	=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_indicator/None_Lookup/LookupTableFindV2?,Type_indicator/None_Lookup/LookupTableFindV2c
Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bathrooms/ExpandDims
ExpandDimsfeatures!Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????v
Bathrooms/CastCastBathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Q
Bathrooms/ShapeShapeBathrooms/Cast:y:0*
T0*
_output_shapes
:g
Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bathrooms/strided_sliceStridedSliceBathrooms/Shape:output:0&Bathrooms/strided_slice/stack:output:0(Bathrooms/strided_slice/stack_1:output:0(Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bathrooms/Reshape/shapePack Bathrooms/strided_slice:output:0"Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bathrooms/ReshapeReshapeBathrooms/Cast:y:0 Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bedrooms/ExpandDims
ExpandDims
features_1 Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????t
Bedrooms/CastCastBedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????O
Bedrooms/ShapeShapeBedrooms/Cast:y:0*
T0*
_output_shapes
:f
Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bedrooms/strided_sliceStridedSliceBedrooms/Shape:output:0%Bedrooms/strided_slice/stack:output:0'Bedrooms/strided_slice/stack_1:output:0'Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bedrooms/Reshape/shapePackBedrooms/strided_slice:output:0!Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bedrooms/ReshapeReshapeBedrooms/Cast:y:0Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????y
Cars/ExpandDims
ExpandDims
features_2Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Cars/CastCastCars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Cars/ShapeShapeCars/Cast:y:0*
T0*
_output_shapes
:b
Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cars/strided_sliceStridedSliceCars/Shape:output:0!Cars/strided_slice/stack:output:0#Cars/strided_slice/stack_1:output:0#Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Cars/Reshape/shapePackCars/strided_slice:output:0Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Cars/ReshapeReshapeCars/Cast:y:0Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Distance/ExpandDims
ExpandDims
features_3 Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Distance/ShapeShapeDistance/ExpandDims:output:0*
T0*
_output_shapes
:f
Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Distance/strided_sliceStridedSliceDistance/Shape:output:0%Distance/strided_slice/stack:output:0'Distance/strided_slice/stack_1:output:0'Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Distance/Reshape/shapePackDistance/strided_slice:output:0!Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Distance/ReshapeReshapeDistance/ExpandDims:output:0Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Latitude/ExpandDims
ExpandDims
features_4 Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Latitude/ShapeShapeLatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Latitude/strided_sliceStridedSliceLatitude/Shape:output:0%Latitude/strided_slice/stack:output:0'Latitude/strided_slice/stack_1:output:0'Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Latitude/Reshape/shapePackLatitude/strided_slice:output:0!Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Latitude/ReshapeReshapeLatitude/ExpandDims:output:0Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
LogArea/ExpandDims
ExpandDims
features_5LogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????X
LogArea/ShapeShapeLogArea/ExpandDims:output:0*
T0*
_output_shapes
:e
LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LogArea/strided_sliceStridedSliceLogArea/Shape:output:0$LogArea/strided_slice/stack:output:0&LogArea/strided_slice/stack_1:output:0&LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LogArea/Reshape/shapePackLogArea/strided_slice:output:0 LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LogArea/ReshapeReshapeLogArea/ExpandDims:output:0LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Longitude/ExpandDims
ExpandDims
features_6!Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
Longitude/ShapeShapeLongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Longitude/strided_sliceStridedSliceLongitude/Shape:output:0&Longitude/strided_slice/stack:output:0(Longitude/strided_slice/stack_1:output:0(Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Longitude/Reshape/shapePack Longitude/strided_slice:output:0"Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Longitude/ReshapeReshapeLongitude/ExpandDims:output:0 Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Method_indicator/ExpandDims
ExpandDims
features_7(Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Method_indicator/to_sparse_input/NotEqualNotEqual$Method_indicator/ExpandDims:output:08Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Method_indicator/to_sparse_input/indicesWhere-Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Method_indicator/to_sparse_input/valuesGatherNd$Method_indicator/ExpandDims:output:00Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Method_indicator/to_sparse_input/dense_shapeShape$Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;method_indicator_none_lookup_lookuptablefindv2_table_handle0Method_indicator/to_sparse_input/values:output:0<method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Method_indicator/SparseToDenseSparseToDense0Method_indicator/to_sparse_input/indices:index:05Method_indicator/to_sparse_input/dense_shape:output:07Method_indicator/None_Lookup/LookupTableFindV2:values:05Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Method_indicator/ShapeShapeMethod_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Method_indicator/strided_sliceStridedSliceMethod_indicator/Shape:output:0-Method_indicator/strided_slice/stack:output:0/Method_indicator/strided_slice/stack_1:output:0/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_indicator/ExpandDims
ExpandDims
features_8(Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_indicator/to_sparse_input/NotEqualNotEqual$Suburb_indicator/ExpandDims:output:08Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_indicator/to_sparse_input/indicesWhere-Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_indicator/to_sparse_input/valuesGatherNd$Suburb_indicator/ExpandDims:output:00Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_indicator/to_sparse_input/dense_shapeShape$Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_indicator_none_lookup_lookuptablefindv2_table_handle0Suburb_indicator/to_sparse_input/values:output:0<suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Suburb_indicator/SparseToDenseSparseToDense0Suburb_indicator/to_sparse_input/indices:index:05Suburb_indicator/to_sparse_input/dense_shape:output:07Suburb_indicator/None_Lookup/LookupTableFindV2:values:05Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    a
Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/one_hotOneHot&Suburb_indicator/SparseToDense:dense:0'Suburb_indicator/one_hot/depth:output:0'Suburb_indicator/one_hot/Const:output:0)Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????y
&Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Suburb_indicator/SumSum!Suburb_indicator/one_hot:output:0/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????c
Suburb_indicator/ShapeShapeSuburb_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_indicator/strided_sliceStridedSliceSuburb_indicator/Shape:output:0-Suburb_indicator/strided_slice/stack:output:0/Suburb_indicator/strided_slice/stack_1:output:0/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/Reshape/shapePack'Suburb_indicator/strided_slice:output:0)Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_indicator/ReshapeReshapeSuburb_indicator/Sum:output:0'Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Type_indicator/ExpandDims
ExpandDims
features_9&Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Type_indicator/to_sparse_input/NotEqualNotEqual"Type_indicator/ExpandDims:output:06Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Type_indicator/to_sparse_input/indicesWhere+Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Type_indicator/to_sparse_input/valuesGatherNd"Type_indicator/ExpandDims:output:0.Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Type_indicator/to_sparse_input/dense_shapeShape"Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
,Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29type_indicator_none_lookup_lookuptablefindv2_table_handle.Type_indicator/to_sparse_input/values:output:0:type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Type_indicator/SparseToDenseSparseToDense.Type_indicator/to_sparse_input/indices:index:03Type_indicator/to_sparse_input/dense_shape:output:05Type_indicator/None_Lookup/LookupTableFindV2:values:03Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
Type_indicator/ShapeShapeType_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Type_indicator/strided_sliceStridedSliceType_indicator/Shape:output:0+Type_indicator/strided_slice/stack:output:0-Type_indicator/strided_slice/stack_1:output:0-Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????z
Year/ExpandDims
ExpandDimsfeatures_10Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0LogArea/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_indicator/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_indicator/None_Lookup/LookupTableFindV2-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_indicator/None_Lookup/LookupTableFindV2.Suburb_indicator/None_Lookup/LookupTableFindV22\
,Type_indicator/None_Lookup/LookupTableFindV2,Type_indicator/None_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:M	I
#
_output_shapes
:?????????
"
_user_specified_name
features:M
I
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?o
?
"__inference__traced_restore_436601
file_prefix<
(assignvariableop_sequential_dense_kernel:
??7
(assignvariableop_1_sequential_dense_bias:	??
,assignvariableop_2_sequential_dense_1_kernel:	?@8
*assignvariableop_3_sequential_dense_1_bias:@<
*assignvariableop_4_sequential_price_kernel:@6
(assignvariableop_5_sequential_price_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: F
2assignvariableop_15_adam_sequential_dense_kernel_m:
???
0assignvariableop_16_adam_sequential_dense_bias_m:	?G
4assignvariableop_17_adam_sequential_dense_1_kernel_m:	?@@
2assignvariableop_18_adam_sequential_dense_1_bias_m:@D
2assignvariableop_19_adam_sequential_price_kernel_m:@>
0assignvariableop_20_adam_sequential_price_bias_m:F
2assignvariableop_21_adam_sequential_dense_kernel_v:
???
0assignvariableop_22_adam_sequential_dense_bias_v:	?G
4assignvariableop_23_adam_sequential_dense_1_kernel_v:	?@@
2assignvariableop_24_adam_sequential_dense_1_bias_v:@D
2assignvariableop_25_adam_sequential_price_kernel_v:@>
0assignvariableop_26_adam_sequential_price_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_sequential_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_sequential_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_sequential_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_sequential_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_sequential_price_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp(assignvariableop_5_sequential_price_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_sequential_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_sequential_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_sequential_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_sequential_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_sequential_price_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_sequential_price_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_sequential_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_sequential_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_sequential_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_sequential_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_sequential_price_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_sequential_price_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?
!__inference__wrapped_model_434486
	bathrooms	
bedrooms	
cars	
distance
latitude
logarea
	longitude

method

suburb
type
year	Y
Usequential_dense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleZ
Vsequential_dense_features_method_indicator_none_lookup_lookuptablefindv2_default_value	Y
Usequential_dense_features_suburb_indicator_none_lookup_lookuptablefindv2_table_handleZ
Vsequential_dense_features_suburb_indicator_none_lookup_lookuptablefindv2_default_value	W
Ssequential_dense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleX
Tsequential_dense_features_type_indicator_none_lookup_lookuptablefindv2_default_value	C
/sequential_dense_matmul_readvariableop_resource:
???
0sequential_dense_biasadd_readvariableop_resource:	?D
1sequential_dense_1_matmul_readvariableop_resource:	?@@
2sequential_dense_1_biasadd_readvariableop_resource:@A
/sequential_price_matmul_readvariableop_resource:@>
0sequential_price_biasadd_readvariableop_resource:
identity??'sequential/Price/BiasAdd/ReadVariableOp?&sequential/Price/MatMul/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2?Hsequential/dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2?Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2m
sequential/dense_features/CastCastdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????o
 sequential/dense_features/Cast_1Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????n
 sequential/dense_features/Cast_2Castlogarea*

DstT0*

SrcT0*#
_output_shapes
:?????????p
 sequential/dense_features/Cast_3Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????}
2sequential/dense_features/Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.sequential/dense_features/Bathrooms/ExpandDims
ExpandDims	bathrooms;sequential/dense_features/Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
(sequential/dense_features/Bathrooms/CastCast7sequential/dense_features/Bathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
)sequential/dense_features/Bathrooms/ShapeShape,sequential/dense_features/Bathrooms/Cast:y:0*
T0*
_output_shapes
:?
7sequential/dense_features/Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9sequential/dense_features/Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential/dense_features/Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1sequential/dense_features/Bathrooms/strided_sliceStridedSlice2sequential/dense_features/Bathrooms/Shape:output:0@sequential/dense_features/Bathrooms/strided_slice/stack:output:0Bsequential/dense_features/Bathrooms/strided_slice/stack_1:output:0Bsequential/dense_features/Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3sequential/dense_features/Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1sequential/dense_features/Bathrooms/Reshape/shapePack:sequential/dense_features/Bathrooms/strided_slice:output:0<sequential/dense_features/Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
+sequential/dense_features/Bathrooms/ReshapeReshape,sequential/dense_features/Bathrooms/Cast:y:0:sequential/dense_features/Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????|
1sequential/dense_features/Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-sequential/dense_features/Bedrooms/ExpandDims
ExpandDimsbedrooms:sequential/dense_features/Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
'sequential/dense_features/Bedrooms/CastCast6sequential/dense_features/Bedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
(sequential/dense_features/Bedrooms/ShapeShape+sequential/dense_features/Bedrooms/Cast:y:0*
T0*
_output_shapes
:?
6sequential/dense_features/Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential/dense_features/Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential/dense_features/Bedrooms/strided_sliceStridedSlice1sequential/dense_features/Bedrooms/Shape:output:0?sequential/dense_features/Bedrooms/strided_slice/stack:output:0Asequential/dense_features/Bedrooms/strided_slice/stack_1:output:0Asequential/dense_features/Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential/dense_features/Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0sequential/dense_features/Bedrooms/Reshape/shapePack9sequential/dense_features/Bedrooms/strided_slice:output:0;sequential/dense_features/Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*sequential/dense_features/Bedrooms/ReshapeReshape+sequential/dense_features/Bedrooms/Cast:y:09sequential/dense_features/Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-sequential/dense_features/Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)sequential/dense_features/Cars/ExpandDims
ExpandDimscars6sequential/dense_features/Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#sequential/dense_features/Cars/CastCast2sequential/dense_features/Cars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$sequential/dense_features/Cars/ShapeShape'sequential/dense_features/Cars/Cast:y:0*
T0*
_output_shapes
:|
2sequential/dense_features/Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential/dense_features/Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential/dense_features/Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,sequential/dense_features/Cars/strided_sliceStridedSlice-sequential/dense_features/Cars/Shape:output:0;sequential/dense_features/Cars/strided_slice/stack:output:0=sequential/dense_features/Cars/strided_slice/stack_1:output:0=sequential/dense_features/Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.sequential/dense_features/Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,sequential/dense_features/Cars/Reshape/shapePack5sequential/dense_features/Cars/strided_slice:output:07sequential/dense_features/Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&sequential/dense_features/Cars/ReshapeReshape'sequential/dense_features/Cars/Cast:y:05sequential/dense_features/Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????|
1sequential/dense_features/Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-sequential/dense_features/Distance/ExpandDims
ExpandDims"sequential/dense_features/Cast:y:0:sequential/dense_features/Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
(sequential/dense_features/Distance/ShapeShape6sequential/dense_features/Distance/ExpandDims:output:0*
T0*
_output_shapes
:?
6sequential/dense_features/Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential/dense_features/Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential/dense_features/Distance/strided_sliceStridedSlice1sequential/dense_features/Distance/Shape:output:0?sequential/dense_features/Distance/strided_slice/stack:output:0Asequential/dense_features/Distance/strided_slice/stack_1:output:0Asequential/dense_features/Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential/dense_features/Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0sequential/dense_features/Distance/Reshape/shapePack9sequential/dense_features/Distance/strided_slice:output:0;sequential/dense_features/Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*sequential/dense_features/Distance/ReshapeReshape6sequential/dense_features/Distance/ExpandDims:output:09sequential/dense_features/Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????|
1sequential/dense_features/Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-sequential/dense_features/Latitude/ExpandDims
ExpandDims$sequential/dense_features/Cast_1:y:0:sequential/dense_features/Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
(sequential/dense_features/Latitude/ShapeShape6sequential/dense_features/Latitude/ExpandDims:output:0*
T0*
_output_shapes
:?
6sequential/dense_features/Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential/dense_features/Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential/dense_features/Latitude/strided_sliceStridedSlice1sequential/dense_features/Latitude/Shape:output:0?sequential/dense_features/Latitude/strided_slice/stack:output:0Asequential/dense_features/Latitude/strided_slice/stack_1:output:0Asequential/dense_features/Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential/dense_features/Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0sequential/dense_features/Latitude/Reshape/shapePack9sequential/dense_features/Latitude/strided_slice:output:0;sequential/dense_features/Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*sequential/dense_features/Latitude/ReshapeReshape6sequential/dense_features/Latitude/ExpandDims:output:09sequential/dense_features/Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0sequential/dense_features/LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,sequential/dense_features/LogArea/ExpandDims
ExpandDims$sequential/dense_features/Cast_2:y:09sequential/dense_features/LogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
'sequential/dense_features/LogArea/ShapeShape5sequential/dense_features/LogArea/ExpandDims:output:0*
T0*
_output_shapes
:
5sequential/dense_features/LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7sequential/dense_features/LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential/dense_features/LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/sequential/dense_features/LogArea/strided_sliceStridedSlice0sequential/dense_features/LogArea/Shape:output:0>sequential/dense_features/LogArea/strided_slice/stack:output:0@sequential/dense_features/LogArea/strided_slice/stack_1:output:0@sequential/dense_features/LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1sequential/dense_features/LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/sequential/dense_features/LogArea/Reshape/shapePack8sequential/dense_features/LogArea/strided_slice:output:0:sequential/dense_features/LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)sequential/dense_features/LogArea/ReshapeReshape5sequential/dense_features/LogArea/ExpandDims:output:08sequential/dense_features/LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????}
2sequential/dense_features/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.sequential/dense_features/Longitude/ExpandDims
ExpandDims$sequential/dense_features/Cast_3:y:0;sequential/dense_features/Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
)sequential/dense_features/Longitude/ShapeShape7sequential/dense_features/Longitude/ExpandDims:output:0*
T0*
_output_shapes
:?
7sequential/dense_features/Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9sequential/dense_features/Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential/dense_features/Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1sequential/dense_features/Longitude/strided_sliceStridedSlice2sequential/dense_features/Longitude/Shape:output:0@sequential/dense_features/Longitude/strided_slice/stack:output:0Bsequential/dense_features/Longitude/strided_slice/stack_1:output:0Bsequential/dense_features/Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3sequential/dense_features/Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1sequential/dense_features/Longitude/Reshape/shapePack:sequential/dense_features/Longitude/strided_slice:output:0<sequential/dense_features/Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
+sequential/dense_features/Longitude/ReshapeReshape7sequential/dense_features/Longitude/ExpandDims:output:0:sequential/dense_features/Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9sequential/dense_features/Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential/dense_features/Method_indicator/ExpandDims
ExpandDimsmethodBsequential/dense_features/Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Isequential/dense_features/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Csequential/dense_features/Method_indicator/to_sparse_input/NotEqualNotEqual>sequential/dense_features/Method_indicator/ExpandDims:output:0Rsequential/dense_features/Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Bsequential/dense_features/Method_indicator/to_sparse_input/indicesWhereGsequential/dense_features/Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Asequential/dense_features/Method_indicator/to_sparse_input/valuesGatherNd>sequential/dense_features/Method_indicator/ExpandDims:output:0Jsequential/dense_features/Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Fsequential/dense_features/Method_indicator/to_sparse_input/dense_shapeShape>sequential/dense_features/Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Usequential_dense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleJsequential/dense_features/Method_indicator/to_sparse_input/values:output:0Vsequential_dense_features_method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Fsequential/dense_features/Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
8sequential/dense_features/Method_indicator/SparseToDenseSparseToDenseJsequential/dense_features/Method_indicator/to_sparse_input/indices:index:0Osequential/dense_features/Method_indicator/to_sparse_input/dense_shape:output:0Qsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2:values:0Osequential/dense_features/Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????}
8sequential/dense_features/Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
:sequential/dense_features/Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    z
8sequential/dense_features/Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
2sequential/dense_features/Method_indicator/one_hotOneHot@sequential/dense_features/Method_indicator/SparseToDense:dense:0Asequential/dense_features/Method_indicator/one_hot/depth:output:0Asequential/dense_features/Method_indicator/one_hot/Const:output:0Csequential/dense_features/Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
@sequential/dense_features/Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
.sequential/dense_features/Method_indicator/SumSum;sequential/dense_features/Method_indicator/one_hot:output:0Isequential/dense_features/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
0sequential/dense_features/Method_indicator/ShapeShape7sequential/dense_features/Method_indicator/Sum:output:0*
T0*
_output_shapes
:?
>sequential/dense_features/Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/dense_features/Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/dense_features/Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/Method_indicator/strided_sliceStridedSlice9sequential/dense_features/Method_indicator/Shape:output:0Gsequential/dense_features/Method_indicator/strided_slice/stack:output:0Isequential/dense_features/Method_indicator/strided_slice/stack_1:output:0Isequential/dense_features/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential/dense_features/Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8sequential/dense_features/Method_indicator/Reshape/shapePackAsequential/dense_features/Method_indicator/strided_slice:output:0Csequential/dense_features/Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential/dense_features/Method_indicator/ReshapeReshape7sequential/dense_features/Method_indicator/Sum:output:0Asequential/dense_features/Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9sequential/dense_features/Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential/dense_features/Suburb_indicator/ExpandDims
ExpandDimssuburbBsequential/dense_features/Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Isequential/dense_features/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Csequential/dense_features/Suburb_indicator/to_sparse_input/NotEqualNotEqual>sequential/dense_features/Suburb_indicator/ExpandDims:output:0Rsequential/dense_features/Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Bsequential/dense_features/Suburb_indicator/to_sparse_input/indicesWhereGsequential/dense_features/Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Asequential/dense_features/Suburb_indicator/to_sparse_input/valuesGatherNd>sequential/dense_features/Suburb_indicator/ExpandDims:output:0Jsequential/dense_features/Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Fsequential/dense_features/Suburb_indicator/to_sparse_input/dense_shapeShape>sequential/dense_features/Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Hsequential/dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Usequential_dense_features_suburb_indicator_none_lookup_lookuptablefindv2_table_handleJsequential/dense_features/Suburb_indicator/to_sparse_input/values:output:0Vsequential_dense_features_suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Fsequential/dense_features/Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
8sequential/dense_features/Suburb_indicator/SparseToDenseSparseToDenseJsequential/dense_features/Suburb_indicator/to_sparse_input/indices:index:0Osequential/dense_features/Suburb_indicator/to_sparse_input/dense_shape:output:0Qsequential/dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2:values:0Osequential/dense_features/Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????}
8sequential/dense_features/Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
:sequential/dense_features/Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    {
8sequential/dense_features/Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
2sequential/dense_features/Suburb_indicator/one_hotOneHot@sequential/dense_features/Suburb_indicator/SparseToDense:dense:0Asequential/dense_features/Suburb_indicator/one_hot/depth:output:0Asequential/dense_features/Suburb_indicator/one_hot/Const:output:0Csequential/dense_features/Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
@sequential/dense_features/Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
.sequential/dense_features/Suburb_indicator/SumSum;sequential/dense_features/Suburb_indicator/one_hot:output:0Isequential/dense_features/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
0sequential/dense_features/Suburb_indicator/ShapeShape7sequential/dense_features/Suburb_indicator/Sum:output:0*
T0*
_output_shapes
:?
>sequential/dense_features/Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/dense_features/Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/dense_features/Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/Suburb_indicator/strided_sliceStridedSlice9sequential/dense_features/Suburb_indicator/Shape:output:0Gsequential/dense_features/Suburb_indicator/strided_slice/stack:output:0Isequential/dense_features/Suburb_indicator/strided_slice/stack_1:output:0Isequential/dense_features/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
:sequential/dense_features/Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
8sequential/dense_features/Suburb_indicator/Reshape/shapePackAsequential/dense_features/Suburb_indicator/strided_slice:output:0Csequential/dense_features/Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential/dense_features/Suburb_indicator/ReshapeReshape7sequential/dense_features/Suburb_indicator/Sum:output:0Asequential/dense_features/Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
7sequential/dense_features/Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3sequential/dense_features/Type_indicator/ExpandDims
ExpandDimstype@sequential/dense_features/Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Gsequential/dense_features/Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Asequential/dense_features/Type_indicator/to_sparse_input/NotEqualNotEqual<sequential/dense_features/Type_indicator/ExpandDims:output:0Psequential/dense_features/Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
@sequential/dense_features/Type_indicator/to_sparse_input/indicesWhereEsequential/dense_features/Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
?sequential/dense_features/Type_indicator/to_sparse_input/valuesGatherNd<sequential/dense_features/Type_indicator/ExpandDims:output:0Hsequential/dense_features/Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Dsequential/dense_features/Type_indicator/to_sparse_input/dense_shapeShape<sequential/dense_features/Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Ssequential_dense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleHsequential/dense_features/Type_indicator/to_sparse_input/values:output:0Tsequential_dense_features_type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Dsequential/dense_features/Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
6sequential/dense_features/Type_indicator/SparseToDenseSparseToDenseHsequential/dense_features/Type_indicator/to_sparse_input/indices:index:0Msequential/dense_features/Type_indicator/to_sparse_input/dense_shape:output:0Osequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2:values:0Msequential/dense_features/Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????{
6sequential/dense_features/Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??}
8sequential/dense_features/Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
6sequential/dense_features/Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential/dense_features/Type_indicator/one_hotOneHot>sequential/dense_features/Type_indicator/SparseToDense:dense:0?sequential/dense_features/Type_indicator/one_hot/depth:output:0?sequential/dense_features/Type_indicator/one_hot/Const:output:0Asequential/dense_features/Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
>sequential/dense_features/Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
,sequential/dense_features/Type_indicator/SumSum9sequential/dense_features/Type_indicator/one_hot:output:0Gsequential/dense_features/Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
.sequential/dense_features/Type_indicator/ShapeShape5sequential/dense_features/Type_indicator/Sum:output:0*
T0*
_output_shapes
:?
<sequential/dense_features/Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/dense_features/Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/dense_features/Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/dense_features/Type_indicator/strided_sliceStridedSlice7sequential/dense_features/Type_indicator/Shape:output:0Esequential/dense_features/Type_indicator/strided_slice/stack:output:0Gsequential/dense_features/Type_indicator/strided_slice/stack_1:output:0Gsequential/dense_features/Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential/dense_features/Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6sequential/dense_features/Type_indicator/Reshape/shapePack?sequential/dense_features/Type_indicator/strided_slice:output:0Asequential/dense_features/Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0sequential/dense_features/Type_indicator/ReshapeReshape5sequential/dense_features/Type_indicator/Sum:output:0?sequential/dense_features/Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-sequential/dense_features/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)sequential/dense_features/Year/ExpandDims
ExpandDimsyear6sequential/dense_features/Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#sequential/dense_features/Year/CastCast2sequential/dense_features/Year/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$sequential/dense_features/Year/ShapeShape'sequential/dense_features/Year/Cast:y:0*
T0*
_output_shapes
:|
2sequential/dense_features/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential/dense_features/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential/dense_features/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,sequential/dense_features/Year/strided_sliceStridedSlice-sequential/dense_features/Year/Shape:output:0;sequential/dense_features/Year/strided_slice/stack:output:0=sequential/dense_features/Year/strided_slice/stack_1:output:0=sequential/dense_features/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.sequential/dense_features/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,sequential/dense_features/Year/Reshape/shapePack5sequential/dense_features/Year/strided_slice:output:07sequential/dense_features/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&sequential/dense_features/Year/ReshapeReshape'sequential/dense_features/Year/Cast:y:05sequential/dense_features/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%sequential/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 sequential/dense_features/concatConcatV24sequential/dense_features/Bathrooms/Reshape:output:03sequential/dense_features/Bedrooms/Reshape:output:0/sequential/dense_features/Cars/Reshape:output:03sequential/dense_features/Distance/Reshape:output:03sequential/dense_features/Latitude/Reshape:output:02sequential/dense_features/LogArea/Reshape:output:04sequential/dense_features/Longitude/Reshape:output:0;sequential/dense_features/Method_indicator/Reshape:output:0;sequential/dense_features/Suburb_indicator/Reshape:output:09sequential/dense_features/Type_indicator/Reshape:output:0/sequential/dense_features/Year/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential/dense/MatMulMatMul)sequential/dense_features/concat:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
&sequential/Price/MatMul/ReadVariableOpReadVariableOp/sequential_price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential/Price/MatMulMatMul%sequential/dense_1/Relu:activations:0.sequential/Price/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/Price/BiasAdd/ReadVariableOpReadVariableOp0sequential_price_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/Price/BiasAddBiasAdd!sequential/Price/MatMul:product:0/sequential/Price/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!sequential/Price/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/Price/BiasAdd/ReadVariableOp'^sequential/Price/MatMul/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOpI^sequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2I^sequential/dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2G^sequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2R
'sequential/Price/BiasAdd/ReadVariableOp'sequential/Price/BiasAdd/ReadVariableOp2P
&sequential/Price/MatMul/ReadVariableOp&sequential/Price/MatMul/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2?
Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV22?
Hsequential/dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2Hsequential/dense_features/Suburb_indicator/None_Lookup/LookupTableFindV22?
Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2:N J
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:LH
#
_output_shapes
:?????????
!
_user_specified_name	LogArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Longitude:KG
#
_output_shapes
:?????????
 
_user_specified_nameMethod:KG
#
_output_shapes
:?????????
 
_user_specified_nameSuburb:I	E
#
_output_shapes
:?????????

_user_specified_nameType:I
E
#
_output_shapes
:?????????

_user_specified_nameYear:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
A__inference_Price_layer_call_and_return_conditional_losses_434753

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
-
__inference__destroyer_436321
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_436284

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_435430
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_logarea
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_bathroomsinputs_bedroomsinputs_carsinputs_distanceinputs_latitudeinputs_logareainputs_longitudeinputs_methodinputs_suburbinputs_typeinputs_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_435147o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/LogArea:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Longitude:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Method:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Suburb:P	L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Type:P
L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_435035
features	

features_1	

features_2	

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_indicator_none_lookup_lookuptablefindv2_table_handle@
<suburb_indicator_none_lookup_lookuptablefindv2_default_value	=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_indicator/None_Lookup/LookupTableFindV2?,Type_indicator/None_Lookup/LookupTableFindV2c
Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bathrooms/ExpandDims
ExpandDimsfeatures!Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????v
Bathrooms/CastCastBathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Q
Bathrooms/ShapeShapeBathrooms/Cast:y:0*
T0*
_output_shapes
:g
Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bathrooms/strided_sliceStridedSliceBathrooms/Shape:output:0&Bathrooms/strided_slice/stack:output:0(Bathrooms/strided_slice/stack_1:output:0(Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bathrooms/Reshape/shapePack Bathrooms/strided_slice:output:0"Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bathrooms/ReshapeReshapeBathrooms/Cast:y:0 Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bedrooms/ExpandDims
ExpandDims
features_1 Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????t
Bedrooms/CastCastBedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????O
Bedrooms/ShapeShapeBedrooms/Cast:y:0*
T0*
_output_shapes
:f
Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bedrooms/strided_sliceStridedSliceBedrooms/Shape:output:0%Bedrooms/strided_slice/stack:output:0'Bedrooms/strided_slice/stack_1:output:0'Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bedrooms/Reshape/shapePackBedrooms/strided_slice:output:0!Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bedrooms/ReshapeReshapeBedrooms/Cast:y:0Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????y
Cars/ExpandDims
ExpandDims
features_2Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Cars/CastCastCars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Cars/ShapeShapeCars/Cast:y:0*
T0*
_output_shapes
:b
Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cars/strided_sliceStridedSliceCars/Shape:output:0!Cars/strided_slice/stack:output:0#Cars/strided_slice/stack_1:output:0#Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Cars/Reshape/shapePackCars/strided_slice:output:0Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Cars/ReshapeReshapeCars/Cast:y:0Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Distance/ExpandDims
ExpandDims
features_3 Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Distance/ShapeShapeDistance/ExpandDims:output:0*
T0*
_output_shapes
:f
Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Distance/strided_sliceStridedSliceDistance/Shape:output:0%Distance/strided_slice/stack:output:0'Distance/strided_slice/stack_1:output:0'Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Distance/Reshape/shapePackDistance/strided_slice:output:0!Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Distance/ReshapeReshapeDistance/ExpandDims:output:0Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Latitude/ExpandDims
ExpandDims
features_4 Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Latitude/ShapeShapeLatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Latitude/strided_sliceStridedSliceLatitude/Shape:output:0%Latitude/strided_slice/stack:output:0'Latitude/strided_slice/stack_1:output:0'Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Latitude/Reshape/shapePackLatitude/strided_slice:output:0!Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Latitude/ReshapeReshapeLatitude/ExpandDims:output:0Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
LogArea/ExpandDims
ExpandDims
features_5LogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????X
LogArea/ShapeShapeLogArea/ExpandDims:output:0*
T0*
_output_shapes
:e
LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LogArea/strided_sliceStridedSliceLogArea/Shape:output:0$LogArea/strided_slice/stack:output:0&LogArea/strided_slice/stack_1:output:0&LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LogArea/Reshape/shapePackLogArea/strided_slice:output:0 LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LogArea/ReshapeReshapeLogArea/ExpandDims:output:0LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Longitude/ExpandDims
ExpandDims
features_6!Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
Longitude/ShapeShapeLongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Longitude/strided_sliceStridedSliceLongitude/Shape:output:0&Longitude/strided_slice/stack:output:0(Longitude/strided_slice/stack_1:output:0(Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Longitude/Reshape/shapePack Longitude/strided_slice:output:0"Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Longitude/ReshapeReshapeLongitude/ExpandDims:output:0 Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Method_indicator/ExpandDims
ExpandDims
features_7(Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Method_indicator/to_sparse_input/NotEqualNotEqual$Method_indicator/ExpandDims:output:08Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Method_indicator/to_sparse_input/indicesWhere-Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Method_indicator/to_sparse_input/valuesGatherNd$Method_indicator/ExpandDims:output:00Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Method_indicator/to_sparse_input/dense_shapeShape$Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;method_indicator_none_lookup_lookuptablefindv2_table_handle0Method_indicator/to_sparse_input/values:output:0<method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Method_indicator/SparseToDenseSparseToDense0Method_indicator/to_sparse_input/indices:index:05Method_indicator/to_sparse_input/dense_shape:output:07Method_indicator/None_Lookup/LookupTableFindV2:values:05Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Method_indicator/ShapeShapeMethod_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Method_indicator/strided_sliceStridedSliceMethod_indicator/Shape:output:0-Method_indicator/strided_slice/stack:output:0/Method_indicator/strided_slice/stack_1:output:0/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_indicator/ExpandDims
ExpandDims
features_8(Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_indicator/to_sparse_input/NotEqualNotEqual$Suburb_indicator/ExpandDims:output:08Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_indicator/to_sparse_input/indicesWhere-Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_indicator/to_sparse_input/valuesGatherNd$Suburb_indicator/ExpandDims:output:00Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_indicator/to_sparse_input/dense_shapeShape$Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_indicator_none_lookup_lookuptablefindv2_table_handle0Suburb_indicator/to_sparse_input/values:output:0<suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Suburb_indicator/SparseToDenseSparseToDense0Suburb_indicator/to_sparse_input/indices:index:05Suburb_indicator/to_sparse_input/dense_shape:output:07Suburb_indicator/None_Lookup/LookupTableFindV2:values:05Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    a
Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/one_hotOneHot&Suburb_indicator/SparseToDense:dense:0'Suburb_indicator/one_hot/depth:output:0'Suburb_indicator/one_hot/Const:output:0)Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????y
&Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Suburb_indicator/SumSum!Suburb_indicator/one_hot:output:0/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????c
Suburb_indicator/ShapeShapeSuburb_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_indicator/strided_sliceStridedSliceSuburb_indicator/Shape:output:0-Suburb_indicator/strided_slice/stack:output:0/Suburb_indicator/strided_slice/stack_1:output:0/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/Reshape/shapePack'Suburb_indicator/strided_slice:output:0)Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_indicator/ReshapeReshapeSuburb_indicator/Sum:output:0'Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Type_indicator/ExpandDims
ExpandDims
features_9&Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Type_indicator/to_sparse_input/NotEqualNotEqual"Type_indicator/ExpandDims:output:06Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Type_indicator/to_sparse_input/indicesWhere+Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Type_indicator/to_sparse_input/valuesGatherNd"Type_indicator/ExpandDims:output:0.Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Type_indicator/to_sparse_input/dense_shapeShape"Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
,Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29type_indicator_none_lookup_lookuptablefindv2_table_handle.Type_indicator/to_sparse_input/values:output:0:type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Type_indicator/SparseToDenseSparseToDense.Type_indicator/to_sparse_input/indices:index:03Type_indicator/to_sparse_input/dense_shape:output:05Type_indicator/None_Lookup/LookupTableFindV2:values:03Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
Type_indicator/ShapeShapeType_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Type_indicator/strided_sliceStridedSliceType_indicator/Shape:output:0+Type_indicator/strided_slice/stack:output:0-Type_indicator/strided_slice/stack_1:output:0-Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????z
Year/ExpandDims
ExpandDimsfeatures_10Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0LogArea/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_indicator/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_indicator/None_Lookup/LookupTableFindV2-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_indicator/None_Lookup/LookupTableFindV2.Suburb_indicator/None_Lookup/LookupTableFindV22\
,Type_indicator/None_Lookup/LookupTableFindV2,Type_indicator/None_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:M	I
#
_output_shapes
:?????????
"
_user_specified_name
features:M
I
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
A__inference_dense_layer_call_and_return_conditional_losses_436264

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_Price_layer_call_fn_436293

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Price_layer_call_and_return_conditional_losses_434753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference__initializer_4363522
.table_init274_lookuptableimportv2_table_handle*
&table_init274_lookuptableimportv2_keys,
(table_init274_lookuptableimportv2_values	
identity??!table_init274/LookupTableImportV2?
!table_init274/LookupTableImportV2LookupTableImportV2.table_init274_lookuptableimportv2_table_handle&table_init274_lookuptableimportv2_keys(table_init274_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init274/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init274/LookupTableImportV2!table_init274/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?	
?
A__inference_Price_layer_call_and_return_conditional_losses_436303

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_435632
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_logarea
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	N
Jdense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_method_indicator_none_lookup_lookuptablefindv2_default_value	N
Jdense_features_suburb_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_suburb_indicator_none_lookup_lookuptablefindv2_default_value	L
Hdense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_type_indicator_none_lookup_lookuptablefindv2_default_value	8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@6
$price_matmul_readvariableop_resource:@3
%price_biasadd_readvariableop_resource:
identity??Price/BiasAdd/ReadVariableOp?Price/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?=dense_features/Method_indicator/None_Lookup/LookupTableFindV2?=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2?;dense_features/Type_indicator/None_Lookup/LookupTableFindV2i
dense_features/CastCastinputs_distance*

DstT0*

SrcT0*#
_output_shapes
:?????????k
dense_features/Cast_1Castinputs_latitude*

DstT0*

SrcT0*#
_output_shapes
:?????????j
dense_features/Cast_2Castinputs_logarea*

DstT0*

SrcT0*#
_output_shapes
:?????????l
dense_features/Cast_3Castinputs_longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????r
'dense_features/Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#dense_features/Bathrooms/ExpandDims
ExpandDimsinputs_bathrooms0dense_features/Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Bathrooms/CastCast,dense_features/Bathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????o
dense_features/Bathrooms/ShapeShape!dense_features/Bathrooms/Cast:y:0*
T0*
_output_shapes
:v
,dense_features/Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.dense_features/Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.dense_features/Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&dense_features/Bathrooms/strided_sliceStridedSlice'dense_features/Bathrooms/Shape:output:05dense_features/Bathrooms/strided_slice/stack:output:07dense_features/Bathrooms/strided_slice/stack_1:output:07dense_features/Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(dense_features/Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
&dense_features/Bathrooms/Reshape/shapePack/dense_features/Bathrooms/strided_slice:output:01dense_features/Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 dense_features/Bathrooms/ReshapeReshape!dense_features/Bathrooms/Cast:y:0/dense_features/Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????q
&dense_features/Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Bedrooms/ExpandDims
ExpandDimsinputs_bedrooms/dense_features/Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Bedrooms/CastCast+dense_features/Bedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????m
dense_features/Bedrooms/ShapeShape dense_features/Bedrooms/Cast:y:0*
T0*
_output_shapes
:u
+dense_features/Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Bedrooms/strided_sliceStridedSlice&dense_features/Bedrooms/Shape:output:04dense_features/Bedrooms/strided_slice/stack:output:06dense_features/Bedrooms/strided_slice/stack_1:output:06dense_features/Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Bedrooms/Reshape/shapePack.dense_features/Bedrooms/strided_slice:output:00dense_features/Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Bedrooms/ReshapeReshape dense_features/Bedrooms/Cast:y:0.dense_features/Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????m
"dense_features/Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Cars/ExpandDims
ExpandDimsinputs_cars+dense_features/Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Cars/CastCast'dense_features/Cars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????e
dense_features/Cars/ShapeShapedense_features/Cars/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Cars/strided_sliceStridedSlice"dense_features/Cars/Shape:output:00dense_features/Cars/strided_slice/stack:output:02dense_features/Cars/strided_slice/stack_1:output:02dense_features/Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Cars/Reshape/shapePack*dense_features/Cars/strided_slice:output:0,dense_features/Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Cars/ReshapeReshapedense_features/Cars/Cast:y:0*dense_features/Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????q
&dense_features/Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Distance/ExpandDims
ExpandDimsdense_features/Cast:y:0/dense_features/Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
dense_features/Distance/ShapeShape+dense_features/Distance/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Distance/strided_sliceStridedSlice&dense_features/Distance/Shape:output:04dense_features/Distance/strided_slice/stack:output:06dense_features/Distance/strided_slice/stack_1:output:06dense_features/Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Distance/Reshape/shapePack.dense_features/Distance/strided_slice:output:00dense_features/Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Distance/ReshapeReshape+dense_features/Distance/ExpandDims:output:0.dense_features/Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????q
&dense_features/Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Latitude/ExpandDims
ExpandDimsdense_features/Cast_1:y:0/dense_features/Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
dense_features/Latitude/ShapeShape+dense_features/Latitude/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Latitude/strided_sliceStridedSlice&dense_features/Latitude/Shape:output:04dense_features/Latitude/strided_slice/stack:output:06dense_features/Latitude/strided_slice/stack_1:output:06dense_features/Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Latitude/Reshape/shapePack.dense_features/Latitude/strided_slice:output:00dense_features/Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Latitude/ReshapeReshape+dense_features/Latitude/ExpandDims:output:0.dense_features/Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%dense_features/LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!dense_features/LogArea/ExpandDims
ExpandDimsdense_features/Cast_2:y:0.dense_features/LogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????v
dense_features/LogArea/ShapeShape*dense_features/LogArea/ExpandDims:output:0*
T0*
_output_shapes
:t
*dense_features/LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,dense_features/LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,dense_features/LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$dense_features/LogArea/strided_sliceStridedSlice%dense_features/LogArea/Shape:output:03dense_features/LogArea/strided_slice/stack:output:05dense_features/LogArea/strided_slice/stack_1:output:05dense_features/LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&dense_features/LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$dense_features/LogArea/Reshape/shapePack-dense_features/LogArea/strided_slice:output:0/dense_features/LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/LogArea/ReshapeReshape*dense_features/LogArea/ExpandDims:output:0-dense_features/LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'dense_features/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#dense_features/Longitude/ExpandDims
ExpandDimsdense_features/Cast_3:y:00dense_features/Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????z
dense_features/Longitude/ShapeShape,dense_features/Longitude/ExpandDims:output:0*
T0*
_output_shapes
:v
,dense_features/Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.dense_features/Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.dense_features/Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&dense_features/Longitude/strided_sliceStridedSlice'dense_features/Longitude/Shape:output:05dense_features/Longitude/strided_slice/stack:output:07dense_features/Longitude/strided_slice/stack_1:output:07dense_features/Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(dense_features/Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
&dense_features/Longitude/Reshape/shapePack/dense_features/Longitude/strided_slice:output:01dense_features/Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 dense_features/Longitude/ReshapeReshape,dense_features/Longitude/ExpandDims:output:0/dense_features/Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Method_indicator/ExpandDims
ExpandDimsinputs_method7dense_features/Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Method_indicator/to_sparse_input/NotEqualNotEqual3dense_features/Method_indicator/ExpandDims:output:0Gdense_features/Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Method_indicator/to_sparse_input/indicesWhere<dense_features/Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Method_indicator/to_sparse_input/valuesGatherNd3dense_features/Method_indicator/ExpandDims:output:0?dense_features/Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Method_indicator/to_sparse_input/dense_shapeShape3dense_features/Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features/Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_method_indicator_none_lookup_lookuptablefindv2_table_handle?dense_features/Method_indicator/to_sparse_input/values:output:0Kdense_features_method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features/Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/Method_indicator/SparseToDenseSparseToDense?dense_features/Method_indicator/to_sparse_input/indices:index:0Ddense_features/Method_indicator/to_sparse_input/dense_shape:output:0Fdense_features/Method_indicator/None_Lookup/LookupTableFindV2:values:0Ddense_features/Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features/Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features/Method_indicator/one_hotOneHot5dense_features/Method_indicator/SparseToDense:dense:06dense_features/Method_indicator/one_hot/depth:output:06dense_features/Method_indicator/one_hot/Const:output:08dense_features/Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features/Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/Method_indicator/SumSum0dense_features/Method_indicator/one_hot:output:0>dense_features/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features/Method_indicator/ShapeShape,dense_features/Method_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Method_indicator/strided_sliceStridedSlice.dense_features/Method_indicator/Shape:output:0<dense_features/Method_indicator/strided_slice/stack:output:0>dense_features/Method_indicator/strided_slice/stack_1:output:0>dense_features/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/Method_indicator/Reshape/shapePack6dense_features/Method_indicator/strided_slice:output:08dense_features/Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Method_indicator/ReshapeReshape,dense_features/Method_indicator/Sum:output:06dense_features/Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Suburb_indicator/ExpandDims
ExpandDimsinputs_suburb7dense_features/Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Suburb_indicator/to_sparse_input/NotEqualNotEqual3dense_features/Suburb_indicator/ExpandDims:output:0Gdense_features/Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Suburb_indicator/to_sparse_input/indicesWhere<dense_features/Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Suburb_indicator/to_sparse_input/valuesGatherNd3dense_features/Suburb_indicator/ExpandDims:output:0?dense_features/Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Suburb_indicator/to_sparse_input/dense_shapeShape3dense_features/Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_suburb_indicator_none_lookup_lookuptablefindv2_table_handle?dense_features/Suburb_indicator/to_sparse_input/values:output:0Kdense_features_suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features/Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/Suburb_indicator/SparseToDenseSparseToDense?dense_features/Suburb_indicator/to_sparse_input/indices:index:0Ddense_features/Suburb_indicator/to_sparse_input/dense_shape:output:0Fdense_features/Suburb_indicator/None_Lookup/LookupTableFindV2:values:0Ddense_features/Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    p
-dense_features/Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
'dense_features/Suburb_indicator/one_hotOneHot5dense_features/Suburb_indicator/SparseToDense:dense:06dense_features/Suburb_indicator/one_hot/depth:output:06dense_features/Suburb_indicator/one_hot/Const:output:08dense_features/Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
5dense_features/Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/Suburb_indicator/SumSum0dense_features/Suburb_indicator/one_hot:output:0>dense_features/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
%dense_features/Suburb_indicator/ShapeShape,dense_features/Suburb_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Suburb_indicator/strided_sliceStridedSlice.dense_features/Suburb_indicator/Shape:output:0<dense_features/Suburb_indicator/strided_slice/stack:output:0>dense_features/Suburb_indicator/strided_slice/stack_1:output:0>dense_features/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/dense_features/Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
-dense_features/Suburb_indicator/Reshape/shapePack6dense_features/Suburb_indicator/strided_slice:output:08dense_features/Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Suburb_indicator/ReshapeReshape,dense_features/Suburb_indicator/Sum:output:06dense_features/Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????w
,dense_features/Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features/Type_indicator/ExpandDims
ExpandDimsinputs_type5dense_features/Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????}
<dense_features/Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
6dense_features/Type_indicator/to_sparse_input/NotEqualNotEqual1dense_features/Type_indicator/ExpandDims:output:0Edense_features/Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
5dense_features/Type_indicator/to_sparse_input/indicesWhere:dense_features/Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
4dense_features/Type_indicator/to_sparse_input/valuesGatherNd1dense_features/Type_indicator/ExpandDims:output:0=dense_features/Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
9dense_features/Type_indicator/to_sparse_input/dense_shapeShape1dense_features/Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
;dense_features/Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Hdense_features_type_indicator_none_lookup_lookuptablefindv2_table_handle=dense_features/Type_indicator/to_sparse_input/values:output:0Idense_features_type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9dense_features/Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
+dense_features/Type_indicator/SparseToDenseSparseToDense=dense_features/Type_indicator/to_sparse_input/indices:index:0Bdense_features/Type_indicator/to_sparse_input/dense_shape:output:0Ddense_features/Type_indicator/None_Lookup/LookupTableFindV2:values:0Bdense_features/Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????p
+dense_features/Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??r
-dense_features/Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    m
+dense_features/Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Type_indicator/one_hotOneHot3dense_features/Type_indicator/SparseToDense:dense:04dense_features/Type_indicator/one_hot/depth:output:04dense_features/Type_indicator/one_hot/Const:output:06dense_features/Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
3dense_features/Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
!dense_features/Type_indicator/SumSum.dense_features/Type_indicator/one_hot:output:0<dense_features/Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????}
#dense_features/Type_indicator/ShapeShape*dense_features/Type_indicator/Sum:output:0*
T0*
_output_shapes
:{
1dense_features/Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features/Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features/Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features/Type_indicator/strided_sliceStridedSlice,dense_features/Type_indicator/Shape:output:0:dense_features/Type_indicator/strided_slice/stack:output:0<dense_features/Type_indicator/strided_slice/stack_1:output:0<dense_features/Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features/Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features/Type_indicator/Reshape/shapePack4dense_features/Type_indicator/strided_slice:output:06dense_features/Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features/Type_indicator/ReshapeReshape*dense_features/Type_indicator/Sum:output:04dense_features/Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????m
"dense_features/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Year/ExpandDims
ExpandDimsinputs_year+dense_features/Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Year/CastCast'dense_features/Year/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????e
dense_features/Year/ShapeShapedense_features/Year/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Year/strided_sliceStridedSlice"dense_features/Year/Shape:output:00dense_features/Year/strided_slice/stack:output:02dense_features/Year/strided_slice/stack_1:output:02dense_features/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Year/Reshape/shapePack*dense_features/Year/strided_slice:output:0,dense_features/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Year/ReshapeReshapedense_features/Year/Cast:y:0*dense_features/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV2)dense_features/Bathrooms/Reshape:output:0(dense_features/Bedrooms/Reshape:output:0$dense_features/Cars/Reshape:output:0(dense_features/Distance/Reshape:output:0(dense_features/Latitude/Reshape:output:0'dense_features/LogArea/Reshape:output:0)dense_features/Longitude/Reshape:output:00dense_features/Method_indicator/Reshape:output:00dense_features/Suburb_indicator/Reshape:output:0.dense_features/Type_indicator/Reshape:output:0$dense_features/Year/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Price/MatMul/ReadVariableOpReadVariableOp$price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Price/MatMulMatMuldense_1/Relu:activations:0#Price/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
Price/BiasAdd/ReadVariableOpReadVariableOp%price_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Price/BiasAddBiasAddPrice/MatMul:product:0$Price/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentityPrice/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/BiasAdd/ReadVariableOp^Price/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp>^dense_features/Method_indicator/None_Lookup/LookupTableFindV2>^dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2<^dense_features/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2<
Price/BiasAdd/ReadVariableOpPrice/BiasAdd/ReadVariableOp2:
Price/MatMul/ReadVariableOpPrice/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2~
=dense_features/Method_indicator/None_Lookup/LookupTableFindV2=dense_features/Method_indicator/None_Lookup/LookupTableFindV22~
=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV2=dense_features/Suburb_indicator/None_Lookup/LookupTableFindV22z
;dense_features/Type_indicator/None_Lookup/LookupTableFindV2;dense_features/Type_indicator/None_Lookup/LookupTableFindV2:U Q
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/LogArea:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Longitude:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Method:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Suburb:P	L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Type:P
L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_435213
	bathrooms	
bedrooms	
cars	
distance
latitude
logarea
	longitude

method

suburb
type
year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	bathroomsbedroomscarsdistancelatitudelogarea	longitudemethodsuburbtypeyearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_435147o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:LH
#
_output_shapes
:?????????
!
_user_specified_name	LogArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Longitude:KG
#
_output_shapes
:?????????
 
_user_specified_nameMethod:KG
#
_output_shapes
:?????????
 
_user_specified_nameSuburb:I	E
#
_output_shapes
:?????????

_user_specified_nameType:I
E
#
_output_shapes
:?????????

_user_specified_nameYear:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_434737

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
;
__inference__creator_436308
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name203*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_436344
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name275*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
+__inference_sequential_layer_call_fn_434787
	bathrooms	
bedrooms	
cars	
distance
latitude
logarea
	longitude

method

suburb
type
year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	bathroomsbedroomscarsdistancelatitudelogarea	longitudemethodsuburbtypeyearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_434760o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:LH
#
_output_shapes
:?????????
!
_user_specified_name	LogArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Longitude:KG
#
_output_shapes
:?????????
 
_user_specified_nameMethod:KG
#
_output_shapes
:?????????
 
_user_specified_nameSuburb:I	E
#
_output_shapes
:?????????

_user_specified_nameType:I
E
#
_output_shapes
:?????????

_user_specified_nameYear:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?%
?
F__inference_sequential_layer_call_and_return_conditional_losses_435305
	bathrooms	
bedrooms	
cars	
distance
latitude
logarea
	longitude

method

suburb
type
year	
dense_features_435276
dense_features_435278	
dense_features_435280
dense_features_435282	
dense_features_435284
dense_features_435286	 
dense_435289:
??
dense_435291:	?!
dense_1_435294:	?@
dense_1_435296:@
price_435299:@
price_435301:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????c
dense_features/Cast_2Castlogarea*

DstT0*

SrcT0*#
_output_shapes
:?????????e
dense_features/Cast_3Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCall	bathroomsbedroomscarsdense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0dense_features/Cast_3:y:0methodsuburbtypeyeardense_features_435276dense_features_435278dense_features_435280dense_features_435282dense_features_435284dense_features_435286*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_435035?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_435289dense_435291*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_434720?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_435294dense_1_435296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_434737?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0price_435299price_435301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Price_layer_call_and_return_conditional_losses_434753u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:LH
#
_output_shapes
:?????????
!
_user_specified_name	LogArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Longitude:KG
#
_output_shapes
:?????????
 
_user_specified_nameMethod:KG
#
_output_shapes
:?????????
 
_user_specified_nameSuburb:I	E
#
_output_shapes
:?????????

_user_specified_nameType:I
E
#
_output_shapes
:?????????

_user_specified_nameYear:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_4363732
.table_init238_lookuptableimportv2_table_handle*
&table_init238_lookuptableimportv2_keys,
(table_init238_lookuptableimportv2_values	
identity??!table_init238/LookupTableImportV2?
!table_init238/LookupTableImportV2LookupTableImportV2.table_init238_lookuptableimportv2_table_handle&table_init238_lookuptableimportv2_keys(table_init238_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init238/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init238/LookupTableImportV2!table_init238/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
&__inference_dense_layer_call_fn_436253

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_434720p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_1_layer_call_fn_436273

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_434737o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_layer_call_and_return_conditional_losses_434720

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
F__inference_sequential_layer_call_and_return_conditional_losses_435259
	bathrooms	
bedrooms	
cars	
distance
latitude
logarea
	longitude

method

suburb
type
year	
dense_features_435230
dense_features_435232	
dense_features_435234
dense_features_435236	
dense_features_435238
dense_features_435240	 
dense_435243:
??
dense_435245:	?!
dense_1_435248:	?@
dense_1_435250:@
price_435253:@
price_435255:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????c
dense_features/Cast_2Castlogarea*

DstT0*

SrcT0*#
_output_shapes
:?????????e
dense_features/Cast_3Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCall	bathroomsbedroomscarsdense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0dense_features/Cast_3:y:0methodsuburbtypeyeardense_features_435230dense_features_435232dense_features_435234dense_features_435236dense_features_435238dense_features_435240*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_434695?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_435243dense_435245*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_434720?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_435248dense_1_435250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_434737?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0price_435253price_435255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Price_layer_call_and_return_conditional_losses_434753u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:LH
#
_output_shapes
:?????????
!
_user_specified_name	LogArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Longitude:KG
#
_output_shapes
:?????????
 
_user_specified_nameMethod:KG
#
_output_shapes
:?????????
 
_user_specified_nameSuburb:I	E
#
_output_shapes
:?????????

_user_specified_nameType:I
E
#
_output_shapes
:?????????

_user_specified_nameYear:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_4363652
.table_init202_lookuptableimportv2_table_handle*
&table_init202_lookuptableimportv2_keys,
(table_init202_lookuptableimportv2_values	
identity??!table_init202/LookupTableImportV2?
!table_init202/LookupTableImportV2LookupTableImportV2.table_init202_lookuptableimportv2_table_handle&table_init202_lookuptableimportv2_keys(table_init202_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init202/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init202/LookupTableImportV2!table_init202/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?%
?
F__inference_sequential_layer_call_and_return_conditional_losses_434760

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10	
dense_features_434696
dense_features_434698	
dense_features_434700
dense_features_434702	
dense_features_434704
dense_features_434706	 
dense_434721:
??
dense_434723:	?!
dense_1_434738:	?@
dense_1_434740:@
price_434754:@
price_434756:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastinputs_3*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_2Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_3Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2dense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0dense_features/Cast_3:y:0inputs_7inputs_8inputs_9	inputs_10dense_features_434696dense_features_434698dense_features_434700dense_features_434702dense_features_434704dense_features_434706*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_434695?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_434721dense_434723*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_434720?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_434738dense_1_434740*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_434737?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0price_434754price_434756*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Price_layer_call_and_return_conditional_losses_434753u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K	G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K
G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_dense_features_layer_call_fn_435888
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_logarea
features_longitude
features_method
features_suburb
features_type
features_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_bathroomsfeatures_bedroomsfeatures_carsfeatures_distancefeatures_latitudefeatures_logareafeatures_longitudefeatures_methodfeatures_suburbfeatures_typefeatures_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_435035p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/LogArea:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Method:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Suburb:R	N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Type:R
N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
-
__inference__destroyer_436339
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
-
__inference__destroyer_436357
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_4363812
.table_init274_lookuptableimportv2_table_handle*
&table_init274_lookuptableimportv2_keys,
(table_init274_lookuptableimportv2_values	
identity??!table_init274/LookupTableImportV2?
!table_init274/LookupTableImportV2LookupTableImportV2.table_init274_lookuptableimportv2_table_handle&table_init274_lookuptableimportv2_keys(table_init274_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init274/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init274/LookupTableImportV2!table_init274/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference__initializer_4363342
.table_init238_lookuptableimportv2_table_handle*
&table_init238_lookuptableimportv2_keys,
(table_init238_lookuptableimportv2_values	
identity??!table_init238/LookupTableImportV2?
!table_init238/LookupTableImportV2LookupTableImportV2.table_init238_lookuptableimportv2_table_handle&table_init238_lookuptableimportv2_keys(table_init238_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init238/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init238/LookupTableImportV2!table_init238/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_436066
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_logarea
features_longitude
features_method
features_suburb
features_type
features_year	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_indicator_none_lookup_lookuptablefindv2_table_handle@
<suburb_indicator_none_lookup_lookuptablefindv2_default_value	=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_indicator/None_Lookup/LookupTableFindV2?,Type_indicator/None_Lookup/LookupTableFindV2c
Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bathrooms/ExpandDims
ExpandDimsfeatures_bathrooms!Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????v
Bathrooms/CastCastBathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Q
Bathrooms/ShapeShapeBathrooms/Cast:y:0*
T0*
_output_shapes
:g
Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bathrooms/strided_sliceStridedSliceBathrooms/Shape:output:0&Bathrooms/strided_slice/stack:output:0(Bathrooms/strided_slice/stack_1:output:0(Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bathrooms/Reshape/shapePack Bathrooms/strided_slice:output:0"Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bathrooms/ReshapeReshapeBathrooms/Cast:y:0 Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bedrooms/ExpandDims
ExpandDimsfeatures_bedrooms Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????t
Bedrooms/CastCastBedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????O
Bedrooms/ShapeShapeBedrooms/Cast:y:0*
T0*
_output_shapes
:f
Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Bedrooms/strided_sliceStridedSliceBedrooms/Shape:output:0%Bedrooms/strided_slice/stack:output:0'Bedrooms/strided_slice/stack_1:output:0'Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Bedrooms/Reshape/shapePackBedrooms/strided_slice:output:0!Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Bedrooms/ReshapeReshapeBedrooms/Cast:y:0Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Cars/ExpandDims
ExpandDimsfeatures_carsCars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Cars/CastCastCars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Cars/ShapeShapeCars/Cast:y:0*
T0*
_output_shapes
:b
Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cars/strided_sliceStridedSliceCars/Shape:output:0!Cars/strided_slice/stack:output:0#Cars/strided_slice/stack_1:output:0#Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Cars/Reshape/shapePackCars/strided_slice:output:0Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Cars/ReshapeReshapeCars/Cast:y:0Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Distance/ExpandDims
ExpandDimsfeatures_distance Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Distance/ShapeShapeDistance/ExpandDims:output:0*
T0*
_output_shapes
:f
Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Distance/strided_sliceStridedSliceDistance/Shape:output:0%Distance/strided_slice/stack:output:0'Distance/strided_slice/stack_1:output:0'Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Distance/Reshape/shapePackDistance/strided_slice:output:0!Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Distance/ReshapeReshapeDistance/ExpandDims:output:0Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????b
Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Latitude/ExpandDims
ExpandDimsfeatures_latitude Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Latitude/ShapeShapeLatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Latitude/strided_sliceStridedSliceLatitude/Shape:output:0%Latitude/strided_slice/stack:output:0'Latitude/strided_slice/stack_1:output:0'Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Latitude/Reshape/shapePackLatitude/strided_slice:output:0!Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Latitude/ReshapeReshapeLatitude/ExpandDims:output:0Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
LogArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
LogArea/ExpandDims
ExpandDimsfeatures_logareaLogArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????X
LogArea/ShapeShapeLogArea/ExpandDims:output:0*
T0*
_output_shapes
:e
LogArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
LogArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
LogArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
LogArea/strided_sliceStridedSliceLogArea/Shape:output:0$LogArea/strided_slice/stack:output:0&LogArea/strided_slice/stack_1:output:0&LogArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
LogArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
LogArea/Reshape/shapePackLogArea/strided_slice:output:0 LogArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
LogArea/ReshapeReshapeLogArea/ExpandDims:output:0LogArea/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Longitude/ExpandDims
ExpandDimsfeatures_longitude!Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????\
Longitude/ShapeShapeLongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Longitude/strided_sliceStridedSliceLongitude/Shape:output:0&Longitude/strided_slice/stack:output:0(Longitude/strided_slice/stack_1:output:0(Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Longitude/Reshape/shapePack Longitude/strided_slice:output:0"Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Longitude/ReshapeReshapeLongitude/ExpandDims:output:0 Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Method_indicator/ExpandDims
ExpandDimsfeatures_method(Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Method_indicator/to_sparse_input/NotEqualNotEqual$Method_indicator/ExpandDims:output:08Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Method_indicator/to_sparse_input/indicesWhere-Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Method_indicator/to_sparse_input/valuesGatherNd$Method_indicator/ExpandDims:output:00Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Method_indicator/to_sparse_input/dense_shapeShape$Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;method_indicator_none_lookup_lookuptablefindv2_table_handle0Method_indicator/to_sparse_input/values:output:0<method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Method_indicator/SparseToDenseSparseToDense0Method_indicator/to_sparse_input/indices:index:05Method_indicator/to_sparse_input/dense_shape:output:07Method_indicator/None_Lookup/LookupTableFindV2:values:05Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Method_indicator/ShapeShapeMethod_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Method_indicator/strided_sliceStridedSliceMethod_indicator/Shape:output:0-Method_indicator/strided_slice/stack:output:0/Method_indicator/strided_slice/stack_1:output:0/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_indicator/ExpandDims
ExpandDimsfeatures_suburb(Suburb_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_indicator/to_sparse_input/NotEqualNotEqual$Suburb_indicator/ExpandDims:output:08Suburb_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_indicator/to_sparse_input/indicesWhere-Suburb_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_indicator/to_sparse_input/valuesGatherNd$Suburb_indicator/ExpandDims:output:00Suburb_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_indicator/to_sparse_input/dense_shapeShape$Suburb_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_indicator_none_lookup_lookuptablefindv2_table_handle0Suburb_indicator/to_sparse_input/values:output:0<suburb_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Suburb_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Suburb_indicator/SparseToDenseSparseToDense0Suburb_indicator/to_sparse_input/indices:index:05Suburb_indicator/to_sparse_input/dense_shape:output:07Suburb_indicator/None_Lookup/LookupTableFindV2:values:05Suburb_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Suburb_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Suburb_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    a
Suburb_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/one_hotOneHot&Suburb_indicator/SparseToDense:dense:0'Suburb_indicator/one_hot/depth:output:0'Suburb_indicator/one_hot/Const:output:0)Suburb_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????y
&Suburb_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Suburb_indicator/SumSum!Suburb_indicator/one_hot:output:0/Suburb_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????c
Suburb_indicator/ShapeShapeSuburb_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Suburb_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_indicator/strided_sliceStridedSliceSuburb_indicator/Shape:output:0-Suburb_indicator/strided_slice/stack:output:0/Suburb_indicator/strided_slice/stack_1:output:0/Suburb_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 Suburb_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_indicator/Reshape/shapePack'Suburb_indicator/strided_slice:output:0)Suburb_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_indicator/ReshapeReshapeSuburb_indicator/Sum:output:0'Suburb_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Type_indicator/ExpandDims
ExpandDimsfeatures_type&Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Type_indicator/to_sparse_input/NotEqualNotEqual"Type_indicator/ExpandDims:output:06Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Type_indicator/to_sparse_input/indicesWhere+Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Type_indicator/to_sparse_input/valuesGatherNd"Type_indicator/ExpandDims:output:0.Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Type_indicator/to_sparse_input/dense_shapeShape"Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
,Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29type_indicator_none_lookup_lookuptablefindv2_table_handle.Type_indicator/to_sparse_input/values:output:0:type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Type_indicator/SparseToDenseSparseToDense.Type_indicator/to_sparse_input/indices:index:03Type_indicator/to_sparse_input/dense_shape:output:05Type_indicator/None_Lookup/LookupTableFindV2:values:03Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
Type_indicator/ShapeShapeType_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Type_indicator/strided_sliceStridedSliceType_indicator/Shape:output:0+Type_indicator/strided_slice/stack:output:0-Type_indicator/strided_slice/stack_1:output:0-Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Year/ExpandDims
ExpandDimsfeatures_yearYear/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0LogArea/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_indicator/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_indicator/None_Lookup/LookupTableFindV2-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_indicator/None_Lookup/LookupTableFindV2.Suburb_indicator/None_Lookup/LookupTableFindV22\
,Type_indicator/None_Lookup/LookupTableFindV2,Type_indicator/None_Lookup/LookupTableFindV2:W S
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/LogArea:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Method:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Suburb:R	N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Type:R
N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?%
?
F__inference_sequential_layer_call_and_return_conditional_losses_435147

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10	
dense_features_435118
dense_features_435120	
dense_features_435122
dense_features_435124	
dense_features_435126
dense_features_435128	 
dense_435131:
??
dense_435133:	?!
dense_1_435136:	?@
dense_1_435138:@
price_435141:@
price_435143:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastinputs_3*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_2Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_3Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2dense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0dense_features/Cast_3:y:0inputs_7inputs_8inputs_9	inputs_10dense_features_435118dense_features_435120dense_features_435122dense_features_435124dense_features_435126dense_features_435128*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_435035?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_435131dense_435133*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_434720?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_435136dense_1_435138*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_434737?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0price_435141price_435143*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Price_layer_call_and_return_conditional_losses_434753u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K	G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K
G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?>
?
__inference__traced_save_436510
file_prefix6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop8
4savev2_sequential_dense_1_kernel_read_readvariableop6
2savev2_sequential_dense_1_bias_read_readvariableop6
2savev2_sequential_price_kernel_read_readvariableop4
0savev2_sequential_price_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_sequential_dense_kernel_m_read_readvariableop;
7savev2_adam_sequential_dense_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_m_read_readvariableop=
9savev2_adam_sequential_price_kernel_m_read_readvariableop;
7savev2_adam_sequential_price_bias_m_read_readvariableop=
9savev2_adam_sequential_dense_kernel_v_read_readvariableop;
7savev2_adam_sequential_dense_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_v_read_readvariableop=
9savev2_adam_sequential_price_kernel_v_read_readvariableop;
7savev2_adam_sequential_price_bias_v_read_readvariableop
savev2_const_9

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop4savev2_sequential_dense_1_kernel_read_readvariableop2savev2_sequential_dense_1_bias_read_readvariableop2savev2_sequential_price_kernel_read_readvariableop0savev2_sequential_price_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_sequential_dense_kernel_m_read_readvariableop7savev2_adam_sequential_dense_bias_m_read_readvariableop;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop9savev2_adam_sequential_dense_1_bias_m_read_readvariableop9savev2_adam_sequential_price_kernel_m_read_readvariableop7savev2_adam_sequential_price_bias_m_read_readvariableop9savev2_adam_sequential_dense_kernel_v_read_readvariableop7savev2_adam_sequential_dense_bias_v_read_readvariableop;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop9savev2_adam_sequential_dense_1_bias_v_read_readvariableop9savev2_adam_sequential_price_kernel_v_read_readvariableop7savev2_adam_sequential_price_bias_v_read_readvariableopsavev2_const_9"/device:CPU:0*
_output_shapes
 **
dtypes 
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:	?@:@:@:: : : : : : : : : :
??:?:	?@:@:@::
??:?:	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
?
?
/__inference_dense_features_layer_call_fn_435861
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_logarea
features_longitude
features_method
features_suburb
features_type
features_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_bathroomsfeatures_bedroomsfeatures_carsfeatures_distancefeatures_latitudefeatures_logareafeatures_longitudefeatures_methodfeatures_suburbfeatures_typefeatures_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_434695p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/LogArea:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Method:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Suburb:R	N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Type:R
N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_436326
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name239*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table"?L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
	Bathrooms.
serving_default_Bathrooms:0	?????????
9
Bedrooms-
serving_default_Bedrooms:0	?????????
1
Cars)
serving_default_Cars:0	?????????
9
Distance-
serving_default_Distance:0?????????
9
Latitude-
serving_default_Latitude:0?????????
7
LogArea,
serving_default_LogArea:0?????????
;
	Longitude.
serving_default_Longitude:0?????????
5
Method+
serving_default_Method:0?????????
5
Suburb+
serving_default_Suburb:0?????????
1
Type)
serving_default_Type:0?????????
1
Year)
serving_default_Year:0	?????????>
output_12
StatefulPartitionedCall_3:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
J
0
1
%2
&3
-4
.5"
trackable_list_wrapper
J
0
1
%2
&3
-4
.5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?
4trace_0
5trace_1
6trace_2
7trace_32?
+__inference_sequential_layer_call_fn_434787
+__inference_sequential_layer_call_fn_435391
+__inference_sequential_layer_call_fn_435430
+__inference_sequential_layer_call_fn_435213?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z4trace_0z5trace_1z6trace_2z7trace_3
?
8trace_0
9trace_1
:trace_2
;trace_32?
F__inference_sequential_layer_call_and_return_conditional_losses_435632
F__inference_sequential_layer_call_and_return_conditional_losses_435834
F__inference_sequential_layer_call_and_return_conditional_losses_435259
F__inference_sequential_layer_call_and_return_conditional_losses_435305?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z8trace_0z9trace_1z:trace_2z;trace_3
?B?
!__inference__wrapped_model_434486	BathroomsBedroomsCarsDistanceLatitudeLogArea	LongitudeMethodSuburbTypeYear"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratem?m?%m?&m?-m?.m?v?v?%v?&v?-v?.v?"
	optimizer
 "
trackable_dict_wrapper
,
Aserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Gtrace_0
Htrace_12?
/__inference_dense_features_layer_call_fn_435861
/__inference_dense_features_layer_call_fn_435888?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zGtrace_0zHtrace_1
?
Itrace_0
Jtrace_12?
J__inference_dense_features_layer_call_and_return_conditional_losses_436066
J__inference_dense_features_layer_call_and_return_conditional_losses_436244?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zItrace_0zJtrace_1
 "
trackable_list_wrapper
@

KMethod

LSuburb
MType"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Strace_02?
&__inference_dense_layer_call_fn_436253?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zStrace_0
?
Ttrace_02?
A__inference_dense_layer_call_and_return_conditional_losses_436264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zTtrace_0
+:)
??2sequential/dense/kernel
$:"?2sequential/dense/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?
Ztrace_02?
(__inference_dense_1_layer_call_fn_436273?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zZtrace_0
?
[trace_02?
C__inference_dense_1_layer_call_and_return_conditional_losses_436284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z[trace_0
,:*	?@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?
atrace_02?
&__inference_Price_layer_call_fn_436293?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zatrace_0
?
btrace_02?
A__inference_Price_layer_call_and_return_conditional_losses_436303?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zbtrace_0
):'@2sequential/Price/kernel
#:!2sequential/Price/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
+__inference_sequential_layer_call_fn_434787	BathroomsBedroomsCarsDistanceLatitudeLogArea	LongitudeMethodSuburbTypeYear"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_sequential_layer_call_fn_435391inputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/LogAreainputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_sequential_layer_call_fn_435430inputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/LogAreainputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
+__inference_sequential_layer_call_fn_435213	BathroomsBedroomsCarsDistanceLatitudeLogArea	LongitudeMethodSuburbTypeYear"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_sequential_layer_call_and_return_conditional_losses_435632inputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/LogAreainputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_sequential_layer_call_and_return_conditional_losses_435834inputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/LogAreainputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_sequential_layer_call_and_return_conditional_losses_435259	BathroomsBedroomsCarsDistanceLatitudeLogArea	LongitudeMethodSuburbTypeYear"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
F__inference_sequential_layer_call_and_return_conditional_losses_435305	BathroomsBedroomsCarsDistanceLatitudeLogArea	LongitudeMethodSuburbTypeYear"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
$__inference_signature_wrapper_435352	BathroomsBedroomsCarsDistanceLatitudeLogArea	LongitudeMethodSuburbTypeYear"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_dense_features_layer_call_fn_435861features/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/LogAreafeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
/__inference_dense_features_layer_call_fn_435888features/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/LogAreafeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
J__inference_dense_features_layer_call_and_return_conditional_losses_436066features/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/LogAreafeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
J__inference_dense_features_layer_call_and_return_conditional_losses_436244features/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/LogAreafeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
1
eMethod_lookup"
_generic_user_object
1
fSuburb_lookup"
_generic_user_object
/
gType_lookup"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_dense_layer_call_fn_436253inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_dense_layer_call_and_return_conditional_losses_436264inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_dense_1_layer_call_fn_436273inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_dense_1_layer_call_and_return_conditional_losses_436284inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_Price_layer_call_fn_436293inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_Price_layer_call_and_return_conditional_losses_436303inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
N
h	variables
i	keras_api
	jtotal
	kcount"
_tf_keras_metric
^
l	variables
m	keras_api
	ntotal
	ocount
p
_fn_kwargs"
_tf_keras_metric
f
q_initializer
r_create_resource
s_initialize
t_destroy_resourceR jtf.StaticHashTable
f
u_initializer
v_create_resource
w_initialize
x_destroy_resourceR jtf.StaticHashTable
f
y_initializer
z_create_resource
{_initialize
|_destroy_resourceR jtf.StaticHashTable
.
j0
k1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
"
_generic_user_object
?
}trace_02?
__inference__creator_436308?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z}trace_0
?
~trace_02?
__inference__initializer_436316?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z~trace_0
?
trace_02?
__inference__destroyer_436321?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? ztrace_0
"
_generic_user_object
?
?trace_02?
__inference__creator_436326?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_436334?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_436339?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
"
_generic_user_object
?
?trace_02?
__inference__creator_436344?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_436352?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_436357?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?B?
__inference__creator_436308"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_436316"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_436321"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_436326"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_436334"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_436339"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_436344"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_436352"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_436357"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
0:.
??2Adam/sequential/dense/kernel/m
):'?2Adam/sequential/dense/bias/m
1:/	?@2 Adam/sequential/dense_1/kernel/m
*:(@2Adam/sequential/dense_1/bias/m
.:,@2Adam/sequential/Price/kernel/m
(:&2Adam/sequential/Price/bias/m
0:.
??2Adam/sequential/dense/kernel/v
):'?2Adam/sequential/dense/bias/v
1:/	?@2 Adam/sequential/dense_1/kernel/v
*:(@2Adam/sequential/dense_1/bias/v
.:,@2Adam/sequential/Price/kernel/v
(:&2Adam/sequential/Price/bias/v
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant
!J	
Const_6jtf.TrackableConstant
!J	
Const_7jtf.TrackableConstant
!J	
Const_8jtf.TrackableConstant?
A__inference_Price_layer_call_and_return_conditional_losses_436303\-./?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? y
&__inference_Price_layer_call_fn_436293O-./?,
%?"
 ?
inputs?????????@
? "??????????7
__inference__creator_436308?

? 
? "? 7
__inference__creator_436326?

? 
? "? 7
__inference__creator_436344?

? 
? "? 9
__inference__destroyer_436321?

? 
? "? 9
__inference__destroyer_436339?

? 
? "? 9
__inference__destroyer_436357?

? 
? "? B
__inference__initializer_436316e???

? 
? "? B
__inference__initializer_436334f???

? 
? "? B
__inference__initializer_436352g???

? 
? "? ?
!__inference__wrapped_model_434486?e?f?g?%&-.???
???
???
,
	Bathrooms?
	Bathrooms?????????	
*
Bedrooms?
Bedrooms?????????	
"
Cars?
Cars?????????	
*
Distance?
Distance?????????
*
Latitude?
Latitude?????????
(
LogArea?
LogArea?????????
,
	Longitude?
	Longitude?????????
&
Method?
Method?????????
&
Suburb?
Suburb?????????
"
Type?
Type?????????
"
Year?
Year?????????	
? "3?0
.
output_1"?
output_1??????????
C__inference_dense_1_layer_call_and_return_conditional_losses_436284]%&0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_1_layer_call_fn_436273P%&0?-
&?#
!?
inputs??????????
? "??????????@?
J__inference_dense_features_layer_call_and_return_conditional_losses_436066?	e?f?g????
???
???
5
	Bathrooms(?%
features/Bathrooms?????????	
3
Bedrooms'?$
features/Bedrooms?????????	
+
Cars#? 
features/Cars?????????	
3
Distance'?$
features/Distance?????????
3
Latitude'?$
features/Latitude?????????
1
LogArea&?#
features/LogArea?????????
5
	Longitude(?%
features/Longitude?????????
/
Method%?"
features/Method?????????
/
Suburb%?"
features/Suburb?????????
+
Type#? 
features/Type?????????
+
Year#? 
features/Year?????????	

 
p 
? "&?#
?
0??????????
? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_436244?	e?f?g????
???
???
5
	Bathrooms(?%
features/Bathrooms?????????	
3
Bedrooms'?$
features/Bedrooms?????????	
+
Cars#? 
features/Cars?????????	
3
Distance'?$
features/Distance?????????
3
Latitude'?$
features/Latitude?????????
1
LogArea&?#
features/LogArea?????????
5
	Longitude(?%
features/Longitude?????????
/
Method%?"
features/Method?????????
/
Suburb%?"
features/Suburb?????????
+
Type#? 
features/Type?????????
+
Year#? 
features/Year?????????	

 
p
? "&?#
?
0??????????
? ?
/__inference_dense_features_layer_call_fn_435861?	e?f?g????
???
???
5
	Bathrooms(?%
features/Bathrooms?????????	
3
Bedrooms'?$
features/Bedrooms?????????	
+
Cars#? 
features/Cars?????????	
3
Distance'?$
features/Distance?????????
3
Latitude'?$
features/Latitude?????????
1
LogArea&?#
features/LogArea?????????
5
	Longitude(?%
features/Longitude?????????
/
Method%?"
features/Method?????????
/
Suburb%?"
features/Suburb?????????
+
Type#? 
features/Type?????????
+
Year#? 
features/Year?????????	

 
p 
? "????????????
/__inference_dense_features_layer_call_fn_435888?	e?f?g????
???
???
5
	Bathrooms(?%
features/Bathrooms?????????	
3
Bedrooms'?$
features/Bedrooms?????????	
+
Cars#? 
features/Cars?????????	
3
Distance'?$
features/Distance?????????
3
Latitude'?$
features/Latitude?????????
1
LogArea&?#
features/LogArea?????????
5
	Longitude(?%
features/Longitude?????????
/
Method%?"
features/Method?????????
/
Suburb%?"
features/Suburb?????????
+
Type#? 
features/Type?????????
+
Year#? 
features/Year?????????	

 
p
? "????????????
A__inference_dense_layer_call_and_return_conditional_losses_436264^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_layer_call_fn_436253Q0?-
&?#
!?
inputs??????????
? "????????????
F__inference_sequential_layer_call_and_return_conditional_losses_435259?e?f?g?%&-.???
???
???
,
	Bathrooms?
	Bathrooms?????????	
*
Bedrooms?
Bedrooms?????????	
"
Cars?
Cars?????????	
*
Distance?
Distance?????????
*
Latitude?
Latitude?????????
(
LogArea?
LogArea?????????
,
	Longitude?
	Longitude?????????
&
Method?
Method?????????
&
Suburb?
Suburb?????????
"
Type?
Type?????????
"
Year?
Year?????????	
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_435305?e?f?g?%&-.???
???
???
,
	Bathrooms?
	Bathrooms?????????	
*
Bedrooms?
Bedrooms?????????	
"
Cars?
Cars?????????	
*
Distance?
Distance?????????
*
Latitude?
Latitude?????????
(
LogArea?
LogArea?????????
,
	Longitude?
	Longitude?????????
&
Method?
Method?????????
&
Suburb?
Suburb?????????
"
Type?
Type?????????
"
Year?
Year?????????	
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_435632?e?f?g?%&-.???
???
???
3
	Bathrooms&?#
inputs/Bathrooms?????????	
1
Bedrooms%?"
inputs/Bedrooms?????????	
)
Cars!?
inputs/Cars?????????	
1
Distance%?"
inputs/Distance?????????
1
Latitude%?"
inputs/Latitude?????????
/
LogArea$?!
inputs/LogArea?????????
3
	Longitude&?#
inputs/Longitude?????????
-
Method#? 
inputs/Method?????????
-
Suburb#? 
inputs/Suburb?????????
)
Type!?
inputs/Type?????????
)
Year!?
inputs/Year?????????	
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_435834?e?f?g?%&-.???
???
???
3
	Bathrooms&?#
inputs/Bathrooms?????????	
1
Bedrooms%?"
inputs/Bedrooms?????????	
)
Cars!?
inputs/Cars?????????	
1
Distance%?"
inputs/Distance?????????
1
Latitude%?"
inputs/Latitude?????????
/
LogArea$?!
inputs/LogArea?????????
3
	Longitude&?#
inputs/Longitude?????????
-
Method#? 
inputs/Method?????????
-
Suburb#? 
inputs/Suburb?????????
)
Type!?
inputs/Type?????????
)
Year!?
inputs/Year?????????	
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_434787?e?f?g?%&-.???
???
???
,
	Bathrooms?
	Bathrooms?????????	
*
Bedrooms?
Bedrooms?????????	
"
Cars?
Cars?????????	
*
Distance?
Distance?????????
*
Latitude?
Latitude?????????
(
LogArea?
LogArea?????????
,
	Longitude?
	Longitude?????????
&
Method?
Method?????????
&
Suburb?
Suburb?????????
"
Type?
Type?????????
"
Year?
Year?????????	
p 

 
? "???????????
+__inference_sequential_layer_call_fn_435213?e?f?g?%&-.???
???
???
,
	Bathrooms?
	Bathrooms?????????	
*
Bedrooms?
Bedrooms?????????	
"
Cars?
Cars?????????	
*
Distance?
Distance?????????
*
Latitude?
Latitude?????????
(
LogArea?
LogArea?????????
,
	Longitude?
	Longitude?????????
&
Method?
Method?????????
&
Suburb?
Suburb?????????
"
Type?
Type?????????
"
Year?
Year?????????	
p

 
? "???????????
+__inference_sequential_layer_call_fn_435391?e?f?g?%&-.???
???
???
3
	Bathrooms&?#
inputs/Bathrooms?????????	
1
Bedrooms%?"
inputs/Bedrooms?????????	
)
Cars!?
inputs/Cars?????????	
1
Distance%?"
inputs/Distance?????????
1
Latitude%?"
inputs/Latitude?????????
/
LogArea$?!
inputs/LogArea?????????
3
	Longitude&?#
inputs/Longitude?????????
-
Method#? 
inputs/Method?????????
-
Suburb#? 
inputs/Suburb?????????
)
Type!?
inputs/Type?????????
)
Year!?
inputs/Year?????????	
p 

 
? "???????????
+__inference_sequential_layer_call_fn_435430?e?f?g?%&-.???
???
???
3
	Bathrooms&?#
inputs/Bathrooms?????????	
1
Bedrooms%?"
inputs/Bedrooms?????????	
)
Cars!?
inputs/Cars?????????	
1
Distance%?"
inputs/Distance?????????
1
Latitude%?"
inputs/Latitude?????????
/
LogArea$?!
inputs/LogArea?????????
3
	Longitude&?#
inputs/Longitude?????????
-
Method#? 
inputs/Method?????????
-
Suburb#? 
inputs/Suburb?????????
)
Type!?
inputs/Type?????????
)
Year!?
inputs/Year?????????	
p

 
? "???????????
$__inference_signature_wrapper_435352?e?f?g?%&-.???
? 
???
,
	Bathrooms?
	Bathrooms?????????	
*
Bedrooms?
Bedrooms?????????	
"
Cars?
Cars?????????	
*
Distance?
Distance?????????
*
Latitude?
Latitude?????????
(
LogArea?
LogArea?????????
,
	Longitude?
	Longitude?????????
&
Method?
Method?????????
&
Suburb?
Suburb?????????
"
Type?
Type?????????
"
Year?
Year?????????	"3?0
.
output_1"?
output_1?????????