?? 
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
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
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
list(type)(0?
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
Ttype"
Indextype:
2	"

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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:?*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_4/gamma
?
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_4/beta
?
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_4/moving_mean
?
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_4/moving_variance
?
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_5/gamma
?
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_5/beta
?
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_5/moving_mean
?
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_5/moving_variance
?
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:?*
dtype0
~
conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_3/kernel
w
#conv1d_3/kernel/Read/ReadVariableOpReadVariableOpconv1d_3/kernel*"
_output_shapes
:*
dtype0
r
conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_3/bias
k
!conv1d_3/bias/Read/ReadVariableOpReadVariableOpconv1d_3/bias*
_output_shapes
:*
dtype0
~
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_2/kernel
w
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*"
_output_shapes
:*
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
:*
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:*
dtype0
?
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:*
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:*
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
??*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?*
dtype0
w
policy/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	*
shared_namepolicy/kernel
p
!policy/kernel/Read/ReadVariableOpReadVariableOppolicy/kernel*
_output_shapes
:	?	*
dtype0
n
policy/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namepolicy/bias
g
policy/bias/Read/ReadVariableOpReadVariableOppolicy/bias*
_output_shapes
:	*
dtype0
u
value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namevalue/kernel
n
 value/kernel/Read/ReadVariableOpReadVariableOpvalue/kernel*
_output_shapes
:	?*
dtype0
l

value/biasVarHandleOp*
_output_shapes
: *
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
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
Z
rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namerho
S
rho/Read/ReadVariableOpReadVariableOprho*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameRMSprop/conv2d_2/kernel/rms
?
/RMSprop/conv2d_2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_2/kernel/rms*'
_output_shapes
:?*
dtype0
?
RMSprop/conv2d_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/conv2d_2/bias/rms
?
-RMSprop/conv2d_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_2/bias/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_4/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_4/gamma/rms
?
;RMSprop/batch_normalization_4/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_4/gamma/rms*
_output_shapes	
:?*
dtype0
?
&RMSprop/batch_normalization_4/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&RMSprop/batch_normalization_4/beta/rms
?
:RMSprop/batch_normalization_4/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_4/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/conv2d_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameRMSprop/conv2d_3/kernel/rms
?
/RMSprop/conv2d_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_3/kernel/rms*(
_output_shapes
:??*
dtype0
?
RMSprop/conv2d_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/conv2d_3/bias/rms
?
-RMSprop/conv2d_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_3/bias/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_5/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_5/gamma/rms
?
;RMSprop/batch_normalization_5/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_5/gamma/rms*
_output_shapes	
:?*
dtype0
?
&RMSprop/batch_normalization_5/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&RMSprop/batch_normalization_5/beta/rms
?
:RMSprop/batch_normalization_5/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_5/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/conv1d_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/conv1d_3/kernel/rms
?
/RMSprop/conv1d_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1d_3/kernel/rms*"
_output_shapes
:*
dtype0
?
RMSprop/conv1d_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/conv1d_3/bias/rms
?
-RMSprop/conv1d_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1d_3/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv1d_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/conv1d_2/kernel/rms
?
/RMSprop/conv1d_2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1d_2/kernel/rms*"
_output_shapes
:*
dtype0
?
RMSprop/conv1d_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/conv1d_2/bias/rms
?
-RMSprop/conv1d_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1d_2/bias/rms*
_output_shapes
:*
dtype0
?
'RMSprop/batch_normalization_7/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_7/gamma/rms
?
;RMSprop/batch_normalization_7/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_7/gamma/rms*
_output_shapes
:*
dtype0
?
&RMSprop/batch_normalization_7/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/batch_normalization_7/beta/rms
?
:RMSprop/batch_normalization_7/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_7/beta/rms*
_output_shapes
:*
dtype0
?
'RMSprop/batch_normalization_6/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_6/gamma/rms
?
;RMSprop/batch_normalization_6/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_6/gamma/rms*
_output_shapes
:*
dtype0
?
&RMSprop/batch_normalization_6/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/batch_normalization_6/beta/rms
?
:RMSprop/batch_normalization_6/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_6/beta/rms*
_output_shapes
:*
dtype0
?
RMSprop/dense_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameRMSprop/dense_1/kernel/rms
?
.RMSprop/dense_1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_1/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/dense_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameRMSprop/dense_1/bias/rms
?
,RMSprop/dense_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_1/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/policy/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	**
shared_nameRMSprop/policy/kernel/rms
?
-RMSprop/policy/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/policy/kernel/rms*
_output_shapes
:	?	*
dtype0
?
RMSprop/policy/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameRMSprop/policy/bias/rms

+RMSprop/policy/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/policy/bias/rms*
_output_shapes
:	*
dtype0
?
RMSprop/value/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameRMSprop/value/kernel/rms
?
,RMSprop/value/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/value/kernel/rms*
_output_shapes
:	?*
dtype0
?
RMSprop/value/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameRMSprop/value/bias/rms
}
*RMSprop/value/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/value/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
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
	optimizer
loss
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
 

$	keras_api

%	keras_api

&	keras_api

'	keras_api

(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
R
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
R
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api

S	keras_api
R
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api

X	keras_api

Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
h

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
?
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
?
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance
t	variables
utrainable_variables
vregularization_losses
w	keras_api
R
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
R
|	variables
}trainable_variables
~regularization_losses
	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?

?decay
?learning_rate
?momentum
?rho
	?iter
)rms?
*rms?
0rms?
1rms?
<rms?
=rms?
Crms?
Drms?
Zrms?
[rms?
`rms?
arms?
grms?
hrms?
prms?
qrms??rms??rms??rms??rms??rms??rms?
 
?
)0
*1
02
13
24
35
<6
=7
C8
D9
E10
F11
Z12
[13
`14
a15
g16
h17
i18
j19
p20
q21
r22
s23
?24
?25
?26
?27
?28
?29
?
)0
*1
02
13
<4
=5
C6
D7
Z8
[9
`10
a11
g12
h13
p14
q15
?16
?17
?18
?19
?20
?21
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
 
 
 
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

00
11
22
33

00
11
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
E2
F3

C0
D1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
 
 
[Y
VARIABLE_VALUEconv1d_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
[Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

`0
a1

`0
a1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

g0
h1
i2
j3

g0
h1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

p0
q1
r2
s3

p0
q1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
x	variables
ytrainable_variables
zregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
YW
VARIABLE_VALUEpolicy/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEpolicy/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
YW
VARIABLE_VALUEvalue/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
value/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
A?
VARIABLE_VALUErho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
8
20
31
E2
F3
i4
j5
r6
s7
?
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
27
(
?0
?1
?2
?3
?4
 
 
 
 
 
 
 

20
31
 
 
 
 
 
 
 
 
 
 
 
 
 
 

E0
F1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

i0
j1
 
 
 
 

r0
s1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUERMSprop/conv2d_2/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/conv2d_2/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_4/gamma/rmsSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_4/beta/rmsRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_3/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/conv2d_3/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_5/gamma/rmsSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_5/beta/rmsRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv1d_3/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/conv1d_3/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv1d_2/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/conv1d_2/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_7/gamma/rmsSlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_7/beta/rmsRlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_6/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_6/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_1/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUERMSprop/dense_1/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/policy/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUERMSprop/policy/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/value/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUERMSprop/value/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_2Placeholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv2d_2/kernelconv2d_2/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv1d_3/kernelconv1d_3/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betaconv1d_2/kernelconv1d_2/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betadense_1/kerneldense_1/biasvalue/kernel
value/biaspolicy/kernelpolicy/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????	:?????????*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_4297204
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp#conv1d_3/kernel/Read/ReadVariableOp!conv1d_3/bias/Read/ReadVariableOp#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp!policy/kernel/Read/ReadVariableOppolicy/bias/Read/ReadVariableOp value/kernel/Read/ReadVariableOpvalue/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOprho/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp/RMSprop/conv2d_2/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_2/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_4/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_4/beta/rms/Read/ReadVariableOp/RMSprop/conv2d_3/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_3/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_5/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_5/beta/rms/Read/ReadVariableOp/RMSprop/conv1d_3/kernel/rms/Read/ReadVariableOp-RMSprop/conv1d_3/bias/rms/Read/ReadVariableOp/RMSprop/conv1d_2/kernel/rms/Read/ReadVariableOp-RMSprop/conv1d_2/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_7/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_7/beta/rms/Read/ReadVariableOp;RMSprop/batch_normalization_6/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_6/beta/rms/Read/ReadVariableOp.RMSprop/dense_1/kernel/rms/Read/ReadVariableOp,RMSprop/dense_1/bias/rms/Read/ReadVariableOp-RMSprop/policy/kernel/rms/Read/ReadVariableOp+RMSprop/policy/bias/rms/Read/ReadVariableOp,RMSprop/value/kernel/rms/Read/ReadVariableOp*RMSprop/value/bias/rms/Read/ReadVariableOpConst*P
TinI
G2E	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_4298936
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_2/kernelconv2d_2/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv1d_3/kernelconv1d_3/biasconv1d_2/kernelconv1d_2/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancebatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancedense_1/kerneldense_1/biaspolicy/kernelpolicy/biasvalue/kernel
value/biasdecaylearning_ratemomentumrhoRMSprop/itertotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4RMSprop/conv2d_2/kernel/rmsRMSprop/conv2d_2/bias/rms'RMSprop/batch_normalization_4/gamma/rms&RMSprop/batch_normalization_4/beta/rmsRMSprop/conv2d_3/kernel/rmsRMSprop/conv2d_3/bias/rms'RMSprop/batch_normalization_5/gamma/rms&RMSprop/batch_normalization_5/beta/rmsRMSprop/conv1d_3/kernel/rmsRMSprop/conv1d_3/bias/rmsRMSprop/conv1d_2/kernel/rmsRMSprop/conv1d_2/bias/rms'RMSprop/batch_normalization_7/gamma/rms&RMSprop/batch_normalization_7/beta/rms'RMSprop/batch_normalization_6/gamma/rms&RMSprop/batch_normalization_6/beta/rmsRMSprop/dense_1/kernel/rmsRMSprop/dense_1/bias/rmsRMSprop/policy/kernel/rmsRMSprop/policy/bias/rmsRMSprop/value/kernel/rmsRMSprop/value/bias/rms*O
TinH
F2D*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_4299147˳
?
?
(__inference_policy_layer_call_fn_4298585

inputs
unknown:	?	
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_4296010o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295511

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
 :??????????????????z
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_4295968

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_1_layer_call_and_return_conditional_losses_4298570

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_1/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:???????????
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295706

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4296370

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298442

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
 :??????????????????h
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
1__inference_tictactoe_model_layer_call_fn_4296125
input_2"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	? 

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
??

unknown_24:	?

unknown_25:	?

unknown_26:

unknown_27:	?	

unknown_28:	
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
&:?????????	:?????????*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296060o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_2
?
?
'__inference_value_layer_call_fn_4298617

inputs
unknown:	?
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
GPU 2J 8? *K
fFRD
B__inference_value_layer_call_and_return_conditional_losses_4295987o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
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
?
?
C__inference_policy_layer_call_and_return_conditional_losses_4296010

inputs1
matmul_readvariableop_resource:	?	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/policy/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????	?
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^policy/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_5_layer_call_fn_4298077

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_4295778`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_4_layer_call_fn_4297796

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295381?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298496

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????h
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
ϊ
?*
#__inference__traced_restore_4299147
file_prefix;
 assignvariableop_conv2d_2_kernel:?/
 assignvariableop_1_conv2d_2_bias:	?=
.assignvariableop_2_batch_normalization_4_gamma:	?<
-assignvariableop_3_batch_normalization_4_beta:	?C
4assignvariableop_4_batch_normalization_4_moving_mean:	?G
8assignvariableop_5_batch_normalization_4_moving_variance:	?>
"assignvariableop_6_conv2d_3_kernel:??/
 assignvariableop_7_conv2d_3_bias:	?=
.assignvariableop_8_batch_normalization_5_gamma:	?<
-assignvariableop_9_batch_normalization_5_beta:	?D
5assignvariableop_10_batch_normalization_5_moving_mean:	?H
9assignvariableop_11_batch_normalization_5_moving_variance:	?9
#assignvariableop_12_conv1d_3_kernel:/
!assignvariableop_13_conv1d_3_bias:9
#assignvariableop_14_conv1d_2_kernel:/
!assignvariableop_15_conv1d_2_bias:=
/assignvariableop_16_batch_normalization_7_gamma:<
.assignvariableop_17_batch_normalization_7_beta:C
5assignvariableop_18_batch_normalization_7_moving_mean:G
9assignvariableop_19_batch_normalization_7_moving_variance:=
/assignvariableop_20_batch_normalization_6_gamma:<
.assignvariableop_21_batch_normalization_6_beta:C
5assignvariableop_22_batch_normalization_6_moving_mean:G
9assignvariableop_23_batch_normalization_6_moving_variance:6
"assignvariableop_24_dense_1_kernel:
??/
 assignvariableop_25_dense_1_bias:	?4
!assignvariableop_26_policy_kernel:	?	-
assignvariableop_27_policy_bias:	3
 assignvariableop_28_value_kernel:	?,
assignvariableop_29_value_bias:#
assignvariableop_30_decay: +
!assignvariableop_31_learning_rate: &
assignvariableop_32_momentum: !
assignvariableop_33_rho: *
 assignvariableop_34_rmsprop_iter:	 #
assignvariableop_35_total: #
assignvariableop_36_count: %
assignvariableop_37_total_1: %
assignvariableop_38_count_1: %
assignvariableop_39_total_2: %
assignvariableop_40_count_2: %
assignvariableop_41_total_3: %
assignvariableop_42_count_3: %
assignvariableop_43_total_4: %
assignvariableop_44_count_4: J
/assignvariableop_45_rmsprop_conv2d_2_kernel_rms:?<
-assignvariableop_46_rmsprop_conv2d_2_bias_rms:	?J
;assignvariableop_47_rmsprop_batch_normalization_4_gamma_rms:	?I
:assignvariableop_48_rmsprop_batch_normalization_4_beta_rms:	?K
/assignvariableop_49_rmsprop_conv2d_3_kernel_rms:??<
-assignvariableop_50_rmsprop_conv2d_3_bias_rms:	?J
;assignvariableop_51_rmsprop_batch_normalization_5_gamma_rms:	?I
:assignvariableop_52_rmsprop_batch_normalization_5_beta_rms:	?E
/assignvariableop_53_rmsprop_conv1d_3_kernel_rms:;
-assignvariableop_54_rmsprop_conv1d_3_bias_rms:E
/assignvariableop_55_rmsprop_conv1d_2_kernel_rms:;
-assignvariableop_56_rmsprop_conv1d_2_bias_rms:I
;assignvariableop_57_rmsprop_batch_normalization_7_gamma_rms:H
:assignvariableop_58_rmsprop_batch_normalization_7_beta_rms:I
;assignvariableop_59_rmsprop_batch_normalization_6_gamma_rms:H
:assignvariableop_60_rmsprop_batch_normalization_6_beta_rms:B
.assignvariableop_61_rmsprop_dense_1_kernel_rms:
??;
,assignvariableop_62_rmsprop_dense_1_bias_rms:	?@
-assignvariableop_63_rmsprop_policy_kernel_rms:	?	9
+assignvariableop_64_rmsprop_policy_bias_rms:	?
,assignvariableop_65_rmsprop_value_kernel_rms:	?8
*assignvariableop_66_rmsprop_value_bias_rms:
identity_68??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?"
value?"B?"DB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?
value?B?DB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*R
dtypesH
F2D	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_4_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_4_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_4_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_4_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_5_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_5_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_5_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_5_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv1d_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv1d_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv1d_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv1d_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_7_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_7_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_7_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_7_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_6_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_6_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_6_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_6_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_1_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_1_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp!assignvariableop_26_policy_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_policy_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp assignvariableop_28_value_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_value_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_decayIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_learning_rateIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_momentumIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpassignvariableop_33_rhoIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp assignvariableop_34_rmsprop_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_2Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_3Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_3Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_4Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_4Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp/assignvariableop_45_rmsprop_conv2d_2_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp-assignvariableop_46_rmsprop_conv2d_2_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp;assignvariableop_47_rmsprop_batch_normalization_4_gamma_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp:assignvariableop_48_rmsprop_batch_normalization_4_beta_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp/assignvariableop_49_rmsprop_conv2d_3_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp-assignvariableop_50_rmsprop_conv2d_3_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp;assignvariableop_51_rmsprop_batch_normalization_5_gamma_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp:assignvariableop_52_rmsprop_batch_normalization_5_beta_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp/assignvariableop_53_rmsprop_conv1d_3_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp-assignvariableop_54_rmsprop_conv1d_3_bias_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp/assignvariableop_55_rmsprop_conv1d_2_kernel_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp-assignvariableop_56_rmsprop_conv1d_2_bias_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp;assignvariableop_57_rmsprop_batch_normalization_7_gamma_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp:assignvariableop_58_rmsprop_batch_normalization_7_beta_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp;assignvariableop_59_rmsprop_batch_normalization_6_gamma_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp:assignvariableop_60_rmsprop_batch_normalization_6_beta_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp.assignvariableop_61_rmsprop_dense_1_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp,assignvariableop_62_rmsprop_dense_1_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp-assignvariableop_63_rmsprop_policy_kernel_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp+assignvariableop_64_rmsprop_policy_bias_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp,assignvariableop_65_rmsprop_value_kernel_rmsIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp*assignvariableop_66_rmsprop_value_bias_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_67Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_68IdentityIdentity_67:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_68Identity_68:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298248

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
 :??????????????????z
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
`
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4295937

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:??????????_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_6_layer_call_fn_4298362

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295640|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295445

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_4298094

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297907

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_5_layer_call_fn_4298000

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4296370x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4298140

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_re_lu_5_layer_call_fn_4298501

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4295893e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_5_layer_call_fn_4297961

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295445?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_4298678P
:conv1d_2_kernel_regularizer_square_readvariableop_resource:
identity??1conv1d_2/kernel/Regularizer/Square/ReadVariableOp?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_2_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv1d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298302

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????z
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_4_layer_call_fn_4298088

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_4295786a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_tictactoe_model_layer_call_fn_4297338

inputs"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	? 

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
??

unknown_24:	?

unknown_25:	?

unknown_26:

unknown_27:	?	

unknown_28:	
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
&:?????????	:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296665o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
`
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4295893

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:??????????_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298336

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????h
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
 __inference__traced_save_4298936
file_prefix.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop.
*savev2_conv1d_3_kernel_read_readvariableop,
(savev2_conv1d_3_bias_read_readvariableop.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop,
(savev2_policy_kernel_read_readvariableop*
&savev2_policy_bias_read_readvariableop+
'savev2_value_kernel_read_readvariableop)
%savev2_value_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop"
savev2_rho_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop:
6savev2_rmsprop_conv2d_2_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_2_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_4_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_4_beta_rms_read_readvariableop:
6savev2_rmsprop_conv2d_3_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_3_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_5_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_5_beta_rms_read_readvariableop:
6savev2_rmsprop_conv1d_3_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv1d_3_bias_rms_read_readvariableop:
6savev2_rmsprop_conv1d_2_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv1d_2_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_7_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_7_beta_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_6_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_6_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_1_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_1_bias_rms_read_readvariableop8
4savev2_rmsprop_policy_kernel_rms_read_readvariableop6
2savev2_rmsprop_policy_bias_rms_read_readvariableop7
3savev2_rmsprop_value_kernel_rms_read_readvariableop5
1savev2_rmsprop_value_bias_rms_read_readvariableop
savev2_const

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
: ?#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?"
value?"B?"DB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?
value?B?DB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop*savev2_conv1d_3_kernel_read_readvariableop(savev2_conv1d_3_bias_read_readvariableop*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop(savev2_policy_kernel_read_readvariableop&savev2_policy_bias_read_readvariableop'savev2_value_kernel_read_readvariableop%savev2_value_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableopsavev2_rho_read_readvariableop'savev2_rmsprop_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop6savev2_rmsprop_conv2d_2_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_2_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_4_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_4_beta_rms_read_readvariableop6savev2_rmsprop_conv2d_3_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_3_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_5_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_5_beta_rms_read_readvariableop6savev2_rmsprop_conv1d_3_kernel_rms_read_readvariableop4savev2_rmsprop_conv1d_3_bias_rms_read_readvariableop6savev2_rmsprop_conv1d_2_kernel_rms_read_readvariableop4savev2_rmsprop_conv1d_2_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_7_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_7_beta_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_6_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_6_beta_rms_read_readvariableop5savev2_rmsprop_dense_1_kernel_rms_read_readvariableop3savev2_rmsprop_dense_1_bias_rms_read_readvariableop4savev2_rmsprop_policy_kernel_rms_read_readvariableop2savev2_rmsprop_policy_bias_rms_read_readvariableop3savev2_rmsprop_value_kernel_rms_read_readvariableop1savev2_rmsprop_value_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *R
dtypesH
F2D	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :?:?:?:?:?:?:??:?:?:?:?:?:::::::::::::
??:?:	?	:	:	?:: : : : : : : : : : : : : : : :?:?:?:?:??:?:?:?:::::::::
??:?:	?	:	:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?	: 

_output_shapes
:	:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :-.)
'
_output_shapes
:?:!/

_output_shapes	
:?:!0

_output_shapes	
:?:!1

_output_shapes	
:?:.2*
(
_output_shapes
:??:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:(6$
"
_output_shapes
:: 7

_output_shapes
::(8$
"
_output_shapes
:: 9

_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
:: <

_output_shapes
:: =

_output_shapes
::&>"
 
_output_shapes
:
??:!?

_output_shapes	
:?:%@!

_output_shapes
:	?	: A

_output_shapes
:	:%B!

_output_shapes
:	?: C

_output_shapes
::D

_output_shapes
: 
?	
?
7__inference_batch_normalization_5_layer_call_fn_4297974

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295476?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298036

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_7_layer_call_and_return_conditional_losses_4295930

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298408

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
 :??????????????????z
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297871

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_residual_tower_layer_call_fn_4298099

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_residual_tower_layer_call_and_return_conditional_losses_4295795a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_6_layer_call_fn_4298349

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295593|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
B__inference_value_layer_call_and_return_conditional_losses_4298634

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.value/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
:?????????P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:??????????
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4295882

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_tictactoe_model_layer_call_fn_4296797
input_2"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	? 

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
??

unknown_24:	?

unknown_25:	?

unknown_26:

unknown_27:	?	

unknown_28:	
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
&:?????????	:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296665o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_2
?
?
%__inference_signature_wrapper_4297204
input_2"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	? 

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
??

unknown_24:	?

unknown_25:	?

unknown_26:

unknown_27:	?	

unknown_28:	
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
&:?????????	:?????????*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_4295359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_2
?
?
7__inference_batch_normalization_7_layer_call_fn_4298189

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295511|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295593

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
 :??????????????????z
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_4_layer_call_fn_4297822

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295706x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296665

inputs+
conv2d_2_4296532:?
conv2d_2_4296534:	?,
batch_normalization_4_4296537:	?,
batch_normalization_4_4296539:	?,
batch_normalization_4_4296541:	?,
batch_normalization_4_4296543:	?,
conv2d_3_4296547:??
conv2d_3_4296549:	?,
batch_normalization_5_4296552:	?,
batch_normalization_5_4296554:	?,
batch_normalization_5_4296556:	?,
batch_normalization_5_4296558:	?&
conv1d_3_4296570:
conv1d_3_4296572:+
batch_normalization_7_4296579:+
batch_normalization_7_4296581:+
batch_normalization_7_4296583:+
batch_normalization_7_4296585:&
conv1d_2_4296588:
conv1d_2_4296590:+
batch_normalization_6_4296594:+
batch_normalization_6_4296596:+
batch_normalization_6_4296598:+
batch_normalization_6_4296600:#
dense_1_4296605:
??
dense_1_4296607:	? 
value_4296611:	?
value_4296613:!
policy_4296616:	?	
policy_4296618:	
identity

identity_1??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp? conv1d_3/StatefulPartitionedCall?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp? conv2d_2/StatefulPartitionedCall?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp? conv2d_3/StatefulPartitionedCall?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?dense_1/StatefulPartitionedCall?0dense_1/kernel/Regularizer/Square/ReadVariableOp?policy/StatefulPartitionedCall?/policy/kernel/Regularizer/Square/ReadVariableOp?value/StatefulPartitionedCall?.value/kernel/Regularizer/Square/ReadVariableOp]
tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
tf.__operators__.add_1/AddV2AddV2inputs!tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	y
tf.cast_2/CastCast tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
tf.one_hot_1/one_hotOneHottf.cast_2/Cast:y:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	s
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
tf.reshape_1/ReshapeReshapetf.one_hot_1/one_hot:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalltf.reshape_1/Reshape:output:0conv2d_2_4296532conv2d_2_4296534*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4295683?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_4_4296537batch_normalization_4_4296539batch_normalization_4_4296541batch_normalization_4_4296543*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4296430?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4295721?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0conv2d_3_4296547conv2d_3_4296549*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4295739?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_5_4296552batch_normalization_5_4296554batch_normalization_5_4296556batch_normalization_5_4296558*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4296370?
flatten_5/PartitionedCallPartitionedCalltf.one_hot_1/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_4295778?
flatten_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_4295786Y
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
tf.concat_1/concatConcatV2"flatten_5/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0 tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
residual_tower/PartitionedCallPartitionedCalltf.concat_1/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_residual_tower_layer_call_and_return_conditional_losses_4295795
.tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_3/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_3/strided_slice/stack:output:09tf.__operators__.getitem_3/strided_slice/stack_1:output:09tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_3/strided_slice:output:0conv1d_3_4296570conv1d_3_4296572*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4295822
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_2/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0batch_normalization_7_4296579batch_normalization_7_4296581batch_normalization_7_4296583batch_normalization_7_4296585*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4296298?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_2/strided_slice:output:0conv1d_2_4296588conv1d_2_4296590*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4295882?
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4295893?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0batch_normalization_6_4296594batch_normalization_6_4296596batch_normalization_6_4296598batch_normalization_6_4296600*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4296222?
flatten_7/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_4295930?
re_lu_4/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4295937?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_1_4296605dense_1_4296607*
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
GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4295956?
flatten_6/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_4295968?
value/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0value_4296611value_4296613*
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
GPU 2J 8? *K
fFRD
B__inference_value_layer_call_and_return_conditional_losses_4295987?
policy/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0policy_4296616policy_4296618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_4296010?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_4296532*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_4296547*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_3_4296570*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_4296588*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_4296605* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOppolicy_4296616*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOpvalue_4296611*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'policy/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	w

Identity_1Identity&value/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp!^conv1d_3/StatefulPartitionedCall2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/Square/ReadVariableOp^policy/StatefulPartitionedCall0^policy/kernel/Regularizer/Square/ReadVariableOp^value/StatefulPartitionedCall/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp2>
value/StatefulPartitionedCallvalue/StatefulPartitionedCall2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4298176

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?!
"__inference__wrapped_model_4295359
input_2R
7tictactoe_model_conv2d_2_conv2d_readvariableop_resource:?G
8tictactoe_model_conv2d_2_biasadd_readvariableop_resource:	?L
=tictactoe_model_batch_normalization_4_readvariableop_resource:	?N
?tictactoe_model_batch_normalization_4_readvariableop_1_resource:	?]
Ntictactoe_model_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?_
Ptictactoe_model_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?S
7tictactoe_model_conv2d_3_conv2d_readvariableop_resource:??G
8tictactoe_model_conv2d_3_biasadd_readvariableop_resource:	?L
=tictactoe_model_batch_normalization_5_readvariableop_resource:	?N
?tictactoe_model_batch_normalization_5_readvariableop_1_resource:	?]
Ntictactoe_model_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?_
Ptictactoe_model_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?Z
Dtictactoe_model_conv1d_3_conv1d_expanddims_1_readvariableop_resource:F
8tictactoe_model_conv1d_3_biasadd_readvariableop_resource:U
Gtictactoe_model_batch_normalization_7_batchnorm_readvariableop_resource:Y
Ktictactoe_model_batch_normalization_7_batchnorm_mul_readvariableop_resource:W
Itictactoe_model_batch_normalization_7_batchnorm_readvariableop_1_resource:W
Itictactoe_model_batch_normalization_7_batchnorm_readvariableop_2_resource:Z
Dtictactoe_model_conv1d_2_conv1d_expanddims_1_readvariableop_resource:F
8tictactoe_model_conv1d_2_biasadd_readvariableop_resource:U
Gtictactoe_model_batch_normalization_6_batchnorm_readvariableop_resource:Y
Ktictactoe_model_batch_normalization_6_batchnorm_mul_readvariableop_resource:W
Itictactoe_model_batch_normalization_6_batchnorm_readvariableop_1_resource:W
Itictactoe_model_batch_normalization_6_batchnorm_readvariableop_2_resource:J
6tictactoe_model_dense_1_matmul_readvariableop_resource:
??F
7tictactoe_model_dense_1_biasadd_readvariableop_resource:	?G
4tictactoe_model_value_matmul_readvariableop_resource:	?C
5tictactoe_model_value_biasadd_readvariableop_resource:H
5tictactoe_model_policy_matmul_readvariableop_resource:	?	D
6tictactoe_model_policy_biasadd_readvariableop_resource:	
identity

identity_1??Etictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?Gtictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?4tictactoe_model/batch_normalization_4/ReadVariableOp?6tictactoe_model/batch_normalization_4/ReadVariableOp_1?Etictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?Gtictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?4tictactoe_model/batch_normalization_5/ReadVariableOp?6tictactoe_model/batch_normalization_5/ReadVariableOp_1?>tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp?@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_1?@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_2?Btictactoe_model/batch_normalization_6/batchnorm/mul/ReadVariableOp?>tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp?@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_1?@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_2?Btictactoe_model/batch_normalization_7/batchnorm/mul/ReadVariableOp?/tictactoe_model/conv1d_2/BiasAdd/ReadVariableOp?;tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?/tictactoe_model/conv1d_3/BiasAdd/ReadVariableOp?;tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp?/tictactoe_model/conv2d_2/BiasAdd/ReadVariableOp?.tictactoe_model/conv2d_2/Conv2D/ReadVariableOp?/tictactoe_model/conv2d_3/BiasAdd/ReadVariableOp?.tictactoe_model/conv2d_3/Conv2D/ReadVariableOp?.tictactoe_model/dense_1/BiasAdd/ReadVariableOp?-tictactoe_model/dense_1/MatMul/ReadVariableOp?-tictactoe_model/policy/BiasAdd/ReadVariableOp?,tictactoe_model/policy/MatMul/ReadVariableOp?,tictactoe_model/value/BiasAdd/ReadVariableOp?+tictactoe_model/value/MatMul/ReadVariableOpm
(tictactoe_model/tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,tictactoe_model/tf.__operators__.add_1/AddV2AddV2input_21tictactoe_model/tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	?
tictactoe_model/tf.cast_2/CastCast0tictactoe_model/tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	r
-tictactoe_model/tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.tictactoe_model/tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*tictactoe_model/tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
$tictactoe_model/tf.one_hot_1/one_hotOneHot"tictactoe_model/tf.cast_2/Cast:y:03tictactoe_model/tf.one_hot_1/one_hot/depth:output:06tictactoe_model/tf.one_hot_1/one_hot/on_value:output:07tictactoe_model/tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	?
*tictactoe_model/tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
$tictactoe_model/tf.reshape_1/ReshapeReshape-tictactoe_model/tf.one_hot_1/one_hot:output:03tictactoe_model/tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
.tictactoe_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp7tictactoe_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
tictactoe_model/conv2d_2/Conv2DConv2D-tictactoe_model/tf.reshape_1/Reshape:output:06tictactoe_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
/tictactoe_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 tictactoe_model/conv2d_2/BiasAddBiasAdd(tictactoe_model/conv2d_2/Conv2D:output:07tictactoe_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
4tictactoe_model/batch_normalization_4/ReadVariableOpReadVariableOp=tictactoe_model_batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype0?
6tictactoe_model/batch_normalization_4/ReadVariableOp_1ReadVariableOp?tictactoe_model_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Etictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpNtictactoe_model_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gtictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPtictactoe_model_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6tictactoe_model/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3)tictactoe_model/conv2d_2/BiasAdd:output:0<tictactoe_model/batch_normalization_4/ReadVariableOp:value:0>tictactoe_model/batch_normalization_4/ReadVariableOp_1:value:0Mtictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Otictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
tictactoe_model/re_lu_3/ReluRelu:tictactoe_model/batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
.tictactoe_model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp7tictactoe_model_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
tictactoe_model/conv2d_3/Conv2DConv2D*tictactoe_model/re_lu_3/Relu:activations:06tictactoe_model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
/tictactoe_model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 tictactoe_model/conv2d_3/BiasAddBiasAdd(tictactoe_model/conv2d_3/Conv2D:output:07tictactoe_model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
4tictactoe_model/batch_normalization_5/ReadVariableOpReadVariableOp=tictactoe_model_batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype0?
6tictactoe_model/batch_normalization_5/ReadVariableOp_1ReadVariableOp?tictactoe_model_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Etictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpNtictactoe_model_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gtictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPtictactoe_model_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6tictactoe_model/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3)tictactoe_model/conv2d_3/BiasAdd:output:0<tictactoe_model/batch_normalization_5/ReadVariableOp:value:0>tictactoe_model/batch_normalization_5/ReadVariableOp_1:value:0Mtictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Otictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( p
tictactoe_model/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
!tictactoe_model/flatten_5/ReshapeReshape-tictactoe_model/tf.one_hot_1/one_hot:output:0(tictactoe_model/flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????p
tictactoe_model/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
!tictactoe_model/flatten_4/ReshapeReshape:tictactoe_model/batch_normalization_5/FusedBatchNormV3:y:0(tictactoe_model/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????i
'tictactoe_model/tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
"tictactoe_model/tf.concat_1/concatConcatV2*tictactoe_model/flatten_5/Reshape:output:0*tictactoe_model/flatten_4/Reshape:output:00tictactoe_model/tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
#tictactoe_model/residual_tower/ReluRelu+tictactoe_model/tf.concat_1/concat:output:0*
T0*(
_output_shapes
:???????????
>tictactoe_model/tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
@tictactoe_model/tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
@tictactoe_model/tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
8tictactoe_model/tf.__operators__.getitem_3/strided_sliceStridedSlice1tictactoe_model/residual_tower/Relu:activations:0Gtictactoe_model/tf.__operators__.getitem_3/strided_slice/stack:output:0Itictactoe_model/tf.__operators__.getitem_3/strided_slice/stack_1:output:0Itictactoe_model/tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_masky
.tictactoe_model/conv1d_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*tictactoe_model/conv1d_3/Conv1D/ExpandDims
ExpandDimsAtictactoe_model/tf.__operators__.getitem_3/strided_slice:output:07tictactoe_model/conv1d_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
;tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpDtictactoe_model_conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0r
0tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
,tictactoe_model/conv1d_3/Conv1D/ExpandDims_1
ExpandDimsCtictactoe_model/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp:value:09tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
tictactoe_model/conv1d_3/Conv1DConv2D3tictactoe_model/conv1d_3/Conv1D/ExpandDims:output:05tictactoe_model/conv1d_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
'tictactoe_model/conv1d_3/Conv1D/SqueezeSqueeze(tictactoe_model/conv1d_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
/tictactoe_model/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 tictactoe_model/conv1d_3/BiasAddBiasAdd0tictactoe_model/conv1d_3/Conv1D/Squeeze:output:07tictactoe_model/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
>tictactoe_model/tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
@tictactoe_model/tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
@tictactoe_model/tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
8tictactoe_model/tf.__operators__.getitem_2/strided_sliceStridedSlice1tictactoe_model/residual_tower/Relu:activations:0Gtictactoe_model/tf.__operators__.getitem_2/strided_slice/stack:output:0Itictactoe_model/tf.__operators__.getitem_2/strided_slice/stack_1:output:0Itictactoe_model/tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
>tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpGtictactoe_model_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0z
5tictactoe_model/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3tictactoe_model/batch_normalization_7/batchnorm/addAddV2Ftictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp:value:0>tictactoe_model/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:?
5tictactoe_model/batch_normalization_7/batchnorm/RsqrtRsqrt7tictactoe_model/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:?
Btictactoe_model/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpKtictactoe_model_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3tictactoe_model/batch_normalization_7/batchnorm/mulMul9tictactoe_model/batch_normalization_7/batchnorm/Rsqrt:y:0Jtictactoe_model/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
5tictactoe_model/batch_normalization_7/batchnorm/mul_1Mul)tictactoe_model/conv1d_3/BiasAdd:output:07tictactoe_model/batch_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpItictactoe_model_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5tictactoe_model/batch_normalization_7/batchnorm/mul_2MulHtictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_1:value:07tictactoe_model/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:?
@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpItictactoe_model_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0?
3tictactoe_model/batch_normalization_7/batchnorm/subSubHtictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_2:value:09tictactoe_model/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
5tictactoe_model/batch_normalization_7/batchnorm/add_1AddV29tictactoe_model/batch_normalization_7/batchnorm/mul_1:z:07tictactoe_model/batch_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????y
.tictactoe_model/conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*tictactoe_model/conv1d_2/Conv1D/ExpandDims
ExpandDimsAtictactoe_model/tf.__operators__.getitem_2/strided_slice:output:07tictactoe_model/conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
;tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpDtictactoe_model_conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0r
0tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
,tictactoe_model/conv1d_2/Conv1D/ExpandDims_1
ExpandDimsCtictactoe_model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:09tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
tictactoe_model/conv1d_2/Conv1DConv2D3tictactoe_model/conv1d_2/Conv1D/ExpandDims:output:05tictactoe_model/conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
'tictactoe_model/conv1d_2/Conv1D/SqueezeSqueeze(tictactoe_model/conv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
/tictactoe_model/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp8tictactoe_model_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 tictactoe_model/conv1d_2/BiasAddBiasAdd0tictactoe_model/conv1d_2/Conv1D/Squeeze:output:07tictactoe_model/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
tictactoe_model/re_lu_5/ReluRelu9tictactoe_model/batch_normalization_7/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
>tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpGtictactoe_model_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0z
5tictactoe_model/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3tictactoe_model/batch_normalization_6/batchnorm/addAddV2Ftictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp:value:0>tictactoe_model/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:?
5tictactoe_model/batch_normalization_6/batchnorm/RsqrtRsqrt7tictactoe_model/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:?
Btictactoe_model/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpKtictactoe_model_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3tictactoe_model/batch_normalization_6/batchnorm/mulMul9tictactoe_model/batch_normalization_6/batchnorm/Rsqrt:y:0Jtictactoe_model/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
5tictactoe_model/batch_normalization_6/batchnorm/mul_1Mul)tictactoe_model/conv1d_2/BiasAdd:output:07tictactoe_model/batch_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpItictactoe_model_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5tictactoe_model/batch_normalization_6/batchnorm/mul_2MulHtictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_1:value:07tictactoe_model/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:?
@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpItictactoe_model_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0?
3tictactoe_model/batch_normalization_6/batchnorm/subSubHtictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_2:value:09tictactoe_model/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
5tictactoe_model/batch_normalization_6/batchnorm/add_1AddV29tictactoe_model/batch_normalization_6/batchnorm/mul_1:z:07tictactoe_model/batch_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????p
tictactoe_model/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ?
!tictactoe_model/flatten_7/ReshapeReshape*tictactoe_model/re_lu_5/Relu:activations:0(tictactoe_model/flatten_7/Const:output:0*
T0*(
_output_shapes
:???????????
tictactoe_model/re_lu_4/ReluRelu9tictactoe_model/batch_normalization_6/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
-tictactoe_model/dense_1/MatMul/ReadVariableOpReadVariableOp6tictactoe_model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
tictactoe_model/dense_1/MatMulMatMul*tictactoe_model/flatten_7/Reshape:output:05tictactoe_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.tictactoe_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp7tictactoe_model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
tictactoe_model/dense_1/BiasAddBiasAdd(tictactoe_model/dense_1/MatMul:product:06tictactoe_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
tictactoe_model/dense_1/ReluRelu(tictactoe_model/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????p
tictactoe_model/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ?
!tictactoe_model/flatten_6/ReshapeReshape*tictactoe_model/re_lu_4/Relu:activations:0(tictactoe_model/flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
+tictactoe_model/value/MatMul/ReadVariableOpReadVariableOp4tictactoe_model_value_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
tictactoe_model/value/MatMulMatMul*tictactoe_model/dense_1/Relu:activations:03tictactoe_model/value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,tictactoe_model/value/BiasAdd/ReadVariableOpReadVariableOp5tictactoe_model_value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
tictactoe_model/value/BiasAddBiasAdd&tictactoe_model/value/MatMul:product:04tictactoe_model/value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
tictactoe_model/value/TanhTanh&tictactoe_model/value/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
,tictactoe_model/policy/MatMul/ReadVariableOpReadVariableOp5tictactoe_model_policy_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
tictactoe_model/policy/MatMulMatMul*tictactoe_model/flatten_6/Reshape:output:04tictactoe_model/policy/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
-tictactoe_model/policy/BiasAdd/ReadVariableOpReadVariableOp6tictactoe_model_policy_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
tictactoe_model/policy/BiasAddBiasAdd'tictactoe_model/policy/MatMul:product:05tictactoe_model/policy/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
tictactoe_model/policy/SoftmaxSoftmax'tictactoe_model/policy/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	w
IdentityIdentity(tictactoe_model/policy/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	o

Identity_1Identitytictactoe_model/value/Tanh:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpF^tictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpH^tictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_15^tictactoe_model/batch_normalization_4/ReadVariableOp7^tictactoe_model/batch_normalization_4/ReadVariableOp_1F^tictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpH^tictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_15^tictactoe_model/batch_normalization_5/ReadVariableOp7^tictactoe_model/batch_normalization_5/ReadVariableOp_1?^tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOpA^tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_1A^tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_2C^tictactoe_model/batch_normalization_6/batchnorm/mul/ReadVariableOp?^tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOpA^tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_1A^tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_2C^tictactoe_model/batch_normalization_7/batchnorm/mul/ReadVariableOp0^tictactoe_model/conv1d_2/BiasAdd/ReadVariableOp<^tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp0^tictactoe_model/conv1d_3/BiasAdd/ReadVariableOp<^tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp0^tictactoe_model/conv2d_2/BiasAdd/ReadVariableOp/^tictactoe_model/conv2d_2/Conv2D/ReadVariableOp0^tictactoe_model/conv2d_3/BiasAdd/ReadVariableOp/^tictactoe_model/conv2d_3/Conv2D/ReadVariableOp/^tictactoe_model/dense_1/BiasAdd/ReadVariableOp.^tictactoe_model/dense_1/MatMul/ReadVariableOp.^tictactoe_model/policy/BiasAdd/ReadVariableOp-^tictactoe_model/policy/MatMul/ReadVariableOp-^tictactoe_model/value/BiasAdd/ReadVariableOp,^tictactoe_model/value/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Etictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpEtictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2?
Gtictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Gtictactoe_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12l
4tictactoe_model/batch_normalization_4/ReadVariableOp4tictactoe_model/batch_normalization_4/ReadVariableOp2p
6tictactoe_model/batch_normalization_4/ReadVariableOp_16tictactoe_model/batch_normalization_4/ReadVariableOp_12?
Etictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpEtictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2?
Gtictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Gtictactoe_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12l
4tictactoe_model/batch_normalization_5/ReadVariableOp4tictactoe_model/batch_normalization_5/ReadVariableOp2p
6tictactoe_model/batch_normalization_5/ReadVariableOp_16tictactoe_model/batch_normalization_5/ReadVariableOp_12?
>tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp>tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp2?
@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_1@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_12?
@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_2@tictactoe_model/batch_normalization_6/batchnorm/ReadVariableOp_22?
Btictactoe_model/batch_normalization_6/batchnorm/mul/ReadVariableOpBtictactoe_model/batch_normalization_6/batchnorm/mul/ReadVariableOp2?
>tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp>tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp2?
@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_1@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_12?
@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_2@tictactoe_model/batch_normalization_7/batchnorm/ReadVariableOp_22?
Btictactoe_model/batch_normalization_7/batchnorm/mul/ReadVariableOpBtictactoe_model/batch_normalization_7/batchnorm/mul/ReadVariableOp2b
/tictactoe_model/conv1d_2/BiasAdd/ReadVariableOp/tictactoe_model/conv1d_2/BiasAdd/ReadVariableOp2z
;tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp;tictactoe_model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2b
/tictactoe_model/conv1d_3/BiasAdd/ReadVariableOp/tictactoe_model/conv1d_3/BiasAdd/ReadVariableOp2z
;tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp;tictactoe_model/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2b
/tictactoe_model/conv2d_2/BiasAdd/ReadVariableOp/tictactoe_model/conv2d_2/BiasAdd/ReadVariableOp2`
.tictactoe_model/conv2d_2/Conv2D/ReadVariableOp.tictactoe_model/conv2d_2/Conv2D/ReadVariableOp2b
/tictactoe_model/conv2d_3/BiasAdd/ReadVariableOp/tictactoe_model/conv2d_3/BiasAdd/ReadVariableOp2`
.tictactoe_model/conv2d_3/Conv2D/ReadVariableOp.tictactoe_model/conv2d_3/Conv2D/ReadVariableOp2`
.tictactoe_model/dense_1/BiasAdd/ReadVariableOp.tictactoe_model/dense_1/BiasAdd/ReadVariableOp2^
-tictactoe_model/dense_1/MatMul/ReadVariableOp-tictactoe_model/dense_1/MatMul/ReadVariableOp2^
-tictactoe_model/policy/BiasAdd/ReadVariableOp-tictactoe_model/policy/BiasAdd/ReadVariableOp2\
,tictactoe_model/policy/MatMul/ReadVariableOp,tictactoe_model/policy/MatMul/ReadVariableOp2\
,tictactoe_model/value/BiasAdd/ReadVariableOp,tictactoe_model/value/BiasAdd/ReadVariableOp2Z
+tictactoe_model/value/MatMul/ReadVariableOp+tictactoe_model/value/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_2
?
?
7__inference_batch_normalization_5_layer_call_fn_4297987

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295762x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4296298

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????h
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_re_lu_4_layer_call_fn_4298511

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4295937e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297531

inputsB
'conv2d_2_conv2d_readvariableop_resource:?7
(conv2d_2_biasadd_readvariableop_resource:	?<
-batch_normalization_4_readvariableop_resource:	?>
/batch_normalization_4_readvariableop_1_resource:	?M
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?<
-batch_normalization_5_readvariableop_resource:	?>
/batch_normalization_5_readvariableop_1_resource:	?M
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?J
4conv1d_3_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_3_biasadd_readvariableop_resource:E
7batch_normalization_7_batchnorm_readvariableop_resource:I
;batch_normalization_7_batchnorm_mul_readvariableop_resource:G
9batch_normalization_7_batchnorm_readvariableop_1_resource:G
9batch_normalization_7_batchnorm_readvariableop_2_resource:J
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_2_biasadd_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:G
9batch_normalization_6_batchnorm_readvariableop_1_resource:G
9batch_normalization_6_batchnorm_readvariableop_2_resource::
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?7
$value_matmul_readvariableop_resource:	?3
%value_biasadd_readvariableop_resource:8
%policy_matmul_readvariableop_resource:	?	4
&policy_biasadd_readvariableop_resource:	
identity

identity_1??5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_4/ReadVariableOp?&batch_normalization_4/ReadVariableOp_1?5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1?.batch_normalization_6/batchnorm/ReadVariableOp?0batch_normalization_6/batchnorm/ReadVariableOp_1?0batch_normalization_6/batchnorm/ReadVariableOp_2?2batch_normalization_6/batchnorm/mul/ReadVariableOp?.batch_normalization_7/batchnorm/ReadVariableOp?0batch_normalization_7/batchnorm/ReadVariableOp_1?0batch_normalization_7/batchnorm/ReadVariableOp_2?2batch_normalization_7/batchnorm/mul/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp?conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?0dense_1/kernel/Regularizer/Square/ReadVariableOp?policy/BiasAdd/ReadVariableOp?policy/MatMul/ReadVariableOp?/policy/kernel/Regularizer/Square/ReadVariableOp?value/BiasAdd/ReadVariableOp?value/MatMul/ReadVariableOp?.value/kernel/Regularizer/Square/ReadVariableOp]
tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
tf.__operators__.add_1/AddV2AddV2inputs!tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	y
tf.cast_2/CastCast tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
tf.one_hot_1/one_hotOneHottf.cast_2/Cast:y:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	s
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
tf.reshape_1/ReshapeReshapetf.one_hot_1/one_hot:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv2d_2/Conv2DConv2Dtf.reshape_1/Reshape:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( {
re_lu_3/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_3/Conv2DConv2Dre_lu_3/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( `
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_5/ReshapeReshapetf.one_hot_1/one_hot:output:0flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_4/ReshapeReshape*batch_normalization_5/FusedBatchNormV3:y:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????Y
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
tf.concat_1/concatConcatV2flatten_5/Reshape:output:0flatten_4/Reshape:output:0 tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????k
residual_tower/ReluRelutf.concat_1/concat:output:0*
T0*(
_output_shapes
:??????????
.tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_3/strided_sliceStridedSlice!residual_tower/Relu:activations:07tf.__operators__.getitem_3/strided_slice/stack:output:09tf.__operators__.getitem_3/strided_slice/stack_1:output:09tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_maski
conv1d_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_3/Conv1D/ExpandDims
ExpandDims1tf.__operators__.getitem_3/strided_slice:output:0'conv1d_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_3/Conv1D/ExpandDims_1
ExpandDims3conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_3/Conv1DConv2D#conv1d_3/Conv1D/ExpandDims:output:0%conv1d_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv1d_3/Conv1D/SqueezeSqueezeconv1d_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv1d_3/BiasAddBiasAdd conv1d_3/Conv1D/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_2/strided_sliceStridedSlice!residual_tower/Relu:activations:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:?
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
%batch_normalization_7/batchnorm/mul_1Mulconv1d_3/BiasAdd:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0?
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:?
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0?
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims1tf.__operators__.getitem_2/strided_slice:output:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????v
re_lu_5/ReluRelu)batch_normalization_7/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:?
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
%batch_normalization_6/batchnorm/mul_1Mulconv1d_2/BiasAdd:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0?
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:?
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0?
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ?
flatten_7/ReshapeReshapere_lu_5/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:??????????v
re_lu_4/ReluRelu)batch_normalization_6/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_1/MatMulMatMulflatten_7/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ?
flatten_6/ReshapeReshapere_lu_4/Relu:activations:0flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
value/MatMul/ReadVariableOpReadVariableOp$value_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/MatMulMatMuldense_1/Relu:activations:0#value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
value/BiasAdd/ReadVariableOpReadVariableOp%value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
value/BiasAddBiasAddvalue/MatMul:product:0$value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

value/TanhTanhvalue/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
policy/MatMul/ReadVariableOpReadVariableOp%policy_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
policy/MatMulMatMulflatten_6/Reshape:output:0$policy/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
policy/BiasAdd/ReadVariableOpReadVariableOp&policy_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
policy/BiasAddBiasAddpolicy/MatMul:product:0%policy/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	d
policy/SoftmaxSoftmaxpolicy/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%policy_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$value_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitypolicy/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	_

Identity_1Identityvalue/Tanh:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp6^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp^policy/BiasAdd/ReadVariableOp^policy/MatMul/ReadVariableOp0^policy/kernel/Regularizer/Square/ReadVariableOp^value/BiasAdd/ReadVariableOp^value/MatMul/ReadVariableOp/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2>
policy/BiasAdd/ReadVariableOppolicy/BiasAdd/ReadVariableOp2<
policy/MatMul/ReadVariableOppolicy/MatMul/ReadVariableOp2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp2<
value/BiasAdd/ReadVariableOpvalue/BiasAdd/ReadVariableOp2:
value/MatMul/ReadVariableOpvalue/MatMul/ReadVariableOp2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
*__inference_conv1d_3_layer_call_fn_4298119

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4295822t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297087
input_2+
conv2d_2_4296954:?
conv2d_2_4296956:	?,
batch_normalization_4_4296959:	?,
batch_normalization_4_4296961:	?,
batch_normalization_4_4296963:	?,
batch_normalization_4_4296965:	?,
conv2d_3_4296969:??
conv2d_3_4296971:	?,
batch_normalization_5_4296974:	?,
batch_normalization_5_4296976:	?,
batch_normalization_5_4296978:	?,
batch_normalization_5_4296980:	?&
conv1d_3_4296992:
conv1d_3_4296994:+
batch_normalization_7_4297001:+
batch_normalization_7_4297003:+
batch_normalization_7_4297005:+
batch_normalization_7_4297007:&
conv1d_2_4297010:
conv1d_2_4297012:+
batch_normalization_6_4297016:+
batch_normalization_6_4297018:+
batch_normalization_6_4297020:+
batch_normalization_6_4297022:#
dense_1_4297027:
??
dense_1_4297029:	? 
value_4297033:	?
value_4297035:!
policy_4297038:	?	
policy_4297040:	
identity

identity_1??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp? conv1d_3/StatefulPartitionedCall?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp? conv2d_2/StatefulPartitionedCall?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp? conv2d_3/StatefulPartitionedCall?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?dense_1/StatefulPartitionedCall?0dense_1/kernel/Regularizer/Square/ReadVariableOp?policy/StatefulPartitionedCall?/policy/kernel/Regularizer/Square/ReadVariableOp?value/StatefulPartitionedCall?.value/kernel/Regularizer/Square/ReadVariableOp]
tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
tf.__operators__.add_1/AddV2AddV2input_2!tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	y
tf.cast_2/CastCast tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
tf.one_hot_1/one_hotOneHottf.cast_2/Cast:y:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	s
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
tf.reshape_1/ReshapeReshapetf.one_hot_1/one_hot:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalltf.reshape_1/Reshape:output:0conv2d_2_4296954conv2d_2_4296956*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4295683?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_4_4296959batch_normalization_4_4296961batch_normalization_4_4296963batch_normalization_4_4296965*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4296430?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4295721?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0conv2d_3_4296969conv2d_3_4296971*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4295739?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_5_4296974batch_normalization_5_4296976batch_normalization_5_4296978batch_normalization_5_4296980*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4296370?
flatten_5/PartitionedCallPartitionedCalltf.one_hot_1/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_4295778?
flatten_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_4295786Y
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
tf.concat_1/concatConcatV2"flatten_5/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0 tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
residual_tower/PartitionedCallPartitionedCalltf.concat_1/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_residual_tower_layer_call_and_return_conditional_losses_4295795
.tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_3/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_3/strided_slice/stack:output:09tf.__operators__.getitem_3/strided_slice/stack_1:output:09tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_3/strided_slice:output:0conv1d_3_4296992conv1d_3_4296994*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4295822
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_2/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0batch_normalization_7_4297001batch_normalization_7_4297003batch_normalization_7_4297005batch_normalization_7_4297007*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4296298?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_2/strided_slice:output:0conv1d_2_4297010conv1d_2_4297012*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4295882?
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4295893?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0batch_normalization_6_4297016batch_normalization_6_4297018batch_normalization_6_4297020batch_normalization_6_4297022*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4296222?
flatten_7/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_4295930?
re_lu_4/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4295937?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_1_4297027dense_1_4297029*
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
GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4295956?
flatten_6/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_4295968?
value/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0value_4297033value_4297035*
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
GPU 2J 8? *K
fFRD
B__inference_value_layer_call_and_return_conditional_losses_4295987?
policy/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0policy_4297038policy_4297040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_4296010?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_4296954*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_4296969*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_3_4296992*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_4297010*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_4297027* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOppolicy_4297038*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOpvalue_4297033*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'policy/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	w

Identity_1Identity&value/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp!^conv1d_3/StatefulPartitionedCall2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/Square/ReadVariableOp^policy/StatefulPartitionedCall0^policy/kernel/Regularizer/Square/ReadVariableOp^value/StatefulPartitionedCall/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp2>
value/StatefulPartitionedCallvalue/StatefulPartitionedCall2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_2
?
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_4298538

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4295739

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_3_layer_call_fn_4297932

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4295739x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_6_layer_call_fn_4298532

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_4295968a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295914

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????z
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4298516

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:??????????_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296060

inputs+
conv2d_2_4295684:?
conv2d_2_4295686:	?,
batch_normalization_4_4295707:	?,
batch_normalization_4_4295709:	?,
batch_normalization_4_4295711:	?,
batch_normalization_4_4295713:	?,
conv2d_3_4295740:??
conv2d_3_4295742:	?,
batch_normalization_5_4295763:	?,
batch_normalization_5_4295765:	?,
batch_normalization_5_4295767:	?,
batch_normalization_5_4295769:	?&
conv1d_3_4295823:
conv1d_3_4295825:+
batch_normalization_7_4295852:+
batch_normalization_7_4295854:+
batch_normalization_7_4295856:+
batch_normalization_7_4295858:&
conv1d_2_4295883:
conv1d_2_4295885:+
batch_normalization_6_4295915:+
batch_normalization_6_4295917:+
batch_normalization_6_4295919:+
batch_normalization_6_4295921:#
dense_1_4295957:
??
dense_1_4295959:	? 
value_4295988:	?
value_4295990:!
policy_4296011:	?	
policy_4296013:	
identity

identity_1??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp? conv1d_3/StatefulPartitionedCall?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp? conv2d_2/StatefulPartitionedCall?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp? conv2d_3/StatefulPartitionedCall?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?dense_1/StatefulPartitionedCall?0dense_1/kernel/Regularizer/Square/ReadVariableOp?policy/StatefulPartitionedCall?/policy/kernel/Regularizer/Square/ReadVariableOp?value/StatefulPartitionedCall?.value/kernel/Regularizer/Square/ReadVariableOp]
tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
tf.__operators__.add_1/AddV2AddV2inputs!tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	y
tf.cast_2/CastCast tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
tf.one_hot_1/one_hotOneHottf.cast_2/Cast:y:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	s
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
tf.reshape_1/ReshapeReshapetf.one_hot_1/one_hot:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalltf.reshape_1/Reshape:output:0conv2d_2_4295684conv2d_2_4295686*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4295683?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_4_4295707batch_normalization_4_4295709batch_normalization_4_4295711batch_normalization_4_4295713*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295706?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4295721?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0conv2d_3_4295740conv2d_3_4295742*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4295739?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_5_4295763batch_normalization_5_4295765batch_normalization_5_4295767batch_normalization_5_4295769*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295762?
flatten_5/PartitionedCallPartitionedCalltf.one_hot_1/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_4295778?
flatten_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_4295786Y
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
tf.concat_1/concatConcatV2"flatten_5/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0 tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
residual_tower/PartitionedCallPartitionedCalltf.concat_1/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_residual_tower_layer_call_and_return_conditional_losses_4295795
.tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_3/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_3/strided_slice/stack:output:09tf.__operators__.getitem_3/strided_slice/stack_1:output:09tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_3/strided_slice:output:0conv1d_3_4295823conv1d_3_4295825*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4295822
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_2/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0batch_normalization_7_4295852batch_normalization_7_4295854batch_normalization_7_4295856batch_normalization_7_4295858*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295851?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_2/strided_slice:output:0conv1d_2_4295883conv1d_2_4295885*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4295882?
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4295893?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0batch_normalization_6_4295915batch_normalization_6_4295917batch_normalization_6_4295919batch_normalization_6_4295921*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295914?
flatten_7/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_4295930?
re_lu_4/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4295937?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_1_4295957dense_1_4295959*
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
GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4295956?
flatten_6/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_4295968?
value/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0value_4295988value_4295990*
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
GPU 2J 8? *K
fFRD
B__inference_value_layer_call_and_return_conditional_losses_4295987?
policy/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0policy_4296011policy_4296013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_4296010?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_4295684*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_4295740*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_3_4295823*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_4295883*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_4295957* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOppolicy_4296011*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOpvalue_4295988*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'policy/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	w

Identity_1Identity&value/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp!^conv1d_3/StatefulPartitionedCall2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/Square/ReadVariableOp^policy/StatefulPartitionedCall0^policy/kernel/Regularizer/Square/ReadVariableOp^value/StatefulPartitionedCall/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp2>
value/StatefulPartitionedCallvalue/StatefulPartitionedCall2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_4298667P
:conv1d_3_kernel_regularizer_square_readvariableop_resource:
identity??1conv1d_3/kernel/Regularizer/Square/ReadVariableOp?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_3_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv1d_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_4_4298689M
9dense_1_kernel_regularizer_square_readvariableop_resource:
??
identity??0dense_1/kernel/Regularizer/Square/ReadVariableOp?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_1_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295412

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
E
)__inference_re_lu_3_layer_call_fn_4297912

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4295721i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4296430

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_2_layer_call_fn_4297767

inputs"
unknown:?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4295683x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_7_layer_call_fn_4298215

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295851t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_7_layer_call_fn_4298228

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4296298t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_7_layer_call_and_return_conditional_losses_4298527

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_1_layer_call_and_return_conditional_losses_4295956

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_1/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
:???????????
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_residual_tower_layer_call_and_return_conditional_losses_4298104

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:??????????[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_6_4298711J
7value_kernel_regularizer_square_readvariableop_resource:	?
identity??.value/kernel/Regularizer/Square/ReadVariableOp?
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7value_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentity value/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp
??
?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296942
input_2+
conv2d_2_4296809:?
conv2d_2_4296811:	?,
batch_normalization_4_4296814:	?,
batch_normalization_4_4296816:	?,
batch_normalization_4_4296818:	?,
batch_normalization_4_4296820:	?,
conv2d_3_4296824:??
conv2d_3_4296826:	?,
batch_normalization_5_4296829:	?,
batch_normalization_5_4296831:	?,
batch_normalization_5_4296833:	?,
batch_normalization_5_4296835:	?&
conv1d_3_4296847:
conv1d_3_4296849:+
batch_normalization_7_4296856:+
batch_normalization_7_4296858:+
batch_normalization_7_4296860:+
batch_normalization_7_4296862:&
conv1d_2_4296865:
conv1d_2_4296867:+
batch_normalization_6_4296871:+
batch_normalization_6_4296873:+
batch_normalization_6_4296875:+
batch_normalization_6_4296877:#
dense_1_4296882:
??
dense_1_4296884:	? 
value_4296888:	?
value_4296890:!
policy_4296893:	?	
policy_4296895:	
identity

identity_1??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp? conv1d_3/StatefulPartitionedCall?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp? conv2d_2/StatefulPartitionedCall?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp? conv2d_3/StatefulPartitionedCall?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?dense_1/StatefulPartitionedCall?0dense_1/kernel/Regularizer/Square/ReadVariableOp?policy/StatefulPartitionedCall?/policy/kernel/Regularizer/Square/ReadVariableOp?value/StatefulPartitionedCall?.value/kernel/Regularizer/Square/ReadVariableOp]
tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
tf.__operators__.add_1/AddV2AddV2input_2!tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	y
tf.cast_2/CastCast tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
tf.one_hot_1/one_hotOneHottf.cast_2/Cast:y:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	s
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
tf.reshape_1/ReshapeReshapetf.one_hot_1/one_hot:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalltf.reshape_1/Reshape:output:0conv2d_2_4296809conv2d_2_4296811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4295683?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_4_4296814batch_normalization_4_4296816batch_normalization_4_4296818batch_normalization_4_4296820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295706?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4295721?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0conv2d_3_4296824conv2d_3_4296826*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4295739?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_5_4296829batch_normalization_5_4296831batch_normalization_5_4296833batch_normalization_5_4296835*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295762?
flatten_5/PartitionedCallPartitionedCalltf.one_hot_1/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_4295778?
flatten_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_4295786Y
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
tf.concat_1/concatConcatV2"flatten_5/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0 tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
residual_tower/PartitionedCallPartitionedCalltf.concat_1/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_residual_tower_layer_call_and_return_conditional_losses_4295795
.tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_3/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_3/strided_slice/stack:output:09tf.__operators__.getitem_3/strided_slice/stack_1:output:09tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_3/strided_slice:output:0conv1d_3_4296847conv1d_3_4296849*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4295822
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_2/strided_sliceStridedSlice'residual_tower/PartitionedCall:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0batch_normalization_7_4296856batch_normalization_7_4296858batch_normalization_7_4296860batch_normalization_7_4296862*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295851?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_2/strided_slice:output:0conv1d_2_4296865conv1d_2_4296867*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4295882?
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4295893?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0batch_normalization_6_4296871batch_normalization_6_4296873batch_normalization_6_4296875batch_normalization_6_4296877*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295914?
flatten_7/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_4295930?
re_lu_4/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4295937?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_1_4296882dense_1_4296884*
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
GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4295956?
flatten_6/PartitionedCallPartitionedCall re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_4295968?
value/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0value_4296888value_4296890*
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
GPU 2J 8? *K
fFRD
B__inference_value_layer_call_and_return_conditional_losses_4295987?
policy/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0policy_4296893policy_4296895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_4296010?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_4296809*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_4296824*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_3_4296847*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_4296865*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_4296882* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOppolicy_4296893*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOpvalue_4296888*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'policy/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	w

Identity_1Identity&value/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp!^conv1d_3/StatefulPartitionedCall2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/Square/ReadVariableOp^policy/StatefulPartitionedCall0^policy/kernel/Regularizer/Square/ReadVariableOp^value/StatefulPartitionedCall/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp2>
value/StatefulPartitionedCallvalue/StatefulPartitionedCall2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_2
?
?
7__inference_batch_normalization_7_layer_call_fn_4298202

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295558|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_4_layer_call_fn_4297809

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295412?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295558

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
 :??????????????????h
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
g
K__inference_residual_tower_layer_call_and_return_conditional_losses_4295795

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:??????????[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_4_layer_call_fn_4297835

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4296430x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4297783

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298282

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
 :??????????????????h
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4297948

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_value_layer_call_and_return_conditional_losses_4295987

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.value/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
:?????????P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:??????????
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4295381

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4296222

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????h
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
? 
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297752

inputsB
'conv2d_2_conv2d_readvariableop_resource:?7
(conv2d_2_biasadd_readvariableop_resource:	?<
-batch_normalization_4_readvariableop_resource:	?>
/batch_normalization_4_readvariableop_1_resource:	?M
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?<
-batch_normalization_5_readvariableop_resource:	?>
/batch_normalization_5_readvariableop_1_resource:	?M
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?J
4conv1d_3_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_3_biasadd_readvariableop_resource:K
=batch_normalization_7_assignmovingavg_readvariableop_resource:M
?batch_normalization_7_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_7_batchnorm_mul_readvariableop_resource:E
7batch_normalization_7_batchnorm_readvariableop_resource:J
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_2_biasadd_readvariableop_resource:K
=batch_normalization_6_assignmovingavg_readvariableop_resource:M
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource::
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?7
$value_matmul_readvariableop_resource:	?3
%value_biasadd_readvariableop_resource:8
%policy_matmul_readvariableop_resource:	?	4
&policy_biasadd_readvariableop_resource:	
identity

identity_1??$batch_normalization_4/AssignNewValue?&batch_normalization_4/AssignNewValue_1?5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_4/ReadVariableOp?&batch_normalization_4/ReadVariableOp_1?$batch_normalization_5/AssignNewValue?&batch_normalization_5/AssignNewValue_1?5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1?%batch_normalization_6/AssignMovingAvg?4batch_normalization_6/AssignMovingAvg/ReadVariableOp?'batch_normalization_6/AssignMovingAvg_1?6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_6/batchnorm/ReadVariableOp?2batch_normalization_6/batchnorm/mul/ReadVariableOp?%batch_normalization_7/AssignMovingAvg?4batch_normalization_7/AssignMovingAvg/ReadVariableOp?'batch_normalization_7/AssignMovingAvg_1?6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_7/batchnorm/ReadVariableOp?2batch_normalization_7/batchnorm/mul/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_2/kernel/Regularizer/Square/ReadVariableOp?conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?0dense_1/kernel/Regularizer/Square/ReadVariableOp?policy/BiasAdd/ReadVariableOp?policy/MatMul/ReadVariableOp?/policy/kernel/Regularizer/Square/ReadVariableOp?value/BiasAdd/ReadVariableOp?value/MatMul/ReadVariableOp?.value/kernel/Regularizer/Square/ReadVariableOp]
tf.__operators__.add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
tf.__operators__.add_1/AddV2AddV2inputs!tf.__operators__.add_1/y:output:0*
T0*'
_output_shapes
:?????????	y
tf.cast_2/CastCast tf.__operators__.add_1/AddV2:z:0*

DstT0*

SrcT0*'
_output_shapes
:?????????	b
tf.one_hot_1/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
tf.one_hot_1/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_1/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
tf.one_hot_1/one_hotOneHottf.cast_2/Cast:y:0#tf.one_hot_1/one_hot/depth:output:0&tf.one_hot_1/one_hot/on_value:output:0'tf.one_hot_1/one_hot/off_value:output:0*
T0*
TI0*+
_output_shapes
:?????????	s
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         ?
tf.reshape_1/ReshapeReshapetf.one_hot_1/one_hot:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:??????????
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv2d_2/Conv2DConv2Dtf.reshape_1/Reshape:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0{
re_lu_3/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:???????????
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_3/Conv2DConv2Dre_lu_3/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_5/AssignNewValueAssignVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource3batch_normalization_5/FusedBatchNormV3:batch_mean:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_5/AssignNewValue_1AssignVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_5/FusedBatchNormV3:batch_variance:08^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_5/ReshapeReshapetf.one_hot_1/one_hot:output:0flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_4/ReshapeReshape*batch_normalization_5/FusedBatchNormV3:y:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????Y
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
tf.concat_1/concatConcatV2flatten_5/Reshape:output:0flatten_4/Reshape:output:0 tf.concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????k
residual_tower/ReluRelutf.concat_1/concat:output:0*
T0*(
_output_shapes
:??????????
.tf.__operators__.getitem_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_3/strided_sliceStridedSlice!residual_tower/Relu:activations:07tf.__operators__.getitem_3/strided_slice/stack:output:09tf.__operators__.getitem_3/strided_slice/stack_1:output:09tf.__operators__.getitem_3/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_maski
conv1d_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_3/Conv1D/ExpandDims
ExpandDims1tf.__operators__.getitem_3/strided_slice:output:0'conv1d_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_3/Conv1D/ExpandDims_1
ExpandDims3conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_3/Conv1DConv2D#conv1d_3/Conv1D/ExpandDims:output:0%conv1d_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv1d_3/Conv1D/SqueezeSqueezeconv1d_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv1d_3/BiasAddBiasAdd conv1d_3/Conv1D/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
(tf.__operators__.getitem_2/strided_sliceStridedSlice!residual_tower/Relu:activations:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*
ellipsis_mask*
new_axis_mask?
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
"batch_normalization_7/moments/meanMeanconv1d_3/BiasAdd:output:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(?
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*"
_output_shapes
:?
/batch_normalization_7/moments/SquaredDifferenceSquaredDifferenceconv1d_3/BiasAdd:output:03batch_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(?
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ?
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_7/moments/Squeeze:output:0*
T0*
_output_shapes
:?
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_7/moments/Squeeze_1:output:0*
T0*
_output_shapes
:?
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:?
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
%batch_normalization_7/batchnorm/mul_1Mulconv1d_3/BiasAdd:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:?
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#batch_normalization_7/batchnorm/subSub6batch_normalization_7/batchnorm/ReadVariableOp:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims1tf.__operators__.getitem_2/strided_slice:output:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????v
re_lu_5/ReluRelu)batch_normalization_7/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
"batch_normalization_6/moments/meanMeanconv1d_2/BiasAdd:output:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(?
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*"
_output_shapes
:?
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferenceconv1d_2/BiasAdd:output:03batch_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(?
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ?
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes
:?
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes
:?
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:?
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
%batch_normalization_6/batchnorm/mul_1Mulconv1d_2/BiasAdd:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:?
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ?
flatten_7/ReshapeReshapere_lu_5/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:??????????v
re_lu_4/ReluRelu)batch_normalization_6/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_1/MatMulMatMulflatten_7/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ?
flatten_6/ReshapeReshapere_lu_4/Relu:activations:0flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
value/MatMul/ReadVariableOpReadVariableOp$value_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/MatMulMatMuldense_1/Relu:activations:0#value/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
value/BiasAdd/ReadVariableOpReadVariableOp%value_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
value/BiasAddBiasAddvalue/MatMul:product:0$value/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

value/TanhTanhvalue/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
policy/MatMul/ReadVariableOpReadVariableOp%policy_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
policy/MatMulMatMulflatten_6/Reshape:output:0$policy/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
policy/BiasAdd/ReadVariableOpReadVariableOp&policy_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
policy/BiasAddBiasAddpolicy/MatMul:product:0%policy/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	d
policy/SoftmaxSoftmaxpolicy/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_2/kernel/Regularizer/SumSum&conv1d_2/kernel/Regularizer/Square:y:0*conv1d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??q
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%policy_matmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.value/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$value_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
value/kernel/Regularizer/SquareSquare6value/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?o
value/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
value/kernel/Regularizer/SumSum#value/kernel/Regularizer/Square:y:0'value/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
value/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
value/kernel/Regularizer/mulMul'value/kernel/Regularizer/mul/x:output:0%value/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitypolicy/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	_

Identity_1Identityvalue/Tanh:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp^policy/BiasAdd/ReadVariableOp^policy/MatMul/ReadVariableOp0^policy/kernel/Regularizer/Square/ReadVariableOp^value/BiasAdd/ReadVariableOp^value/MatMul/ReadVariableOp/^value/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2P
&batch_normalization_5/AssignNewValue_1&batch_normalization_5/AssignNewValue_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2>
policy/BiasAdd/ReadVariableOppolicy/BiasAdd/ReadVariableOp2<
policy/MatMul/ReadVariableOppolicy/MatMul/ReadVariableOp2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp2<
value/BiasAdd/ReadVariableOpvalue/BiasAdd/ReadVariableOp2:
value/MatMul/ReadVariableOpvalue/MatMul/ReadVariableOp2`
.value/kernel/Regularizer/Square/ReadVariableOp.value/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297889

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_4298083

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
+__inference_flatten_7_layer_call_fn_4298521

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_7_layer_call_and_return_conditional_losses_4295930a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_4295786

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4295851

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????z
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_tictactoe_model_layer_call_fn_4297271

inputs"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	? 

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
??

unknown_24:	?

unknown_25:	?

unknown_26:

unknown_27:	?	

unknown_28:	
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
&:?????????	:?????????*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296060o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
`
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4298506

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:??????????_
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_4298656V
:conv2d_3_kernel_regularizer_square_readvariableop_resource:??
identity??1conv2d_3/kernel/Regularizer/Square/ReadVariableOp?
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_3_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype0?
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp
?
?
C__inference_policy_layer_call_and_return_conditional_losses_4298602

inputs1
matmul_readvariableop_resource:	?	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/policy/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????	?
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^policy/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv1d_2_layer_call_fn_4298155

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4295882t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_6_layer_call_fn_4298388

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4296222t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4295822

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp?1conv1d_3/kernel/Regularizer/Square/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
1conv1d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0?
"conv1d_3/kernel/Regularizer/SquareSquare9conv1d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:v
!conv1d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_3/kernel/Regularizer/SumSum&conv1d_3/kernel/Regularizer/Square:y:0*conv1d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv1d_3/kernel/Regularizer/mulMul*conv1d_3/kernel/Regularizer/mul/x:output:0(conv1d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_3/kernel/Regularizer/Square/ReadVariableOp1conv1d_3/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298072

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4297917

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298054

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_4298700K
8policy_kernel_regularizer_square_readvariableop_resource:	?	
identity??/policy/kernel/Regularizer/Square/ReadVariableOp?
/policy/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8policy_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?	*
dtype0?
 policy/kernel/Regularizer/SquareSquare7policy/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?	p
policy/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
policy/kernel/Regularizer/SumSum$policy/kernel/Regularizer/Square:y:0(policy/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
policy/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
policy/kernel/Regularizer/mulMul(policy/kernel/Regularizer/mul/x:output:0&policy/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!policy/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^policy/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/policy/kernel/Regularizer/Square/ReadVariableOp/policy/kernel/Regularizer/Square/ReadVariableOp
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295476

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_4295778

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297853

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298018

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298462

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
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
:h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????z
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
:w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_6_layer_call_fn_4298375

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295914t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4295640

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
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
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
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
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
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
 :??????????????????h
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
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_1_layer_call_fn_4298553

inputs
unknown:
??
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
GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4295956p
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4295762

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4295683

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?1conv2d_2/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4295721

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:??????????c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_4298645U
:conv2d_2_kernel_regularizer_square_readvariableop_resource:?
identity??1conv2d_2/kernel/Regularizer/Square/ReadVariableOp?
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_2_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:?*
dtype0?
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:?z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_20
serving_default_input_2:0?????????	:
policy0
StatefulPartitionedCall:0?????????	9
value0
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
?
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
	optimizer
loss
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
(
%	keras_api"
_tf_keras_layer
(
&	keras_api"
_tf_keras_layer
(
'	keras_api"
_tf_keras_layer
(
(	keras_api"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
(
S	keras_api"
_tf_keras_layer
?
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
(
X	keras_api"
_tf_keras_layer
(
Y	keras_api"
_tf_keras_layer
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance
t	variables
utrainable_variables
vregularization_losses
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
|	variables
}trainable_variables
~regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

?decay
?learning_rate
?momentum
?rho
	?iter
)rms?
*rms?
0rms?
1rms?
<rms?
=rms?
Crms?
Drms?
Zrms?
[rms?
`rms?
arms?
grms?
hrms?
prms?
qrms??rms??rms??rms??rms??rms??rms?"
	optimizer
 "
trackable_list_wrapper
?
)0
*1
02
13
24
35
<6
=7
C8
D9
E10
F11
Z12
[13
`14
a15
g16
h17
i18
j19
p20
q21
r22
s23
?24
?25
?26
?27
?28
?29"
trackable_list_wrapper
?
)0
*1
02
13
<4
=5
C6
D7
Z8
[9
`10
a11
g12
h13
p14
q15
?16
?17
?18
?19
?20
?21"
trackable_list_wrapper
X
?0
?1
?2
?3
?4
?5
?6"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
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
*:(?2conv2d_2/kernel
:?2conv2d_2/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_4/gamma
):'?2batch_normalization_4/beta
2:0? (2!batch_normalization_4/moving_mean
6:4? (2%batch_normalization_4/moving_variance
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_3/kernel
:?2conv2d_3/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_5/gamma
):'?2batch_normalization_5/beta
2:0? (2!batch_normalization_5/moving_mean
6:4? (2%batch_normalization_5/moving_variance
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
%:#2conv1d_3/kernel
:2conv1d_3/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#2conv1d_2/kernel
:2conv1d_2/bias
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_7/gamma
(:&2batch_normalization_7/beta
1:/ (2!batch_normalization_7/moving_mean
5:3 (2%batch_normalization_7/moving_variance
<
g0
h1
i2
j3"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_6/gamma
(:&2batch_normalization_6/beta
1:/ (2!batch_normalization_6/moving_mean
5:3 (2%batch_normalization_6/moving_variance
<
p0
q1
r2
s3"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
x	variables
ytrainable_variables
zregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_1/kernel
:?2dense_1/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?	2policy/kernel
:	2policy/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?2value/kernel
:2
value/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
: (2rho
:	 (2RMSprop/iter
X
20
31
E2
F3
i4
j5
r6
s7"
trackable_list_wrapper
?
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
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
4:2?2RMSprop/conv2d_2/kernel/rms
&:$?2RMSprop/conv2d_2/bias/rms
4:2?2'RMSprop/batch_normalization_4/gamma/rms
3:1?2&RMSprop/batch_normalization_4/beta/rms
5:3??2RMSprop/conv2d_3/kernel/rms
&:$?2RMSprop/conv2d_3/bias/rms
4:2?2'RMSprop/batch_normalization_5/gamma/rms
3:1?2&RMSprop/batch_normalization_5/beta/rms
/:-2RMSprop/conv1d_3/kernel/rms
%:#2RMSprop/conv1d_3/bias/rms
/:-2RMSprop/conv1d_2/kernel/rms
%:#2RMSprop/conv1d_2/bias/rms
3:12'RMSprop/batch_normalization_7/gamma/rms
2:02&RMSprop/batch_normalization_7/beta/rms
3:12'RMSprop/batch_normalization_6/gamma/rms
2:02&RMSprop/batch_normalization_6/beta/rms
,:*
??2RMSprop/dense_1/kernel/rms
%:#?2RMSprop/dense_1/bias/rms
*:(	?	2RMSprop/policy/kernel/rms
#:!	2RMSprop/policy/bias/rms
):'	?2RMSprop/value/kernel/rms
": 2RMSprop/value/bias/rms
?2?
1__inference_tictactoe_model_layer_call_fn_4296125
1__inference_tictactoe_model_layer_call_fn_4297271
1__inference_tictactoe_model_layer_call_fn_4297338
1__inference_tictactoe_model_layer_call_fn_4296797?
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
?2?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297531
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297752
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296942
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297087?
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
?B?
"__inference__wrapped_model_4295359input_2"?
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
?2?
*__inference_conv2d_2_layer_call_fn_4297767?
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
?2?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4297783?
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
?2?
7__inference_batch_normalization_4_layer_call_fn_4297796
7__inference_batch_normalization_4_layer_call_fn_4297809
7__inference_batch_normalization_4_layer_call_fn_4297822
7__inference_batch_normalization_4_layer_call_fn_4297835?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297853
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297871
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297889
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297907?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_re_lu_3_layer_call_fn_4297912?
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
?2?
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4297917?
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
?2?
*__inference_conv2d_3_layer_call_fn_4297932?
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
?2?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4297948?
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
?2?
7__inference_batch_normalization_5_layer_call_fn_4297961
7__inference_batch_normalization_5_layer_call_fn_4297974
7__inference_batch_normalization_5_layer_call_fn_4297987
7__inference_batch_normalization_5_layer_call_fn_4298000?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298018
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298036
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298054
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298072?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_5_layer_call_fn_4298077?
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
?2?
F__inference_flatten_5_layer_call_and_return_conditional_losses_4298083?
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
?2?
+__inference_flatten_4_layer_call_fn_4298088?
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
?2?
F__inference_flatten_4_layer_call_and_return_conditional_losses_4298094?
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
?2?
0__inference_residual_tower_layer_call_fn_4298099?
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
?2?
K__inference_residual_tower_layer_call_and_return_conditional_losses_4298104?
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
?2?
*__inference_conv1d_3_layer_call_fn_4298119?
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
?2?
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4298140?
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
?2?
*__inference_conv1d_2_layer_call_fn_4298155?
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
?2?
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4298176?
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
?2?
7__inference_batch_normalization_7_layer_call_fn_4298189
7__inference_batch_normalization_7_layer_call_fn_4298202
7__inference_batch_normalization_7_layer_call_fn_4298215
7__inference_batch_normalization_7_layer_call_fn_4298228?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298248
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298282
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298302
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298336?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_6_layer_call_fn_4298349
7__inference_batch_normalization_6_layer_call_fn_4298362
7__inference_batch_normalization_6_layer_call_fn_4298375
7__inference_batch_normalization_6_layer_call_fn_4298388?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298408
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298442
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298462
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298496?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_re_lu_5_layer_call_fn_4298501?
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
?2?
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4298506?
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
?2?
)__inference_re_lu_4_layer_call_fn_4298511?
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
?2?
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4298516?
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
?2?
+__inference_flatten_7_layer_call_fn_4298521?
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
?2?
F__inference_flatten_7_layer_call_and_return_conditional_losses_4298527?
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
?2?
+__inference_flatten_6_layer_call_fn_4298532?
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
?2?
F__inference_flatten_6_layer_call_and_return_conditional_losses_4298538?
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
?2?
)__inference_dense_1_layer_call_fn_4298553?
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
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_4298570?
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
?2?
(__inference_policy_layer_call_fn_4298585?
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
?2?
C__inference_policy_layer_call_and_return_conditional_losses_4298602?
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
?2?
'__inference_value_layer_call_fn_4298617?
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
?2?
B__inference_value_layer_call_and_return_conditional_losses_4298634?
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
?2?
__inference_loss_fn_0_4298645?
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
?2?
__inference_loss_fn_1_4298656?
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
?2?
__inference_loss_fn_2_4298667?
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
?2?
__inference_loss_fn_3_4298678?
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
?2?
__inference_loss_fn_4_4298689?
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
?2?
__inference_loss_fn_5_4298700?
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
?2?
__inference_loss_fn_6_4298711?
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
%__inference_signature_wrapper_4297204input_2"?
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
 ?
"__inference__wrapped_model_4295359?$)*0123<=CDEFZ[jgih`asprq??????0?-
&?#
!?
input_2?????????	
? "Y?V
*
policy ?
policy?????????	
(
value?
value??????????
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297853?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297871?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297889t0123<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4297907t0123<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
7__inference_batch_normalization_4_layer_call_fn_4297796?0123N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
7__inference_batch_normalization_4_layer_call_fn_4297809?0123N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
7__inference_batch_normalization_4_layer_call_fn_4297822g0123<?9
2?/
)?&
inputs??????????
p 
? "!????????????
7__inference_batch_normalization_4_layer_call_fn_4297835g0123<?9
2?/
)?&
inputs??????????
p
? "!????????????
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298018?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298036?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298054tCDEF<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_4298072tCDEF<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
7__inference_batch_normalization_5_layer_call_fn_4297961?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
7__inference_batch_normalization_5_layer_call_fn_4297974?CDEFN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
7__inference_batch_normalization_5_layer_call_fn_4297987gCDEF<?9
2?/
)?&
inputs??????????
p 
? "!????????????
7__inference_batch_normalization_5_layer_call_fn_4298000gCDEF<?9
2?/
)?&
inputs??????????
p
? "!????????????
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298408|sprq@?=
6?3
-?*
inputs??????????????????
p 
? "2?/
(?%
0??????????????????
? ?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298442|rspq@?=
6?3
-?*
inputs??????????????????
p
? "2?/
(?%
0??????????????????
? ?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298462lsprq8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_4298496lrspq8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
7__inference_batch_normalization_6_layer_call_fn_4298349osprq@?=
6?3
-?*
inputs??????????????????
p 
? "%?"???????????????????
7__inference_batch_normalization_6_layer_call_fn_4298362orspq@?=
6?3
-?*
inputs??????????????????
p
? "%?"???????????????????
7__inference_batch_normalization_6_layer_call_fn_4298375_sprq8?5
.?+
%?"
inputs??????????
p 
? "????????????
7__inference_batch_normalization_6_layer_call_fn_4298388_rspq8?5
.?+
%?"
inputs??????????
p
? "????????????
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298248|jgih@?=
6?3
-?*
inputs??????????????????
p 
? "2?/
(?%
0??????????????????
? ?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298282|ijgh@?=
6?3
-?*
inputs??????????????????
p
? "2?/
(?%
0??????????????????
? ?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298302ljgih8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_4298336lijgh8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
7__inference_batch_normalization_7_layer_call_fn_4298189ojgih@?=
6?3
-?*
inputs??????????????????
p 
? "%?"???????????????????
7__inference_batch_normalization_7_layer_call_fn_4298202oijgh@?=
6?3
-?*
inputs??????????????????
p
? "%?"???????????????????
7__inference_batch_normalization_7_layer_call_fn_4298215_jgih8?5
.?+
%?"
inputs??????????
p 
? "????????????
7__inference_batch_normalization_7_layer_call_fn_4298228_ijgh8?5
.?+
%?"
inputs??????????
p
? "????????????
E__inference_conv1d_2_layer_call_and_return_conditional_losses_4298176f`a4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
*__inference_conv1d_2_layer_call_fn_4298155Y`a4?1
*?'
%?"
inputs??????????
? "????????????
E__inference_conv1d_3_layer_call_and_return_conditional_losses_4298140fZ[4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
*__inference_conv1d_3_layer_call_fn_4298119YZ[4?1
*?'
%?"
inputs??????????
? "????????????
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4297783m)*7?4
-?*
(?%
inputs?????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_2_layer_call_fn_4297767`)*7?4
-?*
(?%
inputs?????????
? "!????????????
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4297948n<=8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_3_layer_call_fn_4297932a<=8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_dense_1_layer_call_and_return_conditional_losses_4298570`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_1_layer_call_fn_4298553S??0?-
&?#
!?
inputs??????????
? "????????????
F__inference_flatten_4_layer_call_and_return_conditional_losses_4298094b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_4_layer_call_fn_4298088U8?5
.?+
)?&
inputs??????????
? "????????????
F__inference_flatten_5_layer_call_and_return_conditional_losses_4298083\3?0
)?&
$?!
inputs?????????	
? "%?"
?
0?????????
? ~
+__inference_flatten_5_layer_call_fn_4298077O3?0
)?&
$?!
inputs?????????	
? "???????????
F__inference_flatten_6_layer_call_and_return_conditional_losses_4298538^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_6_layer_call_fn_4298532Q4?1
*?'
%?"
inputs??????????
? "????????????
F__inference_flatten_7_layer_call_and_return_conditional_losses_4298527^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_7_layer_call_fn_4298521Q4?1
*?'
%?"
inputs??????????
? "???????????<
__inference_loss_fn_0_4298645)?

? 
? "? <
__inference_loss_fn_1_4298656<?

? 
? "? <
__inference_loss_fn_2_4298667Z?

? 
? "? <
__inference_loss_fn_3_4298678`?

? 
? "? =
__inference_loss_fn_4_4298689??

? 
? "? =
__inference_loss_fn_5_4298700??

? 
? "? =
__inference_loss_fn_6_4298711??

? 
? "? ?
C__inference_policy_layer_call_and_return_conditional_losses_4298602_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????	
? ~
(__inference_policy_layer_call_fn_4298585R??0?-
&?#
!?
inputs??????????
? "??????????	?
D__inference_re_lu_3_layer_call_and_return_conditional_losses_4297917j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_re_lu_3_layer_call_fn_4297912]8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_re_lu_4_layer_call_and_return_conditional_losses_4298516b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
)__inference_re_lu_4_layer_call_fn_4298511U4?1
*?'
%?"
inputs??????????
? "????????????
D__inference_re_lu_5_layer_call_and_return_conditional_losses_4298506b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
)__inference_re_lu_5_layer_call_fn_4298501U4?1
*?'
%?"
inputs??????????
? "????????????
K__inference_residual_tower_layer_call_and_return_conditional_losses_4298104Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_residual_tower_layer_call_fn_4298099M0?-
&?#
!?
inputs??????????
? "????????????
%__inference_signature_wrapper_4297204?$)*0123<=CDEFZ[jgih`asprq??????;?8
? 
1?.
,
input_2!?
input_2?????????	"Y?V
*
policy ?
policy?????????	
(
value?
value??????????
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4296942?$)*0123<=CDEFZ[jgih`asprq??????8?5
.?+
!?
input_2?????????	
p 

 
? "K?H
A?>
?
0/0?????????	
?
0/1?????????
? ?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297087?$)*0123<=CDEFZ[ijgh`arspq??????8?5
.?+
!?
input_2?????????	
p

 
? "K?H
A?>
?
0/0?????????	
?
0/1?????????
? ?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297531?$)*0123<=CDEFZ[jgih`asprq??????7?4
-?*
 ?
inputs?????????	
p 

 
? "K?H
A?>
?
0/0?????????	
?
0/1?????????
? ?
L__inference_tictactoe_model_layer_call_and_return_conditional_losses_4297752?$)*0123<=CDEFZ[ijgh`arspq??????7?4
-?*
 ?
inputs?????????	
p

 
? "K?H
A?>
?
0/0?????????	
?
0/1?????????
? ?
1__inference_tictactoe_model_layer_call_fn_4296125?$)*0123<=CDEFZ[jgih`asprq??????8?5
.?+
!?
input_2?????????	
p 

 
? "=?:
?
0?????????	
?
1??????????
1__inference_tictactoe_model_layer_call_fn_4296797?$)*0123<=CDEFZ[ijgh`arspq??????8?5
.?+
!?
input_2?????????	
p

 
? "=?:
?
0?????????	
?
1??????????
1__inference_tictactoe_model_layer_call_fn_4297271?$)*0123<=CDEFZ[jgih`asprq??????7?4
-?*
 ?
inputs?????????	
p 

 
? "=?:
?
0?????????	
?
1??????????
1__inference_tictactoe_model_layer_call_fn_4297338?$)*0123<=CDEFZ[ijgh`arspq??????7?4
-?*
 ?
inputs?????????	
p

 
? "=?:
?
0?????????	
?
1??????????
B__inference_value_layer_call_and_return_conditional_losses_4298634_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
'__inference_value_layer_call_fn_4298617R??0?-
&?#
!?
inputs??????????
? "??????????