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
Adam/sequential/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/sequential/dense_2/bias/v
?
2Adam/sequential/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_2/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*1
shared_name" Adam/sequential/dense_2/kernel/v
?
4Adam/sequential/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_2/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/sequential/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/sequential/dense_1/bias/v
?
2Adam/sequential/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/sequential/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/sequential/dense_1/kernel/v
?
4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/v* 
_output_shapes
:
??*
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
??*/
shared_name Adam/sequential/dense/kernel/v
?
2Adam/sequential/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
CAdam/sequential/dense_features/Suburb_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*T
shared_nameECAdam/sequential/dense_features/Suburb_embedding/embedding_weights/v
?
WAdam/sequential/dense_features/Suburb_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOpCAdam/sequential/dense_features/Suburb_embedding/embedding_weights/v* 
_output_shapes
:
??*
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
Adam/sequential/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/sequential/dense_2/bias/m
?
2Adam/sequential/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_2/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/sequential/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*1
shared_name" Adam/sequential/dense_2/kernel/m
?
4Adam/sequential/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_2/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/sequential/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/sequential/dense_1/bias/m
?
2Adam/sequential/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/sequential/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/sequential/dense_1/kernel/m
?
4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/m* 
_output_shapes
:
??*
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
??*/
shared_name Adam/sequential/dense/kernel/m
?
2Adam/sequential/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
CAdam/sequential/dense_features/Suburb_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*T
shared_nameECAdam/sequential/dense_features/Suburb_embedding/embedding_weights/m
?
WAdam/sequential/dense_features/Suburb_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOpCAdam/sequential/dense_features/Suburb_embedding/embedding_weights/m* 
_output_shapes
:
??*
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
shared_name340*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name250*
value_dtype0	
m
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name214*
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
sequential/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes
:@*
dtype0
?
sequential/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@**
shared_namesequential/dense_2/kernel
?
-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_output_shapes
:	?@*
dtype0
?
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namesequential/dense_1/bias
?
+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes	
:?*
dtype0
?
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_namesequential/dense_1/kernel
?
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel* 
_output_shapes
:
??*
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
??*(
shared_namesequential/dense/kernel
?
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel* 
_output_shapes
:
??*
dtype0
?
<sequential/dense_features/Suburb_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*M
shared_name><sequential/dense_features/Suburb_embedding/embedding_weights
?
Psequential/dense_features/Suburb_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp<sequential/dense_features/Suburb_embedding/embedding_weights* 
_output_shapes
:
??*
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
?@
Const_5Const*
_output_shapes	
:?*
dtype0*?@
value?@B?@?BBOX HILLBKILLARAB	LINDFIELDBCHAIN VALLEY BAYBMOUNT TOMAHBLEURABDOYALSONB	BERAMBINGBSAN REMOB
BLUE HAVENBBUDGEWOIBBILPINB
BUFF POINTB	DOORALONGB
CHARMHAVENBBUXTONB
BULLABURRAB
LAKE HAVENBTOUKLEYBCEDAR BRUSH CREEKB
MOGO CREEKB	NORAVILLEBLAWSONBWALLARAHB
NORAH HEADBYARRAMALONGBHAMLYN TERRACEBCANTON BEACHBJILLIBYB
WARNERVALEBMOUNTAIN LAGOONBWYONGAHBTAHMOORBLITTLE JILLIBYB	THIRLMEREB	LAKESLANDBMAGENTABOAKDALEBKURRAJONG HEIGHTSBWOODFORDBALISONBROCKY POINTBTACOMA SOUTHBWYONG CREEKBMARDIBTUGGERAHBBELIMBLA PARKBTHE ENTRANCE NORTHBCENTRAL MACDONALDBTHE OAKSBCHITTAWAY POINTBTHE ENTRANCEBCHITTAWAY BAYB
KANGY ANGYBWHEENY CREEKBCENTRAL MANGROVEBMALDONBMANGROVE MOUNTAINB
SPRINGWOODBBOWEN MOUNTAINBKURRAJONG HILLSBBLUE BAYBBERKELEY VALEB
LONG JETTYBWILTONBTOOWOON BAYBCOLO HEIGHTSBLOWER PORTLANDB
GROSE VALEBMOUNT HUNTERBORANGEVILLEBFOUNTAINDALEBKILLARNEY VALEB	RAZORBACKBLOWER MACDONALDBVALLEY HEIGHTSB
TUMBI UMBIBWINMALEEB
BATEAU BAYBSOMERSBYBBLAXLANDS RIDGEBGLENMOREBOURIMBAHBKURMONDB
SUN VALLEYBWISEMANS FERRYBDOUGLAS PARKBWEROMBIBYELLOW ROCKB
GROSE WOLDBBLAXLANDBTENNYSONBFORRESTERS BEACHBCAWDORBNORTH RICHMONDBHAWKESBURY HEIGHTSB
YARRAMUNDIBMATCHAMBLISAROWBNIAGARA PARKB	GUNDERMANB	GLENBROOKB
SILVERDALEB
WARRAGAMBABRICHMONDBMOUNT RIVERVIEWBBROWNLOW HILLBAPPINBNARARABHOLGATEB
LEETS VALEB	GLOSSODIABTHERESA PARKBWAMBERALBWYOMINGBMOUNT ELLIOTBCASTLEREAGHBPEATS RIDGEBAGNES BANKSBMULGOABFREEMANS REACHBCAMDEN SOUTHBCAMDEN PARKBCAMDENB
ELLIS LANEBTERRIGALBCUMBERLAND REACHBERINA HEIGHTSBHOBARTVILLEBMAROOTABWALLACIABGOSFORDBSACKVILLE NORTHBWEST GOSFORDBSPRINGFIELDB	GREENDALEBREGENTVILLEBLONDONDERRYBGLENMORE PARKBSOUTH MAROOTAB	SACKVILLEBNORTH AVOCABEAST GOSFORDBJAMISONTOWNB
CRANEBROOKBEBENEZERBKIRKHAMBMENANGLE PARKBGREEN POINTBPENRITHBPOINT CLAREBAVOCA BEACHBPICKETTS VALLEYBKARIONGBWILBERFORCEB	KINCUMBERBCALGABNARELLANBNARELLAN VALEBTASCOTTB	LUDDENHAMB
COPACABANABMOUNT ANNANBJORDAN SPRINGSBCAMBRIDGE GARDENSB
WEDDERBURNBGILEADB	BRINGELLYBCAMBRIDGE PARKBORCHARD HILLSB	ORAN PARKB
YATTALUNGAB
ROSEMEADOWBWENDOREE PARKBWERRINGTON DOWNSBCATTAIBLLANDILOB
BLIGH PARKBSARATOGABSOUTH WINDSORB	AMBARVALEB	KOOLEWONGB	PITT TOWNBCAMPBELLTOWNBCADDENSBCURRANS HILLB	DAVISTOWNB	BENSVILLEBBERKSHIRE PARKBENGLORIE PARKBMARLOWBBRADBURYBCATHERINE FIELDBGREGORY HILLSB
PITT TOWN BWOY WOYBCLAREMONT MEADOWSBWOY WOY BAYBDALEYS POINTBGLEDSWOOD HILLSBST HUBERTS ISLANDBPHEGANS BAYBMULGRAVEBWINDSOR DOWNSBSHANES PARKBBLAIR ATHOLBOAKVILLEBAIRDSB
CANOELANDSBBADGERYS CREEKBROPES CROSSINGBMARAYLYAB	BLACKWALLBROSSMOREB
BLAIRMOUNTBST MARYSB
EAGLE VALEBKILLCARE HEIGHTSBMARSDEN PARKBWILLMOTB
BOOKER BAYBWOODBINEBETTALONG BEACHB
LEPPINGTONBNORTH ST MARYSBKILLCAREBESCHOL PARKBST CLAIRBKEARNSBLETHBRIDGE PARKBLEUMEAHB
HARDYS BAYBKEMPS CREEKBSHALVEYB	WAGSTAFFEBPRETTY BEACHBCOLYTONB
OXLEY PARKBRABYBGLENORIEBCHEERO POINTBMOONEY MOONEYB
RIVERSTONEBEMERTONB	BAR POINTB
ST ANDREWSBBLACKETTB	BLACKETT BBIDWILLBMILSONS PASSAGEB	BLACKTOWNBERSKINE PARKBAUSTRALBDENHAM COURTBMOUNT DRUITTBMINTOB
SCHOFIELDSB
BOW BOWINGBOAKHURSTBPATONGABPEARL BEACHBHASSALL GROVEBRIVERSTONE BPLUMPTONB
CECIL PARKBCOLEBEEB
ANNANGROVEBMINCHINBURYBBROOKLYNB
ROOTY HILLBGLENDENNINGB	DEAN PARKB	WATERFALLBHORNINGSEA PARKBBARDIABEDMONDSON PARKBQUAKERS HILLBCARNES HILLBEASTERN CREEKB
ROUSE HILLB
FIDDLETOWNB	THE PONDSBDOONSIDEBMACQUARIE LINKSBPRESTONSBELIZABETH HILLSBCECIL HILLSB	KENTHURSTBMACQUARIE FIELDSBHINCHINBROOKBBUNGARRIBEEBKELLYVILLE RIDGEBMARAYONGBBEAUMONT HILLSBMIDDLE DURALB
PALM BEACHBGREEN VALLEYBBONNYRIGG HEIGHTSBGREAT MACKEREL BEACHBARCADIAB
ABBOTSBURYBACACIA GARDENSBCASULABSTANHOPE GARDENSB	GLENFIELDB
CARTWRIGHTBPARKLEABBOSSLEY PARKB	BONNYRIGGBBUSBYBBEROWRA WATERSBWHALE BEACHBBEROWRA HEIGHTSB	HEATHCOTEBAVALON BEACHBKINGS LANGLEYBSADLEIRBDURALBGALSTONBENGADINEBMOUNT PRITCHARDBASHCROFTBBEROWRAB
LALOR PARKBST JOHNS PARKBBELLA VISTABSEVEN HILLSBPRAIRIEWOODBWETHERILL PARKBCABRAMATTA WESTBWAKELEYBCASTLE HILLB
CLAREVILLEBMORNING BAYB
CABRAMATTABBILGOLA BEACHB	GLENHAVENBBILGOLABBILGOLA PLATEAUBFAIRFIELD WESTBCANLEY HEIGHTSBYARRAWARRAHB
TOONGABBIEBHORNSBY HEIGHTSB
SMITHFIELDBNEWPORTBSCOTLAND ISLANDB
SUTHERLANDBBARDEN RIDGEBPEMULWUYBWARWICK FARMBBAULKHAM HILLSB
GREYSTANESB
HOLSWORTHYBWINSTON HILLSBHAMMONDVILLEBLOFTUSBMOUNT COLAHBCHURCH POINTBCANLEY VALEBBAYVIEWBMENAIBWORONORA HEIGHTSBFAIRFIELD HEIGHTSBMOUNT KURING-GAIBPENDLE HILLBMAIANBARBBUNDEENABGRAYS POINTBBANGORBVOYAGER POINTB	MONA VALEBOLD TOONGABBIEBPLEASURE POINTBLILLI PILLIBWENTWORTHVILLEBWORONORABCONSTITUTION HILLB	BURRANEERBPORT HACKINGBWOODPARKB	GYMEA BAYB
MERRYLANDSBMERRYLANDS WESTBSANDY POINTBGYMEABCHERRYBROOKB
EAST HILLSBKIRRAWEEB	GUILDFORDBGUILDFORD WESTBCARINGBAH SOUTHBPICNIC POINTBCARRAMARBYENNORABASQUITHBHORNSBYB	CARINGBAHB
DOLANS BAYBCRONULLABMILPERRABILLAWONGBWESTMEADB
WARRIEWOODBALFORDS POINTBPANANIAB	VILLAWOODBMIRANDABWEST PENNANT HILLSBGEORGES HALLB
BONNET BAYBTERREY HILLSBJANNALIB
WOOLOOWAREB	MAYS HILLB	BASS HILLBREVESBY HEIGHTSBKAREELABNORTH PARRAMATTABELANORA HEIGHTSBREVESBYB
TURRAMURRABPENNANT HILLSBWAITARABCOMOBSYDNEYBLUGARNOB	GRANVILLEB	NARRABEENB	WAHROONGAB
PARRAMATTABNORMANHURSTBCARLINGFORDB	BANKSTOWNBPADSTOW HEIGHTSBCONDELL PARKBBEECROFTB
OYSTER BAYBOATLANDSBGREENHILLS BEACHBHARRIS PARKBST IVESBST IVES CHASEBSEFTONBYAGOONABROSEHILLBSOUTH GRANVILLEBTAREN POINTB	PEAKHURSTBOATLEYBKANGAROO POINTBTELOPEABCOLLAROYBDUNDASBCOLLAROY PLATEAUB
CHELTENHAMBEPPINGBBIRRONGBWHEELER HEIGHTSBAUBURNB	RYDALMEREBCONNELLS POINTB
BLAKEHURSTBDUNDAS VALLEYBKYLE BAYBBERALAB
POTTS HILLBPYMBLEBSOUTH TURRAMURRABCROMERB
SANS SOUCIBBELROSEBHURSTVILLE GROVEB	ERMINGTONBBEVERLY HILLSBSANDRINGHAMBDEE WHYBKURNELLBSOUTH HURSTVILLEB	GREENACREBLIDCOMBEBMOUNT LEWISB
CARSS PARKB	WEST RYDEB
HURSTVILLEB	ROSELANDSBKOGARAH BAYB
NARRAWEENAB	MARSFIELDB	NEWINGTONBDOLLS POINTBCARLTONB
WILEY PARKBGORDONBDENISTONE WESTBBEACON HILLBFRENCHS FORESTBNORTH CURL CURLBALLAWAHBBEVERLEY PARKBRAMSGATEBMELROSE PARKB	BROOKVALEB
KINGSGROVEBLAKEMBABKOGARAHBEAST KILLARABDENISTONE EASTBMONTEREYBBEXLEYBHOMEBUSHBHOMEBUSH WESTBMACQUARIE PARKBSYDNEY OLYMPIC PARKBWENTWORTH POINTB
LITTLE BAYBALLAMBIE HEIGHTSBNORTH MANLYBSTRATHFIELDBRYDEBBELMOREBPHILLIP BAYBBELFIELDBSTRATHFIELD SOUTHB
MEADOWBANKBBEXLEY NORTHBMALABARBQUEENSCLIFFBEAST LINDFIELDBBRIGHTON-LE-SANDSBCLEMTON PARKBCONCORD WESTBLIBERTY GROVEBROCKDALEBMANLYBCONCORDBCAMPSIEBNORTH STRATHFIELDBEARLWOODBPUTNEYBKILLARNEY HEIGHTSB
MANLY VALEBCROYDON PARKBENFIELDBBARDWELL VALLEYBBARDWELL PARKB
CANTERBURYB	ARNCLIFFEB	ROSEVILLEBROSEVILLE CHASEBBANKSIAB	FAIRLIGHTBBURWOODB
CANADA BAYBNORTH BALGOWLAHB	BALGOWLAHBKYEEMAGHBMAROUBRABMORTLAKEBBURWOOD HEIGHTSB	EAST RYDEBBREAKFAST POINTBCASTLE COVEB	HILLSDALEB	CHATSWOODBTENNYSON POINTBBOTANYBCROYDONBASHBURYBBALGOWLAH HEIGHTSBCABARITABEASTGARDENSBHURLSTONE PARKBWOLLI CREEKBCLONTARFBASHFIELDB	FIVE DOCKB	LANE COVEBHUNTERS HILLBSOUTH COOGEEBNORTH WILLOUGHBYB
WILLOUGHBYBPAGEWOODB
CASTLECRAGBWILLOUGHBY EASTBLANE COVE WESTB
ABBOTSFORDBDULWICH HILLBMARRICKVILLEBMOSMANBCOOGEEBARTARMONBTEMPEBSUMMER HILLBWATSONS BAYBHENLEYBWAREEMBABCLOVELLYB
HABERFIELDB	RIVERVIEWBLINLEY POINTBNORTHBRIDGEBNORTH BONDIB	KINGSFORDBCHISWICKBHUNTLEYS POINTBVAUCLUSEBMASCOTBBRONTEB	EASTLAKESBLEWISHAMBTAMARAMABBONDI BEACHBBONDIBSYDENHAMB
RODD POINTBROSE BAYB	PETERSHAMBROSEBERYBWAVERLEYB	GREENWICHBLONGUEVILLEBBALMORALBCREMORNEBCAMMERAYB
ALEXANDRIABST LEONARDSB
KENSINGTONBQUEENS PARKBBONDI JUNCTIONBBELLEVUE HILLB	LILYFIELDBSTANMOREBNEWTOWNBWOLLSTONECRAFTBCLIFTON GARDENSBBEACONSFIELDBNEUTRAL BAYB	ANNANDALEBZETLANDBNORTH SYDNEYBERSKINEVILLEB
CAMPERDOWNBCREMORNE POINTB	WOOLLAHRABCENTENNIAL PARKB
DOUBLE BAYBBALMAINB
BIRCHGROVEBLAVENDER BAYB
PADDINGTONBDARLING POINTB
KIRRIBILLIBMILSONS POINTB
DARLINGTONBREDFERNBSURRY HILLSBCHIPPENDALEBBALMAIN EASTBRUSHCUTTERS BAYBDARLINGHURSTBELIZABETH BAYBPOTTS POINTB	HAYMARKET
?*
Const_6Const*
_output_shapes	
:?*
dtype0	*?)
value?)B?)	?"?)                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
Const_7Const*
_output_shapes
:*
dtype0*?
value?B?BHouseB
Apartment BSemi-detachedBVillaBAcreage / Semi-ruralBNew house and landBDuplexB	TownhouseBRuralBBlock of unitsBVacant landBTerraceBRetirement LivingBNew apartments / off the planBDevelopment siteBFarmBNew landBNew home designsBStudioB	Penthouse
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
__inference_<lambda>_478377
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
__inference_<lambda>_478385
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
__inference_<lambda>_478393
^
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2
?J
Const_9Const"/device:CPU:0*
_output_shapes
: *
dtype0*?J
value?JB?I B?I
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
VARIABLE_VALUE<sequential/dense_features/Suburb_embedding/embedding_weightsSlayer_with_weights-0/Suburb_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*
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
ga
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ic
VARIABLE_VALUEsequential/dense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential/dense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ic
VARIABLE_VALUEsequential/dense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential/dense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ga
VARIABLE_VALUEsequential/Price/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential/Price/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUECAdam/sequential/dense_features/Suburb_embedding/embedding_weights/molayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUECAdam/sequential/dense_features/Suburb_embedding/embedding_weights/volayer_with_weights-0/Suburb_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/Price/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
o
serving_default_AreaPlaceholder*#
_output_shapes
:?????????*
dtype0	*
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
StatefulPartitionedCall_3StatefulPartitionedCallserving_default_Areaserving_default_Bathroomsserving_default_Bedroomsserving_default_Carsserving_default_Distanceserving_default_Latitudeserving_default_Longitudeserving_default_Methodserving_default_Suburbserving_default_Typeserving_default_Yearhash_table_2Consthash_table_1Const_1<sequential/dense_features/Suburb_embedding/embedding_weights
hash_tableConst_2sequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/biassequential/Price/kernelsequential/Price/bias*%
Tin
2								*
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
$__inference_signature_wrapper_477096
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenamePsequential/dense_features/Suburb_embedding/embedding_weights/Read/ReadVariableOp+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOp-sequential/dense_1/kernel/Read/ReadVariableOp+sequential/dense_1/bias/Read/ReadVariableOp-sequential/dense_2/kernel/Read/ReadVariableOp+sequential/dense_2/bias/Read/ReadVariableOp+sequential/Price/kernel/Read/ReadVariableOp)sequential/Price/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpWAdam/sequential/dense_features/Suburb_embedding/embedding_weights/m/Read/ReadVariableOp2Adam/sequential/dense/kernel/m/Read/ReadVariableOp0Adam/sequential/dense/bias/m/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_1/bias/m/Read/ReadVariableOp4Adam/sequential/dense_2/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_2/bias/m/Read/ReadVariableOp2Adam/sequential/Price/kernel/m/Read/ReadVariableOp0Adam/sequential/Price/bias/m/Read/ReadVariableOpWAdam/sequential/dense_features/Suburb_embedding/embedding_weights/v/Read/ReadVariableOp2Adam/sequential/dense/kernel/v/Read/ReadVariableOp0Adam/sequential/dense/bias/v/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_1/bias/v/Read/ReadVariableOp4Adam/sequential/dense_2/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_2/bias/v/Read/ReadVariableOp2Adam/sequential/Price/kernel/v/Read/ReadVariableOp0Adam/sequential/Price/bias/v/Read/ReadVariableOpConst_9*1
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
__inference__traced_save_478549
?

StatefulPartitionedCall_5StatefulPartitionedCallsaver_filename<sequential/dense_features/Suburb_embedding/embedding_weightssequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/biassequential/Price/kernelsequential/Price/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountCAdam/sequential/dense_features/Suburb_embedding/embedding_weights/mAdam/sequential/dense/kernel/mAdam/sequential/dense/bias/m Adam/sequential/dense_1/kernel/mAdam/sequential/dense_1/bias/m Adam/sequential/dense_2/kernel/mAdam/sequential/dense_2/bias/mAdam/sequential/Price/kernel/mAdam/sequential/Price/bias/mCAdam/sequential/dense_features/Suburb_embedding/embedding_weights/vAdam/sequential/dense/kernel/vAdam/sequential/dense/bias/v Adam/sequential/dense_1/kernel/vAdam/sequential/dense_1/bias/v Adam/sequential/dense_2/kernel/vAdam/sequential/dense_2/bias/vAdam/sequential/Price/kernel/vAdam/sequential/Price/bias/v*0
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
"__inference__traced_restore_478667??
?
?
/__inference_dense_features_layer_call_fn_477741
features_area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_areafeatures_bathroomsfeatures_bedroomsfeatures_carsfeatures_distancefeatures_latitudefeatures_longitudefeatures_methodfeatures_suburbfeatures_typefeatures_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2								*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_476303p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
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
C__inference_dense_2_layer_call_and_return_conditional_losses_478296

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
?
;
__inference__creator_478320
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name214*
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
?
?
+__inference_sequential_layer_call_fn_477141
inputs_area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
	unknown_6:
??
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
2								*
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_476387o
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
?
?
&__inference_Price_layer_call_fn_478305

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
A__inference_Price_layer_call_and_return_conditional_losses_476380o
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
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_477449
inputs_area	
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	N
Jdense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_method_indicator_none_lookup_lookuptablefindv2_default_value	N
Jdense_features_suburb_embedding_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_suburb_embedding_none_lookup_lookuptablefindv2_default_value	K
7dense_features_suburb_embedding_readvariableop_resource:
??L
Hdense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_type_indicator_none_lookup_lookuptablefindv2_default_value	8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?9
&dense_2_matmul_readvariableop_resource:	?@5
'dense_2_biasadd_readvariableop_resource:@6
$price_matmul_readvariableop_resource:@3
%price_biasadd_readvariableop_resource:
identity??Price/BiasAdd/ReadVariableOp?Price/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?=dense_features/Method_indicator/None_Lookup/LookupTableFindV2?=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2?.dense_features/Suburb_embedding/ReadVariableOp?;dense_features/Type_indicator/None_Lookup/LookupTableFindV2i
dense_features/CastCastinputs_distance*

DstT0*

SrcT0*#
_output_shapes
:?????????k
dense_features/Cast_1Castinputs_latitude*

DstT0*

SrcT0*#
_output_shapes
:?????????l
dense_features/Cast_2Castinputs_longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????m
"dense_features/Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Area/ExpandDims
ExpandDimsinputs_area+dense_features/Area/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Area/CastCast'dense_features/Area/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????e
dense_features/Area/ShapeShapedense_features/Area/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Area/strided_sliceStridedSlice"dense_features/Area/Shape:output:00dense_features/Area/strided_slice/stack:output:02dense_features/Area/strided_slice/stack_1:output:02dense_features/Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Area/Reshape/shapePack*dense_features/Area/strided_slice:output:0,dense_features/Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Area/ReshapeReshapedense_features/Area/Cast:y:0*dense_features/Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
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
:?????????r
'dense_features/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#dense_features/Longitude/ExpandDims
ExpandDimsdense_features/Cast_2:y:00dense_features/Longitude/ExpandDims/dim:output:0*
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
.dense_features/Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Suburb_embedding/ExpandDims
ExpandDimsinputs_suburb7dense_features/Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Suburb_embedding/to_sparse_input/NotEqualNotEqual3dense_features/Suburb_embedding/ExpandDims:output:0Gdense_features/Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Suburb_embedding/to_sparse_input/indicesWhere<dense_features/Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Suburb_embedding/to_sparse_input/valuesGatherNd3dense_features/Suburb_embedding/ExpandDims:output:0?dense_features/Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Suburb_embedding/to_sparse_input/dense_shapeShape3dense_features/Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_suburb_embedding_none_lookup_lookuptablefindv2_table_handle?dense_features/Suburb_embedding/to_sparse_input/values:output:0Kdense_features_suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
.dense_features/Suburb_embedding/ReadVariableOpReadVariableOp7dense_features_suburb_embedding_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Ddense_features/Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Cdense_features/Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
>dense_features/Suburb_embedding/Suburb_embedding_weights/SliceSliceDdense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Mdense_features/Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0Ldense_features/Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
>dense_features/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
=dense_features/Suburb_embedding/Suburb_embedding_weights/ProdProdGdense_features/Suburb_embedding/Suburb_embedding_weights/Slice:output:0Gdense_features/Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Idense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Adense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV2Ddense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Rdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0Odense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
?dense_features/Suburb_embedding/Suburb_embedding_weights/Cast/xPackFdense_features/Suburb_embedding/Suburb_embedding_weights/Prod:output:0Jdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshape?dense_features/Suburb_embedding/to_sparse_input/indices:index:0Ddense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Hdense_features/Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Odense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentityFdense_features/Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gdense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Edense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualXdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Pdense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
>dense_features/Suburb_embedding/Suburb_embedding_weights/WhereWhereIdense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Fdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@dense_features/Suburb_embedding/Suburb_embedding_weights/ReshapeReshapeFdense_features/Suburb_embedding/Suburb_embedding_weights/Where:index:0Odense_features/Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Hdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2Wdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0Idense_features/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Qdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Hdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2Xdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Idense_features/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Qdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Adense_features/Suburb_embedding/Suburb_embedding_weights/IdentityIdentityUdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
Rdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
`dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0Ldense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0Jdense_features/Suburb_embedding/Suburb_embedding_weights/Identity:output:0[dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
ddense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
fdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
fdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
^dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceqdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0mdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0odense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0odense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Wdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniquepdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
fdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*A
_class7
53loc:@dense_features/Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
adense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV26dense_features/Suburb_embedding/ReadVariableOp:value:0[dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0odense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*A
_class7
53loc:@dense_features/Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
jdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
Pdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeansdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0]dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0gdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
Hdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Bdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1Reshapevdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Qdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
>dense_features/Suburb_embedding/Suburb_embedding_weights/ShapeShapeYdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Ldense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Ndense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Ndense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSliceGdense_features/Suburb_embedding/Suburb_embedding_weights/Shape:output:0Udense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0Wdense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0Wdense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@dense_features/Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
>dense_features/Suburb_embedding/Suburb_embedding_weights/stackPackIdense_features/Suburb_embedding/Suburb_embedding_weights/stack/0:output:0Odense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
=dense_features/Suburb_embedding/Suburb_embedding_weights/TileTileKdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:0Gdense_features/Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*(
_output_shapes
:???????????
Cdense_features/Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeYdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
8dense_features/Suburb_embedding/Suburb_embedding_weightsSelectFdense_features/Suburb_embedding/Suburb_embedding_weights/Tile:output:0Gdense_features/Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0Ydense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
?dense_features/Suburb_embedding/Suburb_embedding_weights/Cast_1CastDdense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Edense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
@dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1SliceCdense_features/Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0Odense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0Ndense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
@dense_features/Suburb_embedding/Suburb_embedding_weights/Shape_1ShapeAdense_features/Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Edense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2SliceIdense_features/Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0Odense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0Ndense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Ddense_features/Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?dense_features/Suburb_embedding/Suburb_embedding_weights/concatConcatV2Idense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0Idense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0Mdense_features/Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Bdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2ReshapeAdense_features/Suburb_embedding/Suburb_embedding_weights:output:0Hdense_features/Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*(
_output_shapes
:???????????
%dense_features/Suburb_embedding/ShapeShapeKdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:}
3dense_features/Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Suburb_embedding/strided_sliceStridedSlice.dense_features/Suburb_embedding/Shape:output:0<dense_features/Suburb_embedding/strided_slice/stack:output:0>dense_features/Suburb_embedding/strided_slice/stack_1:output:0>dense_features/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/dense_features/Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
-dense_features/Suburb_embedding/Reshape/shapePack6dense_features/Suburb_embedding/strided_slice:output:08dense_features/Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Suburb_embedding/ReshapeReshapeKdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:06dense_features/Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????w
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
dense_features/concatConcatV2$dense_features/Area/Reshape:output:0)dense_features/Bathrooms/Reshape:output:0(dense_features/Bedrooms/Reshape:output:0$dense_features/Cars/Reshape:output:0(dense_features/Distance/Reshape:output:0(dense_features/Latitude/Reshape:output:0)dense_features/Longitude/Reshape:output:00dense_features/Method_indicator/Reshape:output:00dense_features/Suburb_embedding/Reshape:output:0.dense_features/Type_indicator/Reshape:output:0$dense_features/Year/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
_output_shapes
:
??*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Price/MatMul/ReadVariableOpReadVariableOp$price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Price/MatMulMatMuldense_2/Relu:activations:0#Price/MatMul/ReadVariableOp:value:0*
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
NoOpNoOp^Price/BiasAdd/ReadVariableOp^Price/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp>^dense_features/Method_indicator/None_Lookup/LookupTableFindV2>^dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2/^dense_features/Suburb_embedding/ReadVariableOp<^dense_features/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2<
Price/BiasAdd/ReadVariableOpPrice/BiasAdd/ReadVariableOp2:
Price/MatMul/ReadVariableOpPrice/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2~
=dense_features/Method_indicator/None_Lookup/LookupTableFindV2=dense_features/Method_indicator/None_Lookup/LookupTableFindV22~
=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV22`
.dense_features/Suburb_embedding/ReadVariableOp.dense_features/Suburb_embedding/ReadVariableOp2z
;dense_features/Type_indicator/None_Lookup/LookupTableFindV2;dense_features/Type_indicator/None_Lookup/LookupTableFindV2:P L
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
(__inference_dense_1_layer_call_fn_478265

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
C__inference_dense_1_layer_call_and_return_conditional_losses_476347p
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
?
?
+__inference_sequential_layer_call_fn_476420
area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
	unknown_6:
??
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
2								*
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_476387o
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
?*
?
F__inference_sequential_layer_call_and_return_conditional_losses_476387

inputs	
inputs_1	
inputs_2	
inputs_3	
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10	
dense_features_476304
dense_features_476306	
dense_features_476308
dense_features_476310	)
dense_features_476312:
??
dense_features_476314
dense_features_476316	 
dense_476331:
??
dense_476333:	?"
dense_1_476348:
??
dense_1_476350:	?!
dense_2_476365:	?@
dense_2_476367:@
price_476381:@
price_476383:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_2Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3dense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0inputs_7inputs_8inputs_9	inputs_10dense_features_476304dense_features_476306dense_features_476308dense_features_476310dense_features_476312dense_features_476314dense_features_476316*
Tin
2								*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_476303?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_476331dense_476333*
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
A__inference_dense_layer_call_and_return_conditional_losses_476330?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_476348dense_1_476350*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_476347?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_476365dense_2_476367*
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
C__inference_dense_2_layer_call_and_return_conditional_losses_476364?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0price_476381price_476383*
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
A__inference_Price_layer_call_and_return_conditional_losses_476380u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
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
: :

_output_shapes
: 
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_478276

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
__inference__initializer_4783462
.table_init249_lookuptableimportv2_table_handle*
&table_init249_lookuptableimportv2_keys,
(table_init249_lookuptableimportv2_values	
identity??!table_init249/LookupTableImportV2?
!table_init249/LookupTableImportV2LookupTableImportV2.table_init249_lookuptableimportv2_table_handle&table_init249_lookuptableimportv2_keys(table_init249_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init249/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init249/LookupTableImportV2!table_init249/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_<lambda>_4783772
.table_init213_lookuptableimportv2_table_handle*
&table_init213_lookuptableimportv2_keys,
(table_init213_lookuptableimportv2_values	
identity??!table_init213/LookupTableImportV2?
!table_init213/LookupTableImportV2LookupTableImportV2.table_init213_lookuptableimportv2_table_handle&table_init213_lookuptableimportv2_keys(table_init213_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init213/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init213/LookupTableImportV2!table_init213/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_477712
inputs_area	
inputs_bathrooms	
inputs_bedrooms	
inputs_cars	
inputs_distance
inputs_latitude
inputs_longitude
inputs_method
inputs_suburb
inputs_type
inputs_year	N
Jdense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_method_indicator_none_lookup_lookuptablefindv2_default_value	N
Jdense_features_suburb_embedding_none_lookup_lookuptablefindv2_table_handleO
Kdense_features_suburb_embedding_none_lookup_lookuptablefindv2_default_value	K
7dense_features_suburb_embedding_readvariableop_resource:
??L
Hdense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_type_indicator_none_lookup_lookuptablefindv2_default_value	8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?9
&dense_2_matmul_readvariableop_resource:	?@5
'dense_2_biasadd_readvariableop_resource:@6
$price_matmul_readvariableop_resource:@3
%price_biasadd_readvariableop_resource:
identity??Price/BiasAdd/ReadVariableOp?Price/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?=dense_features/Method_indicator/None_Lookup/LookupTableFindV2?=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2?.dense_features/Suburb_embedding/ReadVariableOp?;dense_features/Type_indicator/None_Lookup/LookupTableFindV2i
dense_features/CastCastinputs_distance*

DstT0*

SrcT0*#
_output_shapes
:?????????k
dense_features/Cast_1Castinputs_latitude*

DstT0*

SrcT0*#
_output_shapes
:?????????l
dense_features/Cast_2Castinputs_longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????m
"dense_features/Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Area/ExpandDims
ExpandDimsinputs_area+dense_features/Area/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
dense_features/Area/CastCast'dense_features/Area/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????e
dense_features/Area/ShapeShapedense_features/Area/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Area/strided_sliceStridedSlice"dense_features/Area/Shape:output:00dense_features/Area/strided_slice/stack:output:02dense_features/Area/strided_slice/stack_1:output:02dense_features/Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Area/Reshape/shapePack*dense_features/Area/strided_slice:output:0,dense_features/Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Area/ReshapeReshapedense_features/Area/Cast:y:0*dense_features/Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
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
:?????????r
'dense_features/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#dense_features/Longitude/ExpandDims
ExpandDimsdense_features/Cast_2:y:00dense_features/Longitude/ExpandDims/dim:output:0*
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
.dense_features/Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Suburb_embedding/ExpandDims
ExpandDimsinputs_suburb7dense_features/Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Suburb_embedding/to_sparse_input/NotEqualNotEqual3dense_features/Suburb_embedding/ExpandDims:output:0Gdense_features/Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Suburb_embedding/to_sparse_input/indicesWhere<dense_features/Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Suburb_embedding/to_sparse_input/valuesGatherNd3dense_features/Suburb_embedding/ExpandDims:output:0?dense_features/Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Suburb_embedding/to_sparse_input/dense_shapeShape3dense_features/Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Jdense_features_suburb_embedding_none_lookup_lookuptablefindv2_table_handle?dense_features/Suburb_embedding/to_sparse_input/values:output:0Kdense_features_suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
.dense_features/Suburb_embedding/ReadVariableOpReadVariableOp7dense_features_suburb_embedding_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Ddense_features/Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Cdense_features/Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
>dense_features/Suburb_embedding/Suburb_embedding_weights/SliceSliceDdense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Mdense_features/Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0Ldense_features/Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
>dense_features/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
=dense_features/Suburb_embedding/Suburb_embedding_weights/ProdProdGdense_features/Suburb_embedding/Suburb_embedding_weights/Slice:output:0Gdense_features/Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Idense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Adense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV2Ddense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Rdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0Odense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
?dense_features/Suburb_embedding/Suburb_embedding_weights/Cast/xPackFdense_features/Suburb_embedding/Suburb_embedding_weights/Prod:output:0Jdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshape?dense_features/Suburb_embedding/to_sparse_input/indices:index:0Ddense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Hdense_features/Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Odense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentityFdense_features/Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gdense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Edense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualXdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Pdense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
>dense_features/Suburb_embedding/Suburb_embedding_weights/WhereWhereIdense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Fdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@dense_features/Suburb_embedding/Suburb_embedding_weights/ReshapeReshapeFdense_features/Suburb_embedding/Suburb_embedding_weights/Where:index:0Odense_features/Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Hdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2Wdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0Idense_features/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Qdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Hdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2Xdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Idense_features/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0Qdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Adense_features/Suburb_embedding/Suburb_embedding_weights/IdentityIdentityUdense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
Rdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
`dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLdense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0Ldense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0Jdense_features/Suburb_embedding/Suburb_embedding_weights/Identity:output:0[dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
ddense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
fdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
fdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
^dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceqdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0mdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0odense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0odense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Wdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUniquepdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
fdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*A
_class7
53loc:@dense_features/Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
adense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV26dense_features/Suburb_embedding/ReadVariableOp:value:0[dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0odense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*A
_class7
53loc:@dense_features/Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
jdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
Pdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeansdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0]dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0gdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
Hdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Bdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1Reshapevdense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Qdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
>dense_features/Suburb_embedding/Suburb_embedding_weights/ShapeShapeYdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Ldense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Ndense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Ndense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSliceGdense_features/Suburb_embedding/Suburb_embedding_weights/Shape:output:0Udense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0Wdense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0Wdense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@dense_features/Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
>dense_features/Suburb_embedding/Suburb_embedding_weights/stackPackIdense_features/Suburb_embedding/Suburb_embedding_weights/stack/0:output:0Odense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
=dense_features/Suburb_embedding/Suburb_embedding_weights/TileTileKdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:0Gdense_features/Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*(
_output_shapes
:???????????
Cdense_features/Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeYdense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
8dense_features/Suburb_embedding/Suburb_embedding_weightsSelectFdense_features/Suburb_embedding/Suburb_embedding_weights/Tile:output:0Gdense_features/Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0Ydense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
?dense_features/Suburb_embedding/Suburb_embedding_weights/Cast_1CastDdense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Edense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
@dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1SliceCdense_features/Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0Odense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0Ndense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
@dense_features/Suburb_embedding/Suburb_embedding_weights/Shape_1ShapeAdense_features/Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
Fdense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Edense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2SliceIdense_features/Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0Odense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0Ndense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Ddense_features/Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?dense_features/Suburb_embedding/Suburb_embedding_weights/concatConcatV2Idense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0Idense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0Mdense_features/Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Bdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2ReshapeAdense_features/Suburb_embedding/Suburb_embedding_weights:output:0Hdense_features/Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*(
_output_shapes
:???????????
%dense_features/Suburb_embedding/ShapeShapeKdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:}
3dense_features/Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Suburb_embedding/strided_sliceStridedSlice.dense_features/Suburb_embedding/Shape:output:0<dense_features/Suburb_embedding/strided_slice/stack:output:0>dense_features/Suburb_embedding/strided_slice/stack_1:output:0>dense_features/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/dense_features/Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
-dense_features/Suburb_embedding/Reshape/shapePack6dense_features/Suburb_embedding/strided_slice:output:08dense_features/Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Suburb_embedding/ReshapeReshapeKdense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:06dense_features/Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????w
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
dense_features/concatConcatV2$dense_features/Area/Reshape:output:0)dense_features/Bathrooms/Reshape:output:0(dense_features/Bedrooms/Reshape:output:0$dense_features/Cars/Reshape:output:0(dense_features/Distance/Reshape:output:0(dense_features/Latitude/Reshape:output:0)dense_features/Longitude/Reshape:output:00dense_features/Method_indicator/Reshape:output:00dense_features/Suburb_embedding/Reshape:output:0.dense_features/Type_indicator/Reshape:output:0$dense_features/Year/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
_output_shapes
:
??*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Price/MatMul/ReadVariableOpReadVariableOp$price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Price/MatMulMatMuldense_2/Relu:activations:0#Price/MatMul/ReadVariableOp:value:0*
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
NoOpNoOp^Price/BiasAdd/ReadVariableOp^Price/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp>^dense_features/Method_indicator/None_Lookup/LookupTableFindV2>^dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2/^dense_features/Suburb_embedding/ReadVariableOp<^dense_features/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2<
Price/BiasAdd/ReadVariableOpPrice/BiasAdd/ReadVariableOp2:
Price/MatMul/ReadVariableOpPrice/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2~
=dense_features/Method_indicator/None_Lookup/LookupTableFindV2=dense_features/Method_indicator/None_Lookup/LookupTableFindV22~
=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2=dense_features/Suburb_embedding/None_Lookup/LookupTableFindV22`
.dense_features/Suburb_embedding/ReadVariableOp.dense_features/Suburb_embedding/ReadVariableOp2z
;dense_features/Type_indicator/None_Lookup/LookupTableFindV2;dense_features/Type_indicator/None_Lookup/LookupTableFindV2:P L
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
__inference_<lambda>_4783852
.table_init249_lookuptableimportv2_table_handle*
&table_init249_lookuptableimportv2_keys,
(table_init249_lookuptableimportv2_values	
identity??!table_init249/LookupTableImportV2?
!table_init249/LookupTableImportV2LookupTableImportV2.table_init249_lookuptableimportv2_table_handle&table_init249_lookuptableimportv2_keys(table_init249_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init249/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init249/LookupTableImportV2!table_init249/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?	
?
A__inference_Price_layer_call_and_return_conditional_losses_478315

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
__inference__destroyer_478333
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
__inference__destroyer_478351
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
?*
?
F__inference_sequential_layer_call_and_return_conditional_losses_476861

inputs	
inputs_1	
inputs_2	
inputs_3	
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10	
dense_features_476825
dense_features_476827	
dense_features_476829
dense_features_476831	)
dense_features_476833:
??
dense_features_476835
dense_features_476837	 
dense_476840:
??
dense_476842:	?"
dense_1_476845:
??
dense_1_476847:	?!
dense_2_476850:	?@
dense_2_476852:@
price_476855:@
price_476857:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastinputs_4*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castinputs_5*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_2Castinputs_6*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3dense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0inputs_7inputs_8inputs_9	inputs_10dense_features_476825dense_features_476827dense_features_476829dense_features_476831dense_features_476833dense_features_476835dense_features_476837*
Tin
2								*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_476735?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_476840dense_476842*
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
A__inference_dense_layer_call_and_return_conditional_losses_476330?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_476845dense_1_476847*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_476347?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_476850dense_2_476852*
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
C__inference_dense_2_layer_call_and_return_conditional_losses_476364?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0price_476855price_476857*
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
A__inference_Price_layer_call_and_return_conditional_losses_476380u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
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
: :

_output_shapes
: 
?Q
?
__inference__traced_save_478549
file_prefix[
Wsavev2_sequential_dense_features_suburb_embedding_embedding_weights_read_readvariableop6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop8
4savev2_sequential_dense_1_kernel_read_readvariableop6
2savev2_sequential_dense_1_bias_read_readvariableop8
4savev2_sequential_dense_2_kernel_read_readvariableop6
2savev2_sequential_dense_2_bias_read_readvariableop6
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
 savev2_count_read_readvariableopb
^savev2_adam_sequential_dense_features_suburb_embedding_embedding_weights_m_read_readvariableop=
9savev2_adam_sequential_dense_kernel_m_read_readvariableop;
7savev2_adam_sequential_dense_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_2_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_2_bias_m_read_readvariableop=
9savev2_adam_sequential_price_kernel_m_read_readvariableop;
7savev2_adam_sequential_price_bias_m_read_readvariableopb
^savev2_adam_sequential_dense_features_suburb_embedding_embedding_weights_v_read_readvariableop=
9savev2_adam_sequential_dense_kernel_v_read_readvariableop;
7savev2_adam_sequential_dense_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_2_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_2_bias_v_read_readvariableop=
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Wsavev2_sequential_dense_features_suburb_embedding_embedding_weights_read_readvariableop2savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop4savev2_sequential_dense_1_kernel_read_readvariableop2savev2_sequential_dense_1_bias_read_readvariableop4savev2_sequential_dense_2_kernel_read_readvariableop2savev2_sequential_dense_2_bias_read_readvariableop2savev2_sequential_price_kernel_read_readvariableop0savev2_sequential_price_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop^savev2_adam_sequential_dense_features_suburb_embedding_embedding_weights_m_read_readvariableop9savev2_adam_sequential_dense_kernel_m_read_readvariableop7savev2_adam_sequential_dense_bias_m_read_readvariableop;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop9savev2_adam_sequential_dense_1_bias_m_read_readvariableop;savev2_adam_sequential_dense_2_kernel_m_read_readvariableop9savev2_adam_sequential_dense_2_bias_m_read_readvariableop9savev2_adam_sequential_price_kernel_m_read_readvariableop7savev2_adam_sequential_price_bias_m_read_readvariableop^savev2_adam_sequential_dense_features_suburb_embedding_embedding_weights_v_read_readvariableop9savev2_adam_sequential_dense_kernel_v_read_readvariableop7savev2_adam_sequential_dense_bias_v_read_readvariableop;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop9savev2_adam_sequential_dense_1_bias_v_read_readvariableop;savev2_adam_sequential_dense_2_kernel_v_read_readvariableop9savev2_adam_sequential_dense_2_bias_v_read_readvariableop9savev2_adam_sequential_price_kernel_v_read_readvariableop7savev2_adam_sequential_price_bias_v_read_readvariableopsavev2_const_9"/device:CPU:0*
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
?: :
??:
??:?:
??:?:	?@:@:@:: : : : : : : : : :
??:
??:?:
??:?:	?@:@:@::
??:
??:?:
??:?:	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!
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
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!
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
::&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!
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
?
-
__inference__destroyer_478369
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
(__inference_dense_2_layer_call_fn_478285

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
C__inference_dense_2_layer_call_and_return_conditional_losses_476364o
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
?)
?
F__inference_sequential_layer_call_and_return_conditional_losses_476991
area	
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
dense_features_476955
dense_features_476957	
dense_features_476959
dense_features_476961	)
dense_features_476963:
??
dense_features_476965
dense_features_476967	 
dense_476970:
??
dense_476972:	?"
dense_1_476975:
??
dense_1_476977:	?!
dense_2_476980:	?@
dense_2_476982:@
price_476985:@
price_476987:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????e
dense_features/Cast_2Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCallarea	bathroomsbedroomscarsdense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0methodsuburbtypeyeardense_features_476955dense_features_476957dense_features_476959dense_features_476961dense_features_476963dense_features_476965dense_features_476967*
Tin
2								*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_476303?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_476970dense_476972*
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
A__inference_dense_layer_call_and_return_conditional_losses_476330?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_476975dense_1_476977*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_476347?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_476980dense_2_476982*
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
C__inference_dense_2_layer_call_and_return_conditional_losses_476364?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0price_476985price_476987*
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
A__inference_Price_layer_call_and_return_conditional_losses_476380u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:I E
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
&__inference_dense_layer_call_fn_478245

inputs
unknown:
??
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
A__inference_dense_layer_call_and_return_conditional_losses_476330p
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
;
__inference__creator_478338
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name250*
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
??
?
!__inference__wrapped_model_476040
area	
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	Y
Usequential_dense_features_method_indicator_none_lookup_lookuptablefindv2_table_handleZ
Vsequential_dense_features_method_indicator_none_lookup_lookuptablefindv2_default_value	Y
Usequential_dense_features_suburb_embedding_none_lookup_lookuptablefindv2_table_handleZ
Vsequential_dense_features_suburb_embedding_none_lookup_lookuptablefindv2_default_value	V
Bsequential_dense_features_suburb_embedding_readvariableop_resource:
??W
Ssequential_dense_features_type_indicator_none_lookup_lookuptablefindv2_table_handleX
Tsequential_dense_features_type_indicator_none_lookup_lookuptablefindv2_default_value	C
/sequential_dense_matmul_readvariableop_resource:
???
0sequential_dense_biasadd_readvariableop_resource:	?E
1sequential_dense_1_matmul_readvariableop_resource:
??A
2sequential_dense_1_biasadd_readvariableop_resource:	?D
1sequential_dense_2_matmul_readvariableop_resource:	?@@
2sequential_dense_2_biasadd_readvariableop_resource:@A
/sequential_price_matmul_readvariableop_resource:@>
0sequential_price_biasadd_readvariableop_resource:
identity??'sequential/Price/BiasAdd/ReadVariableOp?&sequential/Price/MatMul/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2?Hsequential/dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2?9sequential/dense_features/Suburb_embedding/ReadVariableOp?Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2m
sequential/dense_features/CastCastdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????o
 sequential/dense_features/Cast_1Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????p
 sequential/dense_features/Cast_2Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:?????????x
-sequential/dense_features/Area/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)sequential/dense_features/Area/ExpandDims
ExpandDimsarea6sequential/dense_features/Area/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#sequential/dense_features/Area/CastCast2sequential/dense_features/Area/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$sequential/dense_features/Area/ShapeShape'sequential/dense_features/Area/Cast:y:0*
T0*
_output_shapes
:|
2sequential/dense_features/Area/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential/dense_features/Area/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential/dense_features/Area/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,sequential/dense_features/Area/strided_sliceStridedSlice-sequential/dense_features/Area/Shape:output:0;sequential/dense_features/Area/strided_slice/stack:output:0=sequential/dense_features/Area/strided_slice/stack_1:output:0=sequential/dense_features/Area/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.sequential/dense_features/Area/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,sequential/dense_features/Area/Reshape/shapePack5sequential/dense_features/Area/strided_slice:output:07sequential/dense_features/Area/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&sequential/dense_features/Area/ReshapeReshape'sequential/dense_features/Area/Cast:y:05sequential/dense_features/Area/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????}
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
:?????????}
2sequential/dense_features/Longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.sequential/dense_features/Longitude/ExpandDims
ExpandDims$sequential/dense_features/Cast_2:y:0;sequential/dense_features/Longitude/ExpandDims/dim:output:0*
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
9sequential/dense_features/Suburb_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential/dense_features/Suburb_embedding/ExpandDims
ExpandDimssuburbBsequential/dense_features/Suburb_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Isequential/dense_features/Suburb_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Csequential/dense_features/Suburb_embedding/to_sparse_input/NotEqualNotEqual>sequential/dense_features/Suburb_embedding/ExpandDims:output:0Rsequential/dense_features/Suburb_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Bsequential/dense_features/Suburb_embedding/to_sparse_input/indicesWhereGsequential/dense_features/Suburb_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Asequential/dense_features/Suburb_embedding/to_sparse_input/valuesGatherNd>sequential/dense_features/Suburb_embedding/ExpandDims:output:0Jsequential/dense_features/Suburb_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Fsequential/dense_features/Suburb_embedding/to_sparse_input/dense_shapeShape>sequential/dense_features/Suburb_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Hsequential/dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Usequential_dense_features_suburb_embedding_none_lookup_lookuptablefindv2_table_handleJsequential/dense_features/Suburb_embedding/to_sparse_input/values:output:0Vsequential_dense_features_suburb_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9sequential/dense_features/Suburb_embedding/ReadVariableOpReadVariableOpBsequential_dense_features_suburb_embedding_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Osequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Nsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Isequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SliceSliceOsequential/dense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Xsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice/begin:output:0Wsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:?
Isequential/dense_features/Suburb_embedding/Suburb_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Hsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/ProdProdRsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice:output:0Rsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ?
Tsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Lsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2GatherV2Osequential/dense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0]sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/indices:output:0Zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: ?
Jsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Cast/xPackQsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Prod:output:0Usequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:?
Qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshapeSparseReshapeJsequential/dense_features/Suburb_embedding/to_sparse_input/indices:index:0Osequential/dense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0Ssequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:?
Zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/IdentityIdentityQsequential/dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Rsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Psequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqualGreaterEqualcsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0[sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:??????????
Isequential/dense_features/Suburb_embedding/Suburb_embedding_weights/WhereWhereTsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:??????????
Qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Ksequential/dense_features/Suburb_embedding/Suburb_embedding_weights/ReshapeReshapeQsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Where:index:0Zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
Ssequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1GatherV2bsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_indices:0Tsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0\sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:??????????
Ssequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Nsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2GatherV2csequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape/Identity:output:0Tsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape:output:0\sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Lsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/IdentityIdentity`sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:?
]sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
ksequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsWsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_1:output:0Wsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/GatherV2_2:output:0Usequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Identity:output:0fsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
osequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
isequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice|sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0xsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
bsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/UniqueUnique{sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:??????????
qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*L
_classB
@>loc:@sequential/dense_features/Suburb_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : ?
lsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Asequential/dense_features/Suburb_embedding/ReadVariableOp:value:0fsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:y:0zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*L
_classB
@>loc:@sequential/dense_features/Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
usequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityusequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
[sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMean~sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0hsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0rsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
Ssequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Msequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1Reshape?sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0\sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:??????????
Isequential/dense_features/Suburb_embedding/Suburb_embedding_weights/ShapeShapedsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:?
Wsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Ysequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Ysequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_sliceStridedSliceRsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Shape:output:0`sequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack:output:0bsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_1:output:0bsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ksequential/dense_features/Suburb_embedding/Suburb_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :?
Isequential/dense_features/Suburb_embedding/Suburb_embedding_weights/stackPackTsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/stack/0:output:0Zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:?
Hsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/TileTileVsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_1:output:0Rsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/stack:output:0*
T0
*(
_output_shapes
:???????????
Nsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikedsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
Csequential/dense_features/Suburb_embedding/Suburb_embedding_weightsSelectQsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Tile:output:0Rsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0dsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
Jsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Cast_1CastOsequential/dense_features/Suburb_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:?
Qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: ?
Psequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:?
Ksequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1SliceNsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Cast_1:y:0Zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/begin:output:0Ysequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:?
Ksequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Shape_1ShapeLsequential/dense_features/Suburb_embedding/Suburb_embedding_weights:output:0*
T0*
_output_shapes
:?
Qsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:?
Psequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Ksequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2SliceTsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Shape_1:output:0Zsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/begin:output:0Ysequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:?
Osequential/dense_features/Suburb_embedding/Suburb_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Jsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/concatConcatV2Tsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_1:output:0Tsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Slice_2:output:0Xsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Msequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2ReshapeLsequential/dense_features/Suburb_embedding/Suburb_embedding_weights:output:0Ssequential/dense_features/Suburb_embedding/Suburb_embedding_weights/concat:output:0*
T0*(
_output_shapes
:???????????
0sequential/dense_features/Suburb_embedding/ShapeShapeVsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:?
>sequential/dense_features/Suburb_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/dense_features/Suburb_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/dense_features/Suburb_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/Suburb_embedding/strided_sliceStridedSlice9sequential/dense_features/Suburb_embedding/Shape:output:0Gsequential/dense_features/Suburb_embedding/strided_slice/stack:output:0Isequential/dense_features/Suburb_embedding/strided_slice/stack_1:output:0Isequential/dense_features/Suburb_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
:sequential/dense_features/Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
8sequential/dense_features/Suburb_embedding/Reshape/shapePackAsequential/dense_features/Suburb_embedding/strided_slice:output:0Csequential/dense_features/Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential/dense_features/Suburb_embedding/ReshapeReshapeVsequential/dense_features/Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0Asequential/dense_features/Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
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
 sequential/dense_features/concatConcatV2/sequential/dense_features/Area/Reshape:output:04sequential/dense_features/Bathrooms/Reshape:output:03sequential/dense_features/Bedrooms/Reshape:output:0/sequential/dense_features/Cars/Reshape:output:03sequential/dense_features/Distance/Reshape:output:03sequential/dense_features/Latitude/Reshape:output:04sequential/dense_features/Longitude/Reshape:output:0;sequential/dense_features/Method_indicator/Reshape:output:0;sequential/dense_features/Suburb_embedding/Reshape:output:09sequential/dense_features/Type_indicator/Reshape:output:0/sequential/dense_features/Year/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
_output_shapes
:
??*
dtype0?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@v
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
&sequential/Price/MatMul/ReadVariableOpReadVariableOp/sequential_price_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential/Price/MatMulMatMul%sequential/dense_2/Relu:activations:0.sequential/Price/MatMul/ReadVariableOp:value:0*
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
:??????????
NoOpNoOp(^sequential/Price/BiasAdd/ReadVariableOp'^sequential/Price/MatMul/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOpI^sequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2I^sequential/dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2:^sequential/dense_features/Suburb_embedding/ReadVariableOpG^sequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2R
'sequential/Price/BiasAdd/ReadVariableOp'sequential/Price/BiasAdd/ReadVariableOp2P
&sequential/Price/MatMul/ReadVariableOp&sequential/Price/MatMul/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2?
Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV2Hsequential/dense_features/Method_indicator/None_Lookup/LookupTableFindV22?
Hsequential/dense_features/Suburb_embedding/None_Lookup/LookupTableFindV2Hsequential/dense_features/Suburb_embedding/None_Lookup/LookupTableFindV22v
9sequential/dense_features/Suburb_embedding/ReadVariableOp9sequential/dense_features/Suburb_embedding/ReadVariableOp2?
Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2Fsequential/dense_features/Type_indicator/None_Lookup/LookupTableFindV2:I E
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
?
?
+__inference_sequential_layer_call_fn_477186
inputs_area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
	unknown_6:
??
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
2								*
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_476861o
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
?)
?
F__inference_sequential_layer_call_and_return_conditional_losses_477043
area	
	bathrooms	
bedrooms	
cars	
distance
latitude
	longitude

method

suburb
type
year	
dense_features_477007
dense_features_477009	
dense_features_477011
dense_features_477013	)
dense_features_477015:
??
dense_features_477017
dense_features_477019	 
dense_477022:
??
dense_477024:	?"
dense_1_477027:
??
dense_1_477029:	?!
dense_2_477032:	?@
dense_2_477034:@
price_477037:@
price_477039:
identity??Price/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?&dense_features/StatefulPartitionedCallb
dense_features/CastCastdistance*

DstT0*

SrcT0*#
_output_shapes
:?????????d
dense_features/Cast_1Castlatitude*

DstT0*

SrcT0*#
_output_shapes
:?????????e
dense_features/Cast_2Cast	longitude*

DstT0*

SrcT0*#
_output_shapes
:??????????
&dense_features/StatefulPartitionedCallStatefulPartitionedCallarea	bathroomsbedroomscarsdense_features/Cast:y:0dense_features/Cast_1:y:0dense_features/Cast_2:y:0methodsuburbtypeyeardense_features_477007dense_features_477009dense_features_477011dense_features_477013dense_features_477015dense_features_477017dense_features_477019*
Tin
2								*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_476735?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_477022dense_477024*
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
A__inference_dense_layer_call_and_return_conditional_losses_476330?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_477027dense_1_477029*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_476347?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_477032dense_2_477034*
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
C__inference_dense_2_layer_call_and_return_conditional_losses_476364?
Price/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0price_477037price_477039*
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
A__inference_Price_layer_call_and_return_conditional_losses_476380u
IdentityIdentity&Price/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Price/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : 2>
Price/StatefulPartitionedCallPrice/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:I E
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
?
?
$__inference_signature_wrapper_477096
area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
	unknown_6:
??
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
2								*
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
!__inference__wrapped_model_476040o
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
?
?
__inference__initializer_4783282
.table_init213_lookuptableimportv2_table_handle*
&table_init213_lookuptableimportv2_keys,
(table_init213_lookuptableimportv2_values	
identity??!table_init213/LookupTableImportV2?
!table_init213/LookupTableImportV2LookupTableImportV2.table_init213_lookuptableimportv2_table_handle&table_init213_lookuptableimportv2_keys(table_init213_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init213/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init213/LookupTableImportV2!table_init213/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_476735
features	

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
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	<
(suburb_embedding_readvariableop_resource:
??=
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
T0	*'
_output_shapes
:?????????l
	Area/CastCastArea/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Area/ShapeShapeArea/Cast:y:0*
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
:u
Area/ReshapeReshapeArea/Cast:y:0Area/Reshape/shape:output:0*
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
_output_shapes
:
??*
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
&$loc:@Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
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
*(
_output_shapes
:???????????
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
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
T0*(
_output_shapes
:???????????
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
shrink_axis_maskc
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
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
?
?
__inference__initializer_4783642
.table_init339_lookuptableimportv2_table_handle*
&table_init339_lookuptableimportv2_keys,
(table_init339_lookuptableimportv2_values	
identity??!table_init339/LookupTableImportV2?
!table_init339/LookupTableImportV2LookupTableImportV2.table_init339_lookuptableimportv2_table_handle&table_init339_lookuptableimportv2_keys(table_init339_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init339/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init339/LookupTableImportV2!table_init339/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?

?
C__inference_dense_2_layer_call_and_return_conditional_losses_476364

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
?
?
/__inference_dense_features_layer_call_fn_477770
features_area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_areafeatures_bathroomsfeatures_bedroomsfeatures_carsfeatures_distancefeatures_latitudefeatures_longitudefeatures_methodfeatures_suburbfeatures_typefeatures_yearunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2								*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_476735p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
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
ל
?
J__inference_dense_features_layer_call_and_return_conditional_losses_478003
features_area	
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
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	<
(suburb_embedding_readvariableop_resource:
??=
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
T0	*'
_output_shapes
:?????????l
	Area/CastCastArea/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Area/ShapeShapeArea/Cast:y:0*
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
:u
Area/ReshapeReshapeArea/Cast:y:0Area/Reshape/shape:output:0*
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
_output_shapes
:
??*
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
&$loc:@Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
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
*(
_output_shapes
:???????????
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
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
T0*(
_output_shapes
:???????????
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
shrink_axis_maskc
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
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
?	
?
A__inference_Price_layer_call_and_return_conditional_losses_476380

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
?
?
+__inference_sequential_layer_call_fn_476939
area	
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
	unknown_3:
??
	unknown_4
	unknown_5	
	unknown_6:
??
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
2								*
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_476861o
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
??
?
"__inference__traced_restore_478667
file_prefixa
Massignvariableop_sequential_dense_features_suburb_embedding_embedding_weights:
??>
*assignvariableop_1_sequential_dense_kernel:
??7
(assignvariableop_2_sequential_dense_bias:	?@
,assignvariableop_3_sequential_dense_1_kernel:
??9
*assignvariableop_4_sequential_dense_1_bias:	??
,assignvariableop_5_sequential_dense_2_kernel:	?@8
*assignvariableop_6_sequential_dense_2_bias:@<
*assignvariableop_7_sequential_price_kernel:@6
(assignvariableop_8_sequential_price_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: k
Wassignvariableop_18_adam_sequential_dense_features_suburb_embedding_embedding_weights_m:
??F
2assignvariableop_19_adam_sequential_dense_kernel_m:
???
0assignvariableop_20_adam_sequential_dense_bias_m:	?H
4assignvariableop_21_adam_sequential_dense_1_kernel_m:
??A
2assignvariableop_22_adam_sequential_dense_1_bias_m:	?G
4assignvariableop_23_adam_sequential_dense_2_kernel_m:	?@@
2assignvariableop_24_adam_sequential_dense_2_bias_m:@D
2assignvariableop_25_adam_sequential_price_kernel_m:@>
0assignvariableop_26_adam_sequential_price_bias_m:k
Wassignvariableop_27_adam_sequential_dense_features_suburb_embedding_embedding_weights_v:
??F
2assignvariableop_28_adam_sequential_dense_kernel_v:
???
0assignvariableop_29_adam_sequential_dense_bias_v:	?H
4assignvariableop_30_adam_sequential_dense_1_kernel_v:
??A
2assignvariableop_31_adam_sequential_dense_1_bias_v:	?G
4assignvariableop_32_adam_sequential_dense_2_kernel_v:	?@@
2assignvariableop_33_adam_sequential_dense_2_bias_v:@D
2assignvariableop_34_adam_sequential_price_kernel_v:@>
0assignvariableop_35_adam_sequential_price_bias_v:
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
AssignVariableOpAssignVariableOpMassignvariableop_sequential_dense_features_suburb_embedding_embedding_weightsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp*assignvariableop_1_sequential_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp(assignvariableop_2_sequential_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp,assignvariableop_3_sequential_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_sequential_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_sequential_dense_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp*assignvariableop_6_sequential_dense_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp*assignvariableop_7_sequential_price_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp(assignvariableop_8_sequential_price_biasIdentity_8:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOpWassignvariableop_18_adam_sequential_dense_features_suburb_embedding_embedding_weights_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_sequential_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_sequential_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_sequential_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp2assignvariableop_22_adam_sequential_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_sequential_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_sequential_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_sequential_price_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_sequential_price_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpWassignvariableop_27_adam_sequential_dense_features_suburb_embedding_embedding_weights_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_sequential_dense_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_sequential_dense_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_sequential_dense_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_sequential_dense_1_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_sequential_dense_2_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_sequential_dense_2_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp2assignvariableop_34_adam_sequential_price_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adam_sequential_price_bias_vIdentity_35:output:0"/device:CPU:0*
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
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_476347

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
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_476303
features	

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
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	<
(suburb_embedding_readvariableop_resource:
??=
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
T0	*'
_output_shapes
:?????????l
	Area/CastCastArea/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Area/ShapeShapeArea/Cast:y:0*
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
:u
Area/ReshapeReshapeArea/Cast:y:0Area/Reshape/shape:output:0*
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
_output_shapes
:
??*
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
&$loc:@Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
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
*(
_output_shapes
:???????????
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
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
T0*(
_output_shapes
:???????????
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
shrink_axis_maskc
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
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
?
?
__inference_<lambda>_4783932
.table_init339_lookuptableimportv2_table_handle*
&table_init339_lookuptableimportv2_keys,
(table_init339_lookuptableimportv2_values	
identity??!table_init339/LookupTableImportV2?
!table_init339/LookupTableImportV2LookupTableImportV2.table_init339_lookuptableimportv2_table_handle&table_init339_lookuptableimportv2_keys(table_init339_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init339/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init339/LookupTableImportV2!table_init339/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?

?
A__inference_dense_layer_call_and_return_conditional_losses_476330

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_layer_call_and_return_conditional_losses_478256

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
;
__inference__creator_478356
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name340*
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
ל
?
J__inference_dense_features_layer_call_and_return_conditional_losses_478236
features_area	
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
<suburb_embedding_none_lookup_lookuptablefindv2_default_value	<
(suburb_embedding_readvariableop_resource:
??=
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
T0	*'
_output_shapes
:?????????l
	Area/CastCastArea/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????G

Area/ShapeShapeArea/Cast:y:0*
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
:u
Area/ReshapeReshapeArea/Cast:y:0Area/Reshape/shape:output:0*
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
_output_shapes
:
??*
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
&$loc:@Suburb_embedding/ReadVariableOp*(
_output_shapes
:???????????
[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[Suburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*(
_output_shapes
:???????????
ASuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparseSparseSegmentMeandSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0NSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/Unique:idx:0XSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*(
_output_shapes
:???????????
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
*(
_output_shapes
:???????????
4Suburb_embedding/Suburb_embedding_weights/zeros_like	ZerosLikeJSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
)Suburb_embedding/Suburb_embedding_weightsSelect7Suburb_embedding/Suburb_embedding_weights/Tile:output:08Suburb_embedding/Suburb_embedding_weights/zeros_like:y:0JSuburb_embedding/Suburb_embedding_weights/embedding_lookup_sparse:output:0*
T0*(
_output_shapes
:???????????
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
T0*(
_output_shapes
:???????????
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
shrink_axis_maskc
 Suburb_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Suburb_embedding/Reshape/shapePack'Suburb_embedding/strided_slice:output:0)Suburb_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Suburb_embedding/ReshapeReshape<Suburb_embedding/Suburb_embedding_weights/Reshape_2:output:0'Suburb_embedding/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????h
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
concatConcatV2Area/Reshape:output:0Bathrooms/Reshape:output:0Bedrooms/Reshape:output:0Cars/Reshape:output:0Distance/Reshape:output:0Latitude/Reshape:output:0Longitude/Reshape:output:0!Method_indicator/Reshape:output:0!Suburb_embedding/Reshape:output:0Type_indicator/Reshape:output:0Year/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
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
serving_default_Area:0	?????????
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
+__inference_sequential_layer_call_fn_476420
+__inference_sequential_layer_call_fn_477141
+__inference_sequential_layer_call_fn_477186
+__inference_sequential_layer_call_fn_476939?
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
F__inference_sequential_layer_call_and_return_conditional_losses_477449
F__inference_sequential_layer_call_and_return_conditional_losses_477712
F__inference_sequential_layer_call_and_return_conditional_losses_476991
F__inference_sequential_layer_call_and_return_conditional_losses_477043?
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
!__inference__wrapped_model_476040Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
/__inference_dense_features_layer_call_fn_477741
/__inference_dense_features_layer_call_fn_477770?
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
J__inference_dense_features_layer_call_and_return_conditional_losses_478003
J__inference_dense_features_layer_call_and_return_conditional_losses_478236?
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
P:N
??2<sequential/dense_features/Suburb_embedding/embedding_weights
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
&__inference_dense_layer_call_fn_478245?
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
A__inference_dense_layer_call_and_return_conditional_losses_478256?
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
+:)
??2sequential/dense/kernel
$:"?2sequential/dense/bias
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
(__inference_dense_1_layer_call_fn_478265?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_478276?
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
-:+
??2sequential/dense_1/kernel
&:$?2sequential/dense_1/bias
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
(__inference_dense_2_layer_call_fn_478285?
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
C__inference_dense_2_layer_call_and_return_conditional_losses_478296?
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
,:*	?@2sequential/dense_2/kernel
%:#@2sequential/dense_2/bias
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
&__inference_Price_layer_call_fn_478305?
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
A__inference_Price_layer_call_and_return_conditional_losses_478315?
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
):'@2sequential/Price/kernel
#:!2sequential/Price/bias
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
+__inference_sequential_layer_call_fn_476420Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
+__inference_sequential_layer_call_fn_477141inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
+__inference_sequential_layer_call_fn_477186inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
+__inference_sequential_layer_call_fn_476939Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
F__inference_sequential_layer_call_and_return_conditional_losses_477449inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
F__inference_sequential_layer_call_and_return_conditional_losses_477712inputs/Areainputs/Bathroomsinputs/Bedroomsinputs/Carsinputs/Distanceinputs/Latitudeinputs/Longitudeinputs/Methodinputs/Suburbinputs/Typeinputs/Year"?
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
F__inference_sequential_layer_call_and_return_conditional_losses_476991Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
F__inference_sequential_layer_call_and_return_conditional_losses_477043Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
$__inference_signature_wrapper_477096Area	BathroomsBedroomsCarsDistanceLatitude	LongitudeMethodSuburbTypeYear"?
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
/__inference_dense_features_layer_call_fn_477741features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
/__inference_dense_features_layer_call_fn_477770features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
J__inference_dense_features_layer_call_and_return_conditional_losses_478003features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
J__inference_dense_features_layer_call_and_return_conditional_losses_478236features/Areafeatures/Bathroomsfeatures/Bedroomsfeatures/Carsfeatures/Distancefeatures/Latitudefeatures/Longitudefeatures/Methodfeatures/Suburbfeatures/Typefeatures/Year"?
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
&__inference_dense_layer_call_fn_478245inputs"?
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
A__inference_dense_layer_call_and_return_conditional_losses_478256inputs"?
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
(__inference_dense_1_layer_call_fn_478265inputs"?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_478276inputs"?
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
(__inference_dense_2_layer_call_fn_478285inputs"?
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
C__inference_dense_2_layer_call_and_return_conditional_losses_478296inputs"?
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
&__inference_Price_layer_call_fn_478305inputs"?
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
A__inference_Price_layer_call_and_return_conditional_losses_478315inputs"?
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
__inference__creator_478320?
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
__inference__initializer_478328?
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
__inference__destroyer_478333?
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
__inference__creator_478338?
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
__inference__initializer_478346?
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
__inference__destroyer_478351?
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
__inference__creator_478356?
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
__inference__initializer_478364?
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
__inference__destroyer_478369?
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
__inference__creator_478320"?
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
__inference__initializer_478328"?
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
__inference__destroyer_478333"?
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
__inference__creator_478338"?
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
__inference__initializer_478346"?
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
__inference__destroyer_478351"?
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
__inference__creator_478356"?
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
__inference__initializer_478364"?
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
__inference__destroyer_478369"?
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
U:S
??2CAdam/sequential/dense_features/Suburb_embedding/embedding_weights/m
0:.
??2Adam/sequential/dense/kernel/m
):'?2Adam/sequential/dense/bias/m
2:0
??2 Adam/sequential/dense_1/kernel/m
+:)?2Adam/sequential/dense_1/bias/m
1:/	?@2 Adam/sequential/dense_2/kernel/m
*:(@2Adam/sequential/dense_2/bias/m
.:,@2Adam/sequential/Price/kernel/m
(:&2Adam/sequential/Price/bias/m
U:S
??2CAdam/sequential/dense_features/Suburb_embedding/embedding_weights/v
0:.
??2Adam/sequential/dense/kernel/v
):'?2Adam/sequential/dense/bias/v
2:0
??2 Adam/sequential/dense_1/kernel/v
+:)?2Adam/sequential/dense_1/bias/v
1:/	?@2 Adam/sequential/dense_2/kernel/v
*:(@2Adam/sequential/dense_2/bias/v
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
A__inference_Price_layer_call_and_return_conditional_losses_478315\78/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? y
&__inference_Price_layer_call_fn_478305O78/?,
%?"
 ?
inputs?????????@
? "??????????7
__inference__creator_478320?

? 
? "? 7
__inference__creator_478338?

? 
? "? 7
__inference__creator_478356?

? 
? "? 9
__inference__destroyer_478333?

? 
? "? 9
__inference__destroyer_478351?

? 
? "? 9
__inference__destroyer_478369?

? 
? "? B
__inference__initializer_478328v???

? 
? "? B
__inference__initializer_478346w???

? 
? "? B
__inference__initializer_478364x???

? 
? "? ?
!__inference__wrapped_model_476040?v?w?x? '(/078???
???
???
"
Area?
Area?????????	
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
C__inference_dense_1_layer_call_and_return_conditional_losses_478276^'(0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_1_layer_call_fn_478265Q'(0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_2_layer_call_and_return_conditional_losses_478296]/00?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_2_layer_call_fn_478285P/00?-
&?#
!?
inputs??????????
? "??????????@?
J__inference_dense_features_layer_call_and_return_conditional_losses_478003?
v?w?x????
???
???
+
Area#? 
features/Area?????????	
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
? "&?#
?
0??????????
? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_478236?
v?w?x????
???
???
+
Area#? 
features/Area?????????	
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
? "&?#
?
0??????????
? ?
/__inference_dense_features_layer_call_fn_477741?
v?w?x????
???
???
+
Area#? 
features/Area?????????	
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
? "????????????
/__inference_dense_features_layer_call_fn_477770?
v?w?x????
???
???
+
Area#? 
features/Area?????????	
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
? "????????????
A__inference_dense_layer_call_and_return_conditional_losses_478256^ 0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_layer_call_fn_478245Q 0?-
&?#
!?
inputs??????????
? "????????????
F__inference_sequential_layer_call_and_return_conditional_losses_476991?v?w?x? '(/078???
???
???
"
Area?
Area?????????	
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
F__inference_sequential_layer_call_and_return_conditional_losses_477043?v?w?x? '(/078???
???
???
"
Area?
Area?????????	
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
F__inference_sequential_layer_call_and_return_conditional_losses_477449?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????	
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
F__inference_sequential_layer_call_and_return_conditional_losses_477712?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????	
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
+__inference_sequential_layer_call_fn_476420?v?w?x? '(/078???
???
???
"
Area?
Area?????????	
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
+__inference_sequential_layer_call_fn_476939?v?w?x? '(/078???
???
???
"
Area?
Area?????????	
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
+__inference_sequential_layer_call_fn_477141?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????	
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
+__inference_sequential_layer_call_fn_477186?v?w?x? '(/078???
???
???
)
Area!?
inputs/Area?????????	
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
$__inference_signature_wrapper_477096?v?w?x? '(/078???
? 
???
"
Area?
Area?????????	
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