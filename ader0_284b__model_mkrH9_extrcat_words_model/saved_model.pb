÷
·
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ÍÌL>"
Ttype0:
2
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.22v2.8.2-0-g2ea19cbb5758Â
|
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_11/kernel
u
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel* 
_output_shapes
:
*
dtype0
s
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
l
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes	
:*
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

rnn_10/lstm_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_namernn_10/lstm_cell_10/kernel

.rnn_10/lstm_cell_10/kernel/Read/ReadVariableOpReadVariableOprnn_10/lstm_cell_10/kernel* 
_output_shapes
:
*
dtype0
¦
$rnn_10/lstm_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$rnn_10/lstm_cell_10/recurrent_kernel

8rnn_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp$rnn_10/lstm_cell_10/recurrent_kernel* 
_output_shapes
:
*
dtype0

rnn_10/lstm_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namernn_10/lstm_cell_10/bias

,rnn_10/lstm_cell_10/bias/Read/ReadVariableOpReadVariableOprnn_10/lstm_cell_10/bias*
_output_shapes	
:*
dtype0
¨
%simple_rnn_9/simple_rnn_cell_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%simple_rnn_9/simple_rnn_cell_9/kernel
¡
9simple_rnn_9/simple_rnn_cell_9/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_9/simple_rnn_cell_9/kernel* 
_output_shapes
:
*
dtype0
¼
/simple_rnn_9/simple_rnn_cell_9/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*@
shared_name1/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel
µ
Csimple_rnn_9/simple_rnn_cell_9/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel* 
_output_shapes
:
*
dtype0

#simple_rnn_9/simple_rnn_cell_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#simple_rnn_9/simple_rnn_cell_9/bias

7simple_rnn_9/simple_rnn_cell_9/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_9/simple_rnn_cell_9/bias*
_output_shapes	
:*
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

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
z
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes	
:*
dtype0
 
!Adam/rnn_10/lstm_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/rnn_10/lstm_cell_10/kernel/m

5Adam/rnn_10/lstm_cell_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/rnn_10/lstm_cell_10/kernel/m* 
_output_shapes
:
*
dtype0
´
+Adam/rnn_10/lstm_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+Adam/rnn_10/lstm_cell_10/recurrent_kernel/m
­
?Adam/rnn_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/rnn_10/lstm_cell_10/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/rnn_10/lstm_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/rnn_10/lstm_cell_10/bias/m

3Adam/rnn_10/lstm_cell_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn_10/lstm_cell_10/bias/m*
_output_shapes	
:*
dtype0
¶
,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*=
shared_name.,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/m
¯
@Adam/simple_rnn_9/simple_rnn_cell_9/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/m* 
_output_shapes
:
*
dtype0
Ê
6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*G
shared_name86Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/m
Ã
JAdam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
­
*Adam/simple_rnn_9/simple_rnn_cell_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/simple_rnn_9/simple_rnn_cell_9/bias/m
¦
>Adam/simple_rnn_9/simple_rnn_cell_9/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_9/simple_rnn_cell_9/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
z
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes	
:*
dtype0
 
!Adam/rnn_10/lstm_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/rnn_10/lstm_cell_10/kernel/v

5Adam/rnn_10/lstm_cell_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/rnn_10/lstm_cell_10/kernel/v* 
_output_shapes
:
*
dtype0
´
+Adam/rnn_10/lstm_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+Adam/rnn_10/lstm_cell_10/recurrent_kernel/v
­
?Adam/rnn_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/rnn_10/lstm_cell_10/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/rnn_10/lstm_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/rnn_10/lstm_cell_10/bias/v

3Adam/rnn_10/lstm_cell_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn_10/lstm_cell_10/bias/v*
_output_shapes	
:*
dtype0
¶
,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*=
shared_name.,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/v
¯
@Adam/simple_rnn_9/simple_rnn_cell_9/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/v* 
_output_shapes
:
*
dtype0
Ê
6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*G
shared_name86Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/v
Ã
JAdam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
­
*Adam/simple_rnn_9/simple_rnn_cell_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/simple_rnn_9/simple_rnn_cell_9/bias/v
¦
>Adam/simple_rnn_9/simple_rnn_cell_9/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_9/simple_rnn_cell_9/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
®M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*éL
valueßLBÜL BÕL
õ
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
ª
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 

+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
ª
1cell
2
state_spec
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses*
¦

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*
ä
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_rate9m:mFmGmHmIm Jm¡Km¢9v£:v¤Fv¥Gv¦Hv§Iv¨Jv©Kvª*
<
F0
G1
H2
I3
J4
K5
96
:7*
<
F0
G1
H2
I3
J4
K5
96
:7*
* 
°
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Qserving_default* 
* 
* 
* 

Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
ã
W
state_size

Fkernel
Grecurrent_kernel
Hbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\_random_generator
]__call__
*^&call_and_return_all_conditional_losses*
* 

F0
G1
H2*

F0
G1
H2*
* 


_states
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 
* 
* 
Ó

Ikernel
Jrecurrent_kernel
Kbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x_random_generator
y__call__
*z&call_and_return_all_conditional_losses*
* 

I0
J1
K2*

I0
J1
K2*
* 
 

{states
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
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
ZT
VARIABLE_VALUErnn_10/lstm_cell_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$rnn_10/lstm_cell_10/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUErnn_10/lstm_cell_10/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_9/simple_rnn_cell_9/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_9/simple_rnn_cell_9/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

F0
G1
H2*

F0
G1
H2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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

I0
J1
K2*

I0
J1
K2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

10*
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
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
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/rnn_10/lstm_cell_10/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/rnn_10/lstm_cell_10/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/rnn_10/lstm_cell_10/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/simple_rnn_9/simple_rnn_cell_9/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/rnn_10/lstm_cell_10/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/rnn_10/lstm_cell_10/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/rnn_10/lstm_cell_10/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/simple_rnn_9/simple_rnn_cell_9/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

#serving_default_activation_11_inputPlaceholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ
Ç
StatefulPartitionedCallStatefulPartitionedCall#serving_default_activation_11_inputrnn_10/lstm_cell_10/kernel$rnn_10/lstm_cell_10/recurrent_kernelrnn_10/lstm_cell_10/bias%simple_rnn_9/simple_rnn_cell_9/kernel#simple_rnn_9/simple_rnn_cell_9/bias/simple_rnn_9/simple_rnn_cell_9/recurrent_kerneldense_11/kerneldense_11/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_59501
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp.rnn_10/lstm_cell_10/kernel/Read/ReadVariableOp8rnn_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOp,rnn_10/lstm_cell_10/bias/Read/ReadVariableOp9simple_rnn_9/simple_rnn_cell_9/kernel/Read/ReadVariableOpCsimple_rnn_9/simple_rnn_cell_9/recurrent_kernel/Read/ReadVariableOp7simple_rnn_9/simple_rnn_cell_9/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp5Adam/rnn_10/lstm_cell_10/kernel/m/Read/ReadVariableOp?Adam/rnn_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOp3Adam/rnn_10/lstm_cell_10/bias/m/Read/ReadVariableOp@Adam/simple_rnn_9/simple_rnn_cell_9/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_9/simple_rnn_cell_9/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp5Adam/rnn_10/lstm_cell_10/kernel/v/Read/ReadVariableOp?Adam/rnn_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOp3Adam/rnn_10/lstm_cell_10/bias/v/Read/ReadVariableOp@Adam/simple_rnn_9/simple_rnn_cell_9/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_9/simple_rnn_cell_9/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_60939
ö	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_raternn_10/lstm_cell_10/kernel$rnn_10/lstm_cell_10/recurrent_kernelrnn_10/lstm_cell_10/bias%simple_rnn_9/simple_rnn_cell_9/kernel/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel#simple_rnn_9/simple_rnn_cell_9/biastotalcounttotal_1count_1Adam/dense_11/kernel/mAdam/dense_11/bias/m!Adam/rnn_10/lstm_cell_10/kernel/m+Adam/rnn_10/lstm_cell_10/recurrent_kernel/mAdam/rnn_10/lstm_cell_10/bias/m,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/m6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/m*Adam/simple_rnn_9/simple_rnn_cell_9/bias/mAdam/dense_11/kernel/vAdam/dense_11/bias/v!Adam/rnn_10/lstm_cell_10/kernel/v+Adam/rnn_10/lstm_cell_10/recurrent_kernel/vAdam/rnn_10/lstm_cell_10/bias/v,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/v6Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/v*Adam/simple_rnn_9/simple_rnn_cell_9/bias/v*-
Tin&
$2"*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_61048ÒØ
×
¥
while_cond_58011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58011___redundant_placeholder03
/while_while_cond_58011___redundant_placeholder13
/while_while_cond_58011___redundant_placeholder23
/while_while_cond_58011___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ç
!__inference__traced_restore_61048
file_prefix4
 assignvariableop_dense_11_kernel:
/
 assignvariableop_1_dense_11_bias:	&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
-assignvariableop_7_rnn_10_lstm_cell_10_kernel:
K
7assignvariableop_8_rnn_10_lstm_cell_10_recurrent_kernel:
:
+assignvariableop_9_rnn_10_lstm_cell_10_bias:	M
9assignvariableop_10_simple_rnn_9_simple_rnn_cell_9_kernel:
W
Cassignvariableop_11_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel:
F
7assignvariableop_12_simple_rnn_9_simple_rnn_cell_9_bias:	#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: >
*assignvariableop_17_adam_dense_11_kernel_m:
7
(assignvariableop_18_adam_dense_11_bias_m:	I
5assignvariableop_19_adam_rnn_10_lstm_cell_10_kernel_m:
S
?assignvariableop_20_adam_rnn_10_lstm_cell_10_recurrent_kernel_m:
B
3assignvariableop_21_adam_rnn_10_lstm_cell_10_bias_m:	T
@assignvariableop_22_adam_simple_rnn_9_simple_rnn_cell_9_kernel_m:
^
Jassignvariableop_23_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_m:
M
>assignvariableop_24_adam_simple_rnn_9_simple_rnn_cell_9_bias_m:	>
*assignvariableop_25_adam_dense_11_kernel_v:
7
(assignvariableop_26_adam_dense_11_bias_v:	I
5assignvariableop_27_adam_rnn_10_lstm_cell_10_kernel_v:
S
?assignvariableop_28_adam_rnn_10_lstm_cell_10_recurrent_kernel_v:
B
3assignvariableop_29_adam_rnn_10_lstm_cell_10_bias_v:	T
@assignvariableop_30_adam_simple_rnn_9_simple_rnn_cell_9_kernel_v:
^
Jassignvariableop_31_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_v:
M
>assignvariableop_32_adam_simple_rnn_9_simple_rnn_cell_9_bias_v:	
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ê
valueÀB½"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_11_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_11_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp-assignvariableop_7_rnn_10_lstm_cell_10_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_8AssignVariableOp7assignvariableop_8_rnn_10_lstm_cell_10_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp+assignvariableop_9_rnn_10_lstm_cell_10_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_10AssignVariableOp9assignvariableop_10_simple_rnn_9_simple_rnn_cell_9_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_11AssignVariableOpCassignvariableop_11_simple_rnn_9_simple_rnn_cell_9_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_12AssignVariableOp7assignvariableop_12_simple_rnn_9_simple_rnn_cell_9_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_11_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_11_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_19AssignVariableOp5assignvariableop_19_adam_rnn_10_lstm_cell_10_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_20AssignVariableOp?assignvariableop_20_adam_rnn_10_lstm_cell_10_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_21AssignVariableOp3assignvariableop_21_adam_rnn_10_lstm_cell_10_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_9_simple_rnn_cell_9_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_23AssignVariableOpJassignvariableop_23_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_24AssignVariableOp>assignvariableop_24_adam_simple_rnn_9_simple_rnn_cell_9_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_11_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_11_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adam_rnn_10_lstm_cell_10_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_28AssignVariableOp?assignvariableop_28_adam_rnn_10_lstm_cell_10_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_rnn_10_lstm_cell_10_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_simple_rnn_9_simple_rnn_cell_9_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_31AssignVariableOpJassignvariableop_31_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_simple_rnn_9_simple_rnn_cell_9_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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

»
,__inference_simple_rnn_9_layer_call_fn_60194

inputs
unknown:

	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58383p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
I
-__inference_activation_11_layer_call_fn_59506

inputs
identity¸
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_58096e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

÷
C__inference_dense_11_layer_call_and_return_conditional_losses_58402

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
¥
while_cond_60570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_60570___redundant_placeholder03
/while_while_cond_60570___redundant_placeholder13
/while_while_cond_60570___redundant_placeholder23
/while_while_cond_60570___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¿=
¿
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58383

inputsD
0simple_rnn_cell_9_matmul_readvariableop_resource:
@
1simple_rnn_cell_9_biasadd_readvariableop_resource:	F
2simple_rnn_cell_9_matmul_1_readvariableop_resource:

identity¢(simple_rnn_cell_9/BiasAdd/ReadVariableOp¢'simple_rnn_cell_9/MatMul/ReadVariableOp¢)simple_rnn_cell_9/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_58317*
condR
while_cond_58316*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
¾
while_cond_60039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_60039___redundant_placeholder03
/while_while_cond_60039___redundant_placeholder13
/while_while_cond_60039___redundant_placeholder23
/while_while_cond_60039___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ô,
Ñ
while_body_58493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
H
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	N
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_9_matmul_readvariableop_resource:
F
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:	L
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_9/MatMul/ReadVariableOp¢/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ä
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0«
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
é8
×
simple_rnn_9_while_body_594056
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_25
1simple_rnn_9_while_simple_rnn_9_strided_slice_1_0q
msimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
U
Fsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	[
Gsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

simple_rnn_9_while_identity!
simple_rnn_9_while_identity_1!
simple_rnn_9_while_identity_2!
simple_rnn_9_while_identity_3!
simple_rnn_9_while_identity_43
/simple_rnn_9_while_simple_rnn_9_strided_slice_1o
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource:
S
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource:	Y
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp¢<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
Dsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   è
6simple_rnn_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_9_while_placeholderMsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Â
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ë
+simple_rnn_9/while/simple_rnn_cell_9/MatMulMatMul=simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0æ
,simple_rnn_9/while/simple_rnn_cell_9/BiasAddBiasAdd5simple_rnn_9/while/simple_rnn_cell_9/MatMul:product:0Csimple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ò
-simple_rnn_9/while/simple_rnn_cell_9/MatMul_1MatMul simple_rnn_9_while_placeholder_2Dsimple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
(simple_rnn_9/while/simple_rnn_cell_9/addAddV25simple_rnn_9/while/simple_rnn_cell_9/BiasAdd:output:07simple_rnn_9/while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_9/while/simple_rnn_cell_9/TanhTanh,simple_rnn_9/while/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
7simple_rnn_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_9_while_placeholder_1simple_rnn_9_while_placeholder-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_9/while/addAddV2simple_rnn_9_while_placeholder!simple_rnn_9/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_9/while/add_1AddV22simple_rnn_9_while_simple_rnn_9_while_loop_counter#simple_rnn_9/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/add_1:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_9/while/Identity_1Identity8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_9/while/Identity_2Identitysimple_rnn_9/while/add:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_9/while/Identity_3IdentityGsimple_rnn_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: :éèÒ¥
simple_rnn_9/while/Identity_4Identity-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0^simple_rnn_9/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_9/while/NoOpNoOp<^simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;^simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp=^simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0"G
simple_rnn_9_while_identity_1&simple_rnn_9/while/Identity_1:output:0"G
simple_rnn_9_while_identity_2&simple_rnn_9/while/Identity_2:output:0"G
simple_rnn_9_while_identity_3&simple_rnn_9/while/Identity_3:output:0"G
simple_rnn_9_while_identity_4&simple_rnn_9/while/Identity_4:output:0"d
/simple_rnn_9_while_simple_rnn_9_strided_slice_11simple_rnn_9_while_simple_rnn_9_strided_slice_1_0"
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resourceFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resourceGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resourceEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0"Ü
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensormsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2z
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2x
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp2|
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ô,
Ñ
while_body_60571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
H
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	N
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_9_matmul_readvariableop_resource:
F
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:	L
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_9/MatMul/ReadVariableOp¢/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ä
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0«
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Q
ô
%sequential_11_rnn_10_while_body_57239F
Bsequential_11_rnn_10_while_sequential_11_rnn_10_while_loop_counterL
Hsequential_11_rnn_10_while_sequential_11_rnn_10_while_maximum_iterations*
&sequential_11_rnn_10_while_placeholder,
(sequential_11_rnn_10_while_placeholder_1,
(sequential_11_rnn_10_while_placeholder_2,
(sequential_11_rnn_10_while_placeholder_3E
Asequential_11_rnn_10_while_sequential_11_rnn_10_strided_slice_1_0
}sequential_11_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_11_rnn_10_tensorarrayunstack_tensorlistfromtensor_0\
Hsequential_11_rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0:
^
Jsequential_11_rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0:
X
Isequential_11_rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0:	'
#sequential_11_rnn_10_while_identity)
%sequential_11_rnn_10_while_identity_1)
%sequential_11_rnn_10_while_identity_2)
%sequential_11_rnn_10_while_identity_3)
%sequential_11_rnn_10_while_identity_4)
%sequential_11_rnn_10_while_identity_5C
?sequential_11_rnn_10_while_sequential_11_rnn_10_strided_slice_1
{sequential_11_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_11_rnn_10_tensorarrayunstack_tensorlistfromtensorZ
Fsequential_11_rnn_10_while_lstm_cell_10_matmul_readvariableop_resource:
\
Hsequential_11_rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource:
V
Gsequential_11_rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource:	¢>sequential_11/rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp¢=sequential_11/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp¢?sequential_11/rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp
Lsequential_11/rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
>sequential_11/rnn_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_11_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_11_rnn_10_tensorarrayunstack_tensorlistfromtensor_0&sequential_11_rnn_10_while_placeholderUsequential_11/rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0È
=sequential_11/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOpHsequential_11_rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ù
.sequential_11/rnn_10/while/lstm_cell_10/MatMulMatMulEsequential_11/rnn_10/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_11/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
?sequential_11/rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpJsequential_11_rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0à
0sequential_11/rnn_10/while/lstm_cell_10/MatMul_1MatMul(sequential_11_rnn_10_while_placeholder_2Gsequential_11/rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
+sequential_11/rnn_10/while/lstm_cell_10/addAddV28sequential_11/rnn_10/while/lstm_cell_10/MatMul:product:0:sequential_11/rnn_10/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
>sequential_11/rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpIsequential_11_rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0æ
/sequential_11/rnn_10/while/lstm_cell_10/BiasAddBiasAdd/sequential_11/rnn_10/while/lstm_cell_10/add:z:0Fsequential_11/rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
7sequential_11/rnn_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :²
-sequential_11/rnn_10/while/lstm_cell_10/splitSplit@sequential_11/rnn_10/while/lstm_cell_10/split/split_dim:output:08sequential_11/rnn_10/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¥
/sequential_11/rnn_10/while/lstm_cell_10/SigmoidSigmoid6sequential_11/rnn_10/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
1sequential_11/rnn_10/while/lstm_cell_10/Sigmoid_1Sigmoid6sequential_11/rnn_10/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
+sequential_11/rnn_10/while/lstm_cell_10/mulMul5sequential_11/rnn_10/while/lstm_cell_10/Sigmoid_1:y:0(sequential_11_rnn_10_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_11/rnn_10/while/lstm_cell_10/TanhTanh6sequential_11/rnn_10/while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
-sequential_11/rnn_10/while/lstm_cell_10/mul_1Mul3sequential_11/rnn_10/while/lstm_cell_10/Sigmoid:y:00sequential_11/rnn_10/while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
-sequential_11/rnn_10/while/lstm_cell_10/add_1AddV2/sequential_11/rnn_10/while/lstm_cell_10/mul:z:01sequential_11/rnn_10/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
1sequential_11/rnn_10/while/lstm_cell_10/Sigmoid_2Sigmoid6sequential_11/rnn_10/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.sequential_11/rnn_10/while/lstm_cell_10/Tanh_1Tanh1sequential_11/rnn_10/while/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
-sequential_11/rnn_10/while/lstm_cell_10/mul_2Mul5sequential_11/rnn_10/while/lstm_cell_10/Sigmoid_2:y:02sequential_11/rnn_10/while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?sequential_11/rnn_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_11_rnn_10_while_placeholder_1&sequential_11_rnn_10_while_placeholder1sequential_11/rnn_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒb
 sequential_11/rnn_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_11/rnn_10/while/addAddV2&sequential_11_rnn_10_while_placeholder)sequential_11/rnn_10/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_11/rnn_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 sequential_11/rnn_10/while/add_1AddV2Bsequential_11_rnn_10_while_sequential_11_rnn_10_while_loop_counter+sequential_11/rnn_10/while/add_1/y:output:0*
T0*
_output_shapes
: 
#sequential_11/rnn_10/while/IdentityIdentity$sequential_11/rnn_10/while/add_1:z:0 ^sequential_11/rnn_10/while/NoOp*
T0*
_output_shapes
: ¾
%sequential_11/rnn_10/while/Identity_1IdentityHsequential_11_rnn_10_while_sequential_11_rnn_10_while_maximum_iterations ^sequential_11/rnn_10/while/NoOp*
T0*
_output_shapes
: 
%sequential_11/rnn_10/while/Identity_2Identity"sequential_11/rnn_10/while/add:z:0 ^sequential_11/rnn_10/while/NoOp*
T0*
_output_shapes
: Ø
%sequential_11/rnn_10/while/Identity_3IdentityOsequential_11/rnn_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_11/rnn_10/while/NoOp*
T0*
_output_shapes
: :éèÒ¹
%sequential_11/rnn_10/while/Identity_4Identity1sequential_11/rnn_10/while/lstm_cell_10/mul_2:z:0 ^sequential_11/rnn_10/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
%sequential_11/rnn_10/while/Identity_5Identity1sequential_11/rnn_10/while/lstm_cell_10/add_1:z:0 ^sequential_11/rnn_10/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
sequential_11/rnn_10/while/NoOpNoOp?^sequential_11/rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_11/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_11/rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_11_rnn_10_while_identity,sequential_11/rnn_10/while/Identity:output:0"W
%sequential_11_rnn_10_while_identity_1.sequential_11/rnn_10/while/Identity_1:output:0"W
%sequential_11_rnn_10_while_identity_2.sequential_11/rnn_10/while/Identity_2:output:0"W
%sequential_11_rnn_10_while_identity_3.sequential_11/rnn_10/while/Identity_3:output:0"W
%sequential_11_rnn_10_while_identity_4.sequential_11/rnn_10/while/Identity_4:output:0"W
%sequential_11_rnn_10_while_identity_5.sequential_11/rnn_10/while/Identity_5:output:0"
Gsequential_11_rnn_10_while_lstm_cell_10_biasadd_readvariableop_resourceIsequential_11_rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"
Hsequential_11_rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resourceJsequential_11_rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"
Fsequential_11_rnn_10_while_lstm_cell_10_matmul_readvariableop_resourceHsequential_11_rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0"
?sequential_11_rnn_10_while_sequential_11_rnn_10_strided_slice_1Asequential_11_rnn_10_while_sequential_11_rnn_10_strided_slice_1_0"ü
{sequential_11_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_11_rnn_10_tensorarrayunstack_tensorlistfromtensor}sequential_11_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_11_rnn_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
>sequential_11/rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>sequential_11/rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2~
=sequential_11/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp=sequential_11/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp2
?sequential_11/rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?sequential_11/rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ã	
Í
-__inference_sequential_11_layer_call_fn_58927

inputs
unknown:

	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:

	unknown_5:

	unknown_6:	
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58409p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
ö
H__inference_sequential_11_layer_call_and_return_conditional_losses_58900
activation_11_input 
rnn_10_58877:
 
rnn_10_58879:

rnn_10_58881:	&
simple_rnn_9_58887:
!
simple_rnn_9_58889:	&
simple_rnn_9_58891:
"
dense_11_58894:

dense_11_58896:	
identity¢ dense_11/StatefulPartitionedCall¢rnn_10/StatefulPartitionedCall¢$simple_rnn_9/StatefulPartitionedCallÓ
activation_11/PartitionedCallPartitionedCallactivation_11_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_58096
rnn_10/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0rnn_10_58877rnn_10_58879rnn_10_58881*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_58741å
leaky_re_lu_17/PartitionedCallPartitionedCall'rnn_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_58252å
leaky_re_lu_18/PartitionedCallPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_58259ß
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_2_layer_call_and_return_conditional_losses_58274°
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0simple_rnn_9_58887simple_rnn_9_58889simple_rnn_9_58891*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58559
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_11_58894dense_11_58896*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_58402y
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp!^dense_11/StatefulPartitionedCall^rnn_10/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2@
rnn_10/StatefulPartitionedCallrnn_10/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:a ]
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameactivation_11_input
×
¥
while_cond_60246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_60246___redundant_placeholder03
/while_while_cond_60246___redundant_placeholder13
/while_while_cond_60246___redundant_placeholder23
/while_while_cond_60246___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
´
¾
while_cond_59613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59613___redundant_placeholder03
/while_while_cond_59613___redundant_placeholder13
/while_while_cond_59613___redundant_placeholder23
/while_while_cond_59613___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
4

G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58075

inputs+
simple_rnn_cell_9_58000:
&
simple_rnn_cell_9_58002:	+
simple_rnn_cell_9_58004:

identity¢)simple_rnn_cell_9/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskå
)simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_9_58000simple_rnn_cell_9_58002simple_rnn_cell_9_58004*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57960n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_9_58000simple_rnn_cell_9_58002simple_rnn_cell_9_58004*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_58012*
condR
while_cond_58011*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp*^simple_rnn_cell_9/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_9/StatefulPartitionedCall)simple_rnn_cell_9/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
¾
while_cond_58155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_58155___redundant_placeholder03
/while_while_cond_58155___redundant_placeholder13
/while_while_cond_58155___redundant_placeholder23
/while_while_cond_58155___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ø	
Ê
rnn_10_while_cond_59007*
&rnn_10_while_rnn_10_while_loop_counter0
,rnn_10_while_rnn_10_while_maximum_iterations
rnn_10_while_placeholder
rnn_10_while_placeholder_1
rnn_10_while_placeholder_2
rnn_10_while_placeholder_3,
(rnn_10_while_less_rnn_10_strided_slice_1A
=rnn_10_while_rnn_10_while_cond_59007___redundant_placeholder0A
=rnn_10_while_rnn_10_while_cond_59007___redundant_placeholder1A
=rnn_10_while_rnn_10_while_cond_59007___redundant_placeholder2A
=rnn_10_while_rnn_10_while_cond_59007___redundant_placeholder3
rnn_10_while_identity
~
rnn_10/while/LessLessrnn_10_while_placeholder(rnn_10_while_less_rnn_10_strided_slice_1*
T0*
_output_shapes
: Y
rnn_10/while/IdentityIdentityrnn_10/while/Less:z:0*
T0
*
_output_shapes
: "7
rnn_10_while_identityrnn_10/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

½
,__inference_simple_rnn_9_layer_call_fn_60172
inputs_0
unknown:

	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_57916p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
´
¾
while_cond_59755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59755___redundant_placeholder03
/while_while_cond_59755___redundant_placeholder13
/while_while_cond_59755___redundant_placeholder23
/while_while_cond_59755___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¬
é
H__inference_sequential_11_layer_call_and_return_conditional_losses_58409

inputs 
rnn_10_58240:
 
rnn_10_58242:

rnn_10_58244:	&
simple_rnn_9_58384:
!
simple_rnn_9_58386:	&
simple_rnn_9_58388:
"
dense_11_58403:

dense_11_58405:	
identity¢ dense_11/StatefulPartitionedCall¢rnn_10/StatefulPartitionedCall¢$simple_rnn_9/StatefulPartitionedCallÆ
activation_11/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_58096
rnn_10/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0rnn_10_58240rnn_10_58242rnn_10_58244*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_58239å
leaky_re_lu_17/PartitionedCallPartitionedCall'rnn_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_58252å
leaky_re_lu_18/PartitionedCallPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_58259ß
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_2_layer_call_and_return_conditional_losses_58274°
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0simple_rnn_9_58384simple_rnn_9_58386simple_rnn_9_58388*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58383
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_11_58403dense_11_58405*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_58402y
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp!^dense_11/StatefulPartitionedCall^rnn_10/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2@
rnn_10/StatefulPartitionedCallrnn_10/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

·
&__inference_rnn_10_layer_call_fn_59533
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_57783p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
â

G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_60723

inputs
states_0
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¯J
ª
__inference__traced_save_60939
file_prefix.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop9
5savev2_rnn_10_lstm_cell_10_kernel_read_readvariableopC
?savev2_rnn_10_lstm_cell_10_recurrent_kernel_read_readvariableop7
3savev2_rnn_10_lstm_cell_10_bias_read_readvariableopD
@savev2_simple_rnn_9_simple_rnn_cell_9_kernel_read_readvariableopN
Jsavev2_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_9_simple_rnn_cell_9_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop@
<savev2_adam_rnn_10_lstm_cell_10_kernel_m_read_readvariableopJ
Fsavev2_adam_rnn_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop>
:savev2_adam_rnn_10_lstm_cell_10_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_9_simple_rnn_cell_9_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_9_simple_rnn_cell_9_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop@
<savev2_adam_rnn_10_lstm_cell_10_kernel_v_read_readvariableopJ
Fsavev2_adam_rnn_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop>
:savev2_adam_rnn_10_lstm_cell_10_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_9_simple_rnn_cell_9_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_9_simple_rnn_cell_9_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ê
valueÀB½"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop5savev2_rnn_10_lstm_cell_10_kernel_read_readvariableop?savev2_rnn_10_lstm_cell_10_recurrent_kernel_read_readvariableop3savev2_rnn_10_lstm_cell_10_bias_read_readvariableop@savev2_simple_rnn_9_simple_rnn_cell_9_kernel_read_readvariableopJsavev2_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_read_readvariableop>savev2_simple_rnn_9_simple_rnn_cell_9_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop<savev2_adam_rnn_10_lstm_cell_10_kernel_m_read_readvariableopFsavev2_adam_rnn_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop:savev2_adam_rnn_10_lstm_cell_10_bias_m_read_readvariableopGsavev2_adam_simple_rnn_9_simple_rnn_cell_9_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_9_simple_rnn_cell_9_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop<savev2_adam_rnn_10_lstm_cell_10_kernel_v_read_readvariableopFsavev2_adam_rnn_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop:savev2_adam_rnn_10_lstm_cell_10_bias_v_read_readvariableopGsavev2_adam_simple_rnn_9_simple_rnn_cell_9_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_9_simple_rnn_cell_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapes
: :
:: : : : : :
:
::
:
:: : : : :
::
:
::
:
::
::
:
::
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:&	"
 
_output_shapes
:
:!


_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::
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
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:& "
 
_output_shapes
:
:!!

_output_shapes	
::"

_output_shapes
: 
ç
e
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_60143

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
¾
while_cond_57714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_57714___redundant_placeholder03
/while_while_cond_57714___redundant_placeholder13
/while_while_cond_57714___redundant_placeholder23
/while_while_cond_57714___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ç@
³

rnn_10_while_body_59008*
&rnn_10_while_rnn_10_while_loop_counter0
,rnn_10_while_rnn_10_while_maximum_iterations
rnn_10_while_placeholder
rnn_10_while_placeholder_1
rnn_10_while_placeholder_2
rnn_10_while_placeholder_3)
%rnn_10_while_rnn_10_strided_slice_1_0e
arnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensor_0N
:rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0:
P
<rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0:
J
;rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0:	
rnn_10_while_identity
rnn_10_while_identity_1
rnn_10_while_identity_2
rnn_10_while_identity_3
rnn_10_while_identity_4
rnn_10_while_identity_5'
#rnn_10_while_rnn_10_strided_slice_1c
_rnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensorL
8rnn_10_while_lstm_cell_10_matmul_readvariableop_resource:
N
:rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource:
H
9rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource:	¢0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp¢/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp¢1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp
>rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ê
0rnn_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemarnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensor_0rnn_10_while_placeholderGrnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¬
/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp:rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ï
 rnn_10/while/lstm_cell_10/MatMulMatMul7rnn_10/while/TensorArrayV2Read/TensorListGetItem:item:07rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp<rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¶
"rnn_10/while/lstm_cell_10/MatMul_1MatMulrnn_10_while_placeholder_29rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
rnn_10/while/lstm_cell_10/addAddV2*rnn_10/while/lstm_cell_10/MatMul:product:0,rnn_10/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp;rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¼
!rnn_10/while/lstm_cell_10/BiasAddBiasAdd!rnn_10/while/lstm_cell_10/add:z:08rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)rnn_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
rnn_10/while/lstm_cell_10/splitSplit2rnn_10/while/lstm_cell_10/split/split_dim:output:0*rnn_10/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
!rnn_10/while/lstm_cell_10/SigmoidSigmoid(rnn_10/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#rnn_10/while/lstm_cell_10/Sigmoid_1Sigmoid(rnn_10/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/while/lstm_cell_10/mulMul'rnn_10/while/lstm_cell_10/Sigmoid_1:y:0rnn_10_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/while/lstm_cell_10/TanhTanh(rnn_10/while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
rnn_10/while/lstm_cell_10/mul_1Mul%rnn_10/while/lstm_cell_10/Sigmoid:y:0"rnn_10/while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
rnn_10/while/lstm_cell_10/add_1AddV2!rnn_10/while/lstm_cell_10/mul:z:0#rnn_10/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#rnn_10/while/lstm_cell_10/Sigmoid_2Sigmoid(rnn_10/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 rnn_10/while/lstm_cell_10/Tanh_1Tanh#rnn_10/while/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
rnn_10/while/lstm_cell_10/mul_2Mul'rnn_10/while/lstm_cell_10/Sigmoid_2:y:0$rnn_10/while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
1rnn_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_10_while_placeholder_1rnn_10_while_placeholder#rnn_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
rnn_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
rnn_10/while/addAddV2rnn_10_while_placeholderrnn_10/while/add/y:output:0*
T0*
_output_shapes
: V
rnn_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_10/while/add_1AddV2&rnn_10_while_rnn_10_while_loop_counterrnn_10/while/add_1/y:output:0*
T0*
_output_shapes
: n
rnn_10/while/IdentityIdentityrnn_10/while/add_1:z:0^rnn_10/while/NoOp*
T0*
_output_shapes
: 
rnn_10/while/Identity_1Identity,rnn_10_while_rnn_10_while_maximum_iterations^rnn_10/while/NoOp*
T0*
_output_shapes
: n
rnn_10/while/Identity_2Identityrnn_10/while/add:z:0^rnn_10/while/NoOp*
T0*
_output_shapes
: ®
rnn_10/while/Identity_3IdentityArnn_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_10/while/NoOp*
T0*
_output_shapes
: :éèÒ
rnn_10/while/Identity_4Identity#rnn_10/while/lstm_cell_10/mul_2:z:0^rnn_10/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/while/Identity_5Identity#rnn_10/while/lstm_cell_10/add_1:z:0^rnn_10/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
rnn_10/while/NoOpNoOp1^rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp0^rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp2^rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
rnn_10_while_identityrnn_10/while/Identity:output:0";
rnn_10_while_identity_1 rnn_10/while/Identity_1:output:0";
rnn_10_while_identity_2 rnn_10/while/Identity_2:output:0";
rnn_10_while_identity_3 rnn_10/while/Identity_3:output:0";
rnn_10_while_identity_4 rnn_10/while/Identity_4:output:0";
rnn_10_while_identity_5 rnn_10/while/Identity_5:output:0"x
9rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource;rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"z
:rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource<rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"v
8rnn_10_while_lstm_cell_10_matmul_readvariableop_resource:rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0"L
#rnn_10_while_rnn_10_strided_slice_1%rnn_10_while_rnn_10_strided_slice_1_0"Ä
_rnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensorarnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2b
/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp2f
1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
à
d
H__inference_activation_11_layer_call_and_return_conditional_losses_59511

inputs
identityK
SeluSeluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentitySelu:activations:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
ö
H__inference_sequential_11_layer_call_and_return_conditional_losses_58873
activation_11_input 
rnn_10_58850:
 
rnn_10_58852:

rnn_10_58854:	&
simple_rnn_9_58860:
!
simple_rnn_9_58862:	&
simple_rnn_9_58864:
"
dense_11_58867:

dense_11_58869:	
identity¢ dense_11/StatefulPartitionedCall¢rnn_10/StatefulPartitionedCall¢$simple_rnn_9/StatefulPartitionedCallÓ
activation_11/PartitionedCallPartitionedCallactivation_11_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_58096
rnn_10/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0rnn_10_58850rnn_10_58852rnn_10_58854*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_58239å
leaky_re_lu_17/PartitionedCallPartitionedCall'rnn_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_58252å
leaky_re_lu_18/PartitionedCallPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_58259ß
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_2_layer_call_and_return_conditional_losses_58274°
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0simple_rnn_9_58860simple_rnn_9_58862simple_rnn_9_58864*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58383
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_11_58867dense_11_58869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_58402y
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp!^dense_11/StatefulPartitionedCall^rnn_10/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2@
rnn_10/StatefulPartitionedCallrnn_10/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:a ]
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameactivation_11_input
ã	
Í
-__inference_sequential_11_layer_call_fn_58948

inputs
unknown:

	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:

	unknown_5:

	unknown_6:	
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58806p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
E
)__inference_reshape_2_layer_call_fn_60148

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_2_layer_call_and_return_conditional_losses_58274e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ­
À
H__inference_sequential_11_layer_call_and_return_conditional_losses_59478

inputsF
2rnn_10_lstm_cell_10_matmul_readvariableop_resource:
H
4rnn_10_lstm_cell_10_matmul_1_readvariableop_resource:
B
3rnn_10_lstm_cell_10_biasadd_readvariableop_resource:	Q
=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource:
M
>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource:	S
?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource:
;
'dense_11_matmul_readvariableop_resource:
7
(dense_11_biasadd_readvariableop_resource:	
identity¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp¢)rnn_10/lstm_cell_10/MatMul/ReadVariableOp¢+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp¢rnn_10/while¢5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp¢6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp¢simple_rnn_9/whileY
activation_11/SeluSeluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rnn_10/ShapeShape activation_11/Selu:activations:0*
T0*
_output_shapes
:d
rnn_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
rnn_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
rnn_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
rnn_10/strided_sliceStridedSlicernn_10/Shape:output:0#rnn_10/strided_slice/stack:output:0%rnn_10/strided_slice/stack_1:output:0%rnn_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
rnn_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
rnn_10/zeros/packedPackrnn_10/strided_slice:output:0rnn_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
rnn_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_10/zerosFillrnn_10/zeros/packed:output:0rnn_10/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rnn_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
rnn_10/zeros_1/packedPackrnn_10/strided_slice:output:0 rnn_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
rnn_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_10/zeros_1Fillrnn_10/zeros_1/packed:output:0rnn_10/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
rnn_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
rnn_10/transpose	Transpose activation_11/Selu:activations:0rnn_10/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rnn_10/Shape_1Shapernn_10/transpose:y:0*
T0*
_output_shapes
:f
rnn_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
rnn_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
rnn_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
rnn_10/strided_slice_1StridedSlicernn_10/Shape_1:output:0%rnn_10/strided_slice_1/stack:output:0'rnn_10/strided_slice_1/stack_1:output:0'rnn_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"rnn_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
rnn_10/TensorArrayV2TensorListReserve+rnn_10/TensorArrayV2/element_shape:output:0rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.rnn_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_10/transpose:y:0Ernn_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
rnn_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
rnn_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
rnn_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_10/strided_slice_2StridedSlicernn_10/transpose:y:0%rnn_10/strided_slice_2/stack:output:0'rnn_10/strided_slice_2/stack_1:output:0'rnn_10/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
)rnn_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp2rnn_10_lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0«
rnn_10/lstm_cell_10/MatMulMatMulrnn_10/strided_slice_2:output:01rnn_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp4rnn_10_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0¥
rnn_10/lstm_cell_10/MatMul_1MatMulrnn_10/zeros:output:03rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
rnn_10/lstm_cell_10/addAddV2$rnn_10/lstm_cell_10/MatMul:product:0&rnn_10/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp3rnn_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
rnn_10/lstm_cell_10/BiasAddBiasAddrnn_10/lstm_cell_10/add:z:02rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#rnn_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
rnn_10/lstm_cell_10/splitSplit,rnn_10/lstm_cell_10/split/split_dim:output:0$rnn_10/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
rnn_10/lstm_cell_10/SigmoidSigmoid"rnn_10/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/Sigmoid_1Sigmoid"rnn_10/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/mulMul!rnn_10/lstm_cell_10/Sigmoid_1:y:0rnn_10/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
rnn_10/lstm_cell_10/TanhTanh"rnn_10/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/mul_1Mulrnn_10/lstm_cell_10/Sigmoid:y:0rnn_10/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/add_1AddV2rnn_10/lstm_cell_10/mul:z:0rnn_10/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/Sigmoid_2Sigmoid"rnn_10/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
rnn_10/lstm_cell_10/Tanh_1Tanhrnn_10/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/mul_2Mul!rnn_10/lstm_cell_10/Sigmoid_2:y:0rnn_10/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
$rnn_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Í
rnn_10/TensorArrayV2_1TensorListReserve-rnn_10/TensorArrayV2_1/element_shape:output:0rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
rnn_10/timeConst*
_output_shapes
: *
dtype0*
value	B : j
rnn_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
rnn_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : æ
rnn_10/whileWhile"rnn_10/while/loop_counter:output:0(rnn_10/while/maximum_iterations:output:0rnn_10/time:output:0rnn_10/TensorArrayV2_1:handle:0rnn_10/zeros:output:0rnn_10/zeros_1:output:0rnn_10/strided_slice_1:output:0>rnn_10/TensorArrayUnstack/TensorListFromTensor:output_handle:02rnn_10_lstm_cell_10_matmul_readvariableop_resource4rnn_10_lstm_cell_10_matmul_1_readvariableop_resource3rnn_10_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
rnn_10_while_body_59273*#
condR
rnn_10_while_cond_59272*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
7rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ø
)rnn_10/TensorArrayV2Stack/TensorListStackTensorListStackrnn_10/while:output:3@rnn_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0o
rnn_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
rnn_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
rnn_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
rnn_10/strided_slice_3StridedSlice2rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0%rnn_10/strided_slice_3/stack:output:0'rnn_10/strided_slice_3/stack_1:output:0'rnn_10/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskl
rnn_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
rnn_10/transpose_1	Transpose2rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0 rnn_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
leaky_re_lu_17/LeakyRelu	LeakyRelurnn_10/strided_slice_3:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>
leaky_re_lu_18/LeakyRelu	LeakyRelu&leaky_re_lu_17/LeakyRelu:activations:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>e
reshape_2/ShapeShape&leaky_re_lu_18/LeakyRelu:activations:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :·
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_2/ReshapeReshape&leaky_re_lu_18/LeakyRelu:activations:0 reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
simple_rnn_9/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:j
 simple_rnn_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_9/strided_sliceStridedSlicesimple_rnn_9/Shape:output:0)simple_rnn_9/strided_slice/stack:output:0+simple_rnn_9/strided_slice/stack_1:output:0+simple_rnn_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
simple_rnn_9/zeros/packedPack#simple_rnn_9/strided_slice:output:0$simple_rnn_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_9/zerosFill"simple_rnn_9/zeros/packed:output:0!simple_rnn_9/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
simple_rnn_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_9/transpose	Transposereshape_2/Reshape:output:0$simple_rnn_9/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
simple_rnn_9/Shape_1Shapesimple_rnn_9/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_9/strided_slice_1StridedSlicesimple_rnn_9/Shape_1:output:0+simple_rnn_9/strided_slice_1/stack:output:0-simple_rnn_9/strided_slice_1/stack_1:output:0-simple_rnn_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_9/TensorArrayV2TensorListReserve1simple_rnn_9/TensorArrayV2/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
4simple_rnn_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_9/transpose:y:0Ksimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
simple_rnn_9/strided_slice_2StridedSlicesimple_rnn_9/transpose:y:0+simple_rnn_9/strided_slice_2/stack:output:0-simple_rnn_9/strided_slice_2/stack_1:output:0-simple_rnn_9/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask´
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ç
%simple_rnn_9/simple_rnn_cell_9/MatMulMatMul%simple_rnn_9/strided_slice_2:output:0<simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ô
&simple_rnn_9/simple_rnn_cell_9/BiasAddBiasAdd/simple_rnn_9/simple_rnn_cell_9/MatMul:product:0=simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Á
'simple_rnn_9/simple_rnn_cell_9/MatMul_1MatMulsimple_rnn_9/zeros:output:0>simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"simple_rnn_9/simple_rnn_cell_9/addAddV2/simple_rnn_9/simple_rnn_cell_9/BiasAdd:output:01simple_rnn_9/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#simple_rnn_9/simple_rnn_cell_9/TanhTanh&simple_rnn_9/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
*simple_rnn_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ß
simple_rnn_9/TensorArrayV2_1TensorListReserve3simple_rnn_9/TensorArrayV2_1/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_9/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_9/whileWhile(simple_rnn_9/while/loop_counter:output:0.simple_rnn_9/while/maximum_iterations:output:0simple_rnn_9/time:output:0%simple_rnn_9/TensorArrayV2_1:handle:0simple_rnn_9/zeros:output:0%simple_rnn_9/strided_slice_1:output:0Dsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_9_while_body_59405*)
cond!R
simple_rnn_9_while_cond_59404*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
=simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ê
/simple_rnn_9/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_9/while:output:3Fsimple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0u
"simple_rnn_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
simple_rnn_9/strided_slice_3StridedSlice8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_9/strided_slice_3/stack:output:0-simple_rnn_9/strided_slice_3/stack_1:output:0-simple_rnn_9/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskr
simple_rnn_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¾
simple_rnn_9/transpose_1	Transpose8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_9/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_11/MatMulMatMul%simple_rnn_9/strided_slice_3:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_11/SeluSeludense_11/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentitydense_11/Selu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp+^rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp*^rnn_10/lstm_cell_10/MatMul/ReadVariableOp,^rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp^rnn_10/while6^simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5^simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp7^simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp^simple_rnn_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2X
*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp2V
)rnn_10/lstm_cell_10/MatMul/ReadVariableOp)rnn_10/lstm_cell_10/MatMul/ReadVariableOp2Z
+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp2
rnn_10/whilernn_10/while2n
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp2l
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp2p
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp2(
simple_rnn_9/whilesimple_rnn_9/while:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

·
&__inference_rnn_10_layer_call_fn_59522
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_57593p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Û

`
D__inference_reshape_2_layer_call_and_return_conditional_losses_58274

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ­
À
H__inference_sequential_11_layer_call_and_return_conditional_losses_59213

inputsF
2rnn_10_lstm_cell_10_matmul_readvariableop_resource:
H
4rnn_10_lstm_cell_10_matmul_1_readvariableop_resource:
B
3rnn_10_lstm_cell_10_biasadd_readvariableop_resource:	Q
=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource:
M
>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource:	S
?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource:
;
'dense_11_matmul_readvariableop_resource:
7
(dense_11_biasadd_readvariableop_resource:	
identity¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp¢)rnn_10/lstm_cell_10/MatMul/ReadVariableOp¢+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp¢rnn_10/while¢5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp¢6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp¢simple_rnn_9/whileY
activation_11/SeluSeluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rnn_10/ShapeShape activation_11/Selu:activations:0*
T0*
_output_shapes
:d
rnn_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
rnn_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
rnn_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
rnn_10/strided_sliceStridedSlicernn_10/Shape:output:0#rnn_10/strided_slice/stack:output:0%rnn_10/strided_slice/stack_1:output:0%rnn_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
rnn_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
rnn_10/zeros/packedPackrnn_10/strided_slice:output:0rnn_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
rnn_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_10/zerosFillrnn_10/zeros/packed:output:0rnn_10/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rnn_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
rnn_10/zeros_1/packedPackrnn_10/strided_slice:output:0 rnn_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
rnn_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_10/zeros_1Fillrnn_10/zeros_1/packed:output:0rnn_10/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
rnn_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
rnn_10/transpose	Transpose activation_11/Selu:activations:0rnn_10/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rnn_10/Shape_1Shapernn_10/transpose:y:0*
T0*
_output_shapes
:f
rnn_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
rnn_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
rnn_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
rnn_10/strided_slice_1StridedSlicernn_10/Shape_1:output:0%rnn_10/strided_slice_1/stack:output:0'rnn_10/strided_slice_1/stack_1:output:0'rnn_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"rnn_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
rnn_10/TensorArrayV2TensorListReserve+rnn_10/TensorArrayV2/element_shape:output:0rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.rnn_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_10/transpose:y:0Ernn_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
rnn_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
rnn_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
rnn_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_10/strided_slice_2StridedSlicernn_10/transpose:y:0%rnn_10/strided_slice_2/stack:output:0'rnn_10/strided_slice_2/stack_1:output:0'rnn_10/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
)rnn_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp2rnn_10_lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0«
rnn_10/lstm_cell_10/MatMulMatMulrnn_10/strided_slice_2:output:01rnn_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp4rnn_10_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0¥
rnn_10/lstm_cell_10/MatMul_1MatMulrnn_10/zeros:output:03rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
rnn_10/lstm_cell_10/addAddV2$rnn_10/lstm_cell_10/MatMul:product:0&rnn_10/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp3rnn_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
rnn_10/lstm_cell_10/BiasAddBiasAddrnn_10/lstm_cell_10/add:z:02rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#rnn_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
rnn_10/lstm_cell_10/splitSplit,rnn_10/lstm_cell_10/split/split_dim:output:0$rnn_10/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
rnn_10/lstm_cell_10/SigmoidSigmoid"rnn_10/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/Sigmoid_1Sigmoid"rnn_10/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/mulMul!rnn_10/lstm_cell_10/Sigmoid_1:y:0rnn_10/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
rnn_10/lstm_cell_10/TanhTanh"rnn_10/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/mul_1Mulrnn_10/lstm_cell_10/Sigmoid:y:0rnn_10/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/add_1AddV2rnn_10/lstm_cell_10/mul:z:0rnn_10/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/Sigmoid_2Sigmoid"rnn_10/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
rnn_10/lstm_cell_10/Tanh_1Tanhrnn_10/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/lstm_cell_10/mul_2Mul!rnn_10/lstm_cell_10/Sigmoid_2:y:0rnn_10/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
$rnn_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Í
rnn_10/TensorArrayV2_1TensorListReserve-rnn_10/TensorArrayV2_1/element_shape:output:0rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
rnn_10/timeConst*
_output_shapes
: *
dtype0*
value	B : j
rnn_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
rnn_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : æ
rnn_10/whileWhile"rnn_10/while/loop_counter:output:0(rnn_10/while/maximum_iterations:output:0rnn_10/time:output:0rnn_10/TensorArrayV2_1:handle:0rnn_10/zeros:output:0rnn_10/zeros_1:output:0rnn_10/strided_slice_1:output:0>rnn_10/TensorArrayUnstack/TensorListFromTensor:output_handle:02rnn_10_lstm_cell_10_matmul_readvariableop_resource4rnn_10_lstm_cell_10_matmul_1_readvariableop_resource3rnn_10_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
rnn_10_while_body_59008*#
condR
rnn_10_while_cond_59007*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
7rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ø
)rnn_10/TensorArrayV2Stack/TensorListStackTensorListStackrnn_10/while:output:3@rnn_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0o
rnn_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
rnn_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
rnn_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
rnn_10/strided_slice_3StridedSlice2rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0%rnn_10/strided_slice_3/stack:output:0'rnn_10/strided_slice_3/stack_1:output:0'rnn_10/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskl
rnn_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
rnn_10/transpose_1	Transpose2rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0 rnn_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
leaky_re_lu_17/LeakyRelu	LeakyRelurnn_10/strided_slice_3:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>
leaky_re_lu_18/LeakyRelu	LeakyRelu&leaky_re_lu_17/LeakyRelu:activations:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>e
reshape_2/ShapeShape&leaky_re_lu_18/LeakyRelu:activations:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :·
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_2/ReshapeReshape&leaky_re_lu_18/LeakyRelu:activations:0 reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
simple_rnn_9/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:j
 simple_rnn_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_9/strided_sliceStridedSlicesimple_rnn_9/Shape:output:0)simple_rnn_9/strided_slice/stack:output:0+simple_rnn_9/strided_slice/stack_1:output:0+simple_rnn_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
simple_rnn_9/zeros/packedPack#simple_rnn_9/strided_slice:output:0$simple_rnn_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_9/zerosFill"simple_rnn_9/zeros/packed:output:0!simple_rnn_9/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
simple_rnn_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_9/transpose	Transposereshape_2/Reshape:output:0$simple_rnn_9/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
simple_rnn_9/Shape_1Shapesimple_rnn_9/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_9/strided_slice_1StridedSlicesimple_rnn_9/Shape_1:output:0+simple_rnn_9/strided_slice_1/stack:output:0-simple_rnn_9/strided_slice_1/stack_1:output:0-simple_rnn_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_9/TensorArrayV2TensorListReserve1simple_rnn_9/TensorArrayV2/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
4simple_rnn_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_9/transpose:y:0Ksimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
simple_rnn_9/strided_slice_2StridedSlicesimple_rnn_9/transpose:y:0+simple_rnn_9/strided_slice_2/stack:output:0-simple_rnn_9/strided_slice_2/stack_1:output:0-simple_rnn_9/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask´
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ç
%simple_rnn_9/simple_rnn_cell_9/MatMulMatMul%simple_rnn_9/strided_slice_2:output:0<simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ô
&simple_rnn_9/simple_rnn_cell_9/BiasAddBiasAdd/simple_rnn_9/simple_rnn_cell_9/MatMul:product:0=simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Á
'simple_rnn_9/simple_rnn_cell_9/MatMul_1MatMulsimple_rnn_9/zeros:output:0>simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"simple_rnn_9/simple_rnn_cell_9/addAddV2/simple_rnn_9/simple_rnn_cell_9/BiasAdd:output:01simple_rnn_9/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#simple_rnn_9/simple_rnn_cell_9/TanhTanh&simple_rnn_9/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
*simple_rnn_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ß
simple_rnn_9/TensorArrayV2_1TensorListReserve3simple_rnn_9/TensorArrayV2_1/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_9/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_9/whileWhile(simple_rnn_9/while/loop_counter:output:0.simple_rnn_9/while/maximum_iterations:output:0simple_rnn_9/time:output:0%simple_rnn_9/TensorArrayV2_1:handle:0simple_rnn_9/zeros:output:0%simple_rnn_9/strided_slice_1:output:0Dsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_9_while_body_59140*)
cond!R
simple_rnn_9_while_cond_59139*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
=simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ê
/simple_rnn_9/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_9/while:output:3Fsimple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0u
"simple_rnn_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
simple_rnn_9/strided_slice_3StridedSlice8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_9/strided_slice_3/stack:output:0-simple_rnn_9/strided_slice_3/stack_1:output:0-simple_rnn_9/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskr
simple_rnn_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¾
simple_rnn_9/transpose_1	Transpose8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_9/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_11/MatMulMatMul%simple_rnn_9/strided_slice_3:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_11/SeluSeludense_11/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentitydense_11/Selu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp+^rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp*^rnn_10/lstm_cell_10/MatMul/ReadVariableOp,^rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp^rnn_10/while6^simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5^simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp7^simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp^simple_rnn_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2X
*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp*rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp2V
)rnn_10/lstm_cell_10/MatMul/ReadVariableOp)rnn_10/lstm_cell_10/MatMul/ReadVariableOp2Z
+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp+rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp2
rnn_10/whilernn_10/while2n
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp2l
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp2p
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp2(
simple_rnn_9/whilesimple_rnn_9/while:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸7

A__inference_rnn_10_layer_call_and_return_conditional_losses_57783

inputs&
lstm_cell_10_57702:
&
lstm_cell_10_57704:
!
lstm_cell_10_57706:	
identity¢$lstm_cell_10/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskô
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_57702lstm_cell_10_57704lstm_cell_10_57706*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57656n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_57702lstm_cell_10_57704lstm_cell_10_57706*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_57715*
condR
while_cond_57714*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿=
¿
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60637

inputsD
0simple_rnn_cell_9_matmul_readvariableop_resource:
@
1simple_rnn_cell_9_biasadd_readvariableop_resource:	F
2simple_rnn_cell_9_matmul_1_readvariableop_resource:

identity¢(simple_rnn_cell_9/BiasAdd/ReadVariableOp¢'simple_rnn_cell_9/MatMul/ReadVariableOp¢)simple_rnn_cell_9/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_60571*
condR
while_cond_60570*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¦
+sequential_11_simple_rnn_9_while_cond_57370R
Nsequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_loop_counterX
Tsequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_maximum_iterations0
,sequential_11_simple_rnn_9_while_placeholder2
.sequential_11_simple_rnn_9_while_placeholder_12
.sequential_11_simple_rnn_9_while_placeholder_2T
Psequential_11_simple_rnn_9_while_less_sequential_11_simple_rnn_9_strided_slice_1i
esequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_cond_57370___redundant_placeholder0i
esequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_cond_57370___redundant_placeholder1i
esequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_cond_57370___redundant_placeholder2i
esequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_cond_57370___redundant_placeholder3-
)sequential_11_simple_rnn_9_while_identity
Î
%sequential_11/simple_rnn_9/while/LessLess,sequential_11_simple_rnn_9_while_placeholderPsequential_11_simple_rnn_9_while_less_sequential_11_simple_rnn_9_strided_slice_1*
T0*
_output_shapes
: 
)sequential_11/simple_rnn_9/while/IdentityIdentity)sequential_11/simple_rnn_9/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_11_simple_rnn_9_while_identity2sequential_11/simple_rnn_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

»
,__inference_simple_rnn_9_layer_call_fn_60205

inputs
unknown:

	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58559p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
µ
&__inference_rnn_10_layer_call_fn_59555

inputs
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_58741p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57656

inputs

states
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
·


simple_rnn_9_while_cond_594046
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_28
4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59404___redundant_placeholder0M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59404___redundant_placeholder1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59404___redundant_placeholder2M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59404___redundant_placeholder3
simple_rnn_9_while_identity

simple_rnn_9/while/LessLesssimple_rnn_9_while_placeholder4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

½
,__inference_simple_rnn_9_layer_call_fn_60183
inputs_0
unknown:

	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58075p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¿=
¿
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60529

inputsD
0simple_rnn_cell_9_matmul_readvariableop_resource:
@
1simple_rnn_cell_9_biasadd_readvariableop_resource:	F
2simple_rnn_cell_9_matmul_1_readvariableop_resource:

identity¢(simple_rnn_cell_9/BiasAdd/ReadVariableOp¢'simple_rnn_cell_9/MatMul/ReadVariableOp¢)simple_rnn_cell_9/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_60463*
condR
while_cond_60462*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

(__inference_dense_11_layer_call_fn_60646

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_58402p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ì
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57960

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ÓI

A__inference_rnn_10_layer_call_and_return_conditional_losses_60123

inputs?
+lstm_cell_10_matmul_readvariableop_resource:
A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splito
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_10/TanhTanhlstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_60040*
condR
while_cond_60039*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
J
.__inference_leaky_re_lu_18_layer_call_fn_60138

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_58259a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
¥
while_cond_60462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_60462___redundant_placeholder03
/while_while_cond_60462___redundant_placeholder13
/while_while_cond_60462___redundant_placeholder23
/while_while_cond_60462___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

â
%sequential_11_rnn_10_while_cond_57238F
Bsequential_11_rnn_10_while_sequential_11_rnn_10_while_loop_counterL
Hsequential_11_rnn_10_while_sequential_11_rnn_10_while_maximum_iterations*
&sequential_11_rnn_10_while_placeholder,
(sequential_11_rnn_10_while_placeholder_1,
(sequential_11_rnn_10_while_placeholder_2,
(sequential_11_rnn_10_while_placeholder_3H
Dsequential_11_rnn_10_while_less_sequential_11_rnn_10_strided_slice_1]
Ysequential_11_rnn_10_while_sequential_11_rnn_10_while_cond_57238___redundant_placeholder0]
Ysequential_11_rnn_10_while_sequential_11_rnn_10_while_cond_57238___redundant_placeholder1]
Ysequential_11_rnn_10_while_sequential_11_rnn_10_while_cond_57238___redundant_placeholder2]
Ysequential_11_rnn_10_while_sequential_11_rnn_10_while_cond_57238___redundant_placeholder3'
#sequential_11_rnn_10_while_identity
¶
sequential_11/rnn_10/while/LessLess&sequential_11_rnn_10_while_placeholderDsequential_11_rnn_10_while_less_sequential_11_rnn_10_strided_slice_1*
T0*
_output_shapes
: u
#sequential_11/rnn_10/while/IdentityIdentity#sequential_11/rnn_10/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_11_rnn_10_while_identity,sequential_11/rnn_10/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¦

÷
C__inference_dense_11_layer_call_and_return_conditional_losses_60657

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç@
³

rnn_10_while_body_59273*
&rnn_10_while_rnn_10_while_loop_counter0
,rnn_10_while_rnn_10_while_maximum_iterations
rnn_10_while_placeholder
rnn_10_while_placeholder_1
rnn_10_while_placeholder_2
rnn_10_while_placeholder_3)
%rnn_10_while_rnn_10_strided_slice_1_0e
arnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensor_0N
:rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0:
P
<rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0:
J
;rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0:	
rnn_10_while_identity
rnn_10_while_identity_1
rnn_10_while_identity_2
rnn_10_while_identity_3
rnn_10_while_identity_4
rnn_10_while_identity_5'
#rnn_10_while_rnn_10_strided_slice_1c
_rnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensorL
8rnn_10_while_lstm_cell_10_matmul_readvariableop_resource:
N
:rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource:
H
9rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource:	¢0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp¢/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp¢1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp
>rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ê
0rnn_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemarnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensor_0rnn_10_while_placeholderGrnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¬
/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp:rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ï
 rnn_10/while/lstm_cell_10/MatMulMatMul7rnn_10/while/TensorArrayV2Read/TensorListGetItem:item:07rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp<rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¶
"rnn_10/while/lstm_cell_10/MatMul_1MatMulrnn_10_while_placeholder_29rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
rnn_10/while/lstm_cell_10/addAddV2*rnn_10/while/lstm_cell_10/MatMul:product:0,rnn_10/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp;rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¼
!rnn_10/while/lstm_cell_10/BiasAddBiasAdd!rnn_10/while/lstm_cell_10/add:z:08rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)rnn_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
rnn_10/while/lstm_cell_10/splitSplit2rnn_10/while/lstm_cell_10/split/split_dim:output:0*rnn_10/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
!rnn_10/while/lstm_cell_10/SigmoidSigmoid(rnn_10/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#rnn_10/while/lstm_cell_10/Sigmoid_1Sigmoid(rnn_10/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/while/lstm_cell_10/mulMul'rnn_10/while/lstm_cell_10/Sigmoid_1:y:0rnn_10_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/while/lstm_cell_10/TanhTanh(rnn_10/while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
rnn_10/while/lstm_cell_10/mul_1Mul%rnn_10/while/lstm_cell_10/Sigmoid:y:0"rnn_10/while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
rnn_10/while/lstm_cell_10/add_1AddV2!rnn_10/while/lstm_cell_10/mul:z:0#rnn_10/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#rnn_10/while/lstm_cell_10/Sigmoid_2Sigmoid(rnn_10/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 rnn_10/while/lstm_cell_10/Tanh_1Tanh#rnn_10/while/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
rnn_10/while/lstm_cell_10/mul_2Mul'rnn_10/while/lstm_cell_10/Sigmoid_2:y:0$rnn_10/while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
1rnn_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_10_while_placeholder_1rnn_10_while_placeholder#rnn_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
rnn_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
rnn_10/while/addAddV2rnn_10_while_placeholderrnn_10/while/add/y:output:0*
T0*
_output_shapes
: V
rnn_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_10/while/add_1AddV2&rnn_10_while_rnn_10_while_loop_counterrnn_10/while/add_1/y:output:0*
T0*
_output_shapes
: n
rnn_10/while/IdentityIdentityrnn_10/while/add_1:z:0^rnn_10/while/NoOp*
T0*
_output_shapes
: 
rnn_10/while/Identity_1Identity,rnn_10_while_rnn_10_while_maximum_iterations^rnn_10/while/NoOp*
T0*
_output_shapes
: n
rnn_10/while/Identity_2Identityrnn_10/while/add:z:0^rnn_10/while/NoOp*
T0*
_output_shapes
: ®
rnn_10/while/Identity_3IdentityArnn_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_10/while/NoOp*
T0*
_output_shapes
: :éèÒ
rnn_10/while/Identity_4Identity#rnn_10/while/lstm_cell_10/mul_2:z:0^rnn_10/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rnn_10/while/Identity_5Identity#rnn_10/while/lstm_cell_10/add_1:z:0^rnn_10/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
rnn_10/while/NoOpNoOp1^rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp0^rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp2^rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
rnn_10_while_identityrnn_10/while/Identity:output:0";
rnn_10_while_identity_1 rnn_10/while/Identity_1:output:0";
rnn_10_while_identity_2 rnn_10/while/Identity_2:output:0";
rnn_10_while_identity_3 rnn_10/while/Identity_3:output:0";
rnn_10_while_identity_4 rnn_10/while/Identity_4:output:0";
rnn_10_while_identity_5 rnn_10/while/Identity_5:output:0"x
9rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource;rnn_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"z
:rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource<rnn_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"v
8rnn_10_while_lstm_cell_10_matmul_readvariableop_resource:rnn_10_while_lstm_cell_10_matmul_readvariableop_resource_0"L
#rnn_10_while_rnn_10_strided_slice_1%rnn_10_while_rnn_10_strided_slice_1_0"Ä
_rnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensorarnn_10_while_tensorarrayv2read_tensorlistgetitem_rnn_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp0rnn_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2b
/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp/rnn_10/while/lstm_cell_10/MatMul/ReadVariableOp2f
1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp1rnn_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ù
µ
&__inference_rnn_10_layer_call_fn_59544

inputs
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_58239p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
J
.__inference_leaky_re_lu_17_layer_call_fn_60128

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_58252a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â

G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_60755

inputs
states_0
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
÷
÷
,__inference_lstm_cell_10_layer_call_fn_60674

inputs
states_0
states_1
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57511p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¤8
Ó
while_body_59614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_10_matmul_readvariableop_resource_0:
I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_10_matmul_readvariableop_resource:
G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0º
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¡
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
while/lstm_cell_10/TanhTanh!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×
¥
while_cond_58492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58492___redundant_placeholder03
/while_while_cond_58492___redundant_placeholder13
/while_while_cond_58492___redundant_placeholder23
/while_while_cond_58492___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
´
¾
while_cond_59897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59897___redundant_placeholder03
/while_while_cond_59897___redundant_placeholder13
/while_while_cond_59897___redundant_placeholder23
/while_while_cond_59897___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
×
¥
while_cond_60354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_60354___redundant_placeholder03
/while_while_cond_60354___redundant_placeholder13
/while_while_cond_60354___redundant_placeholder23
/while_while_cond_60354___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¿=
¿
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58559

inputsD
0simple_rnn_cell_9_matmul_readvariableop_resource:
@
1simple_rnn_cell_9_biasadd_readvariableop_resource:	F
2simple_rnn_cell_9_matmul_1_readvariableop_resource:

identity¢(simple_rnn_cell_9/BiasAdd/ReadVariableOp¢'simple_rnn_cell_9/MatMul/ReadVariableOp¢)simple_rnn_cell_9/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_58493*
condR
while_cond_58492*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô=
Á
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60313
inputs_0D
0simple_rnn_cell_9_matmul_readvariableop_resource:
@
1simple_rnn_cell_9_biasadd_readvariableop_resource:	F
2simple_rnn_cell_9_matmul_1_readvariableop_resource:

identity¢(simple_rnn_cell_9/BiasAdd/ReadVariableOp¢'simple_rnn_cell_9/MatMul/ReadVariableOp¢)simple_rnn_cell_9/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_60247*
condR
while_cond_60246*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ô,
Ñ
while_body_60247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
H
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	N
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_9_matmul_readvariableop_resource:
F
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:	L
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_9/MatMul/ReadVariableOp¢/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ä
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0«
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¤8
Ó
while_body_60040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_10_matmul_readvariableop_resource_0:
I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_10_matmul_readvariableop_resource:
G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0º
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¡
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
while/lstm_cell_10/TanhTanh!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ö"
à
while_body_57525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_10_57549_0:
.
while_lstm_cell_10_57551_0:
)
while_lstm_cell_10_57553_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_10_57549:
,
while_lstm_cell_10_57551:
'
while_lstm_cell_10_57553:	¢*while/lstm_cell_10/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0²
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_57549_0while_lstm_cell_10_57551_0while_lstm_cell_10_57553_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57511Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_10_57549while_lstm_cell_10_57549_0"6
while_lstm_cell_10_57551while_lstm_cell_10_57551_0"6
while_lstm_cell_10_57553while_lstm_cell_10_57553_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ô=
Á
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60421
inputs_0D
0simple_rnn_cell_9_matmul_readvariableop_resource:
@
1simple_rnn_cell_9_biasadd_readvariableop_resource:	F
2simple_rnn_cell_9_matmul_1_readvariableop_resource:

identity¢(simple_rnn_cell_9/BiasAdd/ReadVariableOp¢'simple_rnn_cell_9/MatMul/ReadVariableOp¢)simple_rnn_cell_9/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_60355*
condR
while_cond_60354*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
J

A__inference_rnn_10_layer_call_and_return_conditional_losses_59839
inputs_0?
+lstm_cell_10_matmul_readvariableop_resource:
A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splito
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_10/TanhTanhlstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_59756*
condR
while_cond_59755*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÓI

A__inference_rnn_10_layer_call_and_return_conditional_losses_59981

inputs?
+lstm_cell_10_matmul_readvariableop_resource:
A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splito
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_10/TanhTanhlstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_59898*
condR
while_cond_59897*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


Ú
-__inference_sequential_11_layer_call_fn_58846
activation_11_input
unknown:

	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:

	unknown_5:

	unknown_6:	
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCallactivation_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58806p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameactivation_11_input
Û

`
D__inference_reshape_2_layer_call_and_return_conditional_losses_60161

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
¥
while_cond_58316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58316___redundant_placeholder03
/while_while_cond_58316___redundant_placeholder13
/while_while_cond_58316___redundant_placeholder23
/while_while_cond_58316___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ì
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57840

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
à
d
H__inference_activation_11_layer_call_and_return_conditional_losses_58096

inputs
identityK
SeluSeluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentitySelu:activations:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²Ñ
¡

 __inference__wrapped_model_57444
activation_11_inputT
@sequential_11_rnn_10_lstm_cell_10_matmul_readvariableop_resource:
V
Bsequential_11_rnn_10_lstm_cell_10_matmul_1_readvariableop_resource:
P
Asequential_11_rnn_10_lstm_cell_10_biasadd_readvariableop_resource:	_
Ksequential_11_simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource:
[
Lsequential_11_simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource:	a
Msequential_11_simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource:
I
5sequential_11_dense_11_matmul_readvariableop_resource:
E
6sequential_11_dense_11_biasadd_readvariableop_resource:	
identity¢-sequential_11/dense_11/BiasAdd/ReadVariableOp¢,sequential_11/dense_11/MatMul/ReadVariableOp¢8sequential_11/rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp¢7sequential_11/rnn_10/lstm_cell_10/MatMul/ReadVariableOp¢9sequential_11/rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp¢sequential_11/rnn_10/while¢Csequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢Bsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp¢Dsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp¢ sequential_11/simple_rnn_9/whilet
 sequential_11/activation_11/SeluSeluactivation_11_input*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
sequential_11/rnn_10/ShapeShape.sequential_11/activation_11/Selu:activations:0*
T0*
_output_shapes
:r
(sequential_11/rnn_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_11/rnn_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_11/rnn_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"sequential_11/rnn_10/strided_sliceStridedSlice#sequential_11/rnn_10/Shape:output:01sequential_11/rnn_10/strided_slice/stack:output:03sequential_11/rnn_10/strided_slice/stack_1:output:03sequential_11/rnn_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#sequential_11/rnn_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :²
!sequential_11/rnn_10/zeros/packedPack+sequential_11/rnn_10/strided_slice:output:0,sequential_11/rnn_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_11/rnn_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¬
sequential_11/rnn_10/zerosFill*sequential_11/rnn_10/zeros/packed:output:0)sequential_11/rnn_10/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
%sequential_11/rnn_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¶
#sequential_11/rnn_10/zeros_1/packedPack+sequential_11/rnn_10/strided_slice:output:0.sequential_11/rnn_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_11/rnn_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ²
sequential_11/rnn_10/zeros_1Fill,sequential_11/rnn_10/zeros_1/packed:output:0+sequential_11/rnn_10/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#sequential_11/rnn_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
sequential_11/rnn_10/transpose	Transpose.sequential_11/activation_11/Selu:activations:0,sequential_11/rnn_10/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
sequential_11/rnn_10/Shape_1Shape"sequential_11/rnn_10/transpose:y:0*
T0*
_output_shapes
:t
*sequential_11/rnn_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_11/rnn_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_11/rnn_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_11/rnn_10/strided_slice_1StridedSlice%sequential_11/rnn_10/Shape_1:output:03sequential_11/rnn_10/strided_slice_1/stack:output:05sequential_11/rnn_10/strided_slice_1/stack_1:output:05sequential_11/rnn_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_11/rnn_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"sequential_11/rnn_10/TensorArrayV2TensorListReserve9sequential_11/rnn_10/TensorArrayV2/element_shape:output:0-sequential_11/rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jsequential_11/rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
<sequential_11/rnn_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_11/rnn_10/transpose:y:0Ssequential_11/rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*sequential_11/rnn_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_11/rnn_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_11/rnn_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
$sequential_11/rnn_10/strided_slice_2StridedSlice"sequential_11/rnn_10/transpose:y:03sequential_11/rnn_10/strided_slice_2/stack:output:05sequential_11/rnn_10/strided_slice_2/stack_1:output:05sequential_11/rnn_10/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskº
7sequential_11/rnn_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp@sequential_11_rnn_10_lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Õ
(sequential_11/rnn_10/lstm_cell_10/MatMulMatMul-sequential_11/rnn_10/strided_slice_2:output:0?sequential_11/rnn_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
9sequential_11/rnn_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpBsequential_11_rnn_10_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ï
*sequential_11/rnn_10/lstm_cell_10/MatMul_1MatMul#sequential_11/rnn_10/zeros:output:0Asequential_11/rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
%sequential_11/rnn_10/lstm_cell_10/addAddV22sequential_11/rnn_10/lstm_cell_10/MatMul:product:04sequential_11/rnn_10/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
8sequential_11/rnn_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_rnn_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ô
)sequential_11/rnn_10/lstm_cell_10/BiasAddBiasAdd)sequential_11/rnn_10/lstm_cell_10/add:z:0@sequential_11/rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
1sequential_11/rnn_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_11/rnn_10/lstm_cell_10/splitSplit:sequential_11/rnn_10/lstm_cell_10/split/split_dim:output:02sequential_11/rnn_10/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
)sequential_11/rnn_10/lstm_cell_10/SigmoidSigmoid0sequential_11/rnn_10/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_11/rnn_10/lstm_cell_10/Sigmoid_1Sigmoid0sequential_11/rnn_10/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
%sequential_11/rnn_10/lstm_cell_10/mulMul/sequential_11/rnn_10/lstm_cell_10/Sigmoid_1:y:0%sequential_11/rnn_10/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&sequential_11/rnn_10/lstm_cell_10/TanhTanh0sequential_11/rnn_10/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
'sequential_11/rnn_10/lstm_cell_10/mul_1Mul-sequential_11/rnn_10/lstm_cell_10/Sigmoid:y:0*sequential_11/rnn_10/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
'sequential_11/rnn_10/lstm_cell_10/add_1AddV2)sequential_11/rnn_10/lstm_cell_10/mul:z:0+sequential_11/rnn_10/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_11/rnn_10/lstm_cell_10/Sigmoid_2Sigmoid0sequential_11/rnn_10/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential_11/rnn_10/lstm_cell_10/Tanh_1Tanh+sequential_11/rnn_10/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
'sequential_11/rnn_10/lstm_cell_10/mul_2Mul/sequential_11/rnn_10/lstm_cell_10/Sigmoid_2:y:0,sequential_11/rnn_10/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_11/rnn_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ÷
$sequential_11/rnn_10/TensorArrayV2_1TensorListReserve;sequential_11/rnn_10/TensorArrayV2_1/element_shape:output:0-sequential_11/rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
sequential_11/rnn_10/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_11/rnn_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'sequential_11/rnn_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ª
sequential_11/rnn_10/whileWhile0sequential_11/rnn_10/while/loop_counter:output:06sequential_11/rnn_10/while/maximum_iterations:output:0"sequential_11/rnn_10/time:output:0-sequential_11/rnn_10/TensorArrayV2_1:handle:0#sequential_11/rnn_10/zeros:output:0%sequential_11/rnn_10/zeros_1:output:0-sequential_11/rnn_10/strided_slice_1:output:0Lsequential_11/rnn_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_11_rnn_10_lstm_cell_10_matmul_readvariableop_resourceBsequential_11_rnn_10_lstm_cell_10_matmul_1_readvariableop_resourceAsequential_11_rnn_10_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_11_rnn_10_while_body_57239*1
cond)R'
%sequential_11_rnn_10_while_cond_57238*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Esequential_11/rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
7sequential_11/rnn_10/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_11/rnn_10/while:output:3Nsequential_11/rnn_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0}
*sequential_11/rnn_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,sequential_11/rnn_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_11/rnn_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
$sequential_11/rnn_10/strided_slice_3StridedSlice@sequential_11/rnn_10/TensorArrayV2Stack/TensorListStack:tensor:03sequential_11/rnn_10/strided_slice_3/stack:output:05sequential_11/rnn_10/strided_slice_3/stack_1:output:05sequential_11/rnn_10/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskz
%sequential_11/rnn_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ö
 sequential_11/rnn_10/transpose_1	Transpose@sequential_11/rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_11/rnn_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&sequential_11/leaky_re_lu_17/LeakyRelu	LeakyRelu-sequential_11/rnn_10/strided_slice_3:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>£
&sequential_11/leaky_re_lu_18/LeakyRelu	LeakyRelu4sequential_11/leaky_re_lu_17/LeakyRelu:activations:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>
sequential_11/reshape_2/ShapeShape4sequential_11/leaky_re_lu_18/LeakyRelu:activations:0*
T0*
_output_shapes
:u
+sequential_11/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_11/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_11/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_11/reshape_2/strided_sliceStridedSlice&sequential_11/reshape_2/Shape:output:04sequential_11/reshape_2/strided_slice/stack:output:06sequential_11/reshape_2/strided_slice/stack_1:output:06sequential_11/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_11/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
'sequential_11/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ï
%sequential_11/reshape_2/Reshape/shapePack.sequential_11/reshape_2/strided_slice:output:00sequential_11/reshape_2/Reshape/shape/1:output:00sequential_11/reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Ç
sequential_11/reshape_2/ReshapeReshape4sequential_11/leaky_re_lu_18/LeakyRelu:activations:0.sequential_11/reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 sequential_11/simple_rnn_9/ShapeShape(sequential_11/reshape_2/Reshape:output:0*
T0*
_output_shapes
:x
.sequential_11/simple_rnn_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_11/simple_rnn_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_11/simple_rnn_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(sequential_11/simple_rnn_9/strided_sliceStridedSlice)sequential_11/simple_rnn_9/Shape:output:07sequential_11/simple_rnn_9/strided_slice/stack:output:09sequential_11/simple_rnn_9/strided_slice/stack_1:output:09sequential_11/simple_rnn_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_11/simple_rnn_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä
'sequential_11/simple_rnn_9/zeros/packedPack1sequential_11/simple_rnn_9/strided_slice:output:02sequential_11/simple_rnn_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&sequential_11/simple_rnn_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¾
 sequential_11/simple_rnn_9/zerosFill0sequential_11/simple_rnn_9/zeros/packed:output:0/sequential_11/simple_rnn_9/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
)sequential_11/simple_rnn_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
$sequential_11/simple_rnn_9/transpose	Transpose(sequential_11/reshape_2/Reshape:output:02sequential_11/simple_rnn_9/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
"sequential_11/simple_rnn_9/Shape_1Shape(sequential_11/simple_rnn_9/transpose:y:0*
T0*
_output_shapes
:z
0sequential_11/simple_rnn_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_11/simple_rnn_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_11/simple_rnn_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*sequential_11/simple_rnn_9/strided_slice_1StridedSlice+sequential_11/simple_rnn_9/Shape_1:output:09sequential_11/simple_rnn_9/strided_slice_1/stack:output:0;sequential_11/simple_rnn_9/strided_slice_1/stack_1:output:0;sequential_11/simple_rnn_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6sequential_11/simple_rnn_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(sequential_11/simple_rnn_9/TensorArrayV2TensorListReserve?sequential_11/simple_rnn_9/TensorArrayV2/element_shape:output:03sequential_11/simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¡
Psequential_11/simple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ±
Bsequential_11/simple_rnn_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_11/simple_rnn_9/transpose:y:0Ysequential_11/simple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒz
0sequential_11/simple_rnn_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_11/simple_rnn_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_11/simple_rnn_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
*sequential_11/simple_rnn_9/strided_slice_2StridedSlice(sequential_11/simple_rnn_9/transpose:y:09sequential_11/simple_rnn_9/strided_slice_2/stack:output:0;sequential_11/simple_rnn_9/strided_slice_2/stack_1:output:0;sequential_11/simple_rnn_9/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÐ
Bsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpKsequential_11_simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0ñ
3sequential_11/simple_rnn_9/simple_rnn_cell_9/MatMulMatMul3sequential_11/simple_rnn_9/strided_slice_2:output:0Jsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
Csequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpLsequential_11_simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0þ
4sequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAddBiasAdd=sequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul:product:0Ksequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
Dsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpMsequential_11_simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ë
5sequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1MatMul)sequential_11/simple_rnn_9/zeros:output:0Lsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
0sequential_11/simple_rnn_9/simple_rnn_cell_9/addAddV2=sequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd:output:0?sequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
1sequential_11/simple_rnn_9/simple_rnn_cell_9/TanhTanh4sequential_11/simple_rnn_9/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8sequential_11/simple_rnn_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
*sequential_11/simple_rnn_9/TensorArrayV2_1TensorListReserveAsequential_11/simple_rnn_9/TensorArrayV2_1/element_shape:output:03sequential_11/simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒa
sequential_11/simple_rnn_9/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_11/simple_rnn_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿo
-sequential_11/simple_rnn_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
 sequential_11/simple_rnn_9/whileWhile6sequential_11/simple_rnn_9/while/loop_counter:output:0<sequential_11/simple_rnn_9/while/maximum_iterations:output:0(sequential_11/simple_rnn_9/time:output:03sequential_11/simple_rnn_9/TensorArrayV2_1:handle:0)sequential_11/simple_rnn_9/zeros:output:03sequential_11/simple_rnn_9/strided_slice_1:output:0Rsequential_11/simple_rnn_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_11_simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resourceLsequential_11_simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resourceMsequential_11_simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *7
body/R-
+sequential_11_simple_rnn_9_while_body_57371*7
cond/R-
+sequential_11_simple_rnn_9_while_cond_57370*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Ksequential_11/simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
=sequential_11/simple_rnn_9/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_11/simple_rnn_9/while:output:3Tsequential_11/simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
0sequential_11/simple_rnn_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2sequential_11/simple_rnn_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_11/simple_rnn_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*sequential_11/simple_rnn_9/strided_slice_3StridedSliceFsequential_11/simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:09sequential_11/simple_rnn_9/strided_slice_3/stack:output:0;sequential_11/simple_rnn_9/strided_slice_3/stack_1:output:0;sequential_11/simple_rnn_9/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
+sequential_11/simple_rnn_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          è
&sequential_11/simple_rnn_9/transpose_1	TransposeFsequential_11/simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:04sequential_11/simple_rnn_9/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
,sequential_11/dense_11/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
sequential_11/dense_11/MatMulMatMul3sequential_11/simple_rnn_9/strided_slice_3:output:04sequential_11/dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-sequential_11/dense_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
sequential_11/dense_11/BiasAddBiasAdd'sequential_11/dense_11/MatMul:product:05sequential_11/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_11/dense_11/SeluSelu'sequential_11/dense_11/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
IdentityIdentity)sequential_11/dense_11/Selu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp.^sequential_11/dense_11/BiasAdd/ReadVariableOp-^sequential_11/dense_11/MatMul/ReadVariableOp9^sequential_11/rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp8^sequential_11/rnn_10/lstm_cell_10/MatMul/ReadVariableOp:^sequential_11/rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp^sequential_11/rnn_10/whileD^sequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpC^sequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpE^sequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp!^sequential_11/simple_rnn_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2^
-sequential_11/dense_11/BiasAdd/ReadVariableOp-sequential_11/dense_11/BiasAdd/ReadVariableOp2\
,sequential_11/dense_11/MatMul/ReadVariableOp,sequential_11/dense_11/MatMul/ReadVariableOp2t
8sequential_11/rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp8sequential_11/rnn_10/lstm_cell_10/BiasAdd/ReadVariableOp2r
7sequential_11/rnn_10/lstm_cell_10/MatMul/ReadVariableOp7sequential_11/rnn_10/lstm_cell_10/MatMul/ReadVariableOp2v
9sequential_11/rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp9sequential_11/rnn_10/lstm_cell_10/MatMul_1/ReadVariableOp28
sequential_11/rnn_10/whilesequential_11/rnn_10/while2
Csequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpCsequential_11/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp2
Bsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpBsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp2
Dsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpDsequential_11/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp2D
 sequential_11/simple_rnn_9/while sequential_11/simple_rnn_9/while:a ]
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameactivation_11_input
¤8
Ó
while_body_58658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_10_matmul_readvariableop_resource_0:
I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_10_matmul_readvariableop_resource:
G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0º
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¡
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
while/lstm_cell_10/TanhTanh!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ø	
Ð
#__inference_signature_wrapper_59501
activation_11_input
unknown:

	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:

	unknown_5:

	unknown_6:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallactivation_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_57444p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameactivation_11_input
ç
e
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_58259

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

î
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_60800

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
Ô,
Ñ
while_body_60355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
H
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	N
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_9_matmul_readvariableop_resource:
F
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:	L
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_9/MatMul/ReadVariableOp¢/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ä
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0«
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
öE
ÿ
+sequential_11_simple_rnn_9_while_body_57371R
Nsequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_loop_counterX
Tsequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_maximum_iterations0
,sequential_11_simple_rnn_9_while_placeholder2
.sequential_11_simple_rnn_9_while_placeholder_12
.sequential_11_simple_rnn_9_while_placeholder_2Q
Msequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_strided_slice_1_0
sequential_11_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_11_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0g
Ssequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
c
Tsequential_11_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	i
Usequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:
-
)sequential_11_simple_rnn_9_while_identity/
+sequential_11_simple_rnn_9_while_identity_1/
+sequential_11_simple_rnn_9_while_identity_2/
+sequential_11_simple_rnn_9_while_identity_3/
+sequential_11_simple_rnn_9_while_identity_4O
Ksequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_strided_slice_1
sequential_11_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_11_simple_rnn_9_tensorarrayunstack_tensorlistfromtensore
Qsequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource:
a
Rsequential_11_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource:	g
Ssequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢Isequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢Hsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp¢Jsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp£
Rsequential_11/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¯
Dsequential_11/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_11_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_11_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0,sequential_11_simple_rnn_9_while_placeholder[sequential_11/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Þ
Hsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpSsequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
9sequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMulMatMulKsequential_11/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÛ
Isequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpTsequential_11_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
:sequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAddBiasAddCsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul:product:0Qsequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
Jsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpUsequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ü
;sequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1MatMul.sequential_11_simple_rnn_9_while_placeholder_2Rsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
6sequential_11/simple_rnn_9/while/simple_rnn_cell_9/addAddV2Csequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd:output:0Esequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
7sequential_11/simple_rnn_9/while/simple_rnn_cell_9/TanhTanh:sequential_11/simple_rnn_9/while/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
Esequential_11/simple_rnn_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_11_simple_rnn_9_while_placeholder_1,sequential_11_simple_rnn_9_while_placeholder;sequential_11/simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒh
&sequential_11/simple_rnn_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :­
$sequential_11/simple_rnn_9/while/addAddV2,sequential_11_simple_rnn_9_while_placeholder/sequential_11/simple_rnn_9/while/add/y:output:0*
T0*
_output_shapes
: j
(sequential_11/simple_rnn_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&sequential_11/simple_rnn_9/while/add_1AddV2Nsequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_loop_counter1sequential_11/simple_rnn_9/while/add_1/y:output:0*
T0*
_output_shapes
: ª
)sequential_11/simple_rnn_9/while/IdentityIdentity*sequential_11/simple_rnn_9/while/add_1:z:0&^sequential_11/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: Ö
+sequential_11/simple_rnn_9/while/Identity_1IdentityTsequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_while_maximum_iterations&^sequential_11/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: ª
+sequential_11/simple_rnn_9/while/Identity_2Identity(sequential_11/simple_rnn_9/while/add:z:0&^sequential_11/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: ê
+sequential_11/simple_rnn_9/while/Identity_3IdentityUsequential_11/simple_rnn_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_11/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: :éèÒÏ
+sequential_11/simple_rnn_9/while/Identity_4Identity;sequential_11/simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0&^sequential_11/simple_rnn_9/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
%sequential_11/simple_rnn_9/while/NoOpNoOpJ^sequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpI^sequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpK^sequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "_
)sequential_11_simple_rnn_9_while_identity2sequential_11/simple_rnn_9/while/Identity:output:0"c
+sequential_11_simple_rnn_9_while_identity_14sequential_11/simple_rnn_9/while/Identity_1:output:0"c
+sequential_11_simple_rnn_9_while_identity_24sequential_11/simple_rnn_9/while/Identity_2:output:0"c
+sequential_11_simple_rnn_9_while_identity_34sequential_11/simple_rnn_9/while/Identity_3:output:0"c
+sequential_11_simple_rnn_9_while_identity_44sequential_11/simple_rnn_9/while/Identity_4:output:0"
Ksequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_strided_slice_1Msequential_11_simple_rnn_9_while_sequential_11_simple_rnn_9_strided_slice_1_0"ª
Rsequential_11_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resourceTsequential_11_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"¬
Ssequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resourceUsequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"¨
Qsequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resourceSsequential_11_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0"
sequential_11_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_11_simple_rnn_9_tensorarrayunstack_tensorlistfromtensorsequential_11_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_11_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Isequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpIsequential_11/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2
Hsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpHsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp2
Jsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpJsequential_11/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ä

Þ
1__inference_simple_rnn_cell_9_layer_call_fn_60783

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57960p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
!
Ô
while_body_58012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_9_58034_0:
.
while_simple_rnn_cell_9_58036_0:	3
while_simple_rnn_cell_9_58038_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_9_58034:
,
while_simple_rnn_cell_9_58036:	1
while_simple_rnn_cell_9_58038:
¢/while/simple_rnn_cell_9/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
/while/simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_9_58034_0while_simple_rnn_cell_9_58036_0while_simple_rnn_cell_9_58038_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57960á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_9/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_9/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~

while/NoOpNoOp0^while/simple_rnn_cell_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_9_58034while_simple_rnn_cell_9_58034_0"@
while_simple_rnn_cell_9_58036while_simple_rnn_cell_9_58036_0"@
while_simple_rnn_cell_9_58038while_simple_rnn_cell_9_58038_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_9/StatefulPartitionedCall/while/simple_rnn_cell_9/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
·


simple_rnn_9_while_cond_591396
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_28
4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59139___redundant_placeholder0M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59139___redundant_placeholder1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59139___redundant_placeholder2M
Isimple_rnn_9_while_simple_rnn_9_while_cond_59139___redundant_placeholder3
simple_rnn_9_while_identity

simple_rnn_9/while/LessLesssimple_rnn_9_while_placeholder4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ç
e
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_58252

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷
÷
,__inference_lstm_cell_10_layer_call_fn_60691

inputs
states_0
states_1
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57656p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
!
Ô
while_body_57853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_9_57875_0:
.
while_simple_rnn_cell_9_57877_0:	3
while_simple_rnn_cell_9_57879_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_9_57875:
,
while_simple_rnn_cell_9_57877:	1
while_simple_rnn_cell_9_57879:
¢/while/simple_rnn_cell_9/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
/while/simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_9_57875_0while_simple_rnn_cell_9_57877_0while_simple_rnn_cell_9_57879_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57840á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_9/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_9/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~

while/NoOpNoOp0^while/simple_rnn_cell_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_9_57875while_simple_rnn_cell_9_57875_0"@
while_simple_rnn_cell_9_57877while_simple_rnn_cell_9_57877_0"@
while_simple_rnn_cell_9_57879while_simple_rnn_cell_9_57879_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_9/StatefulPartitionedCall/while/simple_rnn_cell_9/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¤8
Ó
while_body_58156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_10_matmul_readvariableop_resource_0:
I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_10_matmul_readvariableop_resource:
G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0º
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¡
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
while/lstm_cell_10/TanhTanh!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


Ú
-__inference_sequential_11_layer_call_fn_58428
activation_11_input
unknown:

	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:

	unknown_5:

	unknown_6:	
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCallactivation_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58409p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameactivation_11_input
Ä

Þ
1__inference_simple_rnn_cell_9_layer_call_fn_60769

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57840p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
×
¥
while_cond_57852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57852___redundant_placeholder03
/while_while_cond_57852___redundant_placeholder13
/while_while_cond_57852___redundant_placeholder23
/while_while_cond_57852___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ø	
Ê
rnn_10_while_cond_59272*
&rnn_10_while_rnn_10_while_loop_counter0
,rnn_10_while_rnn_10_while_maximum_iterations
rnn_10_while_placeholder
rnn_10_while_placeholder_1
rnn_10_while_placeholder_2
rnn_10_while_placeholder_3,
(rnn_10_while_less_rnn_10_strided_slice_1A
=rnn_10_while_rnn_10_while_cond_59272___redundant_placeholder0A
=rnn_10_while_rnn_10_while_cond_59272___redundant_placeholder1A
=rnn_10_while_rnn_10_while_cond_59272___redundant_placeholder2A
=rnn_10_while_rnn_10_while_cond_59272___redundant_placeholder3
rnn_10_while_identity
~
rnn_10/while/LessLessrnn_10_while_placeholder(rnn_10_while_less_rnn_10_strided_slice_1*
T0*
_output_shapes
: Y
rnn_10/while/IdentityIdentityrnn_10/while/Less:z:0*
T0
*
_output_shapes
: "7
rnn_10_while_identityrnn_10/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ç
e
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_60133

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
alpha%>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÓI

A__inference_rnn_10_layer_call_and_return_conditional_losses_58741

inputs?
+lstm_cell_10_matmul_readvariableop_resource:
A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splito
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_10/TanhTanhlstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_58658*
condR
while_cond_58657*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

î
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_60817

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ÓI

A__inference_rnn_10_layer_call_and_return_conditional_losses_58239

inputs?
+lstm_cell_10_matmul_readvariableop_resource:
A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splito
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_10/TanhTanhlstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_58156*
condR
while_cond_58155*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸7

A__inference_rnn_10_layer_call_and_return_conditional_losses_57593

inputs&
lstm_cell_10_57512:
&
lstm_cell_10_57514:
!
lstm_cell_10_57516:	
identity¢$lstm_cell_10/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskô
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_57512lstm_cell_10_57514lstm_cell_10_57516*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57511n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_57512lstm_cell_10_57514lstm_cell_10_57516*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_57525*
condR
while_cond_57524*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô,
Ñ
while_body_58317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
H
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	N
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_9_matmul_readvariableop_resource:
F
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:	L
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_9/MatMul/ReadVariableOp¢/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ä
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0«
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
é8
×
simple_rnn_9_while_body_591406
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_25
1simple_rnn_9_while_simple_rnn_9_strided_slice_1_0q
msimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
U
Fsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	[
Gsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

simple_rnn_9_while_identity!
simple_rnn_9_while_identity_1!
simple_rnn_9_while_identity_2!
simple_rnn_9_while_identity_3!
simple_rnn_9_while_identity_43
/simple_rnn_9_while_simple_rnn_9_strided_slice_1o
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource:
S
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource:	Y
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp¢<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
Dsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   è
6simple_rnn_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_9_while_placeholderMsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Â
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ë
+simple_rnn_9/while/simple_rnn_cell_9/MatMulMatMul=simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0æ
,simple_rnn_9/while/simple_rnn_cell_9/BiasAddBiasAdd5simple_rnn_9/while/simple_rnn_cell_9/MatMul:product:0Csimple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ò
-simple_rnn_9/while/simple_rnn_cell_9/MatMul_1MatMul simple_rnn_9_while_placeholder_2Dsimple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
(simple_rnn_9/while/simple_rnn_cell_9/addAddV25simple_rnn_9/while/simple_rnn_cell_9/BiasAdd:output:07simple_rnn_9/while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_9/while/simple_rnn_cell_9/TanhTanh,simple_rnn_9/while/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
7simple_rnn_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_9_while_placeholder_1simple_rnn_9_while_placeholder-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_9/while/addAddV2simple_rnn_9_while_placeholder!simple_rnn_9/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_9/while/add_1AddV22simple_rnn_9_while_simple_rnn_9_while_loop_counter#simple_rnn_9/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/add_1:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_9/while/Identity_1Identity8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_9/while/Identity_2Identitysimple_rnn_9/while/add:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_9/while/Identity_3IdentityGsimple_rnn_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: :éèÒ¥
simple_rnn_9/while/Identity_4Identity-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0^simple_rnn_9/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_9/while/NoOpNoOp<^simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;^simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp=^simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0"G
simple_rnn_9_while_identity_1&simple_rnn_9/while/Identity_1:output:0"G
simple_rnn_9_while_identity_2&simple_rnn_9/while/Identity_2:output:0"G
simple_rnn_9_while_identity_3&simple_rnn_9/while/Identity_3:output:0"G
simple_rnn_9_while_identity_4&simple_rnn_9/while/Identity_4:output:0"d
/simple_rnn_9_while_simple_rnn_9_strided_slice_11simple_rnn_9_while_simple_rnn_9_strided_slice_1_0"
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resourceFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resourceGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resourceEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0"Ü
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensormsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2z
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2x
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp2|
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¤8
Ó
while_body_59756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_10_matmul_readvariableop_resource_0:
I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_10_matmul_readvariableop_resource:
G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0º
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¡
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
while/lstm_cell_10/TanhTanh!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
4

G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_57916

inputs+
simple_rnn_cell_9_57841:
&
simple_rnn_cell_9_57843:	+
simple_rnn_cell_9_57845:

identity¢)simple_rnn_cell_9/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskå
)simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_9_57841simple_rnn_cell_9_57843simple_rnn_cell_9_57845*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_57840n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_9_57841simple_rnn_cell_9_57843simple_rnn_cell_9_57845*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_57853*
condR
while_cond_57852*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp*^simple_rnn_cell_9/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_9/StatefulPartitionedCall)simple_rnn_cell_9/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
¾
while_cond_57524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_57524___redundant_placeholder03
/while_while_cond_57524___redundant_placeholder13
/while_while_cond_57524___redundant_placeholder23
/while_while_cond_57524___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¬
é
H__inference_sequential_11_layer_call_and_return_conditional_losses_58806

inputs 
rnn_10_58783:
 
rnn_10_58785:

rnn_10_58787:	&
simple_rnn_9_58793:
!
simple_rnn_9_58795:	&
simple_rnn_9_58797:
"
dense_11_58800:

dense_11_58802:	
identity¢ dense_11/StatefulPartitionedCall¢rnn_10/StatefulPartitionedCall¢$simple_rnn_9/StatefulPartitionedCallÆ
activation_11/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_58096
rnn_10/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0rnn_10_58783rnn_10_58785rnn_10_58787*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_10_layer_call_and_return_conditional_losses_58741å
leaky_re_lu_17/PartitionedCallPartitionedCall'rnn_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_58252å
leaky_re_lu_18/PartitionedCallPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_58259ß
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_2_layer_call_and_return_conditional_losses_58274°
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0simple_rnn_9_58793simple_rnn_9_58795simple_rnn_9_58797*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_58559
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_11_58800dense_11_58802*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_58402y
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp!^dense_11/StatefulPartitionedCall^rnn_10/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2@
rnn_10/StatefulPartitionedCallrnn_10/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
¾
while_cond_58657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_58657___redundant_placeholder03
/while_while_cond_58657___redundant_placeholder13
/while_while_cond_58657___redundant_placeholder23
/while_while_cond_58657___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ô,
Ñ
while_body_60463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:
H
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:	N
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_9_matmul_readvariableop_resource:
F
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:	L
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:
¢.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_9/MatMul/ReadVariableOp¢/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ä
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0«
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ö"
à
while_body_57715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_10_57739_0:
.
while_lstm_cell_10_57741_0:
)
while_lstm_cell_10_57743_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_10_57739:
,
while_lstm_cell_10_57741:
'
while_lstm_cell_10_57743:	¢*while/lstm_cell_10/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0²
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_57739_0while_lstm_cell_10_57741_0while_lstm_cell_10_57743_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57656Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_10_57739while_lstm_cell_10_57739_0"6
while_lstm_cell_10_57741while_lstm_cell_10_57741_0"6
while_lstm_cell_10_57743while_lstm_cell_10_57743_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
J

A__inference_rnn_10_layer_call_and_return_conditional_losses_59697
inputs_0?
+lstm_cell_10_matmul_readvariableop_resource:
A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splito
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_10/TanhTanhlstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_59614*
condR
while_cond_59613*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ú

G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_57511

inputs

states
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¤8
Ó
while_body_59898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_10_matmul_readvariableop_resource_0:
I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_10_matmul_readvariableop_resource:
G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0º
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¡
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
while/lstm_cell_10/TanhTanh!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: "ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*É
serving_defaultµ
X
activation_11_inputA
%serving_default_activation_11_input:0ÿÿÿÿÿÿÿÿÿ=
dense_111
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ê

layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
¥
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
1cell
2
state_spec
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
ó
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_rate9m:mFmGmHmIm Jm¡Km¢9v£:v¤Fv¥Gv¦Hv§Iv¨Jv©Kvª"
	optimizer
X
F0
G1
H2
I3
J4
K5
96
:7"
trackable_list_wrapper
X
F0
G1
H2
I3
J4
K5
96
:7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_11_layer_call_fn_58428
-__inference_sequential_11_layer_call_fn_58927
-__inference_sequential_11_layer_call_fn_58948
-__inference_sequential_11_layer_call_fn_58846À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_11_layer_call_and_return_conditional_losses_59213
H__inference_sequential_11_layer_call_and_return_conditional_losses_59478
H__inference_sequential_11_layer_call_and_return_conditional_losses_58873
H__inference_sequential_11_layer_call_and_return_conditional_losses_58900À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
 __inference__wrapped_model_57444activation_11_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
Qserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_activation_11_layer_call_fn_59506¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_11_layer_call_and_return_conditional_losses_59511¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ø
W
state_size

Fkernel
Grecurrent_kernel
Hbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\_random_generator
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

_states
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
&__inference_rnn_10_layer_call_fn_59522
&__inference_rnn_10_layer_call_fn_59533
&__inference_rnn_10_layer_call_fn_59544
&__inference_rnn_10_layer_call_fn_59555æ
Ý²Ù
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ø2õ
A__inference_rnn_10_layer_call_and_return_conditional_losses_59697
A__inference_rnn_10_layer_call_and_return_conditional_losses_59839
A__inference_rnn_10_layer_call_and_return_conditional_losses_59981
A__inference_rnn_10_layer_call_and_return_conditional_losses_60123æ
Ý²Ù
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_leaky_re_lu_17_layer_call_fn_60128¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_60133¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_leaky_re_lu_18_layer_call_fn_60138¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_60143¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_reshape_2_layer_call_fn_60148¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_reshape_2_layer_call_and_return_conditional_losses_60161¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
è

Ikernel
Jrecurrent_kernel
Kbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x_random_generator
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
º

{states
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
2
,__inference_simple_rnn_9_layer_call_fn_60172
,__inference_simple_rnn_9_layer_call_fn_60183
,__inference_simple_rnn_9_layer_call_fn_60194
,__inference_simple_rnn_9_layer_call_fn_60205Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿ2ü
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60313
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60421
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60529
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60637Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!
2dense_11/kernel
:2dense_11/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_11_layer_call_fn_60646¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_11_layer_call_and_return_conditional_losses_60657¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,
2rnn_10/lstm_cell_10/kernel
8:6
2$rnn_10/lstm_cell_10/recurrent_kernel
':%2rnn_10/lstm_cell_10/bias
9:7
2%simple_rnn_9/simple_rnn_cell_9/kernel
C:A
2/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel
2:02#simple_rnn_9/simple_rnn_cell_9/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
#__inference_signature_wrapper_59501activation_11_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
 "
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 2
,__inference_lstm_cell_10_layer_call_fn_60674
,__inference_lstm_cell_10_layer_call_fn_60691¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_60723
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_60755¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ª2§
1__inference_simple_rnn_cell_9_layer_call_fn_60769
1__inference_simple_rnn_cell_9_layer_call_fn_60783¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_60800
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_60817¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
10"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
(:&
2Adam/dense_11/kernel/m
!:2Adam/dense_11/bias/m
3:1
2!Adam/rnn_10/lstm_cell_10/kernel/m
=:;
2+Adam/rnn_10/lstm_cell_10/recurrent_kernel/m
,:*2Adam/rnn_10/lstm_cell_10/bias/m
>:<
2,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/m
H:F
26Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/m
7:52*Adam/simple_rnn_9/simple_rnn_cell_9/bias/m
(:&
2Adam/dense_11/kernel/v
!:2Adam/dense_11/bias/v
3:1
2!Adam/rnn_10/lstm_cell_10/kernel/v
=:;
2+Adam/rnn_10/lstm_cell_10/recurrent_kernel/v
,:*2Adam/rnn_10/lstm_cell_10/bias/v
>:<
2,Adam/simple_rnn_9/simple_rnn_cell_9/kernel/v
H:F
26Adam/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/v
7:52*Adam/simple_rnn_9/simple_rnn_cell_9/bias/v¨
 __inference__wrapped_model_57444FGHIKJ9:A¢>
7¢4
2/
activation_11_inputÿÿÿÿÿÿÿÿÿ
ª "4ª1
/
dense_11# 
dense_11ÿÿÿÿÿÿÿÿÿ®
H__inference_activation_11_layer_call_and_return_conditional_losses_59511b4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_activation_11_layer_call_fn_59506U4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dense_11_layer_call_and_return_conditional_losses_60657^9:0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense_11_layer_call_fn_60646Q9:0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
I__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_60133Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_leaky_re_lu_17_layer_call_fn_60128M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
I__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_60143Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_leaky_re_lu_18_layer_call_fn_60138M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÐ
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_60723FGH¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ð
G__inference_lstm_cell_10_layer_call_and_return_conditional_losses_60755FGH¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ¥
,__inference_lstm_cell_10_layer_call_fn_60674ôFGH¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¥
,__inference_lstm_cell_10_layer_call_fn_60691ôFGH¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¦
D__inference_reshape_2_layer_call_and_return_conditional_losses_60161^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_reshape_2_layer_call_fn_60148Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÉ
A__inference_rnn_10_layer_call_and_return_conditional_losses_59697FGHT¢Q
J¢G
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 É
A__inference_rnn_10_layer_call_and_return_conditional_losses_59839FGHT¢Q
J¢G
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¸
A__inference_rnn_10_layer_call_and_return_conditional_losses_59981sFGHD¢A
:¢7
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¸
A__inference_rnn_10_layer_call_and_return_conditional_losses_60123sFGHD¢A
:¢7
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
  
&__inference_rnn_10_layer_call_fn_59522vFGHT¢Q
J¢G
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ 
&__inference_rnn_10_layer_call_fn_59533vFGHT¢Q
J¢G
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_rnn_10_layer_call_fn_59544fFGHD¢A
:¢7
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_rnn_10_layer_call_fn_59555fFGHD¢A
:¢7
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿÉ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58873}FGHIKJ9:I¢F
?¢<
2/
activation_11_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 É
H__inference_sequential_11_layer_call_and_return_conditional_losses_58900}FGHIKJ9:I¢F
?¢<
2/
activation_11_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¼
H__inference_sequential_11_layer_call_and_return_conditional_losses_59213pFGHIKJ9:<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¼
H__inference_sequential_11_layer_call_and_return_conditional_losses_59478pFGHIKJ9:<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¡
-__inference_sequential_11_layer_call_fn_58428pFGHIKJ9:I¢F
?¢<
2/
activation_11_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
-__inference_sequential_11_layer_call_fn_58846pFGHIKJ9:I¢F
?¢<
2/
activation_11_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_11_layer_call_fn_58927cFGHIKJ9:<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_11_layer_call_fn_58948cFGHIKJ9:<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÂ
#__inference_signature_wrapper_59501FGHIKJ9:X¢U
¢ 
NªK
I
activation_11_input2/
activation_11_inputÿÿÿÿÿÿÿÿÿ"4ª1
/
dense_11# 
dense_11ÿÿÿÿÿÿÿÿÿÊ
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60313IKJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Ê
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60421IKJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60529oIKJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_60637oIKJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¢
,__inference_simple_rnn_9_layer_call_fn_60172rIKJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¢
,__inference_simple_rnn_9_layer_call_fn_60183rIKJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_simple_rnn_9_layer_call_fn_60194bIKJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_simple_rnn_9_layer_call_fn_60205bIKJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_60800»IKJ^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_60817»IKJ^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 ã
1__inference_simple_rnn_cell_9_layer_call_fn_60769­IKJ^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿã
1__inference_simple_rnn_cell_9_layer_call_fn_60783­IKJ^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿ