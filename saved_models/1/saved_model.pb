??
?%?$
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
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
?
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
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

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
?
Adam/sequential_2/Price/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential_2/Price/bias/v
?
2Adam/sequential_2/Price/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential_2/Price/bias/v*
_output_shapes
:*
dtype0
?
 Adam/sequential_2/Price/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/sequential_2/Price/kernel/v
?
4Adam/sequential_2/Price/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential_2/Price/kernel/v*
_output_shapes

:@*
dtype0
?
 Adam/sequential_2/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/sequential_2/dense_8/bias/v
?
4Adam/sequential_2/dense_8/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_8/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/sequential_2/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*3
shared_name$"Adam/sequential_2/dense_8/kernel/v
?
6Adam/sequential_2/dense_8/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_8/kernel/v*
_output_shapes
:	?@*
dtype0
?
 Adam/sequential_2/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/sequential_2/dense_7/bias/v
?
4Adam/sequential_2/dense_7/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_7/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/sequential_2/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"Adam/sequential_2/dense_7/kernel/v
?
6Adam/sequential_2/dense_7/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_7/kernel/v* 
_output_shapes
:
??*
dtype0
?
 Adam/sequential_2/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/sequential_2/dense_6/bias/v
?
4Adam/sequential_2/dense_6/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_6/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/sequential_2/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	j?*3
shared_name$"Adam/sequential_2/dense_6/kernel/v
?
6Adam/sequential_2/dense_6/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_6/kernel/v*
_output_shapes
:	j?*
dtype0
?
GAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?F*X
shared_nameIGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/v
?
[Adam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOpGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/v*
_output_shapes
:	?F*
dtype0
?
Adam/sequential_2/Price/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential_2/Price/bias/m
?
2Adam/sequential_2/Price/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential_2/Price/bias/m*
_output_shapes
:*
dtype0
?
 Adam/sequential_2/Price/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/sequential_2/Price/kernel/m
?
4Adam/sequential_2/Price/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential_2/Price/kernel/m*
_output_shapes

:@*
dtype0
?
 Adam/sequential_2/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/sequential_2/dense_8/bias/m
?
4Adam/sequential_2/dense_8/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_8/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/sequential_2/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*3
shared_name$"Adam/sequential_2/dense_8/kernel/m
?
6Adam/sequential_2/dense_8/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_8/kernel/m*
_output_shapes
:	?@*
dtype0
?
 Adam/sequential_2/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/sequential_2/dense_7/bias/m
?
4Adam/sequential_2/dense_7/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_7/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/sequential_2/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"Adam/sequential_2/dense_7/kernel/m
?
6Adam/sequential_2/dense_7/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_7/kernel/m* 
_output_shapes
:
??*
dtype0
?
 Adam/sequential_2/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/sequential_2/dense_6/bias/m
?
4Adam/sequential_2/dense_6/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_6/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/sequential_2/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	j?*3
shared_name$"Adam/sequential_2/dense_6/kernel/m
?
6Adam/sequential_2/dense_6/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_6/kernel/m*
_output_shapes
:	j?*
dtype0
?
GAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?F*X
shared_nameIGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/m
?
[Adam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOpGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/m*
_output_shapes
:	?F*
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
n

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name284017*
value_dtype0	
p
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name283927*
value_dtype0	
p
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name283891*
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
sequential_2/Price/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namesequential_2/Price/bias

+sequential_2/Price/bias/Read/ReadVariableOpReadVariableOpsequential_2/Price/bias*
_output_shapes
:*
dtype0
?
sequential_2/Price/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_namesequential_2/Price/kernel
?
-sequential_2/Price/kernel/Read/ReadVariableOpReadVariableOpsequential_2/Price/kernel*
_output_shapes

:@*
dtype0
?
sequential_2/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namesequential_2/dense_8/bias
?
-sequential_2/dense_8/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_8/bias*
_output_shapes
:@*
dtype0
?
sequential_2/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*,
shared_namesequential_2/dense_8/kernel
?
/sequential_2/dense_8/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_8/kernel*
_output_shapes
:	?@*
dtype0
?
sequential_2/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namesequential_2/dense_7/bias
?
-sequential_2/dense_7/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_7/bias*
_output_shapes	
:?*
dtype0
?
sequential_2/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_namesequential_2/dense_7/kernel
?
/sequential_2/dense_7/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_7/kernel* 
_output_shapes
:
??*
dtype0
?
sequential_2/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namesequential_2/dense_6/bias
?
-sequential_2/dense_6/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_6/bias*
_output_shapes	
:?*
dtype0
?
sequential_2/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	j?*,
shared_namesequential_2/dense_6/kernel
?
/sequential_2/dense_6/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_6/kernel*
_output_shapes
:	j?*
dtype0
?
@sequential_2/dense_features_2/Suburb_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?F*Q
shared_nameB@sequential_2/dense_features_2/Suburb_embedding/embedding_weights
?
Tsequential_2/dense_features_2/Suburb_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp@sequential_2/dense_features_2/Suburb_embedding/embedding_weights*
_output_shapes
:	?F*
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
?
Const_3Const*
_output_shapes
:*
dtype0*?
value?B?BHouseB
Apartment BTerraceB	TownhouseBBlock of unitsBNew apartments / off the planBVillaBSemi-detachedBDuplexBNew house and landBRetirement LivingB	PenthouseBStudioBNew home designs
?
Const_4Const*
_output_shapes
:*
dtype0	*?
value|Bz	"p                                                                	       
                            
?%
Const_5Const*
_output_shapes	
:?*
dtype0*?$
value?$B?$?B	FOOTSCRAYBALBERT PARKB
CHELTENHAMB	SOUTHBANKBHAMPTONBSAFETY BEACHB	EAGLEMONTBESSENDONBBRUNSWICK EASTB
HEIDELBERGBTOORAKBORMONDBBENTLEIGH EASTBSANDRINGHAMBPRAHRANBMIDDLE PARKB	NORTHCOTEBELWOODB
HUGHESDALEB
BLACK ROCKB
GARDENVALEBFITZROY NORTHBBRIGHTONBNEWTOWNBELSTERNWICKBSOUTH MELBOURNEB
ALPHINGTONBWILLIAMSTOWNBPORT MELBOURNEBCOLLINGWOODBCARLTON NORTHBIVANHOEB	RIPPONLEAB	BEAUMARISBFITZROYBRICHMONDBMCKINNONB	BENTLEIGHBCAULFIELD NORTHBCLIFTON HILLBFRANKSTON SOUTHBMOUNT ELIZABMOONEE PONDSBEAST MELBOURNEBBRIGHTON EASTB
YARRAVILLEBMALVERNB	ASPENDALEBMURRUMBEENAB
ASCOT VALEBIVANHOE EASTBSTBPARKDALEB
ABBOTSFORDBARMADALEB	CAULFIELDB
RIPPLESIDEB
STRATHMOREB
KENSINGTONBSOUTH YARRABBLAIRGOWRIEBST KILDABKOOYONGB	PARKVILLEBMOUNT MARTHAB
TRAVANCOREB	MELBOURNEBBONBEACHBMALVERN EASTBESSENDON WESTB	FAIRFIELDB	THORNBURYBCAULFIELD SOUTHB	EDITHVALEBCARNEGIEBNORTH MELBOURNEB	BALACLAVABCARLTONBMENTONEBALTONABPASCOEBMELBOURNE 3004BMOUNT WAVERLEYB
FLEMINGTONB	BRUNSWICKBLOWER PLENTYBWHEELERS HILLB	CHADSTONEBPLENTYB
DRUMCONDRABCHELSEAB	DOCKLANDSBVIEWBANKBPATTERSON LAKESBASHWOODBWEST MELBOURNEBBRUNSWICK WESTBMARIBYRNONGB
ABERFELDIEBHIGHETTBPOINT LONSDALEBNEWPORTBGLEN WAVERLEYBHEIDELBERG WESTB
MORNINGTONBPORTSEABWINDSORB
MORDIALLOCBKANGAROO GROUNDBHIGHTONBBERWICKBTUERONGBOAKLEIGHBCLAYTONBGEELONGBELTHAMBSEAFORDB	MICKLEHAMBSEDDONBBULLABSORRENTOBWATSONIABSANCTUARY LAKESBPRESTONBCRANBOURNE EASTBMCCRAEBCARRUMBBURWOODBSEAHOLMEBWERRIBEEBOAKLEIGH EASTBCOBURGBESSENDON NORTHBWEST FOOTSCRAYBHAMPTON EASTBSOMERSB	MOORABBINBKEILORB
KINGSVILLEBOAKLEIGH SOUTHBNIDDRIEBPASCOE VALEBHOPPERS CROSSINGBBUNDOORABAVONDALE HEIGHTSBFINGALB
BALNARRINGB	SPOTSWOODBLEOPOLDBDROMANAB	RESERVOIRBGLEN HUNTLYBCAULFIELD EASTBKEILOR EASTBKEYSBOROUGHBROSEBUDB
CONNEWARREBGEELONG WESTBNORTH WARRANDYTEBNARREBELTHAM NORTHBRYEBRED HILLBPRESTON WESTBMACLEODB	FRANKSTONBOCEAN GROVEBLYSTERFIELD SOUTHBBROOKLYNBHILLSIDEBLOVELY BANKSBROSANNABMONTMORENCYB	DANDENONGBGREENSBOROUGHB
NOBLE PARKB
POINT COOKBHADFIELDBSUNSHINE NORTHB
SPRINGVALEB	BRAYBROOKBNOBLEBHALLAMBHEIDELBERG HEIGHTSB
SOMERVILLEBSOUTH MORANGB	KINGSBURYB
THOMASTOWNBSUNBURYBALTONA MEADOWSBTULLAMARINEBJACANABEPPINGBCARRUM DOWNSBBROADMEADOWSBHAMPTON PARKBDOVETONBLAVERTONBMULGRAVEBALBIONBAIRPORT WESTBGLENROYB
LANGWARRINB
CRIB POINTBSKYEBSUNSHINEB	MILL PARKBSOUTH KINGSVILLEBSUNSHINE WESTB	MAIDSTONEBNARRE WARRENBWESTMEADOWSBARMSTRONG CREEKBCLYDE NORTHBOAK PARKBDIAMOND CREEKBARDEERBFAWKNERBALTONA NORTHB	DEER PARKBLALORBCLAYTON SOUTHBROCKBANKB	FYANSFORDBMELTON SOUTHBWILLIAMS LANDINGBCRAIGIEBURNBCAIRNLEABCAPEL SOUNDB
HEATHERTONBSYDENHAMB	ST ALBANSBMERNDAB	BELL PARKBDANDENONG NORTHBTAYLORS LAKESB
CRANBOURNEBTARNEITBQUEENSCLIFFBNOTTING HILLBMELTON WESTBMELTONBMEADOW HEIGHTSB
HERNE HILLB	TRUGANINABHAMLYN HEIGHTSBRESEARCHBTHORNHILL PARKBBAXTERBFRASER RISEBPORTARLINGTONB
KINGS PARKBDEANSIDEBCAROLINE SPRINGSBCRANBOURNE SOUTHB
DONNYBROOKBCLYDEBDOREENBDERRIMUTBHUNTINGDALEBCHELSEA HEIGHTSBCRANBOURNE WESTBAINTREEBMANOR LAKESBEUMEMMERRINGBCRANBOURNE NORTHB	GREENVALEBDELAHEYBDIGGERS RESTBWOLLERTBNEWCOMBBDINGLEY VILLAGEB	GROVEDALEBBARWON HEADSBWYNDHAM VALEBMARSHALLBENDEAVOUR HILLSBCOBURG NORTHBROXBURGH PARKB	LYNDHURSTBBURNSIDEBWATSONIA NORTHBTYABBBGLADSTONE PARKBJUNCTION VILLAGEBMOUNT COTTRELLB
BROOKFIELDBCLARINDABHURSTBRIDGEBBELMONTB
WEIR VIEWSBCOOLAROOBNORLANEBSTRATHTULLOHBKALKALLOBBURNSIDE HEIGHTSB	ALBANVALEBCORIOBDALLASBHARKNESSB	KURUNJANGBMANIFOLD HEIGHTSB
COBBLEBANKBKEILOR DOWNSBSPRINGVALE SOUTHBMOUNT DUNEEDBFRANKSTON NORTHBWHITTINGTONBBELLBHASTINGSB	SANDHURSTB	GOWANBRAEB	BELLFIELDB
CHARLEMONTBLYNBROOKBKEILOR PARKBWAURN PONDSB
BRIAR HILLBWERRIBEE SOUTHBCREMORNEBTAYLORS HILLBATTWOODBLARABBITTERNBDRYSDALEB
PEARCEDALEBBOTANIC RIDGEBTHOMSONBASPENDALE GARDENSB
FLOWERDALEB
WHITTLESEABNORTH GEELONGBST LEONARDSBEAST GEELONGB
BREAKWATERBCAMPBELLFIELDBINDENTED HEADBMOOLAPBKINGLAKE WESTBSOUTH GEELONGBWILLIAMSTOWN NORTHBSEABROOKB	BANGHOLMEBPRINCES HILLBDEVON MEADOWSBBALNARRING BEACHBBURNLEYB	WATERWAYSB	YARRAMBATBKEILOR LODGEB
TOOTGAROOKB	YALLAMBIEBCLIFTON SPRINGSBWATTLE GLENBWANDANA HEIGHTSBLANGWARRIN SOUTHB
MAIN RIDGEBREDBCASTELLAB
WALLINGTONBKINGLAKEBCANNONS CREEKBHARKAWAYBMERRICKS BEACHBWARNEETBBREAMLEABARTHURS SEATBSHOREHAMBTOOLANGIBPANTON HILLBNORTH SHOREBKEALBAB	ST HELENABGLENBURNBMERRICKS NORTHBTOOLERN VALEB
ST ANDREWSB	EYNESBURYBCURLEWISBPLUMPTONBLITTLE RIVERB	MAMBOURINBSTRATHMORE HEIGHTSB	POINT LEOBARTHURS CREEKBBLIND BIGHTBCOTTLES BRIDGEBMARCUS HILLBYAN YEANBMERRICKS
?
Const_6Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      
?
Const_7Const*
_output_shapes
:*
dtype0*?
value?B?BHouseB
Apartment BTerraceB	TownhouseBBlock of unitsBNew apartments / off the planBVillaBSemi-detachedBDuplexBNew house and landBRetirement LivingB	PenthouseBStudioBNew home designs
?
Const_8Const*
_output_shapes
:*
dtype0	*?
value|Bz	"p                                                                	       
                            
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
__inference_<lambda>_392883
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
__inference_<lambda>_392891
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
__inference_<lambda>_392899
^
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2
?K
Const_9Const"/device:CPU:0*
_output_shapes
: *
dtype0*?J
value?JB?J B?J
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources
&"Suburb_embedding/embedding_weights*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias*
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias*
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias*
C
0
1
 2
'3
(4
/5
06
77
88*
C
0
1
 2
'3
(4
/5
06
77
88*
* 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
>trace_0
?trace_1
@trace_2
Atrace_3* 
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
* 
?
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratem?m? m?'m?(m?/m?0m?7m?8m?v?v? v?'v?(v?/v?0v?7v?8v?*
* 

Kserving_default* 

0*

0*
* 
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Qtrace_0
Rtrace_1* 

Strace_0
Ttrace_1* 
* 
$

UMethod

VSuburb
WType* 
??
VARIABLE_VALUE@sequential_2/dense_features_2/Suburb_embedding/embedding_weightsSlayer_with_weights-0/Suburb_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
ke
VARIABLE_VALUEsequential_2/dense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_2/dense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
ke
VARIABLE_VALUEsequential_2/dense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_2/dense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

/0
01*

/0
01*
* 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

ktrace_0* 

ltrace_0* 
ke
VARIABLE_VALUEsequential_2/dense_8/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_2/dense_8/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

rtrace_0* 

strace_0* 
ic
VARIABLE_VALUEsequential_2/Price/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential_2/Price/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

t0
u1*
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
vMethod_lookup* 

wSuburb_lookup* 

xType_lookup* 
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
* 
* 
* 
* 
* 
* 
* 
8
y	variables
z	keras_api
	{total
	|count*
J
}	variables
~	keras_api
	total

?count
?
_fn_kwargs*
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

{0
|1*

y	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
?1*

}	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
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
VARIABLE_VALUEGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/molayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_2/dense_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/dense_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_2/dense_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/dense_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_2/dense_8/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/dense_8/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/Price/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential_2/Price/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/volayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_2/dense_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/dense_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_2/dense_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/dense_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_2/dense_8/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/dense_8/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_2/Price/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential_2/Price/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
o
serving_default_AreaPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
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
?
StatefulPartitionedCall_3StatefulPartitionedCallserving_default_Areaserving_default_Bathroomsserving_default_Bedroomsserving_default_Carsserving_default_Distanceserving_default_Latitudeserving_default_Longitudeserving_default_Methodserving_default_Suburbserving_default_Typeserving_default_Yearhash_table_2Consthash_table_1Const_1@sequential_2/dense_features_2/Suburb_embedding/embedding_weights
hash_tableConst_2sequential_2/dense_6/kernelsequential_2/dense_6/biassequential_2/dense_7/kernelsequential_2/dense_7/biassequential_2/dense_8/kernelsequential_2/dense_8/biassequential_2/Price/kernelsequential_2/Price/bias*%
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_391604
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenameTsequential_2/dense_features_2/Suburb_embedding/embedding_weights/Read/ReadVariableOp/sequential_2/dense_6/kernel/Read/ReadVariableOp-sequential_2/dense_6/bias/Read/ReadVariableOp/sequential_2/dense_7/kernel/Read/ReadVariableOp-sequential_2/dense_7/bias/Read/ReadVariableOp/sequential_2/dense_8/kernel/Read/ReadVariableOp-sequential_2/dense_8/bias/Read/ReadVariableOp-sequential_2/Price/kernel/Read/ReadVariableOp+sequential_2/Price/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp[Adam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/m/Read/ReadVariableOp6Adam/sequential_2/dense_6/kernel/m/Read/ReadVariableOp4Adam/sequential_2/dense_6/bias/m/Read/ReadVariableOp6Adam/sequential_2/dense_7/kernel/m/Read/ReadVariableOp4Adam/sequential_2/dense_7/bias/m/Read/ReadVariableOp6Adam/sequential_2/dense_8/kernel/m/Read/ReadVariableOp4Adam/sequential_2/dense_8/bias/m/Read/ReadVariableOp4Adam/sequential_2/Price/kernel/m/Read/ReadVariableOp2Adam/sequential_2/Price/bias/m/Read/ReadVariableOp[Adam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/v/Read/ReadVariableOp6Adam/sequential_2/dense_6/kernel/v/Read/ReadVariableOp4Adam/sequential_2/dense_6/bias/v/Read/ReadVariableOp6Adam/sequential_2/dense_7/kernel/v/Read/ReadVariableOp4Adam/sequential_2/dense_7/bias/v/Read/ReadVariableOp6Adam/sequential_2/dense_8/kernel/v/Read/ReadVariableOp4Adam/sequential_2/dense_8/bias/v/Read/ReadVariableOp4Adam/sequential_2/Price/kernel/v/Read/ReadVariableOp2Adam/sequential_2/Price/bias/v/Read/ReadVariableOpConst_9*1
Tin*
(2&	*
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
__inference__traced_save_393055
?

StatefulPartitionedCall_5StatefulPartitionedCallsaver_filename@sequential_2/dense_features_2/Suburb_embedding/embedding_weightssequential_2/dense_6/kernelsequential_2/dense_6/biassequential_2/dense_7/kernelsequential_2/dense_7/biassequential_2/dense_8/kernelsequential_2/dense_8/biassequential_2/Price/kernelsequential_2/Price/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/m"Adam/sequential_2/dense_6/kernel/m Adam/sequential_2/dense_6/bias/m"Adam/sequential_2/dense_7/kernel/m Adam/sequential_2/dense_7/bias/m"Adam/sequential_2/dense_8/kernel/m Adam/sequential_2/dense_8/bias/m Adam/sequential_2/Price/kernel/mAdam/sequential_2/Price/bias/mGAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/v"Adam/sequential_2/dense_6/kernel/v Adam/sequential_2/dense_6/bias/v"Adam/sequential_2/dense_7/kernel/v Adam/sequential_2/dense_7/bias/v"Adam/sequential_2/dense_8/kernel/v Adam/sequential_2/dense_8/bias/v Adam/sequential_2/Price/kernel/vAdam/sequential_2/Price/bias/v*0
Tin)
'2%*
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
"__inference__traced_restore_393173??
?
?
&__inference_Price_layer_call_fn_392811

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
A__inference_Price_layer_call_and_return_conditional_losses_390886o
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
?+
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_391367

inputs
inputs_1	
inputs_2	
inputs_3	
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10	
dense_features_2_391331
dense_features_2_391333	
dense_features_2_391335
dense_features_2_391337	*
dense_features_2_391339:	?F
dense_features_2_391341
dense_features_2_391343	!
dense_6_391346:	j?
dense_6_391348:	?"
dense_7_391351:
??
dense_7_391353:	?!
dense_8_391356:	?@
dense_8_391358:@
price_391361:@
price_391363:
identity??Price/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCallb
dense_features_2/CastCastinputs*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_1Castinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_2Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_3Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCalldense_features_2/Cast:y:0inputs_1inputs_2inputs_3dense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0inputs_7inputs_8inputs_9	inputs_10dense_features_2_391331dense_features_2_391333dense_features_2_391335dense_features_2_391337dense_features_2_391339dense_features_2_391341dense_features_2_391343*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????j*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_2_layer_call_and_return_conditional_losses_391240?
dense_6/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_6_391346dense_6_391348*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_390836?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_391351dense_7_391353*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_390853?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_391356dense_8_391358*
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
C__inference_dense_8_layer_call_and_return_conditional_losses_390870?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0price_391361price_391363*
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
A__inference_Price_layer_call_and_return_conditional_losses_390886u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall:K G
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
: :

_output_shapes
: 
?
?
-__inference_sequential_2_layer_call_fn_391445
area
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
	unknown_6:	j?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?@

unknown_11:@

unknown_12:@

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallarea	bathroomsbedroomscarsdistancelatitude	longitudemethodsuburbtypeyearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*%
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_391367o
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
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:NJ
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
: :

_output_shapes
: 
?R
?
__inference__traced_save_393055
file_prefix_
[savev2_sequential_2_dense_features_2_suburb_embedding_embedding_weights_read_readvariableop:
6savev2_sequential_2_dense_6_kernel_read_readvariableop8
4savev2_sequential_2_dense_6_bias_read_readvariableop:
6savev2_sequential_2_dense_7_kernel_read_readvariableop8
4savev2_sequential_2_dense_7_bias_read_readvariableop:
6savev2_sequential_2_dense_8_kernel_read_readvariableop8
4savev2_sequential_2_dense_8_bias_read_readvariableop8
4savev2_sequential_2_price_kernel_read_readvariableop6
2savev2_sequential_2_price_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopf
bsavev2_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_m_read_readvariableopA
=savev2_adam_sequential_2_dense_6_kernel_m_read_readvariableop?
;savev2_adam_sequential_2_dense_6_bias_m_read_readvariableopA
=savev2_adam_sequential_2_dense_7_kernel_m_read_readvariableop?
;savev2_adam_sequential_2_dense_7_bias_m_read_readvariableopA
=savev2_adam_sequential_2_dense_8_kernel_m_read_readvariableop?
;savev2_adam_sequential_2_dense_8_bias_m_read_readvariableop?
;savev2_adam_sequential_2_price_kernel_m_read_readvariableop=
9savev2_adam_sequential_2_price_bias_m_read_readvariableopf
bsavev2_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_v_read_readvariableopA
=savev2_adam_sequential_2_dense_6_kernel_v_read_readvariableop?
;savev2_adam_sequential_2_dense_6_bias_v_read_readvariableopA
=savev2_adam_sequential_2_dense_7_kernel_v_read_readvariableop?
;savev2_adam_sequential_2_dense_7_bias_v_read_readvariableopA
=savev2_adam_sequential_2_dense_8_kernel_v_read_readvariableop?
;savev2_adam_sequential_2_dense_8_bias_v_read_readvariableop?
;savev2_adam_sequential_2_price_kernel_v_read_readvariableop=
9savev2_adam_sequential_2_price_bias_v_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%BSlayer_with_weights-0/Suburb_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0[savev2_sequential_2_dense_features_2_suburb_embedding_embedding_weights_read_readvariableop6savev2_sequential_2_dense_6_kernel_read_readvariableop4savev2_sequential_2_dense_6_bias_read_readvariableop6savev2_sequential_2_dense_7_kernel_read_readvariableop4savev2_sequential_2_dense_7_bias_read_readvariableop6savev2_sequential_2_dense_8_kernel_read_readvariableop4savev2_sequential_2_dense_8_bias_read_readvariableop4savev2_sequential_2_price_kernel_read_readvariableop2savev2_sequential_2_price_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopbsavev2_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_m_read_readvariableop=savev2_adam_sequential_2_dense_6_kernel_m_read_readvariableop;savev2_adam_sequential_2_dense_6_bias_m_read_readvariableop=savev2_adam_sequential_2_dense_7_kernel_m_read_readvariableop;savev2_adam_sequential_2_dense_7_bias_m_read_readvariableop=savev2_adam_sequential_2_dense_8_kernel_m_read_readvariableop;savev2_adam_sequential_2_dense_8_bias_m_read_readvariableop;savev2_adam_sequential_2_price_kernel_m_read_readvariableop9savev2_adam_sequential_2_price_bias_m_read_readvariableopbsavev2_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_v_read_readvariableop=savev2_adam_sequential_2_dense_6_kernel_v_read_readvariableop;savev2_adam_sequential_2_dense_6_bias_v_read_readvariableop=savev2_adam_sequential_2_dense_7_kernel_v_read_readvariableop;savev2_adam_sequential_2_dense_7_bias_v_read_readvariableop=savev2_adam_sequential_2_dense_8_kernel_v_read_readvariableop;savev2_adam_sequential_2_dense_8_bias_v_read_readvariableop;savev2_adam_sequential_2_price_kernel_v_read_readvariableop9savev2_adam_sequential_2_price_bias_v_read_readvariableopsavev2_const_9"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?F:	j?:?:
??:?:	?@:@:@:: : : : : : : : : :	?F:	j?:?:
??:?:	?@:@:@::	?F:	j?:?:
??:?:	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?F:%!

_output_shapes
:	j?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 	

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?F:%!

_output_shapes
:	j?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	?F:%!

_output_shapes
:	j?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:%!!

_output_shapes
:	?@: "

_output_shapes
:@:$# 

_output_shapes

:@: $

_output_shapes
::%

_output_shapes
: 
?
?
1__inference_dense_features_2_layer_call_fn_392278
features_area
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_longitude
features_method
features_suburb
features_type
features_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_areafeatures_bathroomsfeatures_bedroomsfeatures_carsfeatures_distancefeatures_latitudefeatures_longitudefeatures_methodfeatures_suburbfeatures_typefeatures_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????j*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_2_layer_call_and_return_conditional_losses_391240o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????j`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Area:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:WS
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
: :

_output_shapes
: 
?

?
C__inference_dense_6_layer_call_and_return_conditional_losses_390836

inputs1
matmul_readvariableop_resource:	j?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	j?*
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????j: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????j
 
_user_specified_nameinputs
??
?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_390809
features

features_1	

features_2	

features_3	

features_4

features_5

features_6

features_7

features_8

features_9
features_10	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_embedding_none_lookup_lookuptablefindv2_table_handle@
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	;
(suburb_embedding_readvariableop_resource:	?F=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_embedding/None_Lookup/LookupTableFindV2?Suburb_embedding/ReadVariableOp?,Type_indicator/None_Lookup/LookupTableFindV2^
Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????w
Area/ExpandDims
ExpandDimsfeaturesArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????R

Area/ShapeShapeArea/ExpandDims:output:0*
T0*
_output_shapes
:b
Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Area/strided_sliceStridedSliceArea/Shape:output:0!Area/strided_slice/stack:output:0#Area/strided_slice/stack_1:output:0#Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Area/Reshape/shapePackArea/strided_slice:output:0Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Area/ReshapeReshapeArea/ExpandDims:output:0Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bathrooms/ExpandDims
ExpandDims
features_1!Bathrooms/ExpandDims/dim:output:0*
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
features_2 Bedrooms/ExpandDims/dim:output:0*
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
features_3Cars/ExpandDims/dim:output:0*
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
features_4 Distance/ExpandDims/dim:output:0*
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
features_5 Latitude/ExpandDims/dim:output:0*
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
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
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
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_embedding/ExpandDims
ExpandDims
features_8(Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_embedding/to_sparse_input/NotEqualNotEqual$Suburb_embedding/ExpandDims:output:08Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_embedding/to_sparse_input/indicesWhere-Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_embedding/to_sparse_input/valuesGatherNd$Suburb_embedding/ExpandDims:output:00Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_embedding/to_sparse_input/dense_shapeShape$Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_embedding_none_lookup_lookuptablefindv2_table_handle0Suburb_embedding/to_sparse_input/values:output:0<suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Suburb_embedding/ReadVariableOpReadVariableOp(suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0
5Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/Suburb_embedding/Suburb_embedding_weights/SliceSlice5Suburb_embedding/to_sparse_input/dense_shape:output:0>Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0=Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.Suburb_embedding/Suburb_embedding_weights/ProdProd8Suburb_embedding/Suburb_embedding_weights/Slice:output:08Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV25Suburb_embedding/to_sparse_input/dense_shape:output:0CSuburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0@Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0Suburb_embedding/Suburb_embedding_weights/Cast/xPack7Suburb_embedding/Suburb_embedding_weights/Prod:output:0;Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshape0Suburb_embedding/to_sparse_input/indices:index:05Suburb_embedding/to_sparse_input/dense_shape:output:09Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentity7Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0ASuburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/WhereWhere:Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/ReshapeReshape7Suburb_embedding/Suburb_embedding_weights/Where:index:0@Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2HSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2ISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2Suburb_embedding/Suburb_embedding_weights/IdentityIdentityFSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0=Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0;Suburb_embedding/Suburb_embedding_weights/Identity:output:0LSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
USuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniqueaSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'Suburb_embedding/ReadVariableOp:value:0LSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
9Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3Suburb_embedding/Suburb_embedding_weights/Reshape_1ReshapegSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BSuburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/ShapeShapeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSlice8Suburb_embedding/Suburb_embedding_weights/Shape:output:0FSuburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/Suburb_embedding/Suburb_embedding_weights/stackPack:Suburb_embedding/Suburb_embedding_weights/stack/0:output:0@Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.Suburb_embedding/Suburb_embedding_weights/TileTile<Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:08Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
0Suburb_embedding/Suburb_embedding_weights/Cast_1Cast5Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1Suburb_embedding/Suburb_embedding_weights/Slice_1Slice4Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0@Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1Suburb_embedding/Suburb_embedding_weights/Shape_1Shape2Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/Slice_2Slice:Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0@Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0Suburb_embedding/Suburb_embedding_weights/concatConcatV2:Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0:Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0>Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3Suburb_embedding/Suburb_embedding_weights/Reshape_2Reshape2Suburb_embedding/Suburb_embedding_weights:output:09Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
Suburb_embedding/ShapeShape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_embedding/strided_sliceStridedSliceSuburb_embedding/Shape:output:0-Suburb_embedding/strided_slice/stack:output:0/Suburb_embedding/strided_slice/stack_1:output:0/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????Fh
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
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
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
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????j?
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_embedding/None_Lookup/LookupTableFindV2 ^Suburb_embedding/ReadVariableOp-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_embedding/None_Lookup/LookupTableFindV2.Suburb_embedding/None_Lookup/LookupTableFindV22B
Suburb_embedding/ReadVariableOpSuburb_embedding/ReadVariableOp2\
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
: :

_output_shapes
: 
?+
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_391498
area
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
dense_features_2_391462
dense_features_2_391464	
dense_features_2_391466
dense_features_2_391468	*
dense_features_2_391470:	?F
dense_features_2_391472
dense_features_2_391474	!
dense_6_391477:	j?
dense_6_391479:	?"
dense_7_391482:
??
dense_7_391484:	?!
dense_8_391487:	?@
dense_8_391489:@
price_391492:@
price_391494:
identity??Price/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCall`
dense_features_2/CastCastarea*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_1Castdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_2Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_3Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCalldense_features_2/Cast:y:0	bathroomsbedroomscarsdense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0methodsuburbtypeyeardense_features_2_391462dense_features_2_391464dense_features_2_391466dense_features_2_391468dense_features_2_391470dense_features_2_391472dense_features_2_391474*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????j*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_2_layer_call_and_return_conditional_losses_390809?
dense_6/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_6_391477dense_6_391479*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_390836?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_391482dense_7_391484*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_390853?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_391487dense_8_391489*
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
C__inference_dense_8_layer_call_and_return_conditional_losses_390870?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0price_391492price_391494*
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
A__inference_Price_layer_call_and_return_conditional_losses_390886u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:NJ
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
: :

_output_shapes
: 
??
?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392742
features_area
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_longitude
features_method
features_suburb
features_type
features_year	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_embedding_none_lookup_lookuptablefindv2_table_handle@
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	;
(suburb_embedding_readvariableop_resource:	?F=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_embedding/None_Lookup/LookupTableFindV2?Suburb_embedding/ReadVariableOp?,Type_indicator/None_Lookup/LookupTableFindV2^
Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Area/ExpandDims
ExpandDimsfeatures_areaArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????R

Area/ShapeShapeArea/ExpandDims:output:0*
T0*
_output_shapes
:b
Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Area/strided_sliceStridedSliceArea/Shape:output:0!Area/strided_slice/stack:output:0#Area/strided_slice/stack_1:output:0#Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Area/Reshape/shapePackArea/strided_slice:output:0Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Area/ReshapeReshapeArea/ExpandDims:output:0Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
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
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
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
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_embedding/ExpandDims
ExpandDimsfeatures_suburb(Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_embedding/to_sparse_input/NotEqualNotEqual$Suburb_embedding/ExpandDims:output:08Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_embedding/to_sparse_input/indicesWhere-Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_embedding/to_sparse_input/valuesGatherNd$Suburb_embedding/ExpandDims:output:00Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_embedding/to_sparse_input/dense_shapeShape$Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_embedding_none_lookup_lookuptablefindv2_table_handle0Suburb_embedding/to_sparse_input/values:output:0<suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Suburb_embedding/ReadVariableOpReadVariableOp(suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0
5Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/Suburb_embedding/Suburb_embedding_weights/SliceSlice5Suburb_embedding/to_sparse_input/dense_shape:output:0>Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0=Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.Suburb_embedding/Suburb_embedding_weights/ProdProd8Suburb_embedding/Suburb_embedding_weights/Slice:output:08Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV25Suburb_embedding/to_sparse_input/dense_shape:output:0CSuburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0@Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0Suburb_embedding/Suburb_embedding_weights/Cast/xPack7Suburb_embedding/Suburb_embedding_weights/Prod:output:0;Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshape0Suburb_embedding/to_sparse_input/indices:index:05Suburb_embedding/to_sparse_input/dense_shape:output:09Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentity7Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0ASuburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/WhereWhere:Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/ReshapeReshape7Suburb_embedding/Suburb_embedding_weights/Where:index:0@Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2HSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2ISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2Suburb_embedding/Suburb_embedding_weights/IdentityIdentityFSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0=Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0;Suburb_embedding/Suburb_embedding_weights/Identity:output:0LSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
USuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniqueaSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'Suburb_embedding/ReadVariableOp:value:0LSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
9Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3Suburb_embedding/Suburb_embedding_weights/Reshape_1ReshapegSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BSuburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/ShapeShapeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSlice8Suburb_embedding/Suburb_embedding_weights/Shape:output:0FSuburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/Suburb_embedding/Suburb_embedding_weights/stackPack:Suburb_embedding/Suburb_embedding_weights/stack/0:output:0@Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.Suburb_embedding/Suburb_embedding_weights/TileTile<Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:08Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
0Suburb_embedding/Suburb_embedding_weights/Cast_1Cast5Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1Suburb_embedding/Suburb_embedding_weights/Slice_1Slice4Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0@Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1Suburb_embedding/Suburb_embedding_weights/Shape_1Shape2Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/Slice_2Slice:Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0@Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0Suburb_embedding/Suburb_embedding_weights/concatConcatV2:Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0:Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0>Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3Suburb_embedding/Suburb_embedding_weights/Reshape_2Reshape2Suburb_embedding/Suburb_embedding_weights:output:09Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
Suburb_embedding/ShapeShape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_embedding/strided_sliceStridedSliceSuburb_embedding/Shape:output:0-Suburb_embedding/strided_slice/stack:output:0/Suburb_embedding/strided_slice/stack_1:output:0/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????Fh
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
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
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
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????j?
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_embedding/None_Lookup/LookupTableFindV2 ^Suburb_embedding/ReadVariableOp-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_embedding/None_Lookup/LookupTableFindV2.Suburb_embedding/None_Lookup/LookupTableFindV22B
Suburb_embedding/ReadVariableOpSuburb_embedding/ReadVariableOp2\
,Type_indicator/None_Lookup/LookupTableFindV2,Type_indicator/None_Lookup/LookupTableFindV2:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Area:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:WS
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
: :

_output_shapes
: 
??
?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_391240
features

features_1	

features_2	

features_3	

features_4

features_5

features_6

features_7

features_8

features_9
features_10	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_embedding_none_lookup_lookuptablefindv2_table_handle@
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	;
(suburb_embedding_readvariableop_resource:	?F=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_embedding/None_Lookup/LookupTableFindV2?Suburb_embedding/ReadVariableOp?,Type_indicator/None_Lookup/LookupTableFindV2^
Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????w
Area/ExpandDims
ExpandDimsfeaturesArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????R

Area/ShapeShapeArea/ExpandDims:output:0*
T0*
_output_shapes
:b
Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Area/strided_sliceStridedSliceArea/Shape:output:0!Area/strided_slice/stack:output:0#Area/strided_slice/stack_1:output:0#Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Area/Reshape/shapePackArea/strided_slice:output:0Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Area/ReshapeReshapeArea/ExpandDims:output:0Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Bathrooms/ExpandDims
ExpandDims
features_1!Bathrooms/ExpandDims/dim:output:0*
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
features_2 Bedrooms/ExpandDims/dim:output:0*
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
features_3Cars/ExpandDims/dim:output:0*
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
features_4 Distance/ExpandDims/dim:output:0*
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
features_5 Latitude/ExpandDims/dim:output:0*
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
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
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
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_embedding/ExpandDims
ExpandDims
features_8(Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_embedding/to_sparse_input/NotEqualNotEqual$Suburb_embedding/ExpandDims:output:08Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_embedding/to_sparse_input/indicesWhere-Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_embedding/to_sparse_input/valuesGatherNd$Suburb_embedding/ExpandDims:output:00Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_embedding/to_sparse_input/dense_shapeShape$Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_embedding_none_lookup_lookuptablefindv2_table_handle0Suburb_embedding/to_sparse_input/values:output:0<suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Suburb_embedding/ReadVariableOpReadVariableOp(suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0
5Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/Suburb_embedding/Suburb_embedding_weights/SliceSlice5Suburb_embedding/to_sparse_input/dense_shape:output:0>Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0=Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.Suburb_embedding/Suburb_embedding_weights/ProdProd8Suburb_embedding/Suburb_embedding_weights/Slice:output:08Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV25Suburb_embedding/to_sparse_input/dense_shape:output:0CSuburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0@Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0Suburb_embedding/Suburb_embedding_weights/Cast/xPack7Suburb_embedding/Suburb_embedding_weights/Prod:output:0;Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshape0Suburb_embedding/to_sparse_input/indices:index:05Suburb_embedding/to_sparse_input/dense_shape:output:09Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentity7Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0ASuburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/WhereWhere:Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/ReshapeReshape7Suburb_embedding/Suburb_embedding_weights/Where:index:0@Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2HSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2ISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2Suburb_embedding/Suburb_embedding_weights/IdentityIdentityFSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0=Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0;Suburb_embedding/Suburb_embedding_weights/Identity:output:0LSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
USuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniqueaSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'Suburb_embedding/ReadVariableOp:value:0LSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
9Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3Suburb_embedding/Suburb_embedding_weights/Reshape_1ReshapegSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BSuburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/ShapeShapeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSlice8Suburb_embedding/Suburb_embedding_weights/Shape:output:0FSuburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/Suburb_embedding/Suburb_embedding_weights/stackPack:Suburb_embedding/Suburb_embedding_weights/stack/0:output:0@Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.Suburb_embedding/Suburb_embedding_weights/TileTile<Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:08Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
0Suburb_embedding/Suburb_embedding_weights/Cast_1Cast5Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1Suburb_embedding/Suburb_embedding_weights/Slice_1Slice4Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0@Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1Suburb_embedding/Suburb_embedding_weights/Shape_1Shape2Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/Slice_2Slice:Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0@Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0Suburb_embedding/Suburb_embedding_weights/concatConcatV2:Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0:Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0>Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3Suburb_embedding/Suburb_embedding_weights/Reshape_2Reshape2Suburb_embedding/Suburb_embedding_weights:output:09Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
Suburb_embedding/ShapeShape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_embedding/strided_sliceStridedSliceSuburb_embedding/Shape:output:0-Suburb_embedding/strided_slice/stack:output:0/Suburb_embedding/strided_slice/stack_1:output:0/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????Fh
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
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
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
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????j?
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_embedding/None_Lookup/LookupTableFindV2 ^Suburb_embedding/ReadVariableOp-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_embedding/None_Lookup/LookupTableFindV2.Suburb_embedding/None_Lookup/LookupTableFindV22B
Suburb_embedding/ReadVariableOpSuburb_embedding/ReadVariableOp2\
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
: :

_output_shapes
: 
?
-
__inference__destroyer_392839
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
__inference_<lambda>_3928915
1table_init283926_lookuptableimportv2_table_handle-
)table_init283926_lookuptableimportv2_keys/
+table_init283926_lookuptableimportv2_values	
identity??$table_init283926/LookupTableImportV2?
$table_init283926/LookupTableImportV2LookupTableImportV21table_init283926_lookuptableimportv2_table_handle)table_init283926_lookuptableimportv2_keys+table_init283926_lookuptableimportv2_values*	
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
: m
NoOpNoOp%^table_init283926/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2L
$table_init283926/LookupTableImportV2$table_init283926/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_<lambda>_3928995
1table_init284016_lookuptableimportv2_table_handle-
)table_init284016_lookuptableimportv2_keys/
+table_init284016_lookuptableimportv2_values	
identity??$table_init284016/LookupTableImportV2?
$table_init284016/LookupTableImportV2LookupTableImportV21table_init284016_lookuptableimportv2_table_handle)table_init284016_lookuptableimportv2_keys+table_init284016_lookuptableimportv2_values*	
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
: m
NoOpNoOp%^table_init284016/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2L
$table_init284016/LookupTableImportV2$table_init284016/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
1__inference_dense_features_2_layer_call_fn_392249
features_area
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_longitude
features_method
features_suburb
features_type
features_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_areafeatures_bathroomsfeatures_bedroomsfeatures_carsfeatures_distancefeatures_latitudefeatures_longitudefeatures_methodfeatures_suburbfeatures_typefeatures_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????j*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_2_layer_call_and_return_conditional_losses_390809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????j`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Area:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:WS
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
: :

_output_shapes
: 
?
?
-__inference_sequential_2_layer_call_fn_390926
area
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
	unknown_6:	j?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?@

unknown_11:@

unknown_12:@

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallarea	bathroomsbedroomscarsdistancelatitude	longitudemethodsuburbtypeyearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*%
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_390893o
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
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:NJ
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
: :

_output_shapes
: 
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_390853

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
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
?
?
__inference_<lambda>_3928835
1table_init283890_lookuptableimportv2_table_handle-
)table_init283890_lookuptableimportv2_keys/
+table_init283890_lookuptableimportv2_values	
identity??$table_init283890/LookupTableImportV2?
$table_init283890/LookupTableImportV2LookupTableImportV21table_init283890_lookuptableimportv2_table_handle)table_init283890_lookuptableimportv2_keys+table_init283890_lookuptableimportv2_values*	
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
: m
NoOpNoOp%^table_init283890/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2L
$table_init283890/LookupTableImportV2$table_init283890/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_392782

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
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
?
?
-__inference_sequential_2_layer_call_fn_391694
inputs_area
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
	unknown_6:	j?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?@

unknown_11:@

unknown_12:@

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_areainputs_bathroomsinputs_bedroomsinputs_carsinputs_distanceinputs_latitudeinputs_longitudeinputs_methodinputs_suburbinputs_typeinputs_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*%
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_391367o
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
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Area:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:UQ
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
: :

_output_shapes
: 
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_392802

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference__initializer_3928345
1table_init283890_lookuptableimportv2_table_handle-
)table_init283890_lookuptableimportv2_keys/
+table_init283890_lookuptableimportv2_values	
identity??$table_init283890/LookupTableImportV2?
$table_init283890/LookupTableImportV2LookupTableImportV21table_init283890_lookuptableimportv2_table_handle)table_init283890_lookuptableimportv2_keys+table_init283890_lookuptableimportv2_values*	
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
: m
NoOpNoOp%^table_init283890/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2L
$table_init283890/LookupTableImportV2$table_init283890/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
!__inference__wrapped_model_390546
area
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	]
Ysequential_2_dense_features_2_method_indicator_none_lookup_lookuptablefindv2_table_handle^
Zsequential_2_dense_features_2_method_indicator_none_lookup_lookuptablefindv2_default_value	]
Ysequential_2_dense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_table_handle^
Zsequential_2_dense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_default_value	Y
Fsequential_2_dense_features_2_suburb_embedding_readvariableop_resource:	?F[
Wsequential_2_dense_features_2_type_indicator_none_lookup_lookuptablefindv2_table_handle\
Xsequential_2_dense_features_2_type_indicator_none_lookup_lookuptablefindv2_default_value	F
3sequential_2_dense_6_matmul_readvariableop_resource:	j?C
4sequential_2_dense_6_biasadd_readvariableop_resource:	?G
3sequential_2_dense_7_matmul_readvariableop_resource:
??C
4sequential_2_dense_7_biasadd_readvariableop_resource:	?F
3sequential_2_dense_8_matmul_readvariableop_resource:	?@B
4sequential_2_dense_8_biasadd_readvariableop_resource:@C
1sequential_2_price_matmul_readvariableop_resource:@@
2sequential_2_price_biasadd_readvariableop_resource:
identity??)sequential_2/Price/BiasAdd/ReadVariableOp?(sequential_2/Price/MatMul/ReadVariableOp?+sequential_2/dense_6/BiasAdd/ReadVariableOp?*sequential_2/dense_6/MatMul/ReadVariableOp?+sequential_2/dense_7/BiasAdd/ReadVariableOp?*sequential_2/dense_7/MatMul/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?*sequential_2/dense_8/MatMul/ReadVariableOp?Lsequential_2/dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2?Lsequential_2/dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2?=sequential_2/dense_features_2/Suburb_embedding/ReadVariableOp?Jsequential_2/dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2m
"sequential_2/dense_features_2/CastCastarea*

DstT0*

SrcT0*#
_output_shapes
:?????????s
$sequential_2/dense_features_2/Cast_1Castdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????s
$sequential_2/dense_features_2/Cast_2Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????t
$sequential_2/dense_features_2/Cast_3Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????|
1sequential_2/dense_features_2/Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-sequential_2/dense_features_2/Area/ExpandDims
ExpandDims&sequential_2/dense_features_2/Cast:y:0:sequential_2/dense_features_2/Area/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
(sequential_2/dense_features_2/Area/ShapeShape6sequential_2/dense_features_2/Area/ExpandDims:output:0*
T0*
_output_shapes
:?
6sequential_2/dense_features_2/Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/dense_features_2/Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/dense_features_2/Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/dense_features_2/Area/strided_sliceStridedSlice1sequential_2/dense_features_2/Area/Shape:output:0?sequential_2/dense_features_2/Area/strided_slice/stack:output:0Asequential_2/dense_features_2/Area/strided_slice/stack_1:output:0Asequential_2/dense_features_2/Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential_2/dense_features_2/Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0sequential_2/dense_features_2/Area/Reshape/shapePack9sequential_2/dense_features_2/Area/strided_slice:output:0;sequential_2/dense_features_2/Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*sequential_2/dense_features_2/Area/ReshapeReshape6sequential_2/dense_features_2/Area/ExpandDims:output:09sequential_2/dense_features_2/Area/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6sequential_2/dense_features_2/Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2sequential_2/dense_features_2/Bathrooms/ExpandDims
ExpandDims	bathrooms?sequential_2/dense_features_2/Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
,sequential_2/dense_features_2/Bathrooms/CastCast;sequential_2/dense_features_2/Bathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
-sequential_2/dense_features_2/Bathrooms/ShapeShape0sequential_2/dense_features_2/Bathrooms/Cast:y:0*
T0*
_output_shapes
:?
;sequential_2/dense_features_2/Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=sequential_2/dense_features_2/Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_2/dense_features_2/Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5sequential_2/dense_features_2/Bathrooms/strided_sliceStridedSlice6sequential_2/dense_features_2/Bathrooms/Shape:output:0Dsequential_2/dense_features_2/Bathrooms/strided_slice/stack:output:0Fsequential_2/dense_features_2/Bathrooms/strided_slice/stack_1:output:0Fsequential_2/dense_features_2/Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7sequential_2/dense_features_2/Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
5sequential_2/dense_features_2/Bathrooms/Reshape/shapePack>sequential_2/dense_features_2/Bathrooms/strided_slice:output:0@sequential_2/dense_features_2/Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/sequential_2/dense_features_2/Bathrooms/ReshapeReshape0sequential_2/dense_features_2/Bathrooms/Cast:y:0>sequential_2/dense_features_2/Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5sequential_2/dense_features_2/Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1sequential_2/dense_features_2/Bedrooms/ExpandDims
ExpandDimsbedrooms>sequential_2/dense_features_2/Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
+sequential_2/dense_features_2/Bedrooms/CastCast:sequential_2/dense_features_2/Bedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
,sequential_2/dense_features_2/Bedrooms/ShapeShape/sequential_2/dense_features_2/Bedrooms/Cast:y:0*
T0*
_output_shapes
:?
:sequential_2/dense_features_2/Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential_2/dense_features_2/Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_2/dense_features_2/Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential_2/dense_features_2/Bedrooms/strided_sliceStridedSlice5sequential_2/dense_features_2/Bedrooms/Shape:output:0Csequential_2/dense_features_2/Bedrooms/strided_slice/stack:output:0Esequential_2/dense_features_2/Bedrooms/strided_slice/stack_1:output:0Esequential_2/dense_features_2/Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6sequential_2/dense_features_2/Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4sequential_2/dense_features_2/Bedrooms/Reshape/shapePack=sequential_2/dense_features_2/Bedrooms/strided_slice:output:0?sequential_2/dense_features_2/Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.sequential_2/dense_features_2/Bedrooms/ReshapeReshape/sequential_2/dense_features_2/Bedrooms/Cast:y:0=sequential_2/dense_features_2/Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????|
1sequential_2/dense_features_2/Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-sequential_2/dense_features_2/Cars/ExpandDims
ExpandDimscars:sequential_2/dense_features_2/Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
'sequential_2/dense_features_2/Cars/CastCast6sequential_2/dense_features_2/Cars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
(sequential_2/dense_features_2/Cars/ShapeShape+sequential_2/dense_features_2/Cars/Cast:y:0*
T0*
_output_shapes
:?
6sequential_2/dense_features_2/Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/dense_features_2/Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/dense_features_2/Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/dense_features_2/Cars/strided_sliceStridedSlice1sequential_2/dense_features_2/Cars/Shape:output:0?sequential_2/dense_features_2/Cars/strided_slice/stack:output:0Asequential_2/dense_features_2/Cars/strided_slice/stack_1:output:0Asequential_2/dense_features_2/Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential_2/dense_features_2/Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0sequential_2/dense_features_2/Cars/Reshape/shapePack9sequential_2/dense_features_2/Cars/strided_slice:output:0;sequential_2/dense_features_2/Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*sequential_2/dense_features_2/Cars/ReshapeReshape+sequential_2/dense_features_2/Cars/Cast:y:09sequential_2/dense_features_2/Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5sequential_2/dense_features_2/Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1sequential_2/dense_features_2/Distance/ExpandDims
ExpandDims(sequential_2/dense_features_2/Cast_1:y:0>sequential_2/dense_features_2/Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
,sequential_2/dense_features_2/Distance/ShapeShape:sequential_2/dense_features_2/Distance/ExpandDims:output:0*
T0*
_output_shapes
:?
:sequential_2/dense_features_2/Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential_2/dense_features_2/Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_2/dense_features_2/Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential_2/dense_features_2/Distance/strided_sliceStridedSlice5sequential_2/dense_features_2/Distance/Shape:output:0Csequential_2/dense_features_2/Distance/strided_slice/stack:output:0Esequential_2/dense_features_2/Distance/strided_slice/stack_1:output:0Esequential_2/dense_features_2/Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6sequential_2/dense_features_2/Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4sequential_2/dense_features_2/Distance/Reshape/shapePack=sequential_2/dense_features_2/Distance/strided_slice:output:0?sequential_2/dense_features_2/Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.sequential_2/dense_features_2/Distance/ReshapeReshape:sequential_2/dense_features_2/Distance/ExpandDims:output:0=sequential_2/dense_features_2/Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5sequential_2/dense_features_2/Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1sequential_2/dense_features_2/Latitude/ExpandDims
ExpandDims(sequential_2/dense_features_2/Cast_2:y:0>sequential_2/dense_features_2/Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
,sequential_2/dense_features_2/Latitude/ShapeShape:sequential_2/dense_features_2/Latitude/ExpandDims:output:0*
T0*
_output_shapes
:?
:sequential_2/dense_features_2/Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential_2/dense_features_2/Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_2/dense_features_2/Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential_2/dense_features_2/Latitude/strided_sliceStridedSlice5sequential_2/dense_features_2/Latitude/Shape:output:0Csequential_2/dense_features_2/Latitude/strided_slice/stack:output:0Esequential_2/dense_features_2/Latitude/strided_slice/stack_1:output:0Esequential_2/dense_features_2/Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6sequential_2/dense_features_2/Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4sequential_2/dense_features_2/Latitude/Reshape/shapePack=sequential_2/dense_features_2/Latitude/strided_slice:output:0?sequential_2/dense_features_2/Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.sequential_2/dense_features_2/Latitude/ReshapeReshape:sequential_2/dense_features_2/Latitude/ExpandDims:output:0=sequential_2/dense_features_2/Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6sequential_2/dense_features_2/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2sequential_2/dense_features_2/Longitude/ExpandDims
ExpandDims(sequential_2/dense_features_2/Cast_3:y:0?sequential_2/dense_features_2/Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
-sequential_2/dense_features_2/Longitude/ShapeShape;sequential_2/dense_features_2/Longitude/ExpandDims:output:0*
T0*
_output_shapes
:?
;sequential_2/dense_features_2/Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=sequential_2/dense_features_2/Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_2/dense_features_2/Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5sequential_2/dense_features_2/Longitude/strided_sliceStridedSlice6sequential_2/dense_features_2/Longitude/Shape:output:0Dsequential_2/dense_features_2/Longitude/strided_slice/stack:output:0Fsequential_2/dense_features_2/Longitude/strided_slice/stack_1:output:0Fsequential_2/dense_features_2/Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7sequential_2/dense_features_2/Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
5sequential_2/dense_features_2/Longitude/Reshape/shapePack>sequential_2/dense_features_2/Longitude/strided_slice:output:0@sequential_2/dense_features_2/Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/sequential_2/dense_features_2/Longitude/ReshapeReshape;sequential_2/dense_features_2/Longitude/ExpandDims:output:0>sequential_2/dense_features_2/Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
=sequential_2/dense_features_2/Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9sequential_2/dense_features_2/Method_indicator/ExpandDims
ExpandDimsmethodFsequential_2/dense_features_2/Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Msequential_2/dense_features_2/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Gsequential_2/dense_features_2/Method_indicator/to_sparse_input/NotEqualNotEqualBsequential_2/dense_features_2/Method_indicator/ExpandDims:output:0Vsequential_2/dense_features_2/Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Fsequential_2/dense_features_2/Method_indicator/to_sparse_input/indicesWhereKsequential_2/dense_features_2/Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Esequential_2/dense_features_2/Method_indicator/to_sparse_input/valuesGatherNdBsequential_2/dense_features_2/Method_indicator/ExpandDims:output:0Nsequential_2/dense_features_2/Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Jsequential_2/dense_features_2/Method_indicator/to_sparse_input/dense_shapeShapeBsequential_2/dense_features_2/Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Lsequential_2/dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Ysequential_2_dense_features_2_method_indicator_none_lookup_lookuptablefindv2_table_handleNsequential_2/dense_features_2/Method_indicator/to_sparse_input/values:output:0Zsequential_2_dense_features_2_method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Jsequential_2/dense_features_2/Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
<sequential_2/dense_features_2/Method_indicator/SparseToDenseSparseToDenseNsequential_2/dense_features_2/Method_indicator/to_sparse_input/indices:index:0Ssequential_2/dense_features_2/Method_indicator/to_sparse_input/dense_shape:output:0Usequential_2/dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2:values:0Ssequential_2/dense_features_2/Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
<sequential_2/dense_features_2/Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
>sequential_2/dense_features_2/Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ~
<sequential_2/dense_features_2/Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
6sequential_2/dense_features_2/Method_indicator/one_hotOneHotDsequential_2/dense_features_2/Method_indicator/SparseToDense:dense:0Esequential_2/dense_features_2/Method_indicator/one_hot/depth:output:0Esequential_2/dense_features_2/Method_indicator/one_hot/Const:output:0Gsequential_2/dense_features_2/Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Dsequential_2/dense_features_2/Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
2sequential_2/dense_features_2/Method_indicator/SumSum?sequential_2/dense_features_2/Method_indicator/one_hot:output:0Msequential_2/dense_features_2/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
4sequential_2/dense_features_2/Method_indicator/ShapeShape;sequential_2/dense_features_2/Method_indicator/Sum:output:0*
T0*
_output_shapes
:?
Bsequential_2/dense_features_2/Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dsequential_2/dense_features_2/Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dsequential_2/dense_features_2/Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_2/dense_features_2/Method_indicator/strided_sliceStridedSlice=sequential_2/dense_features_2/Method_indicator/Shape:output:0Ksequential_2/dense_features_2/Method_indicator/strided_slice/stack:output:0Msequential_2/dense_features_2/Method_indicator/strided_slice/stack_1:output:0Msequential_2/dense_features_2/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
>sequential_2/dense_features_2/Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<sequential_2/dense_features_2/Method_indicator/Reshape/shapePackEsequential_2/dense_features_2/Method_indicator/strided_slice:output:0Gsequential_2/dense_features_2/Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/dense_features_2/Method_indicator/ReshapeReshape;sequential_2/dense_features_2/Method_indicator/Sum:output:0Esequential_2/dense_features_2/Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
=sequential_2/dense_features_2/Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9sequential_2/dense_features_2/Suburb_embedding/ExpandDims
ExpandDimssuburbFsequential_2/dense_features_2/Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Msequential_2/dense_features_2/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Gsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/NotEqualNotEqualBsequential_2/dense_features_2/Suburb_embedding/ExpandDims:output:0Vsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Fsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/indicesWhereKsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Esequential_2/dense_features_2/Suburb_embedding/to_sparse_input/valuesGatherNdBsequential_2/dense_features_2/Suburb_embedding/ExpandDims:output:0Nsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Jsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/dense_shapeShapeBsequential_2/dense_features_2/Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Lsequential_2/dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ysequential_2_dense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_table_handleNsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/values:output:0Zsequential_2_dense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
=sequential_2/dense_features_2/Suburb_embedding/ReadVariableOpReadVariableOpFsequential_2_dense_features_2_suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0?
Ssequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Rsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Msequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SliceSliceSsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0\sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0[sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
Msequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Lsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/ProdProdVsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice:output:0Vsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Xsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Psequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV2Ssequential_2/dense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0asequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0^sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Nsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast/xPackUsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Prod:output:0Ysequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshapeNsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/indices:index:0Ssequential_2/dense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Wsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
^sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentityUsequential_2/dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Vsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Tsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualgsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0_sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
Msequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/WhereWhereXsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Osequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/ReshapeReshapeUsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Where:index:0^sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Wsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Rsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2fsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0Xsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0`sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Wsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Rsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2gsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Xsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0`sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Psequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/IdentityIdentitydsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
asequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
osequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows[sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0[sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0Ysequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Identity:output:0jsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
ssequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
msequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice?sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0|sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0~sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0~sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
fsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniquesequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*P
_classF
DBloc:@sequential_2/dense_features_2/Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
psequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Esequential_2/dense_features_2/Suburb_embedding/ReadVariableOp:value:0jsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0~sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*P
_classF
DBloc:@sequential_2/dense_features_2/Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
ysequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityysequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
_sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMean?sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0lsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0vsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
Wsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Qsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1Reshape?sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0`sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
Msequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/ShapeShapehsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
[sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
]sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
]sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSliceVsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape:output:0dsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0fsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0fsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Osequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
Msequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/stackPackXsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/stack/0:output:0^sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
Lsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/TileTileZsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:0Vsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
Rsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikehsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
Gsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weightsSelectUsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Tile:output:0Vsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0hsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
Nsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast_1CastSsequential_2/dense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Tsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Osequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1SliceRsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0^sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0]sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Osequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape_1ShapePsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
Usequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Tsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Osequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2SliceXsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0^sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0]sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Ssequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/concatConcatV2Xsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0Xsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0\sequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Qsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2ReshapePsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights:output:0Wsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
4sequential_2/dense_features_2/Suburb_embedding/ShapeShapeZsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:?
Bsequential_2/dense_features_2/Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dsequential_2/dense_features_2/Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dsequential_2/dense_features_2/Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_2/dense_features_2/Suburb_embedding/strided_sliceStridedSlice=sequential_2/dense_features_2/Suburb_embedding/Shape:output:0Ksequential_2/dense_features_2/Suburb_embedding/strided_slice/stack:output:0Msequential_2/dense_features_2/Suburb_embedding/strided_slice/stack_1:output:0Msequential_2/dense_features_2/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
>sequential_2/dense_features_2/Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
<sequential_2/dense_features_2/Suburb_embedding/Reshape/shapePackEsequential_2/dense_features_2/Suburb_embedding/strided_slice:output:0Gsequential_2/dense_features_2/Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/dense_features_2/Suburb_embedding/ReshapeReshapeZsequential_2/dense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0Esequential_2/dense_features_2/Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????F?
;sequential_2/dense_features_2/Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
7sequential_2/dense_features_2/Type_indicator/ExpandDims
ExpandDimstypeDsequential_2/dense_features_2/Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Ksequential_2/dense_features_2/Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Esequential_2/dense_features_2/Type_indicator/to_sparse_input/NotEqualNotEqual@sequential_2/dense_features_2/Type_indicator/ExpandDims:output:0Tsequential_2/dense_features_2/Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Dsequential_2/dense_features_2/Type_indicator/to_sparse_input/indicesWhereIsequential_2/dense_features_2/Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Csequential_2/dense_features_2/Type_indicator/to_sparse_input/valuesGatherNd@sequential_2/dense_features_2/Type_indicator/ExpandDims:output:0Lsequential_2/dense_features_2/Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Hsequential_2/dense_features_2/Type_indicator/to_sparse_input/dense_shapeShape@sequential_2/dense_features_2/Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Jsequential_2/dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Wsequential_2_dense_features_2_type_indicator_none_lookup_lookuptablefindv2_table_handleLsequential_2/dense_features_2/Type_indicator/to_sparse_input/values:output:0Xsequential_2_dense_features_2_type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Hsequential_2/dense_features_2/Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
:sequential_2/dense_features_2/Type_indicator/SparseToDenseSparseToDenseLsequential_2/dense_features_2/Type_indicator/to_sparse_input/indices:index:0Qsequential_2/dense_features_2/Type_indicator/to_sparse_input/dense_shape:output:0Ssequential_2/dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2:values:0Qsequential_2/dense_features_2/Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????
:sequential_2/dense_features_2/Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
<sequential_2/dense_features_2/Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    |
:sequential_2/dense_features_2/Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
4sequential_2/dense_features_2/Type_indicator/one_hotOneHotBsequential_2/dense_features_2/Type_indicator/SparseToDense:dense:0Csequential_2/dense_features_2/Type_indicator/one_hot/depth:output:0Csequential_2/dense_features_2/Type_indicator/one_hot/Const:output:0Esequential_2/dense_features_2/Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Bsequential_2/dense_features_2/Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
0sequential_2/dense_features_2/Type_indicator/SumSum=sequential_2/dense_features_2/Type_indicator/one_hot:output:0Ksequential_2/dense_features_2/Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
2sequential_2/dense_features_2/Type_indicator/ShapeShape9sequential_2/dense_features_2/Type_indicator/Sum:output:0*
T0*
_output_shapes
:?
@sequential_2/dense_features_2/Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bsequential_2/dense_features_2/Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bsequential_2/dense_features_2/Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:sequential_2/dense_features_2/Type_indicator/strided_sliceStridedSlice;sequential_2/dense_features_2/Type_indicator/Shape:output:0Isequential_2/dense_features_2/Type_indicator/strided_slice/stack:output:0Ksequential_2/dense_features_2/Type_indicator/strided_slice/stack_1:output:0Ksequential_2/dense_features_2/Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential_2/dense_features_2/Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
:sequential_2/dense_features_2/Type_indicator/Reshape/shapePackCsequential_2/dense_features_2/Type_indicator/strided_slice:output:0Esequential_2/dense_features_2/Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
4sequential_2/dense_features_2/Type_indicator/ReshapeReshape9sequential_2/dense_features_2/Type_indicator/Sum:output:0Csequential_2/dense_features_2/Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????|
1sequential_2/dense_features_2/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-sequential_2/dense_features_2/Year/ExpandDims
ExpandDimsyear:sequential_2/dense_features_2/Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
'sequential_2/dense_features_2/Year/CastCast6sequential_2/dense_features_2/Year/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
(sequential_2/dense_features_2/Year/ShapeShape+sequential_2/dense_features_2/Year/Cast:y:0*
T0*
_output_shapes
:?
6sequential_2/dense_features_2/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/dense_features_2/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/dense_features_2/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/dense_features_2/Year/strided_sliceStridedSlice1sequential_2/dense_features_2/Year/Shape:output:0?sequential_2/dense_features_2/Year/strided_slice/stack:output:0Asequential_2/dense_features_2/Year/strided_slice/stack_1:output:0Asequential_2/dense_features_2/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential_2/dense_features_2/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0sequential_2/dense_features_2/Year/Reshape/shapePack9sequential_2/dense_features_2/Year/strided_slice:output:0;sequential_2/dense_features_2/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*sequential_2/dense_features_2/Year/ReshapeReshape+sequential_2/dense_features_2/Year/Cast:y:09sequential_2/dense_features_2/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)sequential_2/dense_features_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_2/dense_features_2/concatConcatV23sequential_2/dense_features_2/Area/Reshape:output:08sequential_2/dense_features_2/Bathrooms/Reshape:output:07sequential_2/dense_features_2/Bedrooms/Reshape:output:03sequential_2/dense_features_2/Cars/Reshape:output:07sequential_2/dense_features_2/Distance/Reshape:output:07sequential_2/dense_features_2/Latitude/Reshape:output:08sequential_2/dense_features_2/Longitude/Reshape:output:0?sequential_2/dense_features_2/Method_indicator/Reshape:output:0?sequential_2/dense_features_2/Suburb_embedding/Reshape:output:0=sequential_2/dense_features_2/Type_indicator/Reshape:output:03sequential_2/dense_features_2/Year/Reshape:output:02sequential_2/dense_features_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j?
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes
:	j?*
dtype0?
sequential_2/dense_6/MatMulMatMul-sequential_2/dense_features_2/concat:output:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
sequential_2/dense_6/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_2/dense_7/MatMulMatMul'sequential_2/dense_6/Relu:activations:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
sequential_2/dense_7/ReluRelu%sequential_2/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*sequential_2/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_2/dense_8/MatMulMatMul'sequential_2/dense_7/Relu:activations:02sequential_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_2/dense_8/BiasAddBiasAdd%sequential_2/dense_8/MatMul:product:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
(sequential_2/Price/MatMul/ReadVariableOpReadVariableOp1sequential_2_price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_2/Price/MatMulMatMul'sequential_2/dense_8/Relu:activations:00sequential_2/Price/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)sequential_2/Price/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_price_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/Price/BiasAddBiasAdd#sequential_2/Price/MatMul:product:01sequential_2/Price/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential_2/Price/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp*^sequential_2/Price/BiasAdd/ReadVariableOp)^sequential_2/Price/MatMul/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp+^sequential_2/dense_8/MatMul/ReadVariableOpM^sequential_2/dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2M^sequential_2/dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2>^sequential_2/dense_features_2/Suburb_embedding/ReadVariableOpK^sequential_2/dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2V
)sequential_2/Price/BiasAdd/ReadVariableOp)sequential_2/Price/BiasAdd/ReadVariableOp2T
(sequential_2/Price/MatMul/ReadVariableOp(sequential_2/Price/MatMul/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2X
*sequential_2/dense_8/MatMul/ReadVariableOp*sequential_2/dense_8/MatMul/ReadVariableOp2?
Lsequential_2/dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2Lsequential_2/dense_features_2/Method_indicator/None_Lookup/LookupTableFindV22?
Lsequential_2/dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2Lsequential_2/dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV22~
=sequential_2/dense_features_2/Suburb_embedding/ReadVariableOp=sequential_2/dense_features_2/Suburb_embedding/ReadVariableOp2?
Jsequential_2/dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2Jsequential_2/dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2:I E
#
_output_shapes
:?????????

_user_specified_nameArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:NJ
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
: :

_output_shapes
: 
?
?
__inference__initializer_3928525
1table_init283926_lookuptableimportv2_table_handle-
)table_init283926_lookuptableimportv2_keys/
+table_init283926_lookuptableimportv2_values	
identity??$table_init283926/LookupTableImportV2?
$table_init283926/LookupTableImportV2LookupTableImportV21table_init283926_lookuptableimportv2_table_handle)table_init283926_lookuptableimportv2_keys+table_init283926_lookuptableimportv2_values*	
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
: m
NoOpNoOp%^table_init283926/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2L
$table_init283926/LookupTableImportV2$table_init283926/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
-__inference_sequential_2_layer_call_fn_391649
inputs_area
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
	unknown_6:	j?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?@

unknown_11:@

unknown_12:@

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_areainputs_bathroomsinputs_bedroomsinputs_carsinputs_distanceinputs_latitudeinputs_longitudeinputs_methodinputs_suburbinputs_typeinputs_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*%
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_390893o
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
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Area:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:UQ
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
: :

_output_shapes
: 
?+
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_390893

inputs
inputs_1	
inputs_2	
inputs_3	
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10	
dense_features_2_390810
dense_features_2_390812	
dense_features_2_390814
dense_features_2_390816	*
dense_features_2_390818:	?F
dense_features_2_390820
dense_features_2_390822	!
dense_6_390837:	j?
dense_6_390839:	?"
dense_7_390854:
??
dense_7_390856:	?!
dense_8_390871:	?@
dense_8_390873:@
price_390887:@
price_390889:
identity??Price/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCallb
dense_features_2/CastCastinputs*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_1Castinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_2Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_3Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCalldense_features_2/Cast:y:0inputs_1inputs_2inputs_3dense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0inputs_7inputs_8inputs_9	inputs_10dense_features_2_390810dense_features_2_390812dense_features_2_390814dense_features_2_390816dense_features_2_390818dense_features_2_390820dense_features_2_390822*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????j*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_2_layer_call_and_return_conditional_losses_390809?
dense_6/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_6_390837dense_6_390839*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_390836?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_390854dense_7_390856*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_390853?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_390871dense_8_390873*
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
C__inference_dense_8_layer_call_and_return_conditional_losses_390870?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0price_390887price_390889*
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
A__inference_Price_layer_call_and_return_conditional_losses_390886u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall:K G
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
: :

_output_shapes
: 
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_392220
inputs_area
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	P
Ldense_features_2_method_indicator_none_lookup_lookuptablefindv2_table_handleQ
Mdense_features_2_method_indicator_none_lookup_lookuptablefindv2_default_value	P
Ldense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_table_handleQ
Mdense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_default_value	L
9dense_features_2_suburb_embedding_readvariableop_resource:	?FN
Jdense_features_2_type_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_2_type_indicator_none_lookup_lookuptablefindv2_default_value	9
&dense_6_matmul_readvariableop_resource:	j?6
'dense_6_biasadd_readvariableop_resource:	?:
&dense_7_matmul_readvariableop_resource:
??6
'dense_7_biasadd_readvariableop_resource:	?9
&dense_8_matmul_readvariableop_resource:	?@5
'dense_8_biasadd_readvariableop_resource:@6
$price_matmul_readvariableop_resource:@3
%price_biasadd_readvariableop_resource:
identity??Price/BiasAdd/ReadVariableOp?Price/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp??dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2??dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2?0dense_features_2/Suburb_embedding/ReadVariableOp?=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2g
dense_features_2/CastCastinputs_area*

DstT0*

SrcT0*#
_output_shapes
:?????????m
dense_features_2/Cast_1Castinputs_distance*

DstT0*

SrcT0*#
_output_shapes
:?????????m
dense_features_2/Cast_2Castinputs_latitude*

DstT0*

SrcT0*#
_output_shapes
:?????????n
dense_features_2/Cast_3Castinputs_longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????o
$dense_features_2/Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 dense_features_2/Area/ExpandDims
ExpandDimsdense_features_2/Cast:y:0-dense_features_2/Area/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
dense_features_2/Area/ShapeShape)dense_features_2/Area/ExpandDims:output:0*
T0*
_output_shapes
:s
)dense_features_2/Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+dense_features_2/Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+dense_features_2/Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#dense_features_2/Area/strided_sliceStridedSlice$dense_features_2/Area/Shape:output:02dense_features_2/Area/strided_slice/stack:output:04dense_features_2/Area/strided_slice/stack_1:output:04dense_features_2/Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%dense_features_2/Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
#dense_features_2/Area/Reshape/shapePack,dense_features_2/Area/strided_slice:output:0.dense_features_2/Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features_2/Area/ReshapeReshape)dense_features_2/Area/ExpandDims:output:0,dense_features_2/Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/Bathrooms/ExpandDims
ExpandDimsinputs_bathrooms2dense_features_2/Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Bathrooms/CastCast.dense_features_2/Bathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????s
 dense_features_2/Bathrooms/ShapeShape#dense_features_2/Bathrooms/Cast:y:0*
T0*
_output_shapes
:x
.dense_features_2/Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/Bathrooms/strided_sliceStridedSlice)dense_features_2/Bathrooms/Shape:output:07dense_features_2/Bathrooms/strided_slice/stack:output:09dense_features_2/Bathrooms/strided_slice/stack_1:output:09dense_features_2/Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/Bathrooms/Reshape/shapePack1dense_features_2/Bathrooms/strided_slice:output:03dense_features_2/Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/Bathrooms/ReshapeReshape#dense_features_2/Bathrooms/Cast:y:01dense_features_2/Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(dense_features_2/Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$dense_features_2/Bedrooms/ExpandDims
ExpandDimsinputs_bedrooms1dense_features_2/Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Bedrooms/CastCast-dense_features_2/Bedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????q
dense_features_2/Bedrooms/ShapeShape"dense_features_2/Bedrooms/Cast:y:0*
T0*
_output_shapes
:w
-dense_features_2/Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_features_2/Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_features_2/Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'dense_features_2/Bedrooms/strided_sliceStridedSlice(dense_features_2/Bedrooms/Shape:output:06dense_features_2/Bedrooms/strided_slice/stack:output:08dense_features_2/Bedrooms/strided_slice/stack_1:output:08dense_features_2/Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)dense_features_2/Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Bedrooms/Reshape/shapePack0dense_features_2/Bedrooms/strided_slice:output:02dense_features_2/Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!dense_features_2/Bedrooms/ReshapeReshape"dense_features_2/Bedrooms/Cast:y:00dense_features_2/Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????o
$dense_features_2/Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 dense_features_2/Cars/ExpandDims
ExpandDimsinputs_cars-dense_features_2/Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Cars/CastCast)dense_features_2/Cars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????i
dense_features_2/Cars/ShapeShapedense_features_2/Cars/Cast:y:0*
T0*
_output_shapes
:s
)dense_features_2/Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+dense_features_2/Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+dense_features_2/Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#dense_features_2/Cars/strided_sliceStridedSlice$dense_features_2/Cars/Shape:output:02dense_features_2/Cars/strided_slice/stack:output:04dense_features_2/Cars/strided_slice/stack_1:output:04dense_features_2/Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%dense_features_2/Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
#dense_features_2/Cars/Reshape/shapePack,dense_features_2/Cars/strided_slice:output:0.dense_features_2/Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features_2/Cars/ReshapeReshapedense_features_2/Cars/Cast:y:0,dense_features_2/Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(dense_features_2/Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$dense_features_2/Distance/ExpandDims
ExpandDimsdense_features_2/Cast_1:y:01dense_features_2/Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????|
dense_features_2/Distance/ShapeShape-dense_features_2/Distance/ExpandDims:output:0*
T0*
_output_shapes
:w
-dense_features_2/Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_features_2/Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_features_2/Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'dense_features_2/Distance/strided_sliceStridedSlice(dense_features_2/Distance/Shape:output:06dense_features_2/Distance/strided_slice/stack:output:08dense_features_2/Distance/strided_slice/stack_1:output:08dense_features_2/Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)dense_features_2/Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Distance/Reshape/shapePack0dense_features_2/Distance/strided_slice:output:02dense_features_2/Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!dense_features_2/Distance/ReshapeReshape-dense_features_2/Distance/ExpandDims:output:00dense_features_2/Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(dense_features_2/Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$dense_features_2/Latitude/ExpandDims
ExpandDimsdense_features_2/Cast_2:y:01dense_features_2/Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????|
dense_features_2/Latitude/ShapeShape-dense_features_2/Latitude/ExpandDims:output:0*
T0*
_output_shapes
:w
-dense_features_2/Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_features_2/Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_features_2/Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'dense_features_2/Latitude/strided_sliceStridedSlice(dense_features_2/Latitude/Shape:output:06dense_features_2/Latitude/strided_slice/stack:output:08dense_features_2/Latitude/strided_slice/stack_1:output:08dense_features_2/Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)dense_features_2/Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Latitude/Reshape/shapePack0dense_features_2/Latitude/strided_slice:output:02dense_features_2/Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!dense_features_2/Latitude/ReshapeReshape-dense_features_2/Latitude/ExpandDims:output:00dense_features_2/Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/Longitude/ExpandDims
ExpandDimsdense_features_2/Cast_3:y:02dense_features_2/Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
 dense_features_2/Longitude/ShapeShape.dense_features_2/Longitude/ExpandDims:output:0*
T0*
_output_shapes
:x
.dense_features_2/Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/Longitude/strided_sliceStridedSlice)dense_features_2/Longitude/Shape:output:07dense_features_2/Longitude/strided_slice/stack:output:09dense_features_2/Longitude/strided_slice/stack_1:output:09dense_features_2/Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/Longitude/Reshape/shapePack1dense_features_2/Longitude/strided_slice:output:03dense_features_2/Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/Longitude/ReshapeReshape.dense_features_2/Longitude/ExpandDims:output:01dense_features_2/Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0dense_features_2/Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features_2/Method_indicator/ExpandDims
ExpandDimsinputs_method9dense_features_2/Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features_2/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features_2/Method_indicator/to_sparse_input/NotEqualNotEqual5dense_features_2/Method_indicator/ExpandDims:output:0Idense_features_2/Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/Method_indicator/to_sparse_input/indicesWhere>dense_features_2/Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features_2/Method_indicator/to_sparse_input/valuesGatherNd5dense_features_2/Method_indicator/ExpandDims:output:0Adense_features_2/Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features_2/Method_indicator/to_sparse_input/dense_shapeShape5dense_features_2/Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
?dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Ldense_features_2_method_indicator_none_lookup_lookuptablefindv2_table_handleAdense_features_2/Method_indicator/to_sparse_input/values:output:0Mdense_features_2_method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
=dense_features_2/Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
/dense_features_2/Method_indicator/SparseToDenseSparseToDenseAdense_features_2/Method_indicator/to_sparse_input/indices:index:0Fdense_features_2/Method_indicator/to_sparse_input/dense_shape:output:0Hdense_features_2/Method_indicator/None_Lookup/LookupTableFindV2:values:0Fdense_features_2/Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????t
/dense_features_2/Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??v
1dense_features_2/Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    q
/dense_features_2/Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/Method_indicator/one_hotOneHot7dense_features_2/Method_indicator/SparseToDense:dense:08dense_features_2/Method_indicator/one_hot/depth:output:08dense_features_2/Method_indicator/one_hot/Const:output:0:dense_features_2/Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
7dense_features_2/Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
%dense_features_2/Method_indicator/SumSum2dense_features_2/Method_indicator/one_hot:output:0@dense_features_2/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
'dense_features_2/Method_indicator/ShapeShape.dense_features_2/Method_indicator/Sum:output:0*
T0*
_output_shapes
:
5dense_features_2/Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features_2/Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features_2/Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features_2/Method_indicator/strided_sliceStridedSlice0dense_features_2/Method_indicator/Shape:output:0>dense_features_2/Method_indicator/strided_slice/stack:output:0@dense_features_2/Method_indicator/strided_slice/stack_1:output:0@dense_features_2/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_2/Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/dense_features_2/Method_indicator/Reshape/shapePack8dense_features_2/Method_indicator/strided_slice:output:0:dense_features_2/Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features_2/Method_indicator/ReshapeReshape.dense_features_2/Method_indicator/Sum:output:08dense_features_2/Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0dense_features_2/Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features_2/Suburb_embedding/ExpandDims
ExpandDimsinputs_suburb9dense_features_2/Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features_2/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features_2/Suburb_embedding/to_sparse_input/NotEqualNotEqual5dense_features_2/Suburb_embedding/ExpandDims:output:0Idense_features_2/Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/Suburb_embedding/to_sparse_input/indicesWhere>dense_features_2/Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features_2/Suburb_embedding/to_sparse_input/valuesGatherNd5dense_features_2/Suburb_embedding/ExpandDims:output:0Adense_features_2/Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features_2/Suburb_embedding/to_sparse_input/dense_shapeShape5dense_features_2/Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
?dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ldense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_table_handleAdense_features_2/Suburb_embedding/to_sparse_input/values:output:0Mdense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0dense_features_2/Suburb_embedding/ReadVariableOpReadVariableOp9dense_features_2_suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0?
Fdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/SliceSliceFdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Odense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0Ndense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?dense_features_2/Suburb_embedding/Suburb_embedding_weights/ProdProdIdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice:output:0Idense_features_2/Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV2Fdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Tdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Adense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast/xPackHdense_features_2/Suburb_embedding/Suburb_embedding_weights/Prod:output:0Ldense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshapeAdense_features_2/Suburb_embedding/to_sparse_input/indices:index:0Fdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentityHdense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Idense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Gdense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualZdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Rdense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/WhereWhereKdense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/ReshapeReshapeHdense_features_2/Suburb_embedding/Suburb_embedding_weights/Where:index:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Sdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2Zdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Sdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Cdense_features_2/Suburb_embedding/Suburb_embedding_weights/IdentityIdentityWdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
Tdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
bdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0Ndense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0Ldense_features_2/Suburb_embedding/Suburb_embedding_weights/Identity:output:0]dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
fdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
hdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
hdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
`dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
hdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*C
_class9
75loc:@dense_features_2/Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
cdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28dense_features_2/Suburb_embedding/ReadVariableOp:value:0]dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0qdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*C
_class9
75loc:@dense_features_2/Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
ldense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
Rdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeanudense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0_dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Ddense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1Reshapexdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/ShapeShape[dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Ndense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSliceIdense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape:output:0Wdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/stackPackKdense_features_2/Suburb_embedding/Suburb_embedding_weights/stack/0:output:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
?dense_features_2/Suburb_embedding/Suburb_embedding_weights/TileTileMdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:0Idense_features_2/Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLike[dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
:dense_features_2/Suburb_embedding/Suburb_embedding_weightsSelectHdense_features_2/Suburb_embedding/Suburb_embedding_weights/Tile:output:0Idense_features_2/Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0[dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
Adense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast_1CastFdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Gdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1SliceEdense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape_1ShapeCdense_features_2/Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Gdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2SliceKdense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Fdense_features_2/Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Adense_features_2/Suburb_embedding/Suburb_embedding_weights/concatConcatV2Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0Odense_features_2/Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ddense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2ReshapeCdense_features_2/Suburb_embedding/Suburb_embedding_weights:output:0Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
'dense_features_2/Suburb_embedding/ShapeShapeMdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:
5dense_features_2/Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features_2/Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features_2/Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features_2/Suburb_embedding/strided_sliceStridedSlice0dense_features_2/Suburb_embedding/Shape:output:0>dense_features_2/Suburb_embedding/strided_slice/stack:output:0@dense_features_2/Suburb_embedding/strided_slice/stack_1:output:0@dense_features_2/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_2/Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
/dense_features_2/Suburb_embedding/Reshape/shapePack8dense_features_2/Suburb_embedding/strided_slice:output:0:dense_features_2/Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features_2/Suburb_embedding/ReshapeReshapeMdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:08dense_features_2/Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????Fy
.dense_features_2/Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features_2/Type_indicator/ExpandDims
ExpandDimsinputs_type7dense_features_2/Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features_2/Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features_2/Type_indicator/to_sparse_input/NotEqualNotEqual3dense_features_2/Type_indicator/ExpandDims:output:0Gdense_features_2/Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features_2/Type_indicator/to_sparse_input/indicesWhere<dense_features_2/Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features_2/Type_indicator/to_sparse_input/valuesGatherNd3dense_features_2/Type_indicator/ExpandDims:output:0?dense_features_2/Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features_2/Type_indicator/to_sparse_input/dense_shapeShape3dense_features_2/Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_2_type_indicator_none_lookup_lookuptablefindv2_table_handle?dense_features_2/Type_indicator/to_sparse_input/values:output:0Kdense_features_2_type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features_2/Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features_2/Type_indicator/SparseToDenseSparseToDense?dense_features_2/Type_indicator/to_sparse_input/indices:index:0Ddense_features_2/Type_indicator/to_sparse_input/dense_shape:output:0Fdense_features_2/Type_indicator/None_Lookup/LookupTableFindV2:values:0Ddense_features_2/Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features_2/Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features_2/Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features_2/Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Type_indicator/one_hotOneHot5dense_features_2/Type_indicator/SparseToDense:dense:06dense_features_2/Type_indicator/one_hot/depth:output:06dense_features_2/Type_indicator/one_hot/Const:output:08dense_features_2/Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features_2/Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features_2/Type_indicator/SumSum0dense_features_2/Type_indicator/one_hot:output:0>dense_features_2/Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features_2/Type_indicator/ShapeShape,dense_features_2/Type_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features_2/Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features_2/Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features_2/Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features_2/Type_indicator/strided_sliceStridedSlice.dense_features_2/Type_indicator/Shape:output:0<dense_features_2/Type_indicator/strided_slice/stack:output:0>dense_features_2/Type_indicator/strided_slice/stack_1:output:0>dense_features_2/Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features_2/Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features_2/Type_indicator/Reshape/shapePack6dense_features_2/Type_indicator/strided_slice:output:08dense_features_2/Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features_2/Type_indicator/ReshapeReshape,dense_features_2/Type_indicator/Sum:output:06dense_features_2/Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????o
$dense_features_2/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 dense_features_2/Year/ExpandDims
ExpandDimsinputs_year-dense_features_2/Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Year/CastCast)dense_features_2/Year/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????i
dense_features_2/Year/ShapeShapedense_features_2/Year/Cast:y:0*
T0*
_output_shapes
:s
)dense_features_2/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+dense_features_2/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+dense_features_2/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#dense_features_2/Year/strided_sliceStridedSlice$dense_features_2/Year/Shape:output:02dense_features_2/Year/strided_slice/stack:output:04dense_features_2/Year/strided_slice/stack_1:output:04dense_features_2/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%dense_features_2/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
#dense_features_2/Year/Reshape/shapePack,dense_features_2/Year/strided_slice:output:0.dense_features_2/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features_2/Year/ReshapeReshapedense_features_2/Year/Cast:y:0,dense_features_2/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
dense_features_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features_2/concatConcatV2&dense_features_2/Area/Reshape:output:0+dense_features_2/Bathrooms/Reshape:output:0*dense_features_2/Bedrooms/Reshape:output:0&dense_features_2/Cars/Reshape:output:0*dense_features_2/Distance/Reshape:output:0*dense_features_2/Latitude/Reshape:output:0+dense_features_2/Longitude/Reshape:output:02dense_features_2/Method_indicator/Reshape:output:02dense_features_2/Suburb_embedding/Reshape:output:00dense_features_2/Type_indicator/Reshape:output:0&dense_features_2/Year/Reshape:output:0%dense_features_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	j?*
dtype0?
dense_6/MatMulMatMul dense_features_2/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_8/MatMulMatMuldense_7/Relu:activations:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Price/MatMul/ReadVariableOpReadVariableOp$price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Price/MatMulMatMuldense_8/Relu:activations:0#Price/MatMul/ReadVariableOp:value:0*
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
:??????????
NoOpNoOp^Price/BiasAdd/ReadVariableOp^Price/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp@^dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2@^dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV21^dense_features_2/Suburb_embedding/ReadVariableOp>^dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2<
Price/BiasAdd/ReadVariableOpPrice/BiasAdd/ReadVariableOp2:
Price/MatMul/ReadVariableOpPrice/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2?
?dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2?dense_features_2/Method_indicator/None_Lookup/LookupTableFindV22?
?dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2?dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV22d
0dense_features_2/Suburb_embedding/ReadVariableOp0dense_features_2/Suburb_embedding/ReadVariableOp2~
=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Area:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:UQ
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
: :

_output_shapes
: 
?+
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_391551
area
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
dense_features_2_391515
dense_features_2_391517	
dense_features_2_391519
dense_features_2_391521	*
dense_features_2_391523:	?F
dense_features_2_391525
dense_features_2_391527	!
dense_6_391530:	j?
dense_6_391532:	?"
dense_7_391535:
??
dense_7_391537:	?!
dense_8_391540:	?@
dense_8_391542:@
price_391545:@
price_391547:
identity??Price/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?(dense_features_2/StatefulPartitionedCall`
dense_features_2/CastCastarea*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_1Castdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????f
dense_features_2/Cast_2Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????g
dense_features_2/Cast_3Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:??????????
(dense_features_2/StatefulPartitionedCallStatefulPartitionedCalldense_features_2/Cast:y:0	bathroomsbedroomscarsdense_features_2/Cast_1:y:0dense_features_2/Cast_2:y:0dense_features_2/Cast_3:y:0methodsuburbtypeyeardense_features_2_391515dense_features_2_391517dense_features_2_391519dense_features_2_391521dense_features_2_391523dense_features_2_391525dense_features_2_391527*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????j*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_2_layer_call_and_return_conditional_losses_391240?
dense_6/StatefulPartitionedCallStatefulPartitionedCall1dense_features_2/StatefulPartitionedCall:output:0dense_6_391530dense_6_391532*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_390836?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_391535dense_7_391537*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_390853?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_391540dense_8_391542*
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
C__inference_dense_8_layer_call_and_return_conditional_losses_390870?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0price_391545price_391547*
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
A__inference_Price_layer_call_and_return_conditional_losses_390886u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall)^dense_features_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2T
(dense_features_2/StatefulPartitionedCall(dense_features_2/StatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:NJ
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
: :

_output_shapes
: 
??
?
"__inference__traced_restore_393173
file_prefixd
Qassignvariableop_sequential_2_dense_features_2_suburb_embedding_embedding_weights:	?FA
.assignvariableop_1_sequential_2_dense_6_kernel:	j?;
,assignvariableop_2_sequential_2_dense_6_bias:	?B
.assignvariableop_3_sequential_2_dense_7_kernel:
??;
,assignvariableop_4_sequential_2_dense_7_bias:	?A
.assignvariableop_5_sequential_2_dense_8_kernel:	?@:
,assignvariableop_6_sequential_2_dense_8_bias:@>
,assignvariableop_7_sequential_2_price_kernel:@8
*assignvariableop_8_sequential_2_price_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: n
[assignvariableop_18_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_m:	?FI
6assignvariableop_19_adam_sequential_2_dense_6_kernel_m:	j?C
4assignvariableop_20_adam_sequential_2_dense_6_bias_m:	?J
6assignvariableop_21_adam_sequential_2_dense_7_kernel_m:
??C
4assignvariableop_22_adam_sequential_2_dense_7_bias_m:	?I
6assignvariableop_23_adam_sequential_2_dense_8_kernel_m:	?@B
4assignvariableop_24_adam_sequential_2_dense_8_bias_m:@F
4assignvariableop_25_adam_sequential_2_price_kernel_m:@@
2assignvariableop_26_adam_sequential_2_price_bias_m:n
[assignvariableop_27_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_v:	?FI
6assignvariableop_28_adam_sequential_2_dense_6_kernel_v:	j?C
4assignvariableop_29_adam_sequential_2_dense_6_bias_v:	?J
6assignvariableop_30_adam_sequential_2_dense_7_kernel_v:
??C
4assignvariableop_31_adam_sequential_2_dense_7_bias_v:	?I
6assignvariableop_32_adam_sequential_2_dense_8_kernel_v:	?@B
4assignvariableop_33_adam_sequential_2_dense_8_bias_v:@F
4assignvariableop_34_adam_sequential_2_price_kernel_v:@@
2assignvariableop_35_adam_sequential_2_price_bias_v:
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%BSlayer_with_weights-0/Suburb_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpQassignvariableop_sequential_2_dense_features_2_suburb_embedding_embedding_weightsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp.assignvariableop_1_sequential_2_dense_6_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_sequential_2_dense_6_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_sequential_2_dense_7_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_sequential_2_dense_7_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_sequential_2_dense_8_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp,assignvariableop_6_sequential_2_dense_8_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_sequential_2_price_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp*assignvariableop_8_sequential_2_price_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp[assignvariableop_18_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_sequential_2_dense_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_sequential_2_dense_6_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_sequential_2_dense_7_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_sequential_2_dense_7_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_sequential_2_dense_8_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_sequential_2_dense_8_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_sequential_2_price_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_sequential_2_price_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp[assignvariableop_27_adam_sequential_2_dense_features_2_suburb_embedding_embedding_weights_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_sequential_2_dense_6_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_sequential_2_dense_6_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_sequential_2_dense_7_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_sequential_2_dense_7_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_sequential_2_dense_8_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_sequential_2_dense_8_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_sequential_2_price_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_sequential_2_price_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
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
?
?
(__inference_dense_6_layer_call_fn_392751

inputs
unknown:	j?
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_390836p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????j: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????j
 
_user_specified_nameinputs
?

?
C__inference_dense_6_layer_call_and_return_conditional_losses_392762

inputs1
matmul_readvariableop_resource:	j?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	j?*
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????j: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????j
 
_user_specified_nameinputs
?
?
(__inference_dense_7_layer_call_fn_392771

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_390853p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
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
?
?
(__inference_dense_8_layer_call_fn_392791

inputs
unknown:	?@
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
C__inference_dense_8_layer_call_and_return_conditional_losses_390870o
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_391604
area
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?F
	unknown_4
	unknown_5	
	unknown_6:	j?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?@

unknown_11:@

unknown_12:@

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallarea	bathroomsbedroomscarsdistancelatitude	longitudemethodsuburbtypeyearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*%
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_390546o
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
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameArea:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Bathrooms:MI
#
_output_shapes
:?????????
"
_user_specified_name
Bedrooms:IE
#
_output_shapes
:?????????

_user_specified_nameCars:MI
#
_output_shapes
:?????????
"
_user_specified_name
Distance:MI
#
_output_shapes
:?????????
"
_user_specified_name
Latitude:NJ
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
: :

_output_shapes
: 
?
;
__inference__creator_392862
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name284017*
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
__inference__creator_392826
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name283891*
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
__inference__creator_392844
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name283927*
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
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_390870

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_391957
inputs_area
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	P
Ldense_features_2_method_indicator_none_lookup_lookuptablefindv2_table_handleQ
Mdense_features_2_method_indicator_none_lookup_lookuptablefindv2_default_value	P
Ldense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_table_handleQ
Mdense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_default_value	L
9dense_features_2_suburb_embedding_readvariableop_resource:	?FN
Jdense_features_2_type_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_2_type_indicator_none_lookup_lookuptablefindv2_default_value	9
&dense_6_matmul_readvariableop_resource:	j?6
'dense_6_biasadd_readvariableop_resource:	?:
&dense_7_matmul_readvariableop_resource:
??6
'dense_7_biasadd_readvariableop_resource:	?9
&dense_8_matmul_readvariableop_resource:	?@5
'dense_8_biasadd_readvariableop_resource:@6
$price_matmul_readvariableop_resource:@3
%price_biasadd_readvariableop_resource:
identity??Price/BiasAdd/ReadVariableOp?Price/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp??dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2??dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2?0dense_features_2/Suburb_embedding/ReadVariableOp?=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2g
dense_features_2/CastCastinputs_area*

DstT0*

SrcT0*#
_output_shapes
:?????????m
dense_features_2/Cast_1Castinputs_distance*

DstT0*

SrcT0*#
_output_shapes
:?????????m
dense_features_2/Cast_2Castinputs_latitude*

DstT0*

SrcT0*#
_output_shapes
:?????????n
dense_features_2/Cast_3Castinputs_longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????o
$dense_features_2/Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 dense_features_2/Area/ExpandDims
ExpandDimsdense_features_2/Cast:y:0-dense_features_2/Area/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
dense_features_2/Area/ShapeShape)dense_features_2/Area/ExpandDims:output:0*
T0*
_output_shapes
:s
)dense_features_2/Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+dense_features_2/Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+dense_features_2/Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#dense_features_2/Area/strided_sliceStridedSlice$dense_features_2/Area/Shape:output:02dense_features_2/Area/strided_slice/stack:output:04dense_features_2/Area/strided_slice/stack_1:output:04dense_features_2/Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%dense_features_2/Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
#dense_features_2/Area/Reshape/shapePack,dense_features_2/Area/strided_slice:output:0.dense_features_2/Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features_2/Area/ReshapeReshape)dense_features_2/Area/ExpandDims:output:0,dense_features_2/Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/Bathrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/Bathrooms/ExpandDims
ExpandDimsinputs_bathrooms2dense_features_2/Bathrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Bathrooms/CastCast.dense_features_2/Bathrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????s
 dense_features_2/Bathrooms/ShapeShape#dense_features_2/Bathrooms/Cast:y:0*
T0*
_output_shapes
:x
.dense_features_2/Bathrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/Bathrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/Bathrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/Bathrooms/strided_sliceStridedSlice)dense_features_2/Bathrooms/Shape:output:07dense_features_2/Bathrooms/strided_slice/stack:output:09dense_features_2/Bathrooms/strided_slice/stack_1:output:09dense_features_2/Bathrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/Bathrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/Bathrooms/Reshape/shapePack1dense_features_2/Bathrooms/strided_slice:output:03dense_features_2/Bathrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/Bathrooms/ReshapeReshape#dense_features_2/Bathrooms/Cast:y:01dense_features_2/Bathrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(dense_features_2/Bedrooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$dense_features_2/Bedrooms/ExpandDims
ExpandDimsinputs_bedrooms1dense_features_2/Bedrooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Bedrooms/CastCast-dense_features_2/Bedrooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????q
dense_features_2/Bedrooms/ShapeShape"dense_features_2/Bedrooms/Cast:y:0*
T0*
_output_shapes
:w
-dense_features_2/Bedrooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_features_2/Bedrooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_features_2/Bedrooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'dense_features_2/Bedrooms/strided_sliceStridedSlice(dense_features_2/Bedrooms/Shape:output:06dense_features_2/Bedrooms/strided_slice/stack:output:08dense_features_2/Bedrooms/strided_slice/stack_1:output:08dense_features_2/Bedrooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)dense_features_2/Bedrooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Bedrooms/Reshape/shapePack0dense_features_2/Bedrooms/strided_slice:output:02dense_features_2/Bedrooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!dense_features_2/Bedrooms/ReshapeReshape"dense_features_2/Bedrooms/Cast:y:00dense_features_2/Bedrooms/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????o
$dense_features_2/Cars/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 dense_features_2/Cars/ExpandDims
ExpandDimsinputs_cars-dense_features_2/Cars/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Cars/CastCast)dense_features_2/Cars/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????i
dense_features_2/Cars/ShapeShapedense_features_2/Cars/Cast:y:0*
T0*
_output_shapes
:s
)dense_features_2/Cars/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+dense_features_2/Cars/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+dense_features_2/Cars/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#dense_features_2/Cars/strided_sliceStridedSlice$dense_features_2/Cars/Shape:output:02dense_features_2/Cars/strided_slice/stack:output:04dense_features_2/Cars/strided_slice/stack_1:output:04dense_features_2/Cars/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%dense_features_2/Cars/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
#dense_features_2/Cars/Reshape/shapePack,dense_features_2/Cars/strided_slice:output:0.dense_features_2/Cars/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features_2/Cars/ReshapeReshapedense_features_2/Cars/Cast:y:0,dense_features_2/Cars/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(dense_features_2/Distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$dense_features_2/Distance/ExpandDims
ExpandDimsdense_features_2/Cast_1:y:01dense_features_2/Distance/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????|
dense_features_2/Distance/ShapeShape-dense_features_2/Distance/ExpandDims:output:0*
T0*
_output_shapes
:w
-dense_features_2/Distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_features_2/Distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_features_2/Distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'dense_features_2/Distance/strided_sliceStridedSlice(dense_features_2/Distance/Shape:output:06dense_features_2/Distance/strided_slice/stack:output:08dense_features_2/Distance/strided_slice/stack_1:output:08dense_features_2/Distance/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)dense_features_2/Distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Distance/Reshape/shapePack0dense_features_2/Distance/strided_slice:output:02dense_features_2/Distance/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!dense_features_2/Distance/ReshapeReshape-dense_features_2/Distance/ExpandDims:output:00dense_features_2/Distance/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(dense_features_2/Latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$dense_features_2/Latitude/ExpandDims
ExpandDimsdense_features_2/Cast_2:y:01dense_features_2/Latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????|
dense_features_2/Latitude/ShapeShape-dense_features_2/Latitude/ExpandDims:output:0*
T0*
_output_shapes
:w
-dense_features_2/Latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense_features_2/Latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense_features_2/Latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'dense_features_2/Latitude/strided_sliceStridedSlice(dense_features_2/Latitude/Shape:output:06dense_features_2/Latitude/strided_slice/stack:output:08dense_features_2/Latitude/strided_slice/stack_1:output:08dense_features_2/Latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)dense_features_2/Latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Latitude/Reshape/shapePack0dense_features_2/Latitude/strided_slice:output:02dense_features_2/Latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!dense_features_2/Latitude/ReshapeReshape-dense_features_2/Latitude/ExpandDims:output:00dense_features_2/Latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features_2/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features_2/Longitude/ExpandDims
ExpandDimsdense_features_2/Cast_3:y:02dense_features_2/Longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
 dense_features_2/Longitude/ShapeShape.dense_features_2/Longitude/ExpandDims:output:0*
T0*
_output_shapes
:x
.dense_features_2/Longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_2/Longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_2/Longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features_2/Longitude/strided_sliceStridedSlice)dense_features_2/Longitude/Shape:output:07dense_features_2/Longitude/strided_slice/stack:output:09dense_features_2/Longitude/strided_slice/stack_1:output:09dense_features_2/Longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_2/Longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features_2/Longitude/Reshape/shapePack1dense_features_2/Longitude/strided_slice:output:03dense_features_2/Longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features_2/Longitude/ReshapeReshape.dense_features_2/Longitude/ExpandDims:output:01dense_features_2/Longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0dense_features_2/Method_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features_2/Method_indicator/ExpandDims
ExpandDimsinputs_method9dense_features_2/Method_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features_2/Method_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features_2/Method_indicator/to_sparse_input/NotEqualNotEqual5dense_features_2/Method_indicator/ExpandDims:output:0Idense_features_2/Method_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/Method_indicator/to_sparse_input/indicesWhere>dense_features_2/Method_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features_2/Method_indicator/to_sparse_input/valuesGatherNd5dense_features_2/Method_indicator/ExpandDims:output:0Adense_features_2/Method_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features_2/Method_indicator/to_sparse_input/dense_shapeShape5dense_features_2/Method_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
?dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Ldense_features_2_method_indicator_none_lookup_lookuptablefindv2_table_handleAdense_features_2/Method_indicator/to_sparse_input/values:output:0Mdense_features_2_method_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
=dense_features_2/Method_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
/dense_features_2/Method_indicator/SparseToDenseSparseToDenseAdense_features_2/Method_indicator/to_sparse_input/indices:index:0Fdense_features_2/Method_indicator/to_sparse_input/dense_shape:output:0Hdense_features_2/Method_indicator/None_Lookup/LookupTableFindV2:values:0Fdense_features_2/Method_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????t
/dense_features_2/Method_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??v
1dense_features_2/Method_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    q
/dense_features_2/Method_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
)dense_features_2/Method_indicator/one_hotOneHot7dense_features_2/Method_indicator/SparseToDense:dense:08dense_features_2/Method_indicator/one_hot/depth:output:08dense_features_2/Method_indicator/one_hot/Const:output:0:dense_features_2/Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
7dense_features_2/Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
%dense_features_2/Method_indicator/SumSum2dense_features_2/Method_indicator/one_hot:output:0@dense_features_2/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
'dense_features_2/Method_indicator/ShapeShape.dense_features_2/Method_indicator/Sum:output:0*
T0*
_output_shapes
:
5dense_features_2/Method_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features_2/Method_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features_2/Method_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features_2/Method_indicator/strided_sliceStridedSlice0dense_features_2/Method_indicator/Shape:output:0>dense_features_2/Method_indicator/strided_slice/stack:output:0@dense_features_2/Method_indicator/strided_slice/stack_1:output:0@dense_features_2/Method_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_2/Method_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/dense_features_2/Method_indicator/Reshape/shapePack8dense_features_2/Method_indicator/strided_slice:output:0:dense_features_2/Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features_2/Method_indicator/ReshapeReshape.dense_features_2/Method_indicator/Sum:output:08dense_features_2/Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0dense_features_2/Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features_2/Suburb_embedding/ExpandDims
ExpandDimsinputs_suburb9dense_features_2/Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features_2/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features_2/Suburb_embedding/to_sparse_input/NotEqualNotEqual5dense_features_2/Suburb_embedding/ExpandDims:output:0Idense_features_2/Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features_2/Suburb_embedding/to_sparse_input/indicesWhere>dense_features_2/Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features_2/Suburb_embedding/to_sparse_input/valuesGatherNd5dense_features_2/Suburb_embedding/ExpandDims:output:0Adense_features_2/Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features_2/Suburb_embedding/to_sparse_input/dense_shapeShape5dense_features_2/Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
?dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ldense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_table_handleAdense_features_2/Suburb_embedding/to_sparse_input/values:output:0Mdense_features_2_suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0dense_features_2/Suburb_embedding/ReadVariableOpReadVariableOp9dense_features_2_suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0?
Fdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/SliceSliceFdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Odense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0Ndense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?dense_features_2/Suburb_embedding/Suburb_embedding_weights/ProdProdIdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice:output:0Idense_features_2/Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV2Fdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Tdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Adense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast/xPackHdense_features_2/Suburb_embedding/Suburb_embedding_weights/Prod:output:0Ldense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshapeAdense_features_2/Suburb_embedding/to_sparse_input/indices:index:0Fdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentityHdense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Idense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Gdense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualZdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Rdense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/WhereWhereKdense_features_2/Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/ReshapeReshapeHdense_features_2/Suburb_embedding/Suburb_embedding_weights/Where:index:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Sdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2Zdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Sdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Cdense_features_2/Suburb_embedding/Suburb_embedding_weights/IdentityIdentityWdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
Tdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
bdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0Ndense_features_2/Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0Ldense_features_2/Suburb_embedding/Suburb_embedding_weights/Identity:output:0]dense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
fdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
hdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
hdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
`dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
hdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*C
_class9
75loc:@dense_features_2/Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
cdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28dense_features_2/Suburb_embedding/ReadVariableOp:value:0]dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0qdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*C
_class9
75loc:@dense_features_2/Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
ldense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
Rdense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeanudense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0_dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Ddense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1Reshapexdense_features_2/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/ShapeShape[dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Ndense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSliceIdense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape:output:0Wdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0Ydense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
@dense_features_2/Suburb_embedding/Suburb_embedding_weights/stackPackKdense_features_2/Suburb_embedding/Suburb_embedding_weights/stack/0:output:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
?dense_features_2/Suburb_embedding/Suburb_embedding_weights/TileTileMdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:0Idense_features_2/Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
Edense_features_2/Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLike[dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
:dense_features_2/Suburb_embedding/Suburb_embedding_weightsSelectHdense_features_2/Suburb_embedding/Suburb_embedding_weights/Tile:output:0Idense_features_2/Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0[dense_features_2/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
Adense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast_1CastFdense_features_2/Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Gdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1SliceEdense_features_2/Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape_1ShapeCdense_features_2/Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
Hdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Gdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Bdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2SliceKdense_features_2/Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0Qdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0Pdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Fdense_features_2/Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Adense_features_2/Suburb_embedding/Suburb_embedding_weights/concatConcatV2Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0Kdense_features_2/Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0Odense_features_2/Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Ddense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2ReshapeCdense_features_2/Suburb_embedding/Suburb_embedding_weights:output:0Jdense_features_2/Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
'dense_features_2/Suburb_embedding/ShapeShapeMdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:
5dense_features_2/Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features_2/Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features_2/Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features_2/Suburb_embedding/strided_sliceStridedSlice0dense_features_2/Suburb_embedding/Shape:output:0>dense_features_2/Suburb_embedding/strided_slice/stack:output:0@dense_features_2/Suburb_embedding/strided_slice/stack_1:output:0@dense_features_2/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_2/Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
/dense_features_2/Suburb_embedding/Reshape/shapePack8dense_features_2/Suburb_embedding/strided_slice:output:0:dense_features_2/Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features_2/Suburb_embedding/ReshapeReshapeMdense_features_2/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:08dense_features_2/Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????Fy
.dense_features_2/Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features_2/Type_indicator/ExpandDims
ExpandDimsinputs_type7dense_features_2/Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features_2/Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features_2/Type_indicator/to_sparse_input/NotEqualNotEqual3dense_features_2/Type_indicator/ExpandDims:output:0Gdense_features_2/Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features_2/Type_indicator/to_sparse_input/indicesWhere<dense_features_2/Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features_2/Type_indicator/to_sparse_input/valuesGatherNd3dense_features_2/Type_indicator/ExpandDims:output:0?dense_features_2/Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features_2/Type_indicator/to_sparse_input/dense_shapeShape3dense_features_2/Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_2_type_indicator_none_lookup_lookuptablefindv2_table_handle?dense_features_2/Type_indicator/to_sparse_input/values:output:0Kdense_features_2_type_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features_2/Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features_2/Type_indicator/SparseToDenseSparseToDense?dense_features_2/Type_indicator/to_sparse_input/indices:index:0Ddense_features_2/Type_indicator/to_sparse_input/dense_shape:output:0Fdense_features_2/Type_indicator/None_Lookup/LookupTableFindV2:values:0Ddense_features_2/Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features_2/Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features_2/Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features_2/Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features_2/Type_indicator/one_hotOneHot5dense_features_2/Type_indicator/SparseToDense:dense:06dense_features_2/Type_indicator/one_hot/depth:output:06dense_features_2/Type_indicator/one_hot/Const:output:08dense_features_2/Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features_2/Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features_2/Type_indicator/SumSum0dense_features_2/Type_indicator/one_hot:output:0>dense_features_2/Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features_2/Type_indicator/ShapeShape,dense_features_2/Type_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features_2/Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features_2/Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features_2/Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features_2/Type_indicator/strided_sliceStridedSlice.dense_features_2/Type_indicator/Shape:output:0<dense_features_2/Type_indicator/strided_slice/stack:output:0>dense_features_2/Type_indicator/strided_slice/stack_1:output:0>dense_features_2/Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features_2/Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features_2/Type_indicator/Reshape/shapePack6dense_features_2/Type_indicator/strided_slice:output:08dense_features_2/Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features_2/Type_indicator/ReshapeReshape,dense_features_2/Type_indicator/Sum:output:06dense_features_2/Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????o
$dense_features_2/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 dense_features_2/Year/ExpandDims
ExpandDimsinputs_year-dense_features_2/Year/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features_2/Year/CastCast)dense_features_2/Year/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????i
dense_features_2/Year/ShapeShapedense_features_2/Year/Cast:y:0*
T0*
_output_shapes
:s
)dense_features_2/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+dense_features_2/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+dense_features_2/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#dense_features_2/Year/strided_sliceStridedSlice$dense_features_2/Year/Shape:output:02dense_features_2/Year/strided_slice/stack:output:04dense_features_2/Year/strided_slice/stack_1:output:04dense_features_2/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%dense_features_2/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
#dense_features_2/Year/Reshape/shapePack,dense_features_2/Year/strided_slice:output:0.dense_features_2/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features_2/Year/ReshapeReshapedense_features_2/Year/Cast:y:0,dense_features_2/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
dense_features_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features_2/concatConcatV2&dense_features_2/Area/Reshape:output:0+dense_features_2/Bathrooms/Reshape:output:0*dense_features_2/Bedrooms/Reshape:output:0&dense_features_2/Cars/Reshape:output:0*dense_features_2/Distance/Reshape:output:0*dense_features_2/Latitude/Reshape:output:0+dense_features_2/Longitude/Reshape:output:02dense_features_2/Method_indicator/Reshape:output:02dense_features_2/Suburb_embedding/Reshape:output:00dense_features_2/Type_indicator/Reshape:output:0&dense_features_2/Year/Reshape:output:0%dense_features_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	j?*
dtype0?
dense_6/MatMulMatMul dense_features_2/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_8/MatMulMatMuldense_7/Relu:activations:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Price/MatMul/ReadVariableOpReadVariableOp$price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Price/MatMulMatMuldense_8/Relu:activations:0#Price/MatMul/ReadVariableOp:value:0*
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
:??????????
NoOpNoOp^Price/BiasAdd/ReadVariableOp^Price/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp@^dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2@^dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV21^dense_features_2/Suburb_embedding/ReadVariableOp>^dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2<
Price/BiasAdd/ReadVariableOpPrice/BiasAdd/ReadVariableOp2:
Price/MatMul/ReadVariableOpPrice/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2?
?dense_features_2/Method_indicator/None_Lookup/LookupTableFindV2?dense_features_2/Method_indicator/None_Lookup/LookupTableFindV22?
?dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV2?dense_features_2/Suburb_embedding/None_Lookup/LookupTableFindV22d
0dense_features_2/Suburb_embedding/ReadVariableOp0dense_features_2/Suburb_embedding/ReadVariableOp2~
=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2=dense_features_2/Type_indicator/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Area:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Bathrooms:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Bedrooms:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Cars:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Distance:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Latitude:UQ
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
: :

_output_shapes
: 
?
?
__inference__initializer_3928705
1table_init284016_lookuptableimportv2_table_handle-
)table_init284016_lookuptableimportv2_keys/
+table_init284016_lookuptableimportv2_values	
identity??$table_init284016/LookupTableImportV2?
$table_init284016/LookupTableImportV2LookupTableImportV21table_init284016_lookuptableimportv2_table_handle)table_init284016_lookuptableimportv2_keys+table_init284016_lookuptableimportv2_values*	
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
: m
NoOpNoOp%^table_init284016/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2L
$table_init284016/LookupTableImportV2$table_init284016/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?	
?
A__inference_Price_layer_call_and_return_conditional_losses_392821

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
__inference__destroyer_392857
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
__inference__destroyer_392875
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
A__inference_Price_layer_call_and_return_conditional_losses_390886

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
?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392510
features_area
features_bathrooms	
features_bedrooms	
features_cars	
features_distance
features_latitude
features_longitude
features_method
features_suburb
features_type
features_year	?
;method_indicator_none_lookup_lookuptablefindv2_table_handle@
<method_indicator_none_lookup_lookuptablefindv2_default_value	?
;suburb_embedding_none_lookup_lookuptablefindv2_table_handle@
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	;
(suburb_embedding_readvariableop_resource:	?F=
9type_indicator_none_lookup_lookuptablefindv2_table_handle>
:type_indicator_none_lookup_lookuptablefindv2_default_value	
identity??.Method_indicator/None_Lookup/LookupTableFindV2?.Suburb_embedding/None_Lookup/LookupTableFindV2?Suburb_embedding/ReadVariableOp?,Type_indicator/None_Lookup/LookupTableFindV2^
Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Area/ExpandDims
ExpandDimsfeatures_areaArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????R

Area/ShapeShapeArea/ExpandDims:output:0*
T0*
_output_shapes
:b
Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Area/strided_sliceStridedSliceArea/Shape:output:0!Area/strided_slice/stack:output:0#Area/strided_slice/stack_1:output:0#Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Area/Reshape/shapePackArea/strided_slice:output:0Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Area/ReshapeReshapeArea/ExpandDims:output:0Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????c
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
value	B :?
Method_indicator/one_hotOneHot&Method_indicator/SparseToDense:dense:0'Method_indicator/one_hot/depth:output:0'Method_indicator/one_hot/Const:output:0)Method_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Method_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Method_indicator/SumSum!Method_indicator/one_hot:output:0/Method_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
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
value	B :?
Method_indicator/Reshape/shapePack'Method_indicator/strided_slice:output:0)Method_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Method_indicator/ReshapeReshapeMethod_indicator/Sum:output:0'Method_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Suburb_embedding/ExpandDims
ExpandDimsfeatures_suburb(Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Suburb_embedding/to_sparse_input/NotEqualNotEqual$Suburb_embedding/ExpandDims:output:08Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Suburb_embedding/to_sparse_input/indicesWhere-Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Suburb_embedding/to_sparse_input/valuesGatherNd$Suburb_embedding/ExpandDims:output:00Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Suburb_embedding/to_sparse_input/dense_shapeShape$Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
.Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2;suburb_embedding_none_lookup_lookuptablefindv2_table_handle0Suburb_embedding/to_sparse_input/values:output:0<suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Suburb_embedding/ReadVariableOpReadVariableOp(suburb_embedding_readvariableop_resource*
_output_shapes
:	?F*
dtype0
5Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
/Suburb_embedding/Suburb_embedding_weights/SliceSlice5Suburb_embedding/to_sparse_input/dense_shape:output:0>Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0=Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.Suburb_embedding/Suburb_embedding_weights/ProdProd8Suburb_embedding/Suburb_embedding_weights/Slice:output:08Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV25Suburb_embedding/to_sparse_input/dense_shape:output:0CSuburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0@Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
0Suburb_embedding/Suburb_embedding_weights/Cast/xPack7Suburb_embedding/Suburb_embedding_weights/Prod:output:0;Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshape0Suburb_embedding/to_sparse_input/indices:index:05Suburb_embedding/to_sparse_input/dense_shape:output:09Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
@Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentity7Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????z
8Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0ASuburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/WhereWhere:Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
7Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/ReshapeReshape7Suburb_embedding/Suburb_embedding_weights/Where:index:0@Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2HSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????{
9Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2ISuburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0:Suburb_embedding/Suburb_embedding_weights/Reshape:output:0BSuburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
2Suburb_embedding/Suburb_embedding_weights/IdentityIdentityFSuburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
CSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
QSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0=Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0;Suburb_embedding/Suburb_embedding_weights/Identity:output:0LSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
USuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
OSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
HSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniqueaSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
WSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
RSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2'Suburb_embedding/ReadVariableOp:value:0LSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0`Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@Suburb_embedding/ReadVariableOp*'
_output_shapes
:?????????F?
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:?????????F?
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????F?
9Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3Suburb_embedding/Suburb_embedding_weights/Reshape_1ReshapegSuburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BSuburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
/Suburb_embedding/Suburb_embedding_weights/ShapeShapeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
=Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSlice8Suburb_embedding/Suburb_embedding_weights/Shape:output:0FSuburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0HSuburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
/Suburb_embedding/Suburb_embedding_weights/stackPack:Suburb_embedding/Suburb_embedding_weights/stack/0:output:0@Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
.Suburb_embedding/Suburb_embedding_weights/TileTile<Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:08Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:?????????F?
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????F?
0Suburb_embedding/Suburb_embedding_weights/Cast_1Cast5Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
6Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
1Suburb_embedding/Suburb_embedding_weights/Slice_1Slice4Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0@Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
1Suburb_embedding/Suburb_embedding_weights/Shape_1Shape2Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
7Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
6Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
1Suburb_embedding/Suburb_embedding_weights/Slice_2Slice:Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0@Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0?Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0Suburb_embedding/Suburb_embedding_weights/concatConcatV2:Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0:Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0>Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
3Suburb_embedding/Suburb_embedding_weights/Reshape_2Reshape2Suburb_embedding/Suburb_embedding_weights:output:09Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????F?
Suburb_embedding/ShapeShape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:n
$Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Suburb_embedding/strided_sliceStridedSliceSuburb_embedding/Shape:output:0-Suburb_embedding/strided_slice/stack:output:0/Suburb_embedding/strided_slice/stack_1:output:0/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :F?
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????Fh
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
value	B :?
Type_indicator/one_hotOneHot$Type_indicator/SparseToDense:dense:0%Type_indicator/one_hot/depth:output:0%Type_indicator/one_hot/Const:output:0'Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Type_indicator/SumSumType_indicator/one_hot:output:0-Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
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
value	B :?
Type_indicator/Reshape/shapePack%Type_indicator/strided_slice:output:0'Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Type_indicator/ReshapeReshapeType_indicator/Sum:output:0%Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????j^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????j?
NoOpNoOp/^Method_indicator/None_Lookup/LookupTableFindV2/^Suburb_embedding/None_Lookup/LookupTableFindV2 ^Suburb_embedding/ReadVariableOp-^Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : 2`
.Method_indicator/None_Lookup/LookupTableFindV2.Method_indicator/None_Lookup/LookupTableFindV22`
.Suburb_embedding/None_Lookup/LookupTableFindV2.Suburb_embedding/None_Lookup/LookupTableFindV22B
Suburb_embedding/ReadVariableOpSuburb_embedding/ReadVariableOp2\
,Type_indicator/None_Lookup/LookupTableFindV2,Type_indicator/None_Lookup/LookupTableFindV2:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Area:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Bathrooms:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Bedrooms:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Cars:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Distance:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Latitude:WS
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
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
1
Area)
serving_default_Area:0?????????
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
StatefulPartitionedCall_3:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources
&"Suburb_embedding/embedding_weights"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
_
0
1
 2
'3
(4
/5
06
77
88"
trackable_list_wrapper
_
0
1
 2
'3
(4
/5
06
77
88"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
>trace_0
?trace_1
@trace_2
Atrace_32?
-__inference_sequential_2_layer_call_fn_390926
-__inference_sequential_2_layer_call_fn_391649
-__inference_sequential_2_layer_call_fn_391694
-__inference_sequential_2_layer_call_fn_391445?
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
 z>trace_0z?trace_1z@trace_2zAtrace_3
?
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32?
H__inference_sequential_2_layer_call_and_return_conditional_losses_391957
H__inference_sequential_2_layer_call_and_return_conditional_losses_392220
H__inference_sequential_2_layer_call_and_return_conditional_losses_391498
H__inference_sequential_2_layer_call_and_return_conditional_losses_391551?
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
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
?B?
!__inference__wrapped_model_390546Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
?
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratem?m? m?'m?(m?/m?0m?7m?8m?v?v? v?'v?(v?/v?0v?7v?8v?"
	optimizer
 "
trackable_dict_wrapper
,
Kserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Qtrace_0
Rtrace_12?
1__inference_dense_features_2_layer_call_fn_392249
1__inference_dense_features_2_layer_call_fn_392278?
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
 zQtrace_0zRtrace_1
?
Strace_0
Ttrace_12?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392510
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392742?
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
 zStrace_0zTtrace_1
 "
trackable_list_wrapper
@

UMethod

VSuburb
WType"
_generic_user_object
S:Q	?F2@sequential_2/dense_features_2/Suburb_embedding/embedding_weights
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
]trace_02?
(__inference_dense_6_layer_call_fn_392751?
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
 z]trace_0
?
^trace_02?
C__inference_dense_6_layer_call_and_return_conditional_losses_392762?
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
 z^trace_0
.:,	j?2sequential_2/dense_6/kernel
(:&?2sequential_2/dense_6/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?
dtrace_02?
(__inference_dense_7_layer_call_fn_392771?
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
 zdtrace_0
?
etrace_02?
C__inference_dense_7_layer_call_and_return_conditional_losses_392782?
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
 zetrace_0
/:-
??2sequential_2/dense_7/kernel
(:&?2sequential_2/dense_7/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?
ktrace_02?
(__inference_dense_8_layer_call_fn_392791?
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
 zktrace_0
?
ltrace_02?
C__inference_dense_8_layer_call_and_return_conditional_losses_392802?
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
 zltrace_0
.:,	?@2sequential_2/dense_8/kernel
':%@2sequential_2/dense_8/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
?
rtrace_02?
&__inference_Price_layer_call_fn_392811?
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
 zrtrace_0
?
strace_02?
A__inference_Price_layer_call_and_return_conditional_losses_392821?
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
 zstrace_0
+:)@2sequential_2/Price/kernel
%:#2sequential_2/Price/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_2_layer_call_fn_390926Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
-__inference_sequential_2_layer_call_fn_391649inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
-__inference_sequential_2_layer_call_fn_391694inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
-__inference_sequential_2_layer_call_fn_391445Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_391957inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_392220inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_391498Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_391551Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
$__inference_signature_wrapper_391604Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
1__inference_dense_features_2_layer_call_fn_392249features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
1__inference_dense_features_2_layer_call_fn_392278features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392510features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392742features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
vMethod_lookup"
_generic_user_object
1
wSuburb_lookup"
_generic_user_object
/
xType_lookup"
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
(__inference_dense_6_layer_call_fn_392751inputs"?
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
C__inference_dense_6_layer_call_and_return_conditional_losses_392762inputs"?
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
(__inference_dense_7_layer_call_fn_392771inputs"?
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
C__inference_dense_7_layer_call_and_return_conditional_losses_392782inputs"?
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
(__inference_dense_8_layer_call_fn_392791inputs"?
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
C__inference_dense_8_layer_call_and_return_conditional_losses_392802inputs"?
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
&__inference_Price_layer_call_fn_392811inputs"?
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
A__inference_Price_layer_call_and_return_conditional_losses_392821inputs"?
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
y	variables
z	keras_api
	{total
	|count"
_tf_keras_metric
`
}	variables
~	keras_api
	total

?count
?
_fn_kwargs"
_tf_keras_metric
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
.
{0
|1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
/
0
?1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
"
_generic_user_object
?
?trace_02?
__inference__creator_392826?
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
__inference__initializer_392834?
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
__inference__destroyer_392839?
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
__inference__creator_392844?
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
__inference__initializer_392852?
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
__inference__destroyer_392857?
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
__inference__creator_392862?
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
__inference__initializer_392870?
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
__inference__destroyer_392875?
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
__inference__creator_392826"?
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
__inference__initializer_392834"?
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
__inference__destroyer_392839"?
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
__inference__creator_392844"?
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
__inference__initializer_392852"?
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
__inference__destroyer_392857"?
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
__inference__creator_392862"?
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
__inference__initializer_392870"?
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
__inference__destroyer_392875"?
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
X:V	?F2GAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/m
3:1	j?2"Adam/sequential_2/dense_6/kernel/m
-:+?2 Adam/sequential_2/dense_6/bias/m
4:2
??2"Adam/sequential_2/dense_7/kernel/m
-:+?2 Adam/sequential_2/dense_7/bias/m
3:1	?@2"Adam/sequential_2/dense_8/kernel/m
,:*@2 Adam/sequential_2/dense_8/bias/m
0:.@2 Adam/sequential_2/Price/kernel/m
*:(2Adam/sequential_2/Price/bias/m
X:V	?F2GAdam/sequential_2/dense_features_2/Suburb_embedding/embedding_weights/v
3:1	j?2"Adam/sequential_2/dense_6/kernel/v
-:+?2 Adam/sequential_2/dense_6/bias/v
4:2
??2"Adam/sequential_2/dense_7/kernel/v
-:+?2 Adam/sequential_2/dense_7/bias/v
3:1	?@2"Adam/sequential_2/dense_8/kernel/v
,:*@2 Adam/sequential_2/dense_8/bias/v
0:.@2 Adam/sequential_2/Price/kernel/v
*:(2Adam/sequential_2/Price/bias/v
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
A__inference_Price_layer_call_and_return_conditional_losses_392821\78/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? y
&__inference_Price_layer_call_fn_392811O78/?,
%?"
 ?
inputs?????????@
? "??????????7
__inference__creator_392826?

? 
? "? 7
__inference__creator_392844?

? 
? "? 7
__inference__creator_392862?

? 
? "? 9
__inference__destroyer_392839?

? 
? "? 9
__inference__destroyer_392857?

? 
? "? 9
__inference__destroyer_392875?

? 
? "? B
__inference__initializer_392834v???

? 
? "? B
__inference__initializer_392852w???

? 
? "? B
__inference__initializer_392870x???

? 
? "? ?
!__inference__wrapped_model_390546?v?w?x? '(/078???
???
???
"
Area?
Area?????????
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
C__inference_dense_6_layer_call_and_return_conditional_losses_392762] /?,
%?"
 ?
inputs?????????j
? "&?#
?
0??????????
? |
(__inference_dense_6_layer_call_fn_392751P /?,
%?"
 ?
inputs?????????j
? "????????????
C__inference_dense_7_layer_call_and_return_conditional_losses_392782^'(0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_7_layer_call_fn_392771Q'(0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_8_layer_call_and_return_conditional_losses_392802]/00?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_8_layer_call_fn_392791P/00?-
&?#
!?
inputs??????????
? "??????????@?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392510?
v?w?x????
???
???
+
Area#? 
features/Area?????????
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
? "%?"
?
0?????????j
? ?
L__inference_dense_features_2_layer_call_and_return_conditional_losses_392742?
v?w?x????
???
???
+
Area#? 
features/Area?????????
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
? "%?"
?
0?????????j
? ?
1__inference_dense_features_2_layer_call_fn_392249?
v?w?x????
???
???
+
Area#? 
features/Area?????????
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
? "??????????j?
1__inference_dense_features_2_layer_call_fn_392278?
v?w?x????
???
???
+
Area#? 
features/Area?????????
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
? "??????????j?
H__inference_sequential_2_layer_call_and_return_conditional_losses_391498?v?w?x? '(/078???
???
???
"
Area?
Area?????????
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_391551?v?w?x? '(/078???
???
???
"
Area?
Area?????????
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_391957?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_392220?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????
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
-__inference_sequential_2_layer_call_fn_390926?v?w?x? '(/078???
???
???
"
Area?
Area?????????
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
-__inference_sequential_2_layer_call_fn_391445?v?w?x? '(/078???
???
???
"
Area?
Area?????????
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
-__inference_sequential_2_layer_call_fn_391649?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????
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
-__inference_sequential_2_layer_call_fn_391694?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????
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
$__inference_signature_wrapper_391604?v?w?x? '(/078???
? 
???
"
Area?
Area?????????
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