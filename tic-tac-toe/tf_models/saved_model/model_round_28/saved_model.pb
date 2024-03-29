��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
dtypetype�
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
count_2VarHandleOp*
_output_shapes
: *

debug_name
count_2/*
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
|
total_2VarHandleOp*
_output_shapes
: *

debug_name
total_2/*
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
�
Adam/v/value/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/v/value/bias/*
dtype0*
shape:*"
shared_nameAdam/v/value/bias
s
%Adam/v/value/bias/Read/ReadVariableOpReadVariableOpAdam/v/value/bias*
_output_shapes
:*
dtype0
�
Adam/m/value/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/m/value/bias/*
dtype0*
shape:*"
shared_nameAdam/m/value/bias
s
%Adam/m/value/bias/Read/ReadVariableOpReadVariableOpAdam/m/value/bias*
_output_shapes
:*
dtype0
�
Adam/v/value/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/value/kernel/*
dtype0*
shape:	�*$
shared_nameAdam/v/value/kernel
|
'Adam/v/value/kernel/Read/ReadVariableOpReadVariableOpAdam/v/value/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/value/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/value/kernel/*
dtype0*
shape:	�*$
shared_nameAdam/m/value/kernel
|
'Adam/m/value/kernel/Read/ReadVariableOpReadVariableOpAdam/m/value/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/policy/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/policy/bias/*
dtype0*
shape:	*#
shared_nameAdam/v/policy/bias
u
&Adam/v/policy/bias/Read/ReadVariableOpReadVariableOpAdam/v/policy/bias*
_output_shapes
:	*
dtype0
�
Adam/m/policy/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/policy/bias/*
dtype0*
shape:	*#
shared_nameAdam/m/policy/bias
u
&Adam/m/policy/bias/Read/ReadVariableOpReadVariableOpAdam/m/policy/bias*
_output_shapes
:	*
dtype0
�
Adam/v/policy/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/policy/kernel/*
dtype0*
shape:	�	*%
shared_nameAdam/v/policy/kernel
~
(Adam/v/policy/kernel/Read/ReadVariableOpReadVariableOpAdam/v/policy/kernel*
_output_shapes
:	�	*
dtype0
�
Adam/m/policy/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/policy/kernel/*
dtype0*
shape:	�	*%
shared_nameAdam/m/policy/kernel
~
(Adam/m/policy/kernel/Read/ReadVariableOpReadVariableOpAdam/m/policy/kernel*
_output_shapes
:	�	*
dtype0
�
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_3/bias/*
dtype0*
shape:�*$
shared_nameAdam/v/dense_3/bias
x
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_3/bias/*
dtype0*
shape:�*$
shared_nameAdam/m/dense_3/bias
x
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_3/kernel/*
dtype0*
shape:
��*&
shared_nameAdam/v/dense_3/kernel
�
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_3/kernel/*
dtype0*
shape:
��*&
shared_nameAdam/m/dense_3/kernel
�
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel* 
_output_shapes
:
��*
dtype0
�
"Adam/v/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_14/beta/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_14/beta
�
6Adam/v/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_14/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_14/beta/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_14/beta
�
6Adam/m/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_14/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_14/gamma/*
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_14/gamma
�
7Adam/v/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_14/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_14/gamma/*
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_14/gamma
�
7Adam/m/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_14/gamma*
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_15/beta/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_15/beta
�
6Adam/v/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_15/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_15/beta/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_15/beta
�
6Adam/m/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_15/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_15/gamma/*
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_15/gamma
�
7Adam/v/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_15/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_15/gamma/*
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_15/gamma
�
7Adam/m/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_15/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv1d_6/bias/*
dtype0*
shape:*%
shared_nameAdam/v/conv1d_6/bias
y
(Adam/v/conv1d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_6/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv1d_6/bias/*
dtype0*
shape:*%
shared_nameAdam/m/conv1d_6/bias
y
(Adam/m/conv1d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_6/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv1d_6/kernel/*
dtype0*
shape:*'
shared_nameAdam/v/conv1d_6/kernel
�
*Adam/v/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_6/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv1d_6/kernel/*
dtype0*
shape:*'
shared_nameAdam/m/conv1d_6/kernel
�
*Adam/m/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_6/kernel*"
_output_shapes
:*
dtype0
�
Adam/v/conv1d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv1d_7/bias/*
dtype0*
shape:*%
shared_nameAdam/v/conv1d_7/bias
y
(Adam/v/conv1d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_7/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv1d_7/bias/*
dtype0*
shape:*%
shared_nameAdam/m/conv1d_7/bias
y
(Adam/m/conv1d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_7/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv1d_7/kernel/*
dtype0*
shape:*'
shared_nameAdam/v/conv1d_7/kernel
�
*Adam/v/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_7/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv1d_7/kernel/*
dtype0*
shape:*'
shared_nameAdam/m/conv1d_7/kernel
�
*Adam/m/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_7/kernel*"
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_13/beta/*
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_13/beta
�
6Adam/v/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_13/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_13/beta/*
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_13/beta
�
6Adam/m/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_13/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_13/gamma/*
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_13/gamma
�
7Adam/v/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_13/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_13/gamma/*
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_13/gamma
�
7Adam/m/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_13/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_7/bias/*
dtype0*
shape:�*%
shared_nameAdam/v/conv2d_7/bias
z
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_7/bias/*
dtype0*
shape:�*%
shared_nameAdam/m/conv2d_7/bias
z
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_7/kernel/*
dtype0*
shape:��*'
shared_nameAdam/v/conv2d_7/kernel
�
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_7/kernel/*
dtype0*
shape:��*'
shared_nameAdam/m/conv2d_7/kernel
�
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*(
_output_shapes
:��*
dtype0
�
"Adam/v/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_12/beta/*
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_12/beta
�
6Adam/v/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_12/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_12/beta/*
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_12/beta
�
6Adam/m/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_12/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_12/gamma/*
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_12/gamma
�
7Adam/v/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_12/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_12/gamma/*
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_12/gamma
�
7Adam/m/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_12/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_6/bias/*
dtype0*
shape:�*%
shared_nameAdam/v/conv2d_6/bias
z
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_6/bias/*
dtype0*
shape:�*%
shared_nameAdam/m/conv2d_6/bias
z
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_6/kernel/*
dtype0*
shape:�*'
shared_nameAdam/v/conv2d_6/kernel
�
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*'
_output_shapes
:�*
dtype0
�
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_6/kernel/*
dtype0*
shape:�*'
shared_nameAdam/m/conv2d_6/kernel
�
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*'
_output_shapes
:�*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�

value/biasVarHandleOp*
_output_shapes
: *

debug_namevalue/bias/*
dtype0*
shape:*
shared_name
value/bias
e
value/bias/Read/ReadVariableOpReadVariableOp
value/bias*
_output_shapes
:*
dtype0
�
value/kernelVarHandleOp*
_output_shapes
: *

debug_namevalue/kernel/*
dtype0*
shape:	�*
shared_namevalue/kernel
n
 value/kernel/Read/ReadVariableOpReadVariableOpvalue/kernel*
_output_shapes
:	�*
dtype0
�
policy/biasVarHandleOp*
_output_shapes
: *

debug_namepolicy/bias/*
dtype0*
shape:	*
shared_namepolicy/bias
g
policy/bias/Read/ReadVariableOpReadVariableOppolicy/bias*
_output_shapes
:	*
dtype0
�
policy/kernelVarHandleOp*
_output_shapes
: *

debug_namepolicy/kernel/*
dtype0*
shape:	�	*
shared_namepolicy/kernel
p
!policy/kernel/Read/ReadVariableOpReadVariableOppolicy/kernel*
_output_shapes
:	�	*
dtype0
�
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:�*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:�*
dtype0
�
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape:
��*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_14/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_14/moving_variance
�
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_14/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_14/moving_mean
�
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_14/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_14/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_14/beta
�
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
:*
dtype0
�
batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_14/gamma/*
dtype0*
shape:*-
shared_namebatch_normalization_14/gamma
�
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
:*
dtype0
�
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_15/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_15/moving_variance
�
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_15/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_15/moving_mean
�
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_15/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_15/beta
�
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
:*
dtype0
�
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_15/gamma/*
dtype0*
shape:*-
shared_namebatch_normalization_15/gamma
�
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
:*
dtype0
�
conv1d_6/biasVarHandleOp*
_output_shapes
: *

debug_nameconv1d_6/bias/*
dtype0*
shape:*
shared_nameconv1d_6/bias
k
!conv1d_6/bias/Read/ReadVariableOpReadVariableOpconv1d_6/bias*
_output_shapes
:*
dtype0
�
conv1d_6/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv1d_6/kernel/*
dtype0*
shape:* 
shared_nameconv1d_6/kernel
w
#conv1d_6/kernel/Read/ReadVariableOpReadVariableOpconv1d_6/kernel*"
_output_shapes
:*
dtype0
�
conv1d_7/biasVarHandleOp*
_output_shapes
: *

debug_nameconv1d_7/bias/*
dtype0*
shape:*
shared_nameconv1d_7/bias
k
!conv1d_7/bias/Read/ReadVariableOpReadVariableOpconv1d_7/bias*
_output_shapes
:*
dtype0
�
conv1d_7/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv1d_7/kernel/*
dtype0*
shape:* 
shared_nameconv1d_7/kernel
w
#conv1d_7/kernel/Read/ReadVariableOpReadVariableOpconv1d_7/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_13/moving_variance/*
dtype0*
shape:�*7
shared_name(&batch_normalization_13/moving_variance
�
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_13/moving_mean/*
dtype0*
shape:�*3
shared_name$"batch_normalization_13/moving_mean
�
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_13/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_13/beta/*
dtype0*
shape:�*,
shared_namebatch_normalization_13/beta
�
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_13/gamma/*
dtype0*
shape:�*-
shared_namebatch_normalization_13/gamma
�
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes	
:�*
dtype0
�
conv2d_7/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_7/bias/*
dtype0*
shape:�*
shared_nameconv2d_7/bias
l
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes	
:�*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_7/kernel/*
dtype0*
shape:��* 
shared_nameconv2d_7/kernel
}
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*(
_output_shapes
:��*
dtype0
�
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_12/moving_variance/*
dtype0*
shape:�*7
shared_name(&batch_normalization_12/moving_variance
�
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_12/moving_mean/*
dtype0*
shape:�*3
shared_name$"batch_normalization_12/moving_mean
�
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_12/beta/*
dtype0*
shape:�*,
shared_namebatch_normalization_12/beta
�
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_12/gamma/*
dtype0*
shape:�*-
shared_namebatch_normalization_12/gamma
�
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes	
:�*
dtype0
�
conv2d_6/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_6/bias/*
dtype0*
shape:�*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:�*
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_6/kernel/*
dtype0*
shape:�* 
shared_nameconv2d_6/kernel
|
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*'
_output_shapes
:�*
dtype0
z
serving_default_input_4Placeholder*'
_output_shapes
:���������	*
dtype0*
shape:���������	
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4conv2d_6/kernelconv2d_6/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv1d_7/kernelconv1d_7/bias&batch_normalization_15/moving_variancebatch_normalization_15/gamma"batch_normalization_15/moving_meanbatch_normalization_15/betaconv1d_6/kernelconv1d_6/bias&batch_normalization_14/moving_variancebatch_normalization_14/gamma"batch_normalization_14/moving_meanbatch_normalization_14/betadense_3/kerneldense_3/biasvalue/kernel
value/biaspolicy/kernelpolicy/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������	:���������*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_846208

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ĵ
value��B�� B��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
layer_with_weights-5
layer-18
layer_with_weights-6
layer-19
layer_with_weights-7
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-8
layer-25
layer_with_weights-9
layer-26
layer_with_weights-10
layer-27
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_default_save_signature
$	optimizer
%loss
&
signatures*
* 

'	keras_api* 

(	keras_api* 

)	keras_api* 

*	keras_api* 

+	keras_api* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op*
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;axis
	<gamma
=beta
>moving_mean
?moving_variance*
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance*
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 

f	keras_api* 
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 

m	keras_api* 

n	keras_api* 
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
20
31
<2
=3
>4
?5
L6
M7
V8
W9
X10
Y11
u12
v13
~14
15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
�
20
31
<2
=3
L4
M5
V6
W7
u8
v9
~10
11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
:
�0
�1
�2
�3
�4
�5
�6* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
#_default_save_signature
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*
* 

�serving_default* 
* 
* 
* 
* 
* 

20
31*

20
31*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
<0
=1
>2
?3*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

L0
M1*

L0
M1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
V0
W1
X2
Y3*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 

u0
v1*

u0
v1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv1d_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

~0
1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv1d_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEpolicy/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEpolicy/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEvalue/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
value/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
@
>0
?1
X2
Y3
�4
�5
�6
�7*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27*

�0
�1
�2*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

>0
?1*
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


�0* 
* 
* 
* 

X0
Y1*
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
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
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


�0* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 


�0* 
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
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
a[
VARIABLE_VALUEAdam/m/conv2d_6/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_6/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_6/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_6/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_12/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_12/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_12/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_12/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_7/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_7/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_7/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_7/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_13/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_13/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_13/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_13/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv1d_7/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv1d_7/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv1d_7/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv1d_7/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv1d_6/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv1d_6/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv1d_6/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv1d_6/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_15/gamma2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_15/gamma2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_15/beta2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_15/beta2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_14/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_14/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_14/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_14/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/policy/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/policy/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/policy/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/policy/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/value/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/value/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/value/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/value/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv1d_7/kernelconv1d_7/biasconv1d_6/kernelconv1d_6/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancebatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_variancedense_3/kerneldense_3/biaspolicy/kernelpolicy/biasvalue/kernel
value/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv1d_7/kernelAdam/v/conv1d_7/kernelAdam/m/conv1d_7/biasAdam/v/conv1d_7/biasAdam/m/conv1d_6/kernelAdam/v/conv1d_6/kernelAdam/m/conv1d_6/biasAdam/v/conv1d_6/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/beta#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/policy/kernelAdam/v/policy/kernelAdam/m/policy/biasAdam/v/policy/biasAdam/m/value/kernelAdam/v/value/kernelAdam/m/value/biasAdam/v/value/biastotal_2count_2total_1count_1totalcountConst*_
TinX
V2T*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_847349
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv1d_7/kernelconv1d_7/biasconv1d_6/kernelconv1d_6/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancebatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_variancedense_3/kerneldense_3/biaspolicy/kernelpolicy/biasvalue/kernel
value/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv1d_7/kernelAdam/v/conv1d_7/kernelAdam/m/conv1d_7/biasAdam/v/conv1d_7/biasAdam/m/conv1d_6/kernelAdam/v/conv1d_6/kernelAdam/m/conv1d_6/biasAdam/v/conv1d_6/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/beta#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/policy/kernelAdam/v/policy/kernelAdam/m/policy/biasAdam/v/policy/biasAdam/m/value/kernelAdam/v/value/kernelAdam/m/value/biasAdam/v/value/biastotal_2count_2total_1count_1totalcount*^
TinW
U2S*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_847604��
�
E
)__inference_re_lu_11_layer_call_fn_846669

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_11_layer_call_and_return_conditional_losses_845621e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846664

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
D
(__inference_re_lu_9_layer_call_fn_846326

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_9_layer_call_and_return_conditional_losses_845500i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_value_layer_call_and_return_conditional_losses_845686

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.value/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:����������
.value/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
value/kernel/Regularizer/L2LossL2Loss6value/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0(value/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^value/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.value/kernel/Regularizer/L2Loss/ReadVariableOp.value/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_value_layer_call_fn_846763

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_value_layer_call_and_return_conditional_losses_845686o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846759:&"
 
_user_specified_name846757:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�M
__inference__traced_save_847349
file_prefixA
&read_disablecopyonread_conv2d_6_kernel:�5
&read_1_disablecopyonread_conv2d_6_bias:	�D
5read_2_disablecopyonread_batch_normalization_12_gamma:	�C
4read_3_disablecopyonread_batch_normalization_12_beta:	�J
;read_4_disablecopyonread_batch_normalization_12_moving_mean:	�N
?read_5_disablecopyonread_batch_normalization_12_moving_variance:	�D
(read_6_disablecopyonread_conv2d_7_kernel:��5
&read_7_disablecopyonread_conv2d_7_bias:	�D
5read_8_disablecopyonread_batch_normalization_13_gamma:	�C
4read_9_disablecopyonread_batch_normalization_13_beta:	�K
<read_10_disablecopyonread_batch_normalization_13_moving_mean:	�O
@read_11_disablecopyonread_batch_normalization_13_moving_variance:	�?
)read_12_disablecopyonread_conv1d_7_kernel:5
'read_13_disablecopyonread_conv1d_7_bias:?
)read_14_disablecopyonread_conv1d_6_kernel:5
'read_15_disablecopyonread_conv1d_6_bias:D
6read_16_disablecopyonread_batch_normalization_15_gamma:C
5read_17_disablecopyonread_batch_normalization_15_beta:J
<read_18_disablecopyonread_batch_normalization_15_moving_mean:N
@read_19_disablecopyonread_batch_normalization_15_moving_variance:D
6read_20_disablecopyonread_batch_normalization_14_gamma:C
5read_21_disablecopyonread_batch_normalization_14_beta:J
<read_22_disablecopyonread_batch_normalization_14_moving_mean:N
@read_23_disablecopyonread_batch_normalization_14_moving_variance:<
(read_24_disablecopyonread_dense_3_kernel:
��5
&read_25_disablecopyonread_dense_3_bias:	�:
'read_26_disablecopyonread_policy_kernel:	�	3
%read_27_disablecopyonread_policy_bias:	9
&read_28_disablecopyonread_value_kernel:	�2
$read_29_disablecopyonread_value_bias:-
#read_30_disablecopyonread_iteration:	 1
'read_31_disablecopyonread_learning_rate: K
0read_32_disablecopyonread_adam_m_conv2d_6_kernel:�K
0read_33_disablecopyonread_adam_v_conv2d_6_kernel:�=
.read_34_disablecopyonread_adam_m_conv2d_6_bias:	�=
.read_35_disablecopyonread_adam_v_conv2d_6_bias:	�L
=read_36_disablecopyonread_adam_m_batch_normalization_12_gamma:	�L
=read_37_disablecopyonread_adam_v_batch_normalization_12_gamma:	�K
<read_38_disablecopyonread_adam_m_batch_normalization_12_beta:	�K
<read_39_disablecopyonread_adam_v_batch_normalization_12_beta:	�L
0read_40_disablecopyonread_adam_m_conv2d_7_kernel:��L
0read_41_disablecopyonread_adam_v_conv2d_7_kernel:��=
.read_42_disablecopyonread_adam_m_conv2d_7_bias:	�=
.read_43_disablecopyonread_adam_v_conv2d_7_bias:	�L
=read_44_disablecopyonread_adam_m_batch_normalization_13_gamma:	�L
=read_45_disablecopyonread_adam_v_batch_normalization_13_gamma:	�K
<read_46_disablecopyonread_adam_m_batch_normalization_13_beta:	�K
<read_47_disablecopyonread_adam_v_batch_normalization_13_beta:	�F
0read_48_disablecopyonread_adam_m_conv1d_7_kernel:F
0read_49_disablecopyonread_adam_v_conv1d_7_kernel:<
.read_50_disablecopyonread_adam_m_conv1d_7_bias:<
.read_51_disablecopyonread_adam_v_conv1d_7_bias:F
0read_52_disablecopyonread_adam_m_conv1d_6_kernel:F
0read_53_disablecopyonread_adam_v_conv1d_6_kernel:<
.read_54_disablecopyonread_adam_m_conv1d_6_bias:<
.read_55_disablecopyonread_adam_v_conv1d_6_bias:K
=read_56_disablecopyonread_adam_m_batch_normalization_15_gamma:K
=read_57_disablecopyonread_adam_v_batch_normalization_15_gamma:J
<read_58_disablecopyonread_adam_m_batch_normalization_15_beta:J
<read_59_disablecopyonread_adam_v_batch_normalization_15_beta:K
=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma:K
=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma:J
<read_62_disablecopyonread_adam_m_batch_normalization_14_beta:J
<read_63_disablecopyonread_adam_v_batch_normalization_14_beta:C
/read_64_disablecopyonread_adam_m_dense_3_kernel:
��C
/read_65_disablecopyonread_adam_v_dense_3_kernel:
��<
-read_66_disablecopyonread_adam_m_dense_3_bias:	�<
-read_67_disablecopyonread_adam_v_dense_3_bias:	�A
.read_68_disablecopyonread_adam_m_policy_kernel:	�	A
.read_69_disablecopyonread_adam_v_policy_kernel:	�	:
,read_70_disablecopyonread_adam_m_policy_bias:	:
,read_71_disablecopyonread_adam_v_policy_bias:	@
-read_72_disablecopyonread_adam_m_value_kernel:	�@
-read_73_disablecopyonread_adam_v_value_kernel:	�9
+read_74_disablecopyonread_adam_m_value_bias:9
+read_75_disablecopyonread_adam_v_value_bias:+
!read_76_disablecopyonread_total_2: +
!read_77_disablecopyonread_count_2: +
!read_78_disablecopyonread_total_1: +
!read_79_disablecopyonread_count_1: )
read_80_disablecopyonread_total: )
read_81_disablecopyonread_count: 
savev2_const
identity_165��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_6_kernel^Read/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0r
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�j

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*'
_output_shapes
:�z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_6_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_12_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_12_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_12_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_12_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_12_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_12_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_7_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0x
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*(
_output_shapes
:��z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_7_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_13_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_13_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_13_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_13_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_13_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_13_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv1d_7_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*"
_output_shapes
:|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv1d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv1d_7_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_conv1d_6_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*"
_output_shapes
:|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_conv1d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_conv1d_6_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead6read_16_disablecopyonread_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp6read_16_disablecopyonread_batch_normalization_15_gamma^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead5read_17_disablecopyonread_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp5read_17_disablecopyonread_batch_normalization_15_beta^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead<read_18_disablecopyonread_batch_normalization_15_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp<read_18_disablecopyonread_batch_normalization_15_moving_mean^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead@read_19_disablecopyonread_batch_normalization_15_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp@read_19_disablecopyonread_batch_normalization_15_moving_variance^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_14_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_14_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_14_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_14_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_14_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_14_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_24/DisableCopyOnReadDisableCopyOnRead(read_24_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp(read_24_disablecopyonread_dense_3_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��{
Read_25/DisableCopyOnReadDisableCopyOnRead&read_25_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp&read_25_disablecopyonread_dense_3_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_26/DisableCopyOnReadDisableCopyOnRead'read_26_disablecopyonread_policy_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp'read_26_disablecopyonread_policy_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�	*
dtype0p
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�	f
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:	�	z
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_policy_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_policy_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	{
Read_28/DisableCopyOnReadDisableCopyOnRead&read_28_disablecopyonread_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp&read_28_disablecopyonread_value_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	�y
Read_29/DisableCopyOnReadDisableCopyOnRead$read_29_disablecopyonread_value_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp$read_29_disablecopyonread_value_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_30/DisableCopyOnReadDisableCopyOnRead#read_30_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp#read_30_disablecopyonread_iteration^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_learning_rate^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_32/DisableCopyOnReadDisableCopyOnRead0read_32_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp0read_32_disablecopyonread_adam_m_conv2d_6_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_33/DisableCopyOnReadDisableCopyOnRead0read_33_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp0read_33_disablecopyonread_adam_v_conv2d_6_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_34/DisableCopyOnReadDisableCopyOnRead.read_34_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp.read_34_disablecopyonread_adam_m_conv2d_6_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_35/DisableCopyOnReadDisableCopyOnRead.read_35_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp.read_35_disablecopyonread_adam_v_conv2d_6_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_36/DisableCopyOnReadDisableCopyOnRead=read_36_disablecopyonread_adam_m_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp=read_36_disablecopyonread_adam_m_batch_normalization_12_gamma^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_37/DisableCopyOnReadDisableCopyOnRead=read_37_disablecopyonread_adam_v_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp=read_37_disablecopyonread_adam_v_batch_normalization_12_gamma^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_38/DisableCopyOnReadDisableCopyOnRead<read_38_disablecopyonread_adam_m_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp<read_38_disablecopyonread_adam_m_batch_normalization_12_beta^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_39/DisableCopyOnReadDisableCopyOnRead<read_39_disablecopyonread_adam_v_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp<read_39_disablecopyonread_adam_v_batch_normalization_12_beta^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_40/DisableCopyOnReadDisableCopyOnRead0read_40_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp0read_40_disablecopyonread_adam_m_conv2d_7_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_41/DisableCopyOnReadDisableCopyOnRead0read_41_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp0read_41_disablecopyonread_adam_v_conv2d_7_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_adam_m_conv2d_7_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_v_conv2d_7_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_44/DisableCopyOnReadDisableCopyOnRead=read_44_disablecopyonread_adam_m_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp=read_44_disablecopyonread_adam_m_batch_normalization_13_gamma^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_45/DisableCopyOnReadDisableCopyOnRead=read_45_disablecopyonread_adam_v_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp=read_45_disablecopyonread_adam_v_batch_normalization_13_gamma^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_46/DisableCopyOnReadDisableCopyOnRead<read_46_disablecopyonread_adam_m_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp<read_46_disablecopyonread_adam_m_batch_normalization_13_beta^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_47/DisableCopyOnReadDisableCopyOnRead<read_47_disablecopyonread_adam_v_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp<read_47_disablecopyonread_adam_v_batch_normalization_13_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_48/DisableCopyOnReadDisableCopyOnRead0read_48_disablecopyonread_adam_m_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp0read_48_disablecopyonread_adam_m_conv1d_7_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead0read_49_disablecopyonread_adam_v_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp0read_49_disablecopyonread_adam_v_conv1d_7_kernel^Read_49/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead.read_50_disablecopyonread_adam_m_conv1d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp.read_50_disablecopyonread_adam_m_conv1d_7_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead.read_51_disablecopyonread_adam_v_conv1d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp.read_51_disablecopyonread_adam_v_conv1d_7_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_52/DisableCopyOnReadDisableCopyOnRead0read_52_disablecopyonread_adam_m_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp0read_52_disablecopyonread_adam_m_conv1d_6_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead0read_53_disablecopyonread_adam_v_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp0read_53_disablecopyonread_adam_v_conv1d_6_kernel^Read_53/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_54/DisableCopyOnReadDisableCopyOnRead.read_54_disablecopyonread_adam_m_conv1d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp.read_54_disablecopyonread_adam_m_conv1d_6_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead.read_55_disablecopyonread_adam_v_conv1d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp.read_55_disablecopyonread_adam_v_conv1d_6_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead=read_56_disablecopyonread_adam_m_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp=read_56_disablecopyonread_adam_m_batch_normalization_15_gamma^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead=read_57_disablecopyonread_adam_v_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp=read_57_disablecopyonread_adam_v_batch_normalization_15_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_58/DisableCopyOnReadDisableCopyOnRead<read_58_disablecopyonread_adam_m_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp<read_58_disablecopyonread_adam_m_batch_normalization_15_beta^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead<read_59_disablecopyonread_adam_v_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp<read_59_disablecopyonread_adam_v_batch_normalization_15_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead<read_62_disablecopyonread_adam_m_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp<read_62_disablecopyonread_adam_m_batch_normalization_14_beta^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_63/DisableCopyOnReadDisableCopyOnRead<read_63_disablecopyonread_adam_v_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp<read_63_disablecopyonread_adam_v_batch_normalization_14_beta^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_64/DisableCopyOnReadDisableCopyOnRead/read_64_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp/read_64_disablecopyonread_adam_m_dense_3_kernel^Read_64/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_65/DisableCopyOnReadDisableCopyOnRead/read_65_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp/read_65_disablecopyonread_adam_v_dense_3_kernel^Read_65/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_66/DisableCopyOnReadDisableCopyOnRead-read_66_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp-read_66_disablecopyonread_adam_m_dense_3_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_67/DisableCopyOnReadDisableCopyOnRead-read_67_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp-read_67_disablecopyonread_adam_v_dense_3_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_68/DisableCopyOnReadDisableCopyOnRead.read_68_disablecopyonread_adam_m_policy_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp.read_68_disablecopyonread_adam_m_policy_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�	*
dtype0q
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�	h
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:	�	�
Read_69/DisableCopyOnReadDisableCopyOnRead.read_69_disablecopyonread_adam_v_policy_kernel"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp.read_69_disablecopyonread_adam_v_policy_kernel^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�	*
dtype0q
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�	h
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:	�	�
Read_70/DisableCopyOnReadDisableCopyOnRead,read_70_disablecopyonread_adam_m_policy_bias"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp,read_70_disablecopyonread_adam_m_policy_bias^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
Read_71/DisableCopyOnReadDisableCopyOnRead,read_71_disablecopyonread_adam_v_policy_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp,read_71_disablecopyonread_adam_v_policy_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
Read_72/DisableCopyOnReadDisableCopyOnRead-read_72_disablecopyonread_adam_m_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp-read_72_disablecopyonread_adam_m_value_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_73/DisableCopyOnReadDisableCopyOnRead-read_73_disablecopyonread_adam_v_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp-read_73_disablecopyonread_adam_v_value_kernel^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_74/DisableCopyOnReadDisableCopyOnRead+read_74_disablecopyonread_adam_m_value_bias"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp+read_74_disablecopyonread_adam_m_value_bias^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_75/DisableCopyOnReadDisableCopyOnRead+read_75_disablecopyonread_adam_v_value_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp+read_75_disablecopyonread_adam_v_value_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_76/DisableCopyOnReadDisableCopyOnRead!read_76_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp!read_76_disablecopyonread_total_2^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_77/DisableCopyOnReadDisableCopyOnRead!read_77_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp!read_77_disablecopyonread_count_2^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_78/DisableCopyOnReadDisableCopyOnRead!read_78_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp!read_78_disablecopyonread_total_1^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_79/DisableCopyOnReadDisableCopyOnRead!read_79_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp!read_79_disablecopyonread_count_1^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_80/DisableCopyOnReadDisableCopyOnReadread_80_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOpread_80_disablecopyonread_total^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_81/DisableCopyOnReadDisableCopyOnReadread_81_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOpread_81_disablecopyonread_count^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
: �#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*�"
value�"B�"SB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*�
value�B�SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *a
dtypesW
U2S	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_164Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_165IdentityIdentity_164:output:0^NoOp*
T0*
_output_shapes
: �"
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_165Identity_165:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=S9

_output_shapes
: 

_user_specified_nameConst:%R!

_user_specified_namecount:%Q!

_user_specified_nametotal:'P#
!
_user_specified_name	count_1:'O#
!
_user_specified_name	total_1:'N#
!
_user_specified_name	count_2:'M#
!
_user_specified_name	total_2:1L-
+
_user_specified_nameAdam/v/value/bias:1K-
+
_user_specified_nameAdam/m/value/bias:3J/
-
_user_specified_nameAdam/v/value/kernel:3I/
-
_user_specified_nameAdam/m/value/kernel:2H.
,
_user_specified_nameAdam/v/policy/bias:2G.
,
_user_specified_nameAdam/m/policy/bias:4F0
.
_user_specified_nameAdam/v/policy/kernel:4E0
.
_user_specified_nameAdam/m/policy/kernel:3D/
-
_user_specified_nameAdam/v/dense_3/bias:3C/
-
_user_specified_nameAdam/m/dense_3/bias:5B1
/
_user_specified_nameAdam/v/dense_3/kernel:5A1
/
_user_specified_nameAdam/m/dense_3/kernel:B@>
<
_user_specified_name$"Adam/v/batch_normalization_14/beta:B?>
<
_user_specified_name$"Adam/m/batch_normalization_14/beta:C>?
=
_user_specified_name%#Adam/v/batch_normalization_14/gamma:C=?
=
_user_specified_name%#Adam/m/batch_normalization_14/gamma:B<>
<
_user_specified_name$"Adam/v/batch_normalization_15/beta:B;>
<
_user_specified_name$"Adam/m/batch_normalization_15/beta:C:?
=
_user_specified_name%#Adam/v/batch_normalization_15/gamma:C9?
=
_user_specified_name%#Adam/m/batch_normalization_15/gamma:480
.
_user_specified_nameAdam/v/conv1d_6/bias:470
.
_user_specified_nameAdam/m/conv1d_6/bias:662
0
_user_specified_nameAdam/v/conv1d_6/kernel:652
0
_user_specified_nameAdam/m/conv1d_6/kernel:440
.
_user_specified_nameAdam/v/conv1d_7/bias:430
.
_user_specified_nameAdam/m/conv1d_7/bias:622
0
_user_specified_nameAdam/v/conv1d_7/kernel:612
0
_user_specified_nameAdam/m/conv1d_7/kernel:B0>
<
_user_specified_name$"Adam/v/batch_normalization_13/beta:B/>
<
_user_specified_name$"Adam/m/batch_normalization_13/beta:C.?
=
_user_specified_name%#Adam/v/batch_normalization_13/gamma:C-?
=
_user_specified_name%#Adam/m/batch_normalization_13/gamma:4,0
.
_user_specified_nameAdam/v/conv2d_7/bias:4+0
.
_user_specified_nameAdam/m/conv2d_7/bias:6*2
0
_user_specified_nameAdam/v/conv2d_7/kernel:6)2
0
_user_specified_nameAdam/m/conv2d_7/kernel:B(>
<
_user_specified_name$"Adam/v/batch_normalization_12/beta:B'>
<
_user_specified_name$"Adam/m/batch_normalization_12/beta:C&?
=
_user_specified_name%#Adam/v/batch_normalization_12/gamma:C%?
=
_user_specified_name%#Adam/m/batch_normalization_12/gamma:4$0
.
_user_specified_nameAdam/v/conv2d_6/bias:4#0
.
_user_specified_nameAdam/m/conv2d_6/bias:6"2
0
_user_specified_nameAdam/v/conv2d_6/kernel:6!2
0
_user_specified_nameAdam/m/conv2d_6/kernel:- )
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:*&
$
_user_specified_name
value/bias:,(
&
_user_specified_namevalue/kernel:+'
%
_user_specified_namepolicy/bias:-)
'
_user_specified_namepolicy/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:FB
@
_user_specified_name(&batch_normalization_14/moving_variance:B>
<
_user_specified_name$"batch_normalization_14/moving_mean:;7
5
_user_specified_namebatch_normalization_14/beta:<8
6
_user_specified_namebatch_normalization_14/gamma:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:;7
5
_user_specified_namebatch_normalization_15/beta:<8
6
_user_specified_namebatch_normalization_15/gamma:-)
'
_user_specified_nameconv1d_6/bias:/+
)
_user_specified_nameconv1d_6/kernel:-)
'
_user_specified_nameconv1d_7/bias:/+
)
_user_specified_nameconv1d_7/kernel:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:;
7
5
_user_specified_namebatch_normalization_13/beta:<	8
6
_user_specified_namebatch_normalization_13/gamma:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:;7
5
_user_specified_namebatch_normalization_12/beta:<8
6
_user_specified_namebatch_normalization_12/gamma:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845873
input_4*
conv2d_6_845754:�
conv2d_6_845756:	�,
batch_normalization_12_845759:	�,
batch_normalization_12_845761:	�,
batch_normalization_12_845763:	�,
batch_normalization_12_845765:	�+
conv2d_7_845769:��
conv2d_7_845771:	�,
batch_normalization_13_845774:	�,
batch_normalization_13_845776:	�,
batch_normalization_13_845778:	�,
batch_normalization_13_845780:	�%
conv1d_7_845792:
conv1d_7_845794:+
batch_normalization_15_845801:+
batch_normalization_15_845803:+
batch_normalization_15_845805:+
batch_normalization_15_845807:%
conv1d_6_845810:
conv1d_6_845812:+
batch_normalization_14_845816:+
batch_normalization_14_845818:+
batch_normalization_14_845820:+
batch_normalization_14_845822:"
dense_3_845827:
��
dense_3_845829:	�
value_845833:	�
value_845835: 
policy_845838:	�	
policy_845840:	
identity

identity_1��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall� conv1d_6/StatefulPartitionedCall�1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp� conv2d_6/StatefulPartitionedCall�1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp� conv2d_7/StatefulPartitionedCall�1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp�dense_3/StatefulPartitionedCall�0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp�policy/StatefulPartitionedCall�/policy/kernel/Regularizer/L2Loss/ReadVariableOp�value/StatefulPartitionedCall�.value/kernel/Regularizer/L2Loss/ReadVariableOp]
tf.__operators__.add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
tf.__operators__.add_3/AddV2AddV2input_4!tf.__operators__.add_3/y:output:0*
T0*'
_output_shapes
:���������	y
tf.cast_6/CastCast tf.__operators__.add_3/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:���������	b
tf.one_hot_3/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
tf.one_hot_3/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_3/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :�
tf.one_hot_3/one_hotOneHottf.cast_6/Cast:y:0#tf.one_hot_3/one_hot/depth:output:0&tf.one_hot_3/one_hot/on_value:output:0'tf.one_hot_3/one_hot/off_value:output:0*
TI0*
T0*+
_output_shapes
:���������	s
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         �
tf.reshape_3/ReshapeReshapetf.one_hot_3/one_hot:output:0#tf.reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCalltf.reshape_3/Reshape:output:0conv2d_6_845754conv2d_6_845756*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_845481�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_12_845759batch_normalization_12_845761batch_normalization_12_845763batch_normalization_12_845765*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_845208�
re_lu_9/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_9_layer_call_and_return_conditional_losses_845500�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_9/PartitionedCall:output:0conv2d_7_845769conv2d_7_845771*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_845515�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_13_845774batch_normalization_13_845776batch_normalization_13_845778batch_normalization_13_845780*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_845270�
flatten_13/PartitionedCallPartitionedCalltf.one_hot_3/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_845535�
flatten_12/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_845542Y
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.concat_3/concatConcatV2#flatten_13/PartitionedCall:output:0#flatten_12/PartitionedCall:output:0 tf.concat_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
residual_tower/PartitionedCallPartitionedCalltf.concat_3/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_residual_tower_layer_call_and_return_conditional_losses_845550
.tf.__operators__.getitem_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_7/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_7/strided_slice/stack:output:09tf.__operators__.getitem_7/strided_slice/stack_1:output:09tf.__operators__.getitem_7/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*
ellipsis_mask*
new_axis_mask�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_7/strided_slice:output:0conv1d_7_845792conv1d_7_845794*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_7_layer_call_and_return_conditional_losses_845574
.tf.__operators__.getitem_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_6/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_6/strided_slice/stack:output:09tf.__operators__.getitem_6/strided_slice/stack_1:output:09tf.__operators__.getitem_6/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*
ellipsis_mask*
new_axis_mask�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0batch_normalization_15_845801batch_normalization_15_845803batch_normalization_15_845805batch_normalization_15_845807*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_845350�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_6/strided_slice:output:0conv1d_6_845810conv1d_6_845812*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_845611�
re_lu_11/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_11_layer_call_and_return_conditional_losses_845621�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0batch_normalization_14_845816batch_normalization_14_845818batch_normalization_14_845820batch_normalization_14_845822*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_845430�
flatten_15/PartitionedCallPartitionedCall!re_lu_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_845637�
re_lu_10/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_10_layer_call_and_return_conditional_losses_845643�
dense_3/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_3_845827dense_3_845829*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_845659�
flatten_14/PartitionedCallPartitionedCall!re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_14_layer_call_and_return_conditional_losses_845670�
value/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0value_845833value_845835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_value_layer_call_and_return_conditional_losses_845686�
policy/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0policy_845838policy_845840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_policy_layer_call_and_return_conditional_losses_845706�
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_6_845754*'
_output_shapes
:�*
dtype0�
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_7_845769*(
_output_shapes
:��*
dtype0�
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_7_845792*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_6_845810*"
_output_shapes
:*
dtype0�
"conv1d_6/kernel/Regularizer/L2LossL2Loss9conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0+conv1d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_3_845827* 
_output_shapes
:
��*
dtype0�
!dense_3/kernel/Regularizer/L2LossL2Loss8dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_3/kernel/Regularizer/mulMul)dense_3/kernel/Regularizer/mul/x:output:0*dense_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ~
/policy/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOppolicy_845838*
_output_shapes
:	�	*
dtype0�
 policy/kernel/Regularizer/L2LossL2Loss7policy/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0)policy/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: |
.value/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpvalue_845833*
_output_shapes
:	�*
dtype0�
value/kernel/Regularizer/L2LossL2Loss6value/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0(value/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'policy/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	w

Identity_1Identity&value/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall2^conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_3/StatefulPartitionedCall1^dense_3/kernel/Regularizer/L2Loss/ReadVariableOp^policy/StatefulPartitionedCall0^policy/kernel/Regularizer/L2Loss/ReadVariableOp^value/StatefulPartitionedCall/^value/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2f
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2d
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2b
/policy/kernel/Regularizer/L2Loss/ReadVariableOp/policy/kernel/Regularizer/L2Loss/ReadVariableOp2>
value/StatefulPartitionedCallvalue/StatefulPartitionedCall2`
.value/kernel/Regularizer/L2Loss/ReadVariableOp.value/kernel/Regularizer/L2Loss/ReadVariableOp:&"
 
_user_specified_name845840:&"
 
_user_specified_name845838:&"
 
_user_specified_name845835:&"
 
_user_specified_name845833:&"
 
_user_specified_name845829:&"
 
_user_specified_name845827:&"
 
_user_specified_name845822:&"
 
_user_specified_name845820:&"
 
_user_specified_name845818:&"
 
_user_specified_name845816:&"
 
_user_specified_name845812:&"
 
_user_specified_name845810:&"
 
_user_specified_name845807:&"
 
_user_specified_name845805:&"
 
_user_specified_name845803:&"
 
_user_specified_name845801:&"
 
_user_specified_name845794:&"
 
_user_specified_name845792:&"
 
_user_specified_name845780:&"
 
_user_specified_name845778:&
"
 
_user_specified_name845776:&	"
 
_user_specified_name845774:&"
 
_user_specified_name845771:&"
 
_user_specified_name845769:&"
 
_user_specified_name845765:&"
 
_user_specified_name845763:&"
 
_user_specified_name845761:&"
 
_user_specified_name845759:&"
 
_user_specified_name845756:&"
 
_user_specified_name845754:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_4
�
G
+__inference_flatten_14_layer_call_fn_846700

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_14_layer_call_and_return_conditional_losses_845670a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_845481

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_845637

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_dense_3_layer_call_fn_846715

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_845659p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846711:&"
 
_user_specified_name846709:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_845350

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
'__inference_policy_layer_call_fn_846739

inputs
unknown:	�	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_policy_layer_call_and_return_conditional_losses_845706o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846735:&"
 
_user_specified_name846733:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_tictactoe_model_layer_call_fn_845940
input_4"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	� 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:

unknown_27:	�	

unknown_28:	
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������	:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845742o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name845934:&"
 
_user_specified_name845932:&"
 
_user_specified_name845930:&"
 
_user_specified_name845928:&"
 
_user_specified_name845926:&"
 
_user_specified_name845924:&"
 
_user_specified_name845922:&"
 
_user_specified_name845920:&"
 
_user_specified_name845918:&"
 
_user_specified_name845916:&"
 
_user_specified_name845914:&"
 
_user_specified_name845912:&"
 
_user_specified_name845910:&"
 
_user_specified_name845908:&"
 
_user_specified_name845906:&"
 
_user_specified_name845904:&"
 
_user_specified_name845902:&"
 
_user_specified_name845900:&"
 
_user_specified_name845898:&"
 
_user_specified_name845896:&
"
 
_user_specified_name845894:&	"
 
_user_specified_name845892:&"
 
_user_specified_name845890:&"
 
_user_specified_name845888:&"
 
_user_specified_name845886:&"
 
_user_specified_name845884:&"
 
_user_specified_name845882:&"
 
_user_specified_name845880:&"
 
_user_specified_name845878:&"
 
_user_specified_name845876:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_4
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_845252

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_2_846802P
:conv1d_7_kernel_regularizer_l2loss_readvariableop_resource:
identity��1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv1d_7_kernel_regularizer_l2loss_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv1d_7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
`
D__inference_re_lu_11_layer_call_and_return_conditional_losses_846674

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:����������_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv1d_6_layer_call_and_return_conditional_losses_845611

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_6/kernel/Regularizer/L2LossL2Loss9conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0+conv1d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
/__inference_residual_tower_layer_call_fn_846443

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_residual_tower_layer_call_and_return_conditional_losses_845550a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_1_846794V
:conv2d_7_kernel_regularizer_l2loss_readvariableop_resource:��
identity��1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_7_kernel_regularizer_l2loss_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
E
)__inference_re_lu_10_layer_call_fn_846679

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_10_layer_call_and_return_conditional_losses_845643e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_3_846810P
:conv1d_6_kernel_regularizer_l2loss_readvariableop_resource:
identity��1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp�
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv1d_6_kernel_regularizer_l2loss_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_6/kernel/Regularizer/L2LossL2Loss9conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0+conv1d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv1d_6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
b
F__inference_flatten_14_layer_call_and_return_conditional_losses_846706

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_10_layer_call_and_return_conditional_losses_846684

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:����������_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_845542

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_value_layer_call_and_return_conditional_losses_846778

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.value/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:����������
.value/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
value/kernel/Regularizer/L2LossL2Loss6value/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0(value/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^value/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.value/kernel/Regularizer/L2Loss/ReadVariableOp.value/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_4_846818M
9dense_3_kernel_regularizer_l2loss_readvariableop_resource:
��
identity��0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp�
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9dense_3_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_3/kernel/Regularizer/L2LossL2Loss8dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_3/kernel/Regularizer/mulMul)dense_3/kernel/Regularizer/mul/x:output:0*dense_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^dense_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�'
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846564

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
G
+__inference_flatten_12_layer_call_fn_846432

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_845542a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_15_layer_call_fn_846517

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_845330|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846513:&"
 
_user_specified_name846511:&"
 
_user_specified_name846509:&"
 
_user_specified_name846507:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
D__inference_conv1d_7_layer_call_and_return_conditional_losses_845574

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_6_layer_call_fn_846245

inputs"
unknown:�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_845481x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846241:&"
 
_user_specified_name846239:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846398

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
��
�5
"__inference__traced_restore_847604
file_prefix;
 assignvariableop_conv2d_6_kernel:�/
 assignvariableop_1_conv2d_6_bias:	�>
/assignvariableop_2_batch_normalization_12_gamma:	�=
.assignvariableop_3_batch_normalization_12_beta:	�D
5assignvariableop_4_batch_normalization_12_moving_mean:	�H
9assignvariableop_5_batch_normalization_12_moving_variance:	�>
"assignvariableop_6_conv2d_7_kernel:��/
 assignvariableop_7_conv2d_7_bias:	�>
/assignvariableop_8_batch_normalization_13_gamma:	�=
.assignvariableop_9_batch_normalization_13_beta:	�E
6assignvariableop_10_batch_normalization_13_moving_mean:	�I
:assignvariableop_11_batch_normalization_13_moving_variance:	�9
#assignvariableop_12_conv1d_7_kernel:/
!assignvariableop_13_conv1d_7_bias:9
#assignvariableop_14_conv1d_6_kernel:/
!assignvariableop_15_conv1d_6_bias:>
0assignvariableop_16_batch_normalization_15_gamma:=
/assignvariableop_17_batch_normalization_15_beta:D
6assignvariableop_18_batch_normalization_15_moving_mean:H
:assignvariableop_19_batch_normalization_15_moving_variance:>
0assignvariableop_20_batch_normalization_14_gamma:=
/assignvariableop_21_batch_normalization_14_beta:D
6assignvariableop_22_batch_normalization_14_moving_mean:H
:assignvariableop_23_batch_normalization_14_moving_variance:6
"assignvariableop_24_dense_3_kernel:
��/
 assignvariableop_25_dense_3_bias:	�4
!assignvariableop_26_policy_kernel:	�	-
assignvariableop_27_policy_bias:	3
 assignvariableop_28_value_kernel:	�,
assignvariableop_29_value_bias:'
assignvariableop_30_iteration:	 +
!assignvariableop_31_learning_rate: E
*assignvariableop_32_adam_m_conv2d_6_kernel:�E
*assignvariableop_33_adam_v_conv2d_6_kernel:�7
(assignvariableop_34_adam_m_conv2d_6_bias:	�7
(assignvariableop_35_adam_v_conv2d_6_bias:	�F
7assignvariableop_36_adam_m_batch_normalization_12_gamma:	�F
7assignvariableop_37_adam_v_batch_normalization_12_gamma:	�E
6assignvariableop_38_adam_m_batch_normalization_12_beta:	�E
6assignvariableop_39_adam_v_batch_normalization_12_beta:	�F
*assignvariableop_40_adam_m_conv2d_7_kernel:��F
*assignvariableop_41_adam_v_conv2d_7_kernel:��7
(assignvariableop_42_adam_m_conv2d_7_bias:	�7
(assignvariableop_43_adam_v_conv2d_7_bias:	�F
7assignvariableop_44_adam_m_batch_normalization_13_gamma:	�F
7assignvariableop_45_adam_v_batch_normalization_13_gamma:	�E
6assignvariableop_46_adam_m_batch_normalization_13_beta:	�E
6assignvariableop_47_adam_v_batch_normalization_13_beta:	�@
*assignvariableop_48_adam_m_conv1d_7_kernel:@
*assignvariableop_49_adam_v_conv1d_7_kernel:6
(assignvariableop_50_adam_m_conv1d_7_bias:6
(assignvariableop_51_adam_v_conv1d_7_bias:@
*assignvariableop_52_adam_m_conv1d_6_kernel:@
*assignvariableop_53_adam_v_conv1d_6_kernel:6
(assignvariableop_54_adam_m_conv1d_6_bias:6
(assignvariableop_55_adam_v_conv1d_6_bias:E
7assignvariableop_56_adam_m_batch_normalization_15_gamma:E
7assignvariableop_57_adam_v_batch_normalization_15_gamma:D
6assignvariableop_58_adam_m_batch_normalization_15_beta:D
6assignvariableop_59_adam_v_batch_normalization_15_beta:E
7assignvariableop_60_adam_m_batch_normalization_14_gamma:E
7assignvariableop_61_adam_v_batch_normalization_14_gamma:D
6assignvariableop_62_adam_m_batch_normalization_14_beta:D
6assignvariableop_63_adam_v_batch_normalization_14_beta:=
)assignvariableop_64_adam_m_dense_3_kernel:
��=
)assignvariableop_65_adam_v_dense_3_kernel:
��6
'assignvariableop_66_adam_m_dense_3_bias:	�6
'assignvariableop_67_adam_v_dense_3_bias:	�;
(assignvariableop_68_adam_m_policy_kernel:	�	;
(assignvariableop_69_adam_v_policy_kernel:	�	4
&assignvariableop_70_adam_m_policy_bias:	4
&assignvariableop_71_adam_v_policy_bias:	:
'assignvariableop_72_adam_m_value_kernel:	�:
'assignvariableop_73_adam_v_value_kernel:	�3
%assignvariableop_74_adam_m_value_bias:3
%assignvariableop_75_adam_v_value_bias:%
assignvariableop_76_total_2: %
assignvariableop_77_count_2: %
assignvariableop_78_total_1: %
assignvariableop_79_count_1: #
assignvariableop_80_total: #
assignvariableop_81_count: 
identity_83��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_9�#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*�"
value�"B�"SB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*�
value�B�SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_12_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_12_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_12_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_12_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_7_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_7_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_13_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_13_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_13_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_13_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv1d_7_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv1d_7_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv1d_6_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv1d_6_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp0assignvariableop_16_batch_normalization_15_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batch_normalization_15_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp6assignvariableop_18_batch_normalization_15_moving_meanIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp:assignvariableop_19_batch_normalization_15_moving_varianceIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_14_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_14_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_14_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_14_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_3_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_3_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp!assignvariableop_26_policy_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_policy_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp assignvariableop_28_value_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_value_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_iterationIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_learning_rateIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_m_conv2d_6_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_v_conv2d_6_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_m_conv2d_6_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_v_conv2d_6_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp7assignvariableop_36_adam_m_batch_normalization_12_gammaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adam_v_batch_normalization_12_gammaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_m_batch_normalization_12_betaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_v_batch_normalization_12_betaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_m_conv2d_7_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_v_conv2d_7_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_m_conv2d_7_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_v_conv2d_7_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp7assignvariableop_44_adam_m_batch_normalization_13_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_v_batch_normalization_13_gammaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_m_batch_normalization_13_betaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_v_batch_normalization_13_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_m_conv1d_7_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_v_conv1d_7_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_m_conv1d_7_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_v_conv1d_7_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_m_conv1d_6_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_v_conv1d_6_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_m_conv1d_6_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_v_conv1d_6_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp7assignvariableop_56_adam_m_batch_normalization_15_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_v_batch_normalization_15_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_m_batch_normalization_15_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_v_batch_normalization_15_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_m_batch_normalization_14_gammaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_v_batch_normalization_14_gammaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_m_batch_normalization_14_betaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_v_batch_normalization_14_betaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_m_dense_3_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_v_dense_3_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_m_dense_3_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_v_dense_3_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_m_policy_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_v_policy_kernelIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp&assignvariableop_70_adam_m_policy_biasIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp&assignvariableop_71_adam_v_policy_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_m_value_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_v_value_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp%assignvariableop_74_adam_m_value_biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp%assignvariableop_75_adam_v_value_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOpassignvariableop_76_total_2Identity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpassignvariableop_77_count_2Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpassignvariableop_78_total_1Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpassignvariableop_79_count_1Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpassignvariableop_80_totalIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOpassignvariableop_81_countIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_82Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_83IdentityIdentity_82:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9*
_output_shapes
 "#
identity_83Identity_83:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%R!

_user_specified_namecount:%Q!

_user_specified_nametotal:'P#
!
_user_specified_name	count_1:'O#
!
_user_specified_name	total_1:'N#
!
_user_specified_name	count_2:'M#
!
_user_specified_name	total_2:1L-
+
_user_specified_nameAdam/v/value/bias:1K-
+
_user_specified_nameAdam/m/value/bias:3J/
-
_user_specified_nameAdam/v/value/kernel:3I/
-
_user_specified_nameAdam/m/value/kernel:2H.
,
_user_specified_nameAdam/v/policy/bias:2G.
,
_user_specified_nameAdam/m/policy/bias:4F0
.
_user_specified_nameAdam/v/policy/kernel:4E0
.
_user_specified_nameAdam/m/policy/kernel:3D/
-
_user_specified_nameAdam/v/dense_3/bias:3C/
-
_user_specified_nameAdam/m/dense_3/bias:5B1
/
_user_specified_nameAdam/v/dense_3/kernel:5A1
/
_user_specified_nameAdam/m/dense_3/kernel:B@>
<
_user_specified_name$"Adam/v/batch_normalization_14/beta:B?>
<
_user_specified_name$"Adam/m/batch_normalization_14/beta:C>?
=
_user_specified_name%#Adam/v/batch_normalization_14/gamma:C=?
=
_user_specified_name%#Adam/m/batch_normalization_14/gamma:B<>
<
_user_specified_name$"Adam/v/batch_normalization_15/beta:B;>
<
_user_specified_name$"Adam/m/batch_normalization_15/beta:C:?
=
_user_specified_name%#Adam/v/batch_normalization_15/gamma:C9?
=
_user_specified_name%#Adam/m/batch_normalization_15/gamma:480
.
_user_specified_nameAdam/v/conv1d_6/bias:470
.
_user_specified_nameAdam/m/conv1d_6/bias:662
0
_user_specified_nameAdam/v/conv1d_6/kernel:652
0
_user_specified_nameAdam/m/conv1d_6/kernel:440
.
_user_specified_nameAdam/v/conv1d_7/bias:430
.
_user_specified_nameAdam/m/conv1d_7/bias:622
0
_user_specified_nameAdam/v/conv1d_7/kernel:612
0
_user_specified_nameAdam/m/conv1d_7/kernel:B0>
<
_user_specified_name$"Adam/v/batch_normalization_13/beta:B/>
<
_user_specified_name$"Adam/m/batch_normalization_13/beta:C.?
=
_user_specified_name%#Adam/v/batch_normalization_13/gamma:C-?
=
_user_specified_name%#Adam/m/batch_normalization_13/gamma:4,0
.
_user_specified_nameAdam/v/conv2d_7/bias:4+0
.
_user_specified_nameAdam/m/conv2d_7/bias:6*2
0
_user_specified_nameAdam/v/conv2d_7/kernel:6)2
0
_user_specified_nameAdam/m/conv2d_7/kernel:B(>
<
_user_specified_name$"Adam/v/batch_normalization_12/beta:B'>
<
_user_specified_name$"Adam/m/batch_normalization_12/beta:C&?
=
_user_specified_name%#Adam/v/batch_normalization_12/gamma:C%?
=
_user_specified_name%#Adam/m/batch_normalization_12/gamma:4$0
.
_user_specified_nameAdam/v/conv2d_6/bias:4#0
.
_user_specified_nameAdam/m/conv2d_6/bias:6"2
0
_user_specified_nameAdam/v/conv2d_6/kernel:6!2
0
_user_specified_nameAdam/m/conv2d_6/kernel:- )
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:*&
$
_user_specified_name
value/bias:,(
&
_user_specified_namevalue/kernel:+'
%
_user_specified_namepolicy/bias:-)
'
_user_specified_namepolicy/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:FB
@
_user_specified_name(&batch_normalization_14/moving_variance:B>
<
_user_specified_name$"batch_normalization_14/moving_mean:;7
5
_user_specified_namebatch_normalization_14/beta:<8
6
_user_specified_namebatch_normalization_14/gamma:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:;7
5
_user_specified_namebatch_normalization_15/beta:<8
6
_user_specified_namebatch_normalization_15/gamma:-)
'
_user_specified_nameconv1d_6/bias:/+
)
_user_specified_nameconv1d_6/kernel:-)
'
_user_specified_nameconv1d_7/bias:/+
)
_user_specified_nameconv1d_7/kernel:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:;
7
5
_user_specified_namebatch_normalization_13/beta:<	8
6
_user_specified_namebatch_normalization_13/gamma:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:;7
5
_user_specified_namebatch_normalization_12/beta:<8
6
_user_specified_namebatch_normalization_12/gamma:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
)__inference_conv1d_7_layer_call_fn_846457

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_7_layer_call_and_return_conditional_losses_845574t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846453:&"
 
_user_specified_name846451:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_dense_3_layer_call_and_return_conditional_losses_846730

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_3/kernel/Regularizer/L2LossL2Loss8dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_3/kernel/Regularizer/mulMul)dense_3/kernel/Regularizer/mul/x:output:0*dense_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_11_layer_call_and_return_conditional_losses_845621

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:����������_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_846354

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_845430

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
)__inference_conv1d_6_layer_call_fn_846485

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_845611t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846481:&"
 
_user_specified_name846479:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_846695

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_845410

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_9_layer_call_and_return_conditional_losses_846331

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_845208

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_7_layer_call_fn_846340

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_845515x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846336:&"
 
_user_specified_name846334:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv1d_6_layer_call_and_return_conditional_losses_846504

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_6/kernel/Regularizer/L2LossL2Loss9conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0+conv1d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_845515

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_policy_layer_call_and_return_conditional_losses_845706

inputs1
matmul_readvariableop_resource:	�	-
biasadd_readvariableop_resource:	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�/policy/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������	�
/policy/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�	*
dtype0�
 policy/kernel/Regularizer/L2LossL2Loss7policy/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0)policy/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^policy/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/policy/kernel/Regularizer/L2Loss/ReadVariableOp/policy/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
+__inference_flatten_15_layer_call_fn_846689

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_845637a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846644

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
B__inference_policy_layer_call_and_return_conditional_losses_846754

inputs1
matmul_readvariableop_resource:	�	-
biasadd_readvariableop_resource:	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�/policy/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������	�
/policy/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�	*
dtype0�
 policy/kernel/Regularizer/L2LossL2Loss7policy/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0)policy/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^policy/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/policy/kernel/Regularizer/L2Loss/ReadVariableOp/policy/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_845535

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	:S O
+
_output_shapes
:���������	
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_13_layer_call_fn_846367

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_845252�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846363:&"
 
_user_specified_name846361:&"
 
_user_specified_name846359:&"
 
_user_specified_name846357:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_6_846834J
7value_kernel_regularizer_l2loss_readvariableop_resource:	�
identity��.value/kernel/Regularizer/L2Loss/ReadVariableOp�
.value/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp7value_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
value/kernel/Regularizer/L2LossL2Loss6value/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0(value/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentity value/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp/^value/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.value/kernel/Regularizer/L2Loss/ReadVariableOp.value/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
b
F__inference_flatten_14_layer_call_and_return_conditional_losses_845670

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_15_layer_call_fn_846530

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_845350|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846526:&"
 
_user_specified_name846524:&"
 
_user_specified_name846522:&"
 
_user_specified_name846520:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
C__inference_dense_3_layer_call_and_return_conditional_losses_845659

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_3/kernel/Regularizer/L2LossL2Loss8dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_3/kernel/Regularizer/mulMul)dense_3/kernel/Regularizer/mul/x:output:0*dense_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_residual_tower_layer_call_and_return_conditional_losses_846448

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:����������[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_12_layer_call_fn_846272

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_845190�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846268:&"
 
_user_specified_name846266:&"
 
_user_specified_name846264:&"
 
_user_specified_name846262:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_12_layer_call_fn_846285

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_845208�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846281:&"
 
_user_specified_name846279:&"
 
_user_specified_name846277:&"
 
_user_specified_name846275:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846416

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_846208
input_4"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	� 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:

unknown_27:	�	

unknown_28:	
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������	:���������*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_845172o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846202:&"
 
_user_specified_name846200:&"
 
_user_specified_name846198:&"
 
_user_specified_name846196:&"
 
_user_specified_name846194:&"
 
_user_specified_name846192:&"
 
_user_specified_name846190:&"
 
_user_specified_name846188:&"
 
_user_specified_name846186:&"
 
_user_specified_name846184:&"
 
_user_specified_name846182:&"
 
_user_specified_name846180:&"
 
_user_specified_name846178:&"
 
_user_specified_name846176:&"
 
_user_specified_name846174:&"
 
_user_specified_name846172:&"
 
_user_specified_name846170:&"
 
_user_specified_name846168:&"
 
_user_specified_name846166:&"
 
_user_specified_name846164:&
"
 
_user_specified_name846162:&	"
 
_user_specified_name846160:&"
 
_user_specified_name846158:&"
 
_user_specified_name846156:&"
 
_user_specified_name846154:&"
 
_user_specified_name846152:&"
 
_user_specified_name846150:&"
 
_user_specified_name846148:&"
 
_user_specified_name846146:&"
 
_user_specified_name846144:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_4
��
�"
!__inference__wrapped_model_845172
input_4R
7tictactoe_model_conv2d_6_conv2d_readvariableop_resource:�G
8tictactoe_model_conv2d_6_biasadd_readvariableop_resource:	�M
>tictactoe_model_batch_normalization_12_readvariableop_resource:	�O
@tictactoe_model_batch_normalization_12_readvariableop_1_resource:	�^
Otictactoe_model_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�`
Qtictactoe_model_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�S
7tictactoe_model_conv2d_7_conv2d_readvariableop_resource:��G
8tictactoe_model_conv2d_7_biasadd_readvariableop_resource:	�M
>tictactoe_model_batch_normalization_13_readvariableop_resource:	�O
@tictactoe_model_batch_normalization_13_readvariableop_1_resource:	�^
Otictactoe_model_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�`
Qtictactoe_model_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�Z
Dtictactoe_model_conv1d_7_conv1d_expanddims_1_readvariableop_resource:F
8tictactoe_model_conv1d_7_biasadd_readvariableop_resource:V
Htictactoe_model_batch_normalization_15_batchnorm_readvariableop_resource:Z
Ltictactoe_model_batch_normalization_15_batchnorm_mul_readvariableop_resource:X
Jtictactoe_model_batch_normalization_15_batchnorm_readvariableop_1_resource:X
Jtictactoe_model_batch_normalization_15_batchnorm_readvariableop_2_resource:Z
Dtictactoe_model_conv1d_6_conv1d_expanddims_1_readvariableop_resource:F
8tictactoe_model_conv1d_6_biasadd_readvariableop_resource:V
Htictactoe_model_batch_normalization_14_batchnorm_readvariableop_resource:Z
Ltictactoe_model_batch_normalization_14_batchnorm_mul_readvariableop_resource:X
Jtictactoe_model_batch_normalization_14_batchnorm_readvariableop_1_resource:X
Jtictactoe_model_batch_normalization_14_batchnorm_readvariableop_2_resource:J
6tictactoe_model_dense_3_matmul_readvariableop_resource:
��F
7tictactoe_model_dense_3_biasadd_readvariableop_resource:	�G
4tictactoe_model_value_matmul_readvariableop_resource:	�C
5tictactoe_model_value_biasadd_readvariableop_resource:H
5tictactoe_model_policy_matmul_readvariableop_resource:	�	D
6tictactoe_model_policy_biasadd_readvariableop_resource:	
identity

identity_1��Ftictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp�Htictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�5tictactoe_model/batch_normalization_12/ReadVariableOp�7tictactoe_model/batch_normalization_12/ReadVariableOp_1�Ftictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp�Htictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�5tictactoe_model/batch_normalization_13/ReadVariableOp�7tictactoe_model/batch_normalization_13/ReadVariableOp_1�?tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp�Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_1�Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_2�Ctictactoe_model/batch_normalization_14/batchnorm/mul/ReadVariableOp�?tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp�Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_1�Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_2�Ctictactoe_model/batch_normalization_15/batchnorm/mul/ReadVariableOp�/tictactoe_model/conv1d_6/BiasAdd/ReadVariableOp�;tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp�/tictactoe_model/conv1d_7/BiasAdd/ReadVariableOp�;tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp�/tictactoe_model/conv2d_6/BiasAdd/ReadVariableOp�.tictactoe_model/conv2d_6/Conv2D/ReadVariableOp�/tictactoe_model/conv2d_7/BiasAdd/ReadVariableOp�.tictactoe_model/conv2d_7/Conv2D/ReadVariableOp�.tictactoe_model/dense_3/BiasAdd/ReadVariableOp�-tictactoe_model/dense_3/MatMul/ReadVariableOp�-tictactoe_model/policy/BiasAdd/ReadVariableOp�,tictactoe_model/policy/MatMul/ReadVariableOp�,tictactoe_model/value/BiasAdd/ReadVariableOp�+tictactoe_model/value/MatMul/ReadVariableOpm
(tictactoe_model/tf.__operators__.add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,tictactoe_model/tf.__operators__.add_3/AddV2AddV2input_41tictactoe_model/tf.__operators__.add_3/y:output:0*
T0*'
_output_shapes
:���������	�
tictactoe_model/tf.cast_6/CastCast0tictactoe_model/tf.__operators__.add_3/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:���������	r
-tictactoe_model/tf.one_hot_3/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
.tictactoe_model/tf.one_hot_3/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*tictactoe_model/tf.one_hot_3/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :�
$tictactoe_model/tf.one_hot_3/one_hotOneHot"tictactoe_model/tf.cast_6/Cast:y:03tictactoe_model/tf.one_hot_3/one_hot/depth:output:06tictactoe_model/tf.one_hot_3/one_hot/on_value:output:07tictactoe_model/tf.one_hot_3/one_hot/off_value:output:0*
TI0*
T0*+
_output_shapes
:���������	�
*tictactoe_model/tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         �
$tictactoe_model/tf.reshape_3/ReshapeReshape-tictactoe_model/tf.one_hot_3/one_hot:output:03tictactoe_model/tf.reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
.tictactoe_model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp7tictactoe_model_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
tictactoe_model/conv2d_6/Conv2DConv2D-tictactoe_model/tf.reshape_3/Reshape:output:06tictactoe_model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
/tictactoe_model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 tictactoe_model/conv2d_6/BiasAddBiasAdd(tictactoe_model/conv2d_6/Conv2D:output:07tictactoe_model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
5tictactoe_model/batch_normalization_12/ReadVariableOpReadVariableOp>tictactoe_model_batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7tictactoe_model/batch_normalization_12/ReadVariableOp_1ReadVariableOp@tictactoe_model_batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Ftictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpOtictactoe_model_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Htictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpQtictactoe_model_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
7tictactoe_model/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3)tictactoe_model/conv2d_6/BiasAdd:output:0=tictactoe_model/batch_normalization_12/ReadVariableOp:value:0?tictactoe_model/batch_normalization_12/ReadVariableOp_1:value:0Ntictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Ptictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
tictactoe_model/re_lu_9/ReluRelu;tictactoe_model/batch_normalization_12/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
.tictactoe_model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp7tictactoe_model_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
tictactoe_model/conv2d_7/Conv2DConv2D*tictactoe_model/re_lu_9/Relu:activations:06tictactoe_model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
/tictactoe_model/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 tictactoe_model/conv2d_7/BiasAddBiasAdd(tictactoe_model/conv2d_7/Conv2D:output:07tictactoe_model/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
5tictactoe_model/batch_normalization_13/ReadVariableOpReadVariableOp>tictactoe_model_batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7tictactoe_model/batch_normalization_13/ReadVariableOp_1ReadVariableOp@tictactoe_model_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Ftictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpOtictactoe_model_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Htictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpQtictactoe_model_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
7tictactoe_model/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3)tictactoe_model/conv2d_7/BiasAdd:output:0=tictactoe_model/batch_normalization_13/ReadVariableOp:value:0?tictactoe_model/batch_normalization_13/ReadVariableOp_1:value:0Ntictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Ptictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( q
 tictactoe_model/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
"tictactoe_model/flatten_13/ReshapeReshape-tictactoe_model/tf.one_hot_3/one_hot:output:0)tictactoe_model/flatten_13/Const:output:0*
T0*'
_output_shapes
:���������q
 tictactoe_model/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"tictactoe_model/flatten_12/ReshapeReshape;tictactoe_model/batch_normalization_13/FusedBatchNormV3:y:0)tictactoe_model/flatten_12/Const:output:0*
T0*(
_output_shapes
:����������i
'tictactoe_model/tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
"tictactoe_model/tf.concat_3/concatConcatV2+tictactoe_model/flatten_13/Reshape:output:0+tictactoe_model/flatten_12/Reshape:output:00tictactoe_model/tf.concat_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
#tictactoe_model/residual_tower/ReluRelu+tictactoe_model/tf.concat_3/concat:output:0*
T0*(
_output_shapes
:�����������
>tictactoe_model/tf.__operators__.getitem_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
@tictactoe_model/tf.__operators__.getitem_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
@tictactoe_model/tf.__operators__.getitem_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
8tictactoe_model/tf.__operators__.getitem_7/strided_sliceStridedSlice1tictactoe_model/residual_tower/Relu:activations:0Gtictactoe_model/tf.__operators__.getitem_7/strided_slice/stack:output:0Itictactoe_model/tf.__operators__.getitem_7/strided_slice/stack_1:output:0Itictactoe_model/tf.__operators__.getitem_7/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*
ellipsis_mask*
new_axis_masky
.tictactoe_model/conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
*tictactoe_model/conv1d_7/Conv1D/ExpandDims
ExpandDimsAtictactoe_model/tf.__operators__.getitem_7/strided_slice:output:07tictactoe_model/conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
;tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpDtictactoe_model_conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0r
0tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
,tictactoe_model/conv1d_7/Conv1D/ExpandDims_1
ExpandDimsCtictactoe_model/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:09tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
tictactoe_model/conv1d_7/Conv1DConv2D3tictactoe_model/conv1d_7/Conv1D/ExpandDims:output:05tictactoe_model/conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
'tictactoe_model/conv1d_7/Conv1D/SqueezeSqueeze(tictactoe_model/conv1d_7/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
/tictactoe_model/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 tictactoe_model/conv1d_7/BiasAddBiasAdd0tictactoe_model/conv1d_7/Conv1D/Squeeze:output:07tictactoe_model/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
>tictactoe_model/tf.__operators__.getitem_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
@tictactoe_model/tf.__operators__.getitem_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
@tictactoe_model/tf.__operators__.getitem_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
8tictactoe_model/tf.__operators__.getitem_6/strided_sliceStridedSlice1tictactoe_model/residual_tower/Relu:activations:0Gtictactoe_model/tf.__operators__.getitem_6/strided_slice/stack:output:0Itictactoe_model/tf.__operators__.getitem_6/strided_slice/stack_1:output:0Itictactoe_model/tf.__operators__.getitem_6/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*
ellipsis_mask*
new_axis_mask�
?tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOpHtictactoe_model_batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0{
6tictactoe_model/batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4tictactoe_model/batch_normalization_15/batchnorm/addAddV2Gtictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp:value:0?tictactoe_model/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
6tictactoe_model/batch_normalization_15/batchnorm/RsqrtRsqrt8tictactoe_model/batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:�
Ctictactoe_model/batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpLtictactoe_model_batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
4tictactoe_model/batch_normalization_15/batchnorm/mulMul:tictactoe_model/batch_normalization_15/batchnorm/Rsqrt:y:0Ktictactoe_model/batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
6tictactoe_model/batch_normalization_15/batchnorm/mul_1Mul)tictactoe_model/conv1d_7/BiasAdd:output:08tictactoe_model/batch_normalization_15/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOpJtictactoe_model_batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6tictactoe_model/batch_normalization_15/batchnorm/mul_2MulItictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_1:value:08tictactoe_model/batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOpJtictactoe_model_batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
4tictactoe_model/batch_normalization_15/batchnorm/subSubItictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_2:value:0:tictactoe_model/batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
6tictactoe_model/batch_normalization_15/batchnorm/add_1AddV2:tictactoe_model/batch_normalization_15/batchnorm/mul_1:z:08tictactoe_model/batch_normalization_15/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������y
.tictactoe_model/conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
*tictactoe_model/conv1d_6/Conv1D/ExpandDims
ExpandDimsAtictactoe_model/tf.__operators__.getitem_6/strided_slice:output:07tictactoe_model/conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
;tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpDtictactoe_model_conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0r
0tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
,tictactoe_model/conv1d_6/Conv1D/ExpandDims_1
ExpandDimsCtictactoe_model/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:09tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
tictactoe_model/conv1d_6/Conv1DConv2D3tictactoe_model/conv1d_6/Conv1D/ExpandDims:output:05tictactoe_model/conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
'tictactoe_model/conv1d_6/Conv1D/SqueezeSqueeze(tictactoe_model/conv1d_6/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
/tictactoe_model/conv1d_6/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 tictactoe_model/conv1d_6/BiasAddBiasAdd0tictactoe_model/conv1d_6/Conv1D/Squeeze:output:07tictactoe_model/conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
tictactoe_model/re_lu_11/ReluRelu:tictactoe_model/batch_normalization_15/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
?tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOpHtictactoe_model_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0{
6tictactoe_model/batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4tictactoe_model/batch_normalization_14/batchnorm/addAddV2Gtictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp:value:0?tictactoe_model/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
6tictactoe_model/batch_normalization_14/batchnorm/RsqrtRsqrt8tictactoe_model/batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:�
Ctictactoe_model/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpLtictactoe_model_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
4tictactoe_model/batch_normalization_14/batchnorm/mulMul:tictactoe_model/batch_normalization_14/batchnorm/Rsqrt:y:0Ktictactoe_model/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
6tictactoe_model/batch_normalization_14/batchnorm/mul_1Mul)tictactoe_model/conv1d_6/BiasAdd:output:08tictactoe_model/batch_normalization_14/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOpJtictactoe_model_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6tictactoe_model/batch_normalization_14/batchnorm/mul_2MulItictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_1:value:08tictactoe_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOpJtictactoe_model_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
4tictactoe_model/batch_normalization_14/batchnorm/subSubItictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_2:value:0:tictactoe_model/batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
6tictactoe_model/batch_normalization_14/batchnorm/add_1AddV2:tictactoe_model/batch_normalization_14/batchnorm/mul_1:z:08tictactoe_model/batch_normalization_14/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������q
 tictactoe_model/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
"tictactoe_model/flatten_15/ReshapeReshape+tictactoe_model/re_lu_11/Relu:activations:0)tictactoe_model/flatten_15/Const:output:0*
T0*(
_output_shapes
:�����������
tictactoe_model/re_lu_10/ReluRelu:tictactoe_model/batch_normalization_14/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
-tictactoe_model/dense_3/MatMul/ReadVariableOpReadVariableOp6tictactoe_model_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
tictactoe_model/dense_3/MatMulMatMul+tictactoe_model/flatten_15/Reshape:output:05tictactoe_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.tictactoe_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp7tictactoe_model_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
tictactoe_model/dense_3/BiasAddBiasAdd(tictactoe_model/dense_3/MatMul:product:06tictactoe_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
tictactoe_model/dense_3/ReluRelu(tictactoe_model/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:����������q
 tictactoe_model/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
"tictactoe_model/flatten_14/ReshapeReshape+tictactoe_model/re_lu_10/Relu:activations:0)tictactoe_model/flatten_14/Const:output:0*
T0*(
_output_shapes
:�����������
+tictactoe_model/value/MatMul/ReadVariableOpReadVariableOp4tictactoe_model_value_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
tictactoe_model/value/MatMulMatMul*tictactoe_model/dense_3/Relu:activations:03tictactoe_model/value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,tictactoe_model/value/BiasAdd/ReadVariableOpReadVariableOp5tictactoe_model_value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
tictactoe_model/value/BiasAddBiasAdd&tictactoe_model/value/MatMul:product:04tictactoe_model/value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
tictactoe_model/value/TanhTanh&tictactoe_model/value/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,tictactoe_model/policy/MatMul/ReadVariableOpReadVariableOp5tictactoe_model_policy_matmul_readvariableop_resource*
_output_shapes
:	�	*
dtype0�
tictactoe_model/policy/MatMulMatMul+tictactoe_model/flatten_14/Reshape:output:04tictactoe_model/policy/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
-tictactoe_model/policy/BiasAdd/ReadVariableOpReadVariableOp6tictactoe_model_policy_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0�
tictactoe_model/policy/BiasAddBiasAdd'tictactoe_model/policy/MatMul:product:05tictactoe_model/policy/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
tictactoe_model/policy/SoftmaxSoftmax'tictactoe_model/policy/BiasAdd:output:0*
T0*'
_output_shapes
:���������	w
IdentityIdentity(tictactoe_model/policy/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	o

Identity_1Identitytictactoe_model/value/Tanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpG^tictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOpI^tictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_16^tictactoe_model/batch_normalization_12/ReadVariableOp8^tictactoe_model/batch_normalization_12/ReadVariableOp_1G^tictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOpI^tictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_16^tictactoe_model/batch_normalization_13/ReadVariableOp8^tictactoe_model/batch_normalization_13/ReadVariableOp_1@^tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOpB^tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_1B^tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_2D^tictactoe_model/batch_normalization_14/batchnorm/mul/ReadVariableOp@^tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOpB^tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_1B^tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_2D^tictactoe_model/batch_normalization_15/batchnorm/mul/ReadVariableOp0^tictactoe_model/conv1d_6/BiasAdd/ReadVariableOp<^tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp0^tictactoe_model/conv1d_7/BiasAdd/ReadVariableOp<^tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp0^tictactoe_model/conv2d_6/BiasAdd/ReadVariableOp/^tictactoe_model/conv2d_6/Conv2D/ReadVariableOp0^tictactoe_model/conv2d_7/BiasAdd/ReadVariableOp/^tictactoe_model/conv2d_7/Conv2D/ReadVariableOp/^tictactoe_model/dense_3/BiasAdd/ReadVariableOp.^tictactoe_model/dense_3/MatMul/ReadVariableOp.^tictactoe_model/policy/BiasAdd/ReadVariableOp-^tictactoe_model/policy/MatMul/ReadVariableOp-^tictactoe_model/value/BiasAdd/ReadVariableOp,^tictactoe_model/value/MatMul/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Htictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Htictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12�
Ftictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOpFtictactoe_model/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2r
7tictactoe_model/batch_normalization_12/ReadVariableOp_17tictactoe_model/batch_normalization_12/ReadVariableOp_12n
5tictactoe_model/batch_normalization_12/ReadVariableOp5tictactoe_model/batch_normalization_12/ReadVariableOp2�
Htictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Htictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12�
Ftictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOpFtictactoe_model/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2r
7tictactoe_model/batch_normalization_13/ReadVariableOp_17tictactoe_model/batch_normalization_13/ReadVariableOp_12n
5tictactoe_model/batch_normalization_13/ReadVariableOp5tictactoe_model/batch_normalization_13/ReadVariableOp2�
Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_1Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_12�
Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_2Atictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp_22�
?tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp?tictactoe_model/batch_normalization_14/batchnorm/ReadVariableOp2�
Ctictactoe_model/batch_normalization_14/batchnorm/mul/ReadVariableOpCtictactoe_model/batch_normalization_14/batchnorm/mul/ReadVariableOp2�
Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_1Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_12�
Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_2Atictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp_22�
?tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp?tictactoe_model/batch_normalization_15/batchnorm/ReadVariableOp2�
Ctictactoe_model/batch_normalization_15/batchnorm/mul/ReadVariableOpCtictactoe_model/batch_normalization_15/batchnorm/mul/ReadVariableOp2b
/tictactoe_model/conv1d_6/BiasAdd/ReadVariableOp/tictactoe_model/conv1d_6/BiasAdd/ReadVariableOp2z
;tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp;tictactoe_model/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2b
/tictactoe_model/conv1d_7/BiasAdd/ReadVariableOp/tictactoe_model/conv1d_7/BiasAdd/ReadVariableOp2z
;tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp;tictactoe_model/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2b
/tictactoe_model/conv2d_6/BiasAdd/ReadVariableOp/tictactoe_model/conv2d_6/BiasAdd/ReadVariableOp2`
.tictactoe_model/conv2d_6/Conv2D/ReadVariableOp.tictactoe_model/conv2d_6/Conv2D/ReadVariableOp2b
/tictactoe_model/conv2d_7/BiasAdd/ReadVariableOp/tictactoe_model/conv2d_7/BiasAdd/ReadVariableOp2`
.tictactoe_model/conv2d_7/Conv2D/ReadVariableOp.tictactoe_model/conv2d_7/Conv2D/ReadVariableOp2`
.tictactoe_model/dense_3/BiasAdd/ReadVariableOp.tictactoe_model/dense_3/BiasAdd/ReadVariableOp2^
-tictactoe_model/dense_3/MatMul/ReadVariableOp-tictactoe_model/dense_3/MatMul/ReadVariableOp2^
-tictactoe_model/policy/BiasAdd/ReadVariableOp-tictactoe_model/policy/BiasAdd/ReadVariableOp2\
,tictactoe_model/policy/MatMul/ReadVariableOp,tictactoe_model/policy/MatMul/ReadVariableOp2\
,tictactoe_model/value/BiasAdd/ReadVariableOp,tictactoe_model/value/BiasAdd/ReadVariableOp2Z
+tictactoe_model/value/MatMul/ReadVariableOp+tictactoe_model/value/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_4
�
�
0__inference_tictactoe_model_layer_call_fn_846007
input_4"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	� 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:

unknown_27:	�	

unknown_28:	
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������	:���������*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845873o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846001:&"
 
_user_specified_name845999:&"
 
_user_specified_name845997:&"
 
_user_specified_name845995:&"
 
_user_specified_name845993:&"
 
_user_specified_name845991:&"
 
_user_specified_name845989:&"
 
_user_specified_name845987:&"
 
_user_specified_name845985:&"
 
_user_specified_name845983:&"
 
_user_specified_name845981:&"
 
_user_specified_name845979:&"
 
_user_specified_name845977:&"
 
_user_specified_name845975:&"
 
_user_specified_name845973:&"
 
_user_specified_name845971:&"
 
_user_specified_name845969:&"
 
_user_specified_name845967:&"
 
_user_specified_name845965:&"
 
_user_specified_name845963:&
"
 
_user_specified_name845961:&	"
 
_user_specified_name845959:&"
 
_user_specified_name845957:&"
 
_user_specified_name845955:&"
 
_user_specified_name845953:&"
 
_user_specified_name845951:&"
 
_user_specified_name845949:&"
 
_user_specified_name845947:&"
 
_user_specified_name845945:&"
 
_user_specified_name845943:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_4
�
�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_846259

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846584

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
G
+__inference_flatten_13_layer_call_fn_846421

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_845535`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	:S O
+
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_846786U
:conv2d_6_kernel_regularizer_l2loss_readvariableop_resource:�
identity��1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp�
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_6_kernel_regularizer_l2loss_readvariableop_resource*'
_output_shapes
:�*
dtype0�
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_845270

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846321

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_10_layer_call_and_return_conditional_losses_845643

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:����������_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_14_layer_call_fn_846597

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_845410|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846593:&"
 
_user_specified_name846591:&"
 
_user_specified_name846589:&"
 
_user_specified_name846587:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
D__inference_conv1d_7_layer_call_and_return_conditional_losses_846476

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846303

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
��
�
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845742
input_4*
conv2d_6_845482:�
conv2d_6_845484:	�,
batch_normalization_12_845487:	�,
batch_normalization_12_845489:	�,
batch_normalization_12_845491:	�,
batch_normalization_12_845493:	�+
conv2d_7_845516:��
conv2d_7_845518:	�,
batch_normalization_13_845521:	�,
batch_normalization_13_845523:	�,
batch_normalization_13_845525:	�,
batch_normalization_13_845527:	�%
conv1d_7_845575:
conv1d_7_845577:+
batch_normalization_15_845584:+
batch_normalization_15_845586:+
batch_normalization_15_845588:+
batch_normalization_15_845590:%
conv1d_6_845612:
conv1d_6_845614:+
batch_normalization_14_845623:+
batch_normalization_14_845625:+
batch_normalization_14_845627:+
batch_normalization_14_845629:"
dense_3_845660:
��
dense_3_845662:	�
value_845687:	�
value_845689: 
policy_845707:	�	
policy_845709:	
identity

identity_1��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall� conv1d_6/StatefulPartitionedCall�1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp� conv2d_6/StatefulPartitionedCall�1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp� conv2d_7/StatefulPartitionedCall�1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp�dense_3/StatefulPartitionedCall�0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp�policy/StatefulPartitionedCall�/policy/kernel/Regularizer/L2Loss/ReadVariableOp�value/StatefulPartitionedCall�.value/kernel/Regularizer/L2Loss/ReadVariableOp]
tf.__operators__.add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
tf.__operators__.add_3/AddV2AddV2input_4!tf.__operators__.add_3/y:output:0*
T0*'
_output_shapes
:���������	y
tf.cast_6/CastCast tf.__operators__.add_3/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:���������	b
tf.one_hot_3/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
tf.one_hot_3/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_3/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :�
tf.one_hot_3/one_hotOneHottf.cast_6/Cast:y:0#tf.one_hot_3/one_hot/depth:output:0&tf.one_hot_3/one_hot/on_value:output:0'tf.one_hot_3/one_hot/off_value:output:0*
TI0*
T0*+
_output_shapes
:���������	s
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         �
tf.reshape_3/ReshapeReshapetf.one_hot_3/one_hot:output:0#tf.reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCalltf.reshape_3/Reshape:output:0conv2d_6_845482conv2d_6_845484*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_845481�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_12_845487batch_normalization_12_845489batch_normalization_12_845491batch_normalization_12_845493*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_845190�
re_lu_9/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_9_layer_call_and_return_conditional_losses_845500�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_9/PartitionedCall:output:0conv2d_7_845516conv2d_7_845518*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_845515�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_13_845521batch_normalization_13_845523batch_normalization_13_845525batch_normalization_13_845527*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_845252�
flatten_13/PartitionedCallPartitionedCalltf.one_hot_3/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_845535�
flatten_12/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_845542Y
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.concat_3/concatConcatV2#flatten_13/PartitionedCall:output:0#flatten_12/PartitionedCall:output:0 tf.concat_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
residual_tower/PartitionedCallPartitionedCalltf.concat_3/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_residual_tower_layer_call_and_return_conditional_losses_845550
.tf.__operators__.getitem_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_7/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_7/strided_slice/stack:output:09tf.__operators__.getitem_7/strided_slice/stack_1:output:09tf.__operators__.getitem_7/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*
ellipsis_mask*
new_axis_mask�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_7/strided_slice:output:0conv1d_7_845575conv1d_7_845577*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_7_layer_call_and_return_conditional_losses_845574
.tf.__operators__.getitem_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_6/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_6/strided_slice/stack:output:09tf.__operators__.getitem_6/strided_slice/stack_1:output:09tf.__operators__.getitem_6/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*
ellipsis_mask*
new_axis_mask�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0batch_normalization_15_845584batch_normalization_15_845586batch_normalization_15_845588batch_normalization_15_845590*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_845330�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_6/strided_slice:output:0conv1d_6_845612conv1d_6_845614*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_845611�
re_lu_11/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_11_layer_call_and_return_conditional_losses_845621�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0batch_normalization_14_845623batch_normalization_14_845625batch_normalization_14_845627batch_normalization_14_845629*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_845410�
flatten_15/PartitionedCallPartitionedCall!re_lu_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_845637�
re_lu_10/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_10_layer_call_and_return_conditional_losses_845643�
dense_3/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_3_845660dense_3_845662*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_845659�
flatten_14/PartitionedCallPartitionedCall!re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_14_layer_call_and_return_conditional_losses_845670�
value/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0value_845687value_845689*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_value_layer_call_and_return_conditional_losses_845686�
policy/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0policy_845707policy_845709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_policy_layer_call_and_return_conditional_losses_845706�
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_6_845482*'
_output_shapes
:�*
dtype0�
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_7_845516*(
_output_shapes
:��*
dtype0�
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_7_845575*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_6_845612*"
_output_shapes
:*
dtype0�
"conv1d_6/kernel/Regularizer/L2LossL2Loss9conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0+conv1d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_3_845660* 
_output_shapes
:
��*
dtype0�
!dense_3/kernel/Regularizer/L2LossL2Loss8dense_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_3/kernel/Regularizer/mulMul)dense_3/kernel/Regularizer/mul/x:output:0*dense_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ~
/policy/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOppolicy_845707*
_output_shapes
:	�	*
dtype0�
 policy/kernel/Regularizer/L2LossL2Loss7policy/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0)policy/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: |
.value/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpvalue_845687*
_output_shapes
:	�*
dtype0�
value/kernel/Regularizer/L2LossL2Loss6value/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0(value/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'policy/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	w

Identity_1Identity&value/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall2^conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_3/StatefulPartitionedCall1^dense_3/kernel/Regularizer/L2Loss/ReadVariableOp^policy/StatefulPartitionedCall0^policy/kernel/Regularizer/L2Loss/ReadVariableOp^value/StatefulPartitionedCall/^value/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2f
1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_6/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2d
0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp0dense_3/kernel/Regularizer/L2Loss/ReadVariableOp2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2b
/policy/kernel/Regularizer/L2Loss/ReadVariableOp/policy/kernel/Regularizer/L2Loss/ReadVariableOp2>
value/StatefulPartitionedCallvalue/StatefulPartitionedCall2`
.value/kernel/Regularizer/L2Loss/ReadVariableOp.value/kernel/Regularizer/L2Loss/ReadVariableOp:&"
 
_user_specified_name845709:&"
 
_user_specified_name845707:&"
 
_user_specified_name845689:&"
 
_user_specified_name845687:&"
 
_user_specified_name845662:&"
 
_user_specified_name845660:&"
 
_user_specified_name845629:&"
 
_user_specified_name845627:&"
 
_user_specified_name845625:&"
 
_user_specified_name845623:&"
 
_user_specified_name845614:&"
 
_user_specified_name845612:&"
 
_user_specified_name845590:&"
 
_user_specified_name845588:&"
 
_user_specified_name845586:&"
 
_user_specified_name845584:&"
 
_user_specified_name845577:&"
 
_user_specified_name845575:&"
 
_user_specified_name845527:&"
 
_user_specified_name845525:&
"
 
_user_specified_name845523:&	"
 
_user_specified_name845521:&"
 
_user_specified_name845518:&"
 
_user_specified_name845516:&"
 
_user_specified_name845493:&"
 
_user_specified_name845491:&"
 
_user_specified_name845489:&"
 
_user_specified_name845487:&"
 
_user_specified_name845484:&"
 
_user_specified_name845482:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_4
�
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_846438

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_846427

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	:S O
+
_output_shapes
:���������	
 
_user_specified_nameinputs
�
f
J__inference_residual_tower_layer_call_and_return_conditional_losses_845550

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:����������[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_845190

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_13_layer_call_fn_846380

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_845270�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846376:&"
 
_user_specified_name846374:&"
 
_user_specified_name846372:&"
 
_user_specified_name846370:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�'
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_845330

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_14_layer_call_fn_846610

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_845430|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name846606:&"
 
_user_specified_name846604:&"
 
_user_specified_name846602:&"
 
_user_specified_name846600:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_5_846826K
8policy_kernel_regularizer_l2loss_readvariableop_resource:	�	
identity��/policy/kernel/Regularizer/L2Loss/ReadVariableOp�
/policy/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp8policy_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�	*
dtype0�
 policy/kernel/Regularizer/L2LossL2Loss7policy/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0)policy/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentity!policy/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: T
NoOpNoOp0^policy/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/policy/kernel/Regularizer/L2Loss/ReadVariableOp/policy/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
_
C__inference_re_lu_9_layer_call_and_return_conditional_losses_845500

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_40
serving_default_input_4:0���������	:
policy0
StatefulPartitionedCall:0���������	9
value0
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
layer_with_weights-5
layer-18
layer_with_weights-6
layer-19
layer_with_weights-7
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-8
layer-25
layer_with_weights-9
layer-26
layer_with_weights-10
layer-27
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_default_save_signature
$	optimizer
%loss
&
signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
'	keras_api"
_tf_keras_layer
(
(	keras_api"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
(
+	keras_api"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op"
_tf_keras_layer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;axis
	<gamma
=beta
>moving_mean
?moving_variance"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
(
f	keras_api"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
(
m	keras_api"
_tf_keras_layer
(
n	keras_api"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
20
31
<2
=3
>4
?5
L6
M7
V8
W9
X10
Y11
u12
v13
~14
15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
�
20
31
<2
=3
L4
M5
V6
W7
u8
v9
~10
11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
X
�0
�1
�2
�3
�4
�5
�6"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
#_default_save_signature
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_tictactoe_model_layer_call_fn_845940
0__inference_tictactoe_model_layer_call_fn_846007�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845742
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845873�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
!__inference__wrapped_model_845172input_4"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
-
�serving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_6_layer_call_fn_846245�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_846259�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(�2conv2d_6/kernel
:�2conv2d_6/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_12_layer_call_fn_846272
7__inference_batch_normalization_12_layer_call_fn_846285�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846303
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846321�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_12/gamma
*:(�2batch_normalization_12/beta
3:1� (2"batch_normalization_12/moving_mean
7:5� (2&batch_normalization_12/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_re_lu_9_layer_call_fn_846326�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_re_lu_9_layer_call_and_return_conditional_losses_846331�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_7_layer_call_fn_846340�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_846354�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)��2conv2d_7/kernel
:�2conv2d_7/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_13_layer_call_fn_846367
7__inference_batch_normalization_13_layer_call_fn_846380�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846398
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846416�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_13/gamma
*:(�2batch_normalization_13/beta
3:1� (2"batch_normalization_13/moving_mean
7:5� (2&batch_normalization_13/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_13_layer_call_fn_846421�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_13_layer_call_and_return_conditional_losses_846427�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_12_layer_call_fn_846432�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_12_layer_call_and_return_conditional_losses_846438�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_residual_tower_layer_call_fn_846443�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_residual_tower_layer_call_and_return_conditional_losses_846448�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
"
_generic_user_object
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv1d_7_layer_call_fn_846457�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv1d_7_layer_call_and_return_conditional_losses_846476�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
%:#2conv1d_7/kernel
:2conv1d_7/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv1d_6_layer_call_fn_846485�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv1d_6_layer_call_and_return_conditional_losses_846504�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
%:#2conv1d_6/kernel
:2conv1d_6/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_15_layer_call_fn_846517
7__inference_batch_normalization_15_layer_call_fn_846530�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846564
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846584�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_15/gamma
):'2batch_normalization_15/beta
2:0 (2"batch_normalization_15/moving_mean
6:4 (2&batch_normalization_15/moving_variance
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_14_layer_call_fn_846597
7__inference_batch_normalization_14_layer_call_fn_846610�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846644
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846664�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_14/gamma
):'2batch_normalization_14/beta
2:0 (2"batch_normalization_14/moving_mean
6:4 (2&batch_normalization_14/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_11_layer_call_fn_846669�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_11_layer_call_and_return_conditional_losses_846674�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_10_layer_call_fn_846679�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_10_layer_call_and_return_conditional_losses_846684�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_15_layer_call_fn_846689�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_15_layer_call_and_return_conditional_losses_846695�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_14_layer_call_fn_846700�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_14_layer_call_and_return_conditional_losses_846706�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_3_layer_call_fn_846715�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_3_layer_call_and_return_conditional_losses_846730�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��2dense_3/kernel
:�2dense_3/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_policy_layer_call_fn_846739�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_policy_layer_call_and_return_conditional_losses_846754�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :	�	2policy/kernel
:	2policy/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_value_layer_call_fn_846763�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_value_layer_call_and_return_conditional_losses_846778�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
:	�2value/kernel
:2
value/bias
�
�trace_02�
__inference_loss_fn_0_846786�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_846794�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_846802�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_846810�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_846818�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_5_846826�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_6_846834�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
\
>0
?1
X2
Y3
�4
�5
�6
�7"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_tictactoe_model_layer_call_fn_845940input_4"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_tictactoe_model_layer_call_fn_846007input_4"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845742input_4"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845873input_4"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_846208input_4"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_4
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_6_layer_call_fn_846245inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_846259inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_12_layer_call_fn_846272inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_12_layer_call_fn_846285inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846303inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846321inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_re_lu_9_layer_call_fn_846326inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_re_lu_9_layer_call_and_return_conditional_losses_846331inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_7_layer_call_fn_846340inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_846354inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_13_layer_call_fn_846367inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_13_layer_call_fn_846380inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846398inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846416inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_flatten_13_layer_call_fn_846421inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_13_layer_call_and_return_conditional_losses_846427inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_flatten_12_layer_call_fn_846432inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_12_layer_call_and_return_conditional_losses_846438inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_residual_tower_layer_call_fn_846443inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_residual_tower_layer_call_and_return_conditional_losses_846448inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv1d_7_layer_call_fn_846457inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv1d_7_layer_call_and_return_conditional_losses_846476inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv1d_6_layer_call_fn_846485inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv1d_6_layer_call_and_return_conditional_losses_846504inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_15_layer_call_fn_846517inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_15_layer_call_fn_846530inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846564inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846584inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_14_layer_call_fn_846597inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_14_layer_call_fn_846610inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846644inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846664inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_11_layer_call_fn_846669inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_11_layer_call_and_return_conditional_losses_846674inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_10_layer_call_fn_846679inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_10_layer_call_and_return_conditional_losses_846684inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_flatten_15_layer_call_fn_846689inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_15_layer_call_and_return_conditional_losses_846695inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_flatten_14_layer_call_fn_846700inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_14_layer_call_and_return_conditional_losses_846706inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_3_layer_call_fn_846715inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_3_layer_call_and_return_conditional_losses_846730inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_policy_layer_call_fn_846739inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_policy_layer_call_and_return_conditional_losses_846754inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_value_layer_call_fn_846763inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_value_layer_call_and_return_conditional_losses_846778inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_846786"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_846794"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_846802"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_846810"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_4_846818"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_5_846826"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_6_846834"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
/:-�2Adam/m/conv2d_6/kernel
/:-�2Adam/v/conv2d_6/kernel
!:�2Adam/m/conv2d_6/bias
!:�2Adam/v/conv2d_6/bias
0:.�2#Adam/m/batch_normalization_12/gamma
0:.�2#Adam/v/batch_normalization_12/gamma
/:-�2"Adam/m/batch_normalization_12/beta
/:-�2"Adam/v/batch_normalization_12/beta
0:.��2Adam/m/conv2d_7/kernel
0:.��2Adam/v/conv2d_7/kernel
!:�2Adam/m/conv2d_7/bias
!:�2Adam/v/conv2d_7/bias
0:.�2#Adam/m/batch_normalization_13/gamma
0:.�2#Adam/v/batch_normalization_13/gamma
/:-�2"Adam/m/batch_normalization_13/beta
/:-�2"Adam/v/batch_normalization_13/beta
*:(2Adam/m/conv1d_7/kernel
*:(2Adam/v/conv1d_7/kernel
 :2Adam/m/conv1d_7/bias
 :2Adam/v/conv1d_7/bias
*:(2Adam/m/conv1d_6/kernel
*:(2Adam/v/conv1d_6/kernel
 :2Adam/m/conv1d_6/bias
 :2Adam/v/conv1d_6/bias
/:-2#Adam/m/batch_normalization_15/gamma
/:-2#Adam/v/batch_normalization_15/gamma
.:,2"Adam/m/batch_normalization_15/beta
.:,2"Adam/v/batch_normalization_15/beta
/:-2#Adam/m/batch_normalization_14/gamma
/:-2#Adam/v/batch_normalization_14/gamma
.:,2"Adam/m/batch_normalization_14/beta
.:,2"Adam/v/batch_normalization_14/beta
':%
��2Adam/m/dense_3/kernel
':%
��2Adam/v/dense_3/kernel
 :�2Adam/m/dense_3/bias
 :�2Adam/v/dense_3/bias
%:#	�	2Adam/m/policy/kernel
%:#	�	2Adam/v/policy/kernel
:	2Adam/m/policy/bias
:	2Adam/v/policy/bias
$:"	�2Adam/m/value/kernel
$:"	�2Adam/v/value/kernel
:2Adam/m/value/bias
:2Adam/v/value/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
!__inference__wrapped_model_845172�,23<=>?LMVWXYuv����~����������0�-
&�#
!�
input_4���������	
� "Y�V
*
policy �
policy���������	
(
value�
value����������
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846303�<=>?R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_846321�<=>?R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
7__inference_batch_normalization_12_layer_call_fn_846272�<=>?R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
7__inference_batch_normalization_12_layer_call_fn_846285�<=>?R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846398�VWXYR�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_846416�VWXYR�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
7__inference_batch_normalization_13_layer_call_fn_846367�VWXYR�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
7__inference_batch_normalization_13_layer_call_fn_846380�VWXYR�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846644�����D�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_846664�����D�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
7__inference_batch_normalization_14_layer_call_fn_846597�����D�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
7__inference_batch_normalization_14_layer_call_fn_846610�����D�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846564�����D�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_846584�����D�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
7__inference_batch_normalization_15_layer_call_fn_846517�����D�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
7__inference_batch_normalization_15_layer_call_fn_846530�����D�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
D__inference_conv1d_6_layer_call_and_return_conditional_losses_846504m~4�1
*�'
%�"
inputs����������
� "1�.
'�$
tensor_0����������
� �
)__inference_conv1d_6_layer_call_fn_846485b~4�1
*�'
%�"
inputs����������
� "&�#
unknown�����������
D__inference_conv1d_7_layer_call_and_return_conditional_losses_846476muv4�1
*�'
%�"
inputs����������
� "1�.
'�$
tensor_0����������
� �
)__inference_conv1d_7_layer_call_fn_846457buv4�1
*�'
%�"
inputs����������
� "&�#
unknown�����������
D__inference_conv2d_6_layer_call_and_return_conditional_losses_846259t237�4
-�*
(�%
inputs���������
� "5�2
+�(
tensor_0����������
� �
)__inference_conv2d_6_layer_call_fn_846245i237�4
-�*
(�%
inputs���������
� "*�'
unknown�����������
D__inference_conv2d_7_layer_call_and_return_conditional_losses_846354uLM8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
)__inference_conv2d_7_layer_call_fn_846340jLM8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
C__inference_dense_3_layer_call_and_return_conditional_losses_846730g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_3_layer_call_fn_846715\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
F__inference_flatten_12_layer_call_and_return_conditional_losses_846438i8�5
.�+
)�&
inputs����������
� "-�*
#� 
tensor_0����������
� �
+__inference_flatten_12_layer_call_fn_846432^8�5
.�+
)�&
inputs����������
� ""�
unknown�����������
F__inference_flatten_13_layer_call_and_return_conditional_losses_846427c3�0
)�&
$�!
inputs���������	
� ",�)
"�
tensor_0���������
� �
+__inference_flatten_13_layer_call_fn_846421X3�0
)�&
$�!
inputs���������	
� "!�
unknown����������
F__inference_flatten_14_layer_call_and_return_conditional_losses_846706e4�1
*�'
%�"
inputs����������
� "-�*
#� 
tensor_0����������
� �
+__inference_flatten_14_layer_call_fn_846700Z4�1
*�'
%�"
inputs����������
� ""�
unknown�����������
F__inference_flatten_15_layer_call_and_return_conditional_losses_846695e4�1
*�'
%�"
inputs����������
� "-�*
#� 
tensor_0����������
� �
+__inference_flatten_15_layer_call_fn_846689Z4�1
*�'
%�"
inputs����������
� ""�
unknown����������D
__inference_loss_fn_0_846786$2�

� 
� "�
unknown D
__inference_loss_fn_1_846794$L�

� 
� "�
unknown D
__inference_loss_fn_2_846802$u�

� 
� "�
unknown D
__inference_loss_fn_3_846810$~�

� 
� "�
unknown E
__inference_loss_fn_4_846818%��

� 
� "�
unknown E
__inference_loss_fn_5_846826%��

� 
� "�
unknown E
__inference_loss_fn_6_846834%��

� 
� "�
unknown �
B__inference_policy_layer_call_and_return_conditional_losses_846754f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������	
� �
'__inference_policy_layer_call_fn_846739[��0�-
&�#
!�
inputs����������
� "!�
unknown���������	�
D__inference_re_lu_10_layer_call_and_return_conditional_losses_846684i4�1
*�'
%�"
inputs����������
� "1�.
'�$
tensor_0����������
� �
)__inference_re_lu_10_layer_call_fn_846679^4�1
*�'
%�"
inputs����������
� "&�#
unknown�����������
D__inference_re_lu_11_layer_call_and_return_conditional_losses_846674i4�1
*�'
%�"
inputs����������
� "1�.
'�$
tensor_0����������
� �
)__inference_re_lu_11_layer_call_fn_846669^4�1
*�'
%�"
inputs����������
� "&�#
unknown�����������
C__inference_re_lu_9_layer_call_and_return_conditional_losses_846331q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
(__inference_re_lu_9_layer_call_fn_846326f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
J__inference_residual_tower_layer_call_and_return_conditional_losses_846448a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
/__inference_residual_tower_layer_call_fn_846443V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
$__inference_signature_wrapper_846208�,23<=>?LMVWXYuv����~����������;�8
� 
1�.
,
input_4!�
input_4���������	"Y�V
*
policy �
policy���������	
(
value�
value����������
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845742�,23<=>?LMVWXYuv����~����������8�5
.�+
!�
input_4���������	
p

 
� "Y�V
O�L
$�!

tensor_0_0���������	
$�!

tensor_0_1���������
� �
K__inference_tictactoe_model_layer_call_and_return_conditional_losses_845873�,23<=>?LMVWXYuv����~����������8�5
.�+
!�
input_4���������	
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������	
$�!

tensor_0_1���������
� �
0__inference_tictactoe_model_layer_call_fn_845940�,23<=>?LMVWXYuv����~����������8�5
.�+
!�
input_4���������	
p

 
� "K�H
"�
tensor_0���������	
"�
tensor_1����������
0__inference_tictactoe_model_layer_call_fn_846007�,23<=>?LMVWXYuv����~����������8�5
.�+
!�
input_4���������	
p 

 
� "K�H
"�
tensor_0���������	
"�
tensor_1����������
A__inference_value_layer_call_and_return_conditional_losses_846778f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
&__inference_value_layer_call_fn_846763[��0�-
&�#
!�
inputs����������
� "!�
unknown���������