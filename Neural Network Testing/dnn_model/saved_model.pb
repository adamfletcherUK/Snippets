╙╗
л¤
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
╛
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
executor_typestring И
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ"serve*2.1.02v2.1.0-rc2-17-ge5bf8de4108ол
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:	*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:	*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	@* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:	@*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:@*
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:@@*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:@*
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

:@*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:*
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
И
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	@*'
shared_nameAdam/dense_25/kernel/m
Б
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

:	@*
dtype0
А
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:@*
dtype0
И
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_26/kernel/m
Б
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes

:@@*
dtype0
А
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:@*
dtype0
И
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_27/kernel/m
Б
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

:@*
dtype0
А
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	@*'
shared_nameAdam/dense_25/kernel/v
Б
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

:	@*
dtype0
А
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:@*
dtype0
И
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_26/kernel/v
Б
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:@@*
dtype0
А
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:@*
dtype0
И
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_27/kernel/v
Б
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

:@*
dtype0
А
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
▓&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*э%
valueу%Bр% B┘%
Ъ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
 
а
state_variables
_broadcast_shape
mean
variance
	count
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
 	keras_api
h

!kernel
"bias
#regularization_losses
$trainable_variables
%	variables
&	keras_api
м
'iter

(beta_1

)beta_2
	*decay
+learning_ratem@mAmBmC!mD"mEvFvGvHvI!vJ"vK
 
*
0
1
2
3
!4
"5
?
0
1
2
3
4
5
6
!7
"8
Ъ
regularization_losses
,non_trainable_variables
trainable_variables
-metrics
		variables

.layers
/layer_regularization_losses
 
#
mean
variance
	count
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
Ъ
regularization_losses
0non_trainable_variables
trainable_variables
1metrics
	variables

2layers
3layer_regularization_losses
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Ъ
regularization_losses
4non_trainable_variables
trainable_variables
5metrics
	variables

6layers
7layer_regularization_losses
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Ъ
regularization_losses
8non_trainable_variables
trainable_variables
9metrics
	variables

:layers
;layer_regularization_losses
[Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
Ъ
#regularization_losses
<non_trainable_variables
$trainable_variables
=metrics
%	variables

>layers
?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

0
1
2
3
 

0
1
2
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
~|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_27/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_27/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_27/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_27/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
И
%serving_default_normalization_9_inputPlaceholder*'
_output_shapes
:         	*
dtype0*
shape:         	
Я
StatefulPartitionedCallStatefulPartitionedCall%serving_default_normalization_9_inputmeanvariancedense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias*
Tin
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*,
f'R%
#__inference_signature_wrapper_13337
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOpConst*'
Tin 
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

GPU 

CPU2J 8*'
f"R 
__inference__traced_save_13610
щ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/mAdam/dense_25/kernel/vAdam/dense_25/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v*&
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

GPU 

CPU2J 8**
f%R#
!__inference__traced_restore_13700╤┐
░

Ж
-__inference_sequential_15_layer_call_fn_13433

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tin
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_133042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
■
░
/__inference_normalization_9_layer_call_fn_13455

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         	**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_normalization_9_layer_call_and_return_conditional_losses_131592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         	2

Identity"
identityIdentity:output:0*.
_input_shapes
:         	::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
─	
▄
C__inference_dense_25_layer_call_and_return_conditional_losses_13182

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
Ё
й
(__inference_dense_27_layer_call_fn_13508

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_132272
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
Ё
й
(__inference_dense_26_layer_call_fn_13491

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_132052
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
л
 
H__inference_sequential_15_layer_call_and_return_conditional_losses_13256
normalization_9_input2
.normalization_9_statefulpartitionedcall_args_12
.normalization_9_statefulpartitionedcall_args_2+
'dense_25_statefulpartitionedcall_args_1+
'dense_25_statefulpartitionedcall_args_2+
'dense_26_statefulpartitionedcall_args_1+
'dense_26_statefulpartitionedcall_args_2+
'dense_27_statefulpartitionedcall_args_1+
'dense_27_statefulpartitionedcall_args_2
identityИв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв dense_27/StatefulPartitionedCallв'normalization_9/StatefulPartitionedCall█
'normalization_9/StatefulPartitionedCallStatefulPartitionedCallnormalization_9_input.normalization_9_statefulpartitionedcall_args_1.normalization_9_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         	**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_normalization_9_layer_call_and_return_conditional_losses_131592)
'normalization_9/StatefulPartitionedCall╙
 dense_25/StatefulPartitionedCallStatefulPartitionedCall0normalization_9/StatefulPartitionedCall:output:0'dense_25_statefulpartitionedcall_args_1'dense_25_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_131822"
 dense_25/StatefulPartitionedCall╠
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0'dense_26_statefulpartitionedcall_args_1'dense_26_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_132052"
 dense_26/StatefulPartitionedCall╠
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0'dense_27_statefulpartitionedcall_args_1'dense_27_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_132272"
 dense_27/StatefulPartitionedCallР
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall(^normalization_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2R
'normalization_9/StatefulPartitionedCall'normalization_9/StatefulPartitionedCall:5 1
/
_user_specified_namenormalization_9_input
▌

Х
-__inference_sequential_15_layer_call_fn_13286
normalization_9_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallnormalization_9_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tin
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_132752
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:5 1
/
_user_specified_namenormalization_9_input
▒9
ў

__inference__traced_save_13610
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop
savev2_1_const

identity_1ИвMergeV2CheckpointsвSaveV2вSaveV2_1е
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_7f0fe7cae8f14a0a892caa2233046968/part2
StringJoin/inputs_1Б

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╜
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╧
value┼B┬B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names╝
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╙

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableop"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
SaveV2Г
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shardм
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1в
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_namesО
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices╧
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1у
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesм
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

IdentityБ

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*┴
_input_shapesп
м: :	:	: :	@:@:@@:@:@:: : : : : :	@:@:@@:@:@::	@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix
▌

Х
-__inference_sequential_15_layer_call_fn_13315
normalization_9_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallnormalization_9_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tin
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_133042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:5 1
/
_user_specified_namenormalization_9_input
К
щ
J__inference_normalization_9_layer_call_and_return_conditional_losses_13159

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identityИвReshape/ReadVariableOpвReshape_1/ReadVariableOpМ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:	*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:	2	
ReshapeТ
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:	*
dtype02
Reshape_1/ReadVariableOps
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2
Reshape_1/shapeЖ
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*
_output_shapes

:	2
	Reshape_1]
subSubinputsReshape:output:0*
T0*'
_output_shapes
:         	2
subQ
SqrtSqrtReshape_1:output:0*
T0*
_output_shapes

:	2
Sqrtb
truedivRealDivsub:z:0Sqrt:y:0*
T0*'
_output_shapes
:         	2	
truedivУ
IdentityIdentitytruediv:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         	2

Identity"
identityIdentity:output:0*.
_input_shapes
:         	::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:& "
 
_user_specified_nameinputs
░

Ж
-__inference_sequential_15_layer_call_fn_13420

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tin
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_132752
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
л
 
H__inference_sequential_15_layer_call_and_return_conditional_losses_13240
normalization_9_input2
.normalization_9_statefulpartitionedcall_args_12
.normalization_9_statefulpartitionedcall_args_2+
'dense_25_statefulpartitionedcall_args_1+
'dense_25_statefulpartitionedcall_args_2+
'dense_26_statefulpartitionedcall_args_1+
'dense_26_statefulpartitionedcall_args_2+
'dense_27_statefulpartitionedcall_args_1+
'dense_27_statefulpartitionedcall_args_2
identityИв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв dense_27/StatefulPartitionedCallв'normalization_9/StatefulPartitionedCall█
'normalization_9/StatefulPartitionedCallStatefulPartitionedCallnormalization_9_input.normalization_9_statefulpartitionedcall_args_1.normalization_9_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         	**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_normalization_9_layer_call_and_return_conditional_losses_131592)
'normalization_9/StatefulPartitionedCall╙
 dense_25/StatefulPartitionedCallStatefulPartitionedCall0normalization_9/StatefulPartitionedCall:output:0'dense_25_statefulpartitionedcall_args_1'dense_25_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_131822"
 dense_25/StatefulPartitionedCall╠
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0'dense_26_statefulpartitionedcall_args_1'dense_26_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_132052"
 dense_26/StatefulPartitionedCall╠
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0'dense_27_statefulpartitionedcall_args_1'dense_27_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_132272"
 dense_27/StatefulPartitionedCallР
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall(^normalization_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2R
'normalization_9/StatefulPartitionedCall'normalization_9/StatefulPartitionedCall:5 1
/
_user_specified_namenormalization_9_input
─	
▄
C__inference_dense_26_layer_call_and_return_conditional_losses_13205

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
■
Ё
H__inference_sequential_15_layer_call_and_return_conditional_losses_13275

inputs2
.normalization_9_statefulpartitionedcall_args_12
.normalization_9_statefulpartitionedcall_args_2+
'dense_25_statefulpartitionedcall_args_1+
'dense_25_statefulpartitionedcall_args_2+
'dense_26_statefulpartitionedcall_args_1+
'dense_26_statefulpartitionedcall_args_2+
'dense_27_statefulpartitionedcall_args_1+
'dense_27_statefulpartitionedcall_args_2
identityИв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв dense_27/StatefulPartitionedCallв'normalization_9/StatefulPartitionedCall╠
'normalization_9/StatefulPartitionedCallStatefulPartitionedCallinputs.normalization_9_statefulpartitionedcall_args_1.normalization_9_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         	**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_normalization_9_layer_call_and_return_conditional_losses_131592)
'normalization_9/StatefulPartitionedCall╙
 dense_25/StatefulPartitionedCallStatefulPartitionedCall0normalization_9/StatefulPartitionedCall:output:0'dense_25_statefulpartitionedcall_args_1'dense_25_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_131822"
 dense_25/StatefulPartitionedCall╠
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0'dense_26_statefulpartitionedcall_args_1'dense_26_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_132052"
 dense_26/StatefulPartitionedCall╠
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0'dense_27_statefulpartitionedcall_args_1'dense_27_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_132272"
 dense_27/StatefulPartitionedCallР
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall(^normalization_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2R
'normalization_9/StatefulPartitionedCall'normalization_9/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
Ь,
Б
H__inference_sequential_15_layer_call_and_return_conditional_losses_13407

inputs3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identityИвdense_25/BiasAdd/ReadVariableOpвdense_25/MatMul/ReadVariableOpвdense_26/BiasAdd/ReadVariableOpвdense_26/MatMul/ReadVariableOpвdense_27/BiasAdd/ReadVariableOpвdense_27/MatMul/ReadVariableOpв&normalization_9/Reshape/ReadVariableOpв(normalization_9/Reshape_1/ReadVariableOp╝
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:	*
dtype02(
&normalization_9/Reshape/ReadVariableOpП
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2
normalization_9/Reshape/shape╛
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:	2
normalization_9/Reshape┬
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:	*
dtype02*
(normalization_9/Reshape_1/ReadVariableOpУ
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2!
normalization_9/Reshape_1/shape╞
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:	2
normalization_9/Reshape_1Н
normalization_9/subSubinputs normalization_9/Reshape:output:0*
T0*'
_output_shapes
:         	2
normalization_9/subБ
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:	2
normalization_9/Sqrtв
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Sqrt:y:0*
T0*'
_output_shapes
:         	2
normalization_9/truedivи
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02 
dense_25/MatMul/ReadVariableOpг
dense_25/MatMulMatMulnormalization_9/truediv:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_25/MatMulз
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_25/BiasAdd/ReadVariableOpе
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_25/Reluи
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOpг
dense_26/MatMulMatMuldense_25/Relu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_26/MatMulз
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOpе
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_26/BiasAdds
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_26/Reluи
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOpг
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_27/MatMulз
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOpе
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_27/BiasAddК
IdentityIdentitydense_27/BiasAdd:output:0 ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:& "
 
_user_specified_nameinputs
Й9
╚
 __inference__wrapped_model_13140
normalization_9_inputA
=sequential_15_normalization_9_reshape_readvariableop_resourceC
?sequential_15_normalization_9_reshape_1_readvariableop_resource9
5sequential_15_dense_25_matmul_readvariableop_resource:
6sequential_15_dense_25_biasadd_readvariableop_resource9
5sequential_15_dense_26_matmul_readvariableop_resource:
6sequential_15_dense_26_biasadd_readvariableop_resource9
5sequential_15_dense_27_matmul_readvariableop_resource:
6sequential_15_dense_27_biasadd_readvariableop_resource
identityИв-sequential_15/dense_25/BiasAdd/ReadVariableOpв,sequential_15/dense_25/MatMul/ReadVariableOpв-sequential_15/dense_26/BiasAdd/ReadVariableOpв,sequential_15/dense_26/MatMul/ReadVariableOpв-sequential_15/dense_27/BiasAdd/ReadVariableOpв,sequential_15/dense_27/MatMul/ReadVariableOpв4sequential_15/normalization_9/Reshape/ReadVariableOpв6sequential_15/normalization_9/Reshape_1/ReadVariableOpц
4sequential_15/normalization_9/Reshape/ReadVariableOpReadVariableOp=sequential_15_normalization_9_reshape_readvariableop_resource*
_output_shapes
:	*
dtype026
4sequential_15/normalization_9/Reshape/ReadVariableOpл
+sequential_15/normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2-
+sequential_15/normalization_9/Reshape/shapeЎ
%sequential_15/normalization_9/ReshapeReshape<sequential_15/normalization_9/Reshape/ReadVariableOp:value:04sequential_15/normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:	2'
%sequential_15/normalization_9/Reshapeь
6sequential_15/normalization_9/Reshape_1/ReadVariableOpReadVariableOp?sequential_15_normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:	*
dtype028
6sequential_15/normalization_9/Reshape_1/ReadVariableOpп
-sequential_15/normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2/
-sequential_15/normalization_9/Reshape_1/shape■
'sequential_15/normalization_9/Reshape_1Reshape>sequential_15/normalization_9/Reshape_1/ReadVariableOp:value:06sequential_15/normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:	2)
'sequential_15/normalization_9/Reshape_1╞
!sequential_15/normalization_9/subSubnormalization_9_input.sequential_15/normalization_9/Reshape:output:0*
T0*'
_output_shapes
:         	2#
!sequential_15/normalization_9/subл
"sequential_15/normalization_9/SqrtSqrt0sequential_15/normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:	2$
"sequential_15/normalization_9/Sqrt┌
%sequential_15/normalization_9/truedivRealDiv%sequential_15/normalization_9/sub:z:0&sequential_15/normalization_9/Sqrt:y:0*
T0*'
_output_shapes
:         	2'
%sequential_15/normalization_9/truediv╥
,sequential_15/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_25_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02.
,sequential_15/dense_25/MatMul/ReadVariableOp█
sequential_15/dense_25/MatMulMatMul)sequential_15/normalization_9/truediv:z:04sequential_15/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
sequential_15/dense_25/MatMul╤
-sequential_15/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_15/dense_25/BiasAdd/ReadVariableOp▌
sequential_15/dense_25/BiasAddBiasAdd'sequential_15/dense_25/MatMul:product:05sequential_15/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2 
sequential_15/dense_25/BiasAddЭ
sequential_15/dense_25/ReluRelu'sequential_15/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
sequential_15/dense_25/Relu╥
,sequential_15/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02.
,sequential_15/dense_26/MatMul/ReadVariableOp█
sequential_15/dense_26/MatMulMatMul)sequential_15/dense_25/Relu:activations:04sequential_15/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
sequential_15/dense_26/MatMul╤
-sequential_15/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_15/dense_26/BiasAdd/ReadVariableOp▌
sequential_15/dense_26/BiasAddBiasAdd'sequential_15/dense_26/MatMul:product:05sequential_15/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2 
sequential_15/dense_26/BiasAddЭ
sequential_15/dense_26/ReluRelu'sequential_15/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
sequential_15/dense_26/Relu╥
,sequential_15/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_15/dense_27/MatMul/ReadVariableOp█
sequential_15/dense_27/MatMulMatMul)sequential_15/dense_26/Relu:activations:04sequential_15/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_15/dense_27/MatMul╤
-sequential_15/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_27/BiasAdd/ReadVariableOp▌
sequential_15/dense_27/BiasAddBiasAdd'sequential_15/dense_27/MatMul:product:05sequential_15/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2 
sequential_15/dense_27/BiasAddИ
IdentityIdentity'sequential_15/dense_27/BiasAdd:output:0.^sequential_15/dense_25/BiasAdd/ReadVariableOp-^sequential_15/dense_25/MatMul/ReadVariableOp.^sequential_15/dense_26/BiasAdd/ReadVariableOp-^sequential_15/dense_26/MatMul/ReadVariableOp.^sequential_15/dense_27/BiasAdd/ReadVariableOp-^sequential_15/dense_27/MatMul/ReadVariableOp5^sequential_15/normalization_9/Reshape/ReadVariableOp7^sequential_15/normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2^
-sequential_15/dense_25/BiasAdd/ReadVariableOp-sequential_15/dense_25/BiasAdd/ReadVariableOp2\
,sequential_15/dense_25/MatMul/ReadVariableOp,sequential_15/dense_25/MatMul/ReadVariableOp2^
-sequential_15/dense_26/BiasAdd/ReadVariableOp-sequential_15/dense_26/BiasAdd/ReadVariableOp2\
,sequential_15/dense_26/MatMul/ReadVariableOp,sequential_15/dense_26/MatMul/ReadVariableOp2^
-sequential_15/dense_27/BiasAdd/ReadVariableOp-sequential_15/dense_27/BiasAdd/ReadVariableOp2\
,sequential_15/dense_27/MatMul/ReadVariableOp,sequential_15/dense_27/MatMul/ReadVariableOp2l
4sequential_15/normalization_9/Reshape/ReadVariableOp4sequential_15/normalization_9/Reshape/ReadVariableOp2p
6sequential_15/normalization_9/Reshape_1/ReadVariableOp6sequential_15/normalization_9/Reshape_1/ReadVariableOp:5 1
/
_user_specified_namenormalization_9_input
■
Ё
H__inference_sequential_15_layer_call_and_return_conditional_losses_13304

inputs2
.normalization_9_statefulpartitionedcall_args_12
.normalization_9_statefulpartitionedcall_args_2+
'dense_25_statefulpartitionedcall_args_1+
'dense_25_statefulpartitionedcall_args_2+
'dense_26_statefulpartitionedcall_args_1+
'dense_26_statefulpartitionedcall_args_2+
'dense_27_statefulpartitionedcall_args_1+
'dense_27_statefulpartitionedcall_args_2
identityИв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв dense_27/StatefulPartitionedCallв'normalization_9/StatefulPartitionedCall╠
'normalization_9/StatefulPartitionedCallStatefulPartitionedCallinputs.normalization_9_statefulpartitionedcall_args_1.normalization_9_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         	**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_normalization_9_layer_call_and_return_conditional_losses_131592)
'normalization_9/StatefulPartitionedCall╙
 dense_25/StatefulPartitionedCallStatefulPartitionedCall0normalization_9/StatefulPartitionedCall:output:0'dense_25_statefulpartitionedcall_args_1'dense_25_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_131822"
 dense_25/StatefulPartitionedCall╠
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0'dense_26_statefulpartitionedcall_args_1'dense_26_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_132052"
 dense_26/StatefulPartitionedCall╠
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0'dense_27_statefulpartitionedcall_args_1'dense_27_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_132272"
 dense_27/StatefulPartitionedCallР
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall(^normalization_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2R
'normalization_9/StatefulPartitionedCall'normalization_9/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
К
щ
J__inference_normalization_9_layer_call_and_return_conditional_losses_13448

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identityИвReshape/ReadVariableOpвReshape_1/ReadVariableOpМ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:	*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:	2	
ReshapeТ
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:	*
dtype02
Reshape_1/ReadVariableOps
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2
Reshape_1/shapeЖ
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*
_output_shapes

:	2
	Reshape_1]
subSubinputsReshape:output:0*
T0*'
_output_shapes
:         	2
subQ
SqrtSqrtReshape_1:output:0*
T0*
_output_shapes

:	2
Sqrtb
truedivRealDivsub:z:0Sqrt:y:0*
T0*'
_output_shapes
:         	2	
truedivУ
IdentityIdentitytruediv:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         	2

Identity"
identityIdentity:output:0*.
_input_shapes
:         	::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:& "
 
_user_specified_nameinputs
─	
▄
C__inference_dense_26_layer_call_and_return_conditional_losses_13484

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
ш
▄
C__inference_dense_27_layer_call_and_return_conditional_losses_13501

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
Ё
й
(__inference_dense_25_layer_call_fn_13473

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         @**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_131822
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         	::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
л

Л
#__inference_signature_wrapper_13337
normalization_9_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallnormalization_9_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tin
2	*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:         **
config_proto

GPU 

CPU2J 8*)
f$R"
 __inference__wrapped_model_131402
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:5 1
/
_user_specified_namenormalization_9_input
─	
▄
C__inference_dense_25_layer_call_and_return_conditional_losses_13466

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
Ь,
Б
H__inference_sequential_15_layer_call_and_return_conditional_losses_13372

inputs3
/normalization_9_reshape_readvariableop_resource5
1normalization_9_reshape_1_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identityИвdense_25/BiasAdd/ReadVariableOpвdense_25/MatMul/ReadVariableOpвdense_26/BiasAdd/ReadVariableOpвdense_26/MatMul/ReadVariableOpвdense_27/BiasAdd/ReadVariableOpвdense_27/MatMul/ReadVariableOpв&normalization_9/Reshape/ReadVariableOpв(normalization_9/Reshape_1/ReadVariableOp╝
&normalization_9/Reshape/ReadVariableOpReadVariableOp/normalization_9_reshape_readvariableop_resource*
_output_shapes
:	*
dtype02(
&normalization_9/Reshape/ReadVariableOpП
normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2
normalization_9/Reshape/shape╛
normalization_9/ReshapeReshape.normalization_9/Reshape/ReadVariableOp:value:0&normalization_9/Reshape/shape:output:0*
T0*
_output_shapes

:	2
normalization_9/Reshape┬
(normalization_9/Reshape_1/ReadVariableOpReadVariableOp1normalization_9_reshape_1_readvariableop_resource*
_output_shapes
:	*
dtype02*
(normalization_9/Reshape_1/ReadVariableOpУ
normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   	   2!
normalization_9/Reshape_1/shape╞
normalization_9/Reshape_1Reshape0normalization_9/Reshape_1/ReadVariableOp:value:0(normalization_9/Reshape_1/shape:output:0*
T0*
_output_shapes

:	2
normalization_9/Reshape_1Н
normalization_9/subSubinputs normalization_9/Reshape:output:0*
T0*'
_output_shapes
:         	2
normalization_9/subБ
normalization_9/SqrtSqrt"normalization_9/Reshape_1:output:0*
T0*
_output_shapes

:	2
normalization_9/Sqrtв
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Sqrt:y:0*
T0*'
_output_shapes
:         	2
normalization_9/truedivи
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:	@*
dtype02 
dense_25/MatMul/ReadVariableOpг
dense_25/MatMulMatMulnormalization_9/truediv:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_25/MatMulз
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_25/BiasAdd/ReadVariableOpе
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_25/Reluи
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOpг
dense_26/MatMulMatMuldense_25/Relu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_26/MatMulз
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOpе
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_26/BiasAdds
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_26/Reluи
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOpг
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_27/MatMulз
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOpе
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_27/BiasAddК
IdentityIdentitydense_27/BiasAdd:output:0 ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp'^normalization_9/Reshape/ReadVariableOp)^normalization_9/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         	::::::::2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2P
&normalization_9/Reshape/ReadVariableOp&normalization_9/Reshape/ReadVariableOp2T
(normalization_9/Reshape_1/ReadVariableOp(normalization_9/Reshape_1/ReadVariableOp:& "
 
_user_specified_nameinputs
ш
▄
C__inference_dense_27_layer_call_and_return_conditional_losses_13227

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
╕m
╞
!__inference__traced_restore_13700
file_prefix
assignvariableop_mean
assignvariableop_1_variance
assignvariableop_2_count&
"assignvariableop_3_dense_25_kernel$
 assignvariableop_4_dense_25_bias&
"assignvariableop_5_dense_26_kernel$
 assignvariableop_6_dense_26_bias&
"assignvariableop_7_dense_27_kernel$
 assignvariableop_8_dense_27_bias 
assignvariableop_9_adam_iter#
assignvariableop_10_adam_beta_1#
assignvariableop_11_adam_beta_2"
assignvariableop_12_adam_decay*
&assignvariableop_13_adam_learning_rate.
*assignvariableop_14_adam_dense_25_kernel_m,
(assignvariableop_15_adam_dense_25_bias_m.
*assignvariableop_16_adam_dense_26_kernel_m,
(assignvariableop_17_adam_dense_26_bias_m.
*assignvariableop_18_adam_dense_27_kernel_m,
(assignvariableop_19_adam_dense_27_bias_m.
*assignvariableop_20_adam_dense_25_kernel_v,
(assignvariableop_21_adam_dense_25_bias_v.
*assignvariableop_22_adam_dense_26_kernel_v,
(assignvariableop_23_adam_dense_26_bias_v.
*assignvariableop_24_adam_dense_27_kernel_v,
(assignvariableop_25_adam_dense_27_bias_v
identity_27ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9в	RestoreV2вRestoreV2_1├
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╧
value┼B┬B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesн
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

IdentityЕ
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1С
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2О
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3Ш
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_25_kernelIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4Ц
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_25_biasIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5Ш
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_26_kernelIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6Ц
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_26_biasIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7Ш
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_27_kernelIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8Ц
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_27_biasIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0	*
_output_shapes
:2

Identity_9Т
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10Ш
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11Ш
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12Ч
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13Я
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14г
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_25_kernel_mIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15б
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_25_bias_mIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16г
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_26_kernel_mIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17б
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_26_bias_mIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17_
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_27_kernel_mIdentity_18:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_18_
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:2
Identity_19б
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_27_bias_mIdentity_19:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_19_
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:2
Identity_20г
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_25_kernel_vIdentity_20:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_20_
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:2
Identity_21б
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_25_bias_vIdentity_21:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_21_
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:2
Identity_22г
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_26_kernel_vIdentity_22:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_22_
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:2
Identity_23б
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_26_bias_vIdentity_23:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_23_
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:2
Identity_24г
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_27_kernel_vIdentity_24:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_24_
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:2
Identity_25б
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_27_bias_vIdentity_25:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_25и
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_namesФ
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices─
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЪ
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_26з
Identity_27IdentityIdentity_26:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_27"#
identity_27Identity_27:output:0*}
_input_shapesl
j: ::::::::::::::::::::::::::2$
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
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix"пL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╟
serving_default│
W
normalization_9_input>
'serving_default_normalization_9_input:0         	<
dense_270
StatefulPartitionedCall:0         tensorflow/serving/predict:ЎИ
г
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
L_default_save_signature
*M&call_and_return_all_conditional_losses
N__call__"п
_tf_keras_sequentialР{"class_name": "Sequential", "name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_15", "layers": [{"class_name": "Normalization", "config": {"name": "normalization_9", "trainable": true, "batch_input_shape": [null, 9], "dtype": "float32", "axis": -1}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "is_graph_network": true, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "Normalization", "config": {"name": "normalization_9", "trainable": true, "batch_input_shape": [null, 9], "dtype": "float32", "axis": -1}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_absolute_error", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
╣"╢
_tf_keras_input_layerЦ{"class_name": "InputLayer", "name": "normalization_9_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": [null, 9], "config": {"batch_input_shape": [null, 9], "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_9_input"}}
С
state_variables
_broadcast_shape
mean
variance
	count
regularization_losses
trainable_variables
	variables
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"┤
_tf_keras_layerЪ{"class_name": "Normalization", "name": "normalization_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 9], "config": {"name": "normalization_9", "trainable": true, "batch_input_shape": [null, 9], "dtype": "float32", "axis": -1}}
Є

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"═
_tf_keras_layer│{"class_name": "Dense", "name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}}}
є

kernel
bias
regularization_losses
trainable_variables
	variables
 	keras_api
*S&call_and_return_all_conditional_losses
T__call__"╬
_tf_keras_layer┤{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
Ї

!kernel
"bias
#regularization_losses
$trainable_variables
%	variables
&	keras_api
*U&call_and_return_all_conditional_losses
V__call__"╧
_tf_keras_layer╡{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
┐
'iter

(beta_1

)beta_2
	*decay
+learning_ratem@mAmBmC!mD"mEvFvGvHvI!vJ"vK"
	optimizer
 "
trackable_list_wrapper
J
0
1
2
3
!4
"5"
trackable_list_wrapper
_
0
1
2
3
4
5
6
!7
"8"
trackable_list_wrapper
╖
regularization_losses
,non_trainable_variables
trainable_variables
-metrics
		variables

.layers
/layer_regularization_losses
N__call__
L_default_save_signature
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
,
Wserving_default"
signature_map
C
mean
variance
	count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:	2mean
:	2variance
: 2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
Ъ
regularization_losses
0non_trainable_variables
trainable_variables
1metrics
	variables

2layers
3layer_regularization_losses
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
!:	@2dense_25/kernel
:@2dense_25/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ъ
regularization_losses
4non_trainable_variables
trainable_variables
5metrics
	variables

6layers
7layer_regularization_losses
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_26/kernel
:@2dense_26/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ъ
regularization_losses
8non_trainable_variables
trainable_variables
9metrics
	variables

:layers
;layer_regularization_losses
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_27/kernel
:2dense_27/bias
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
Ъ
#regularization_losses
<non_trainable_variables
$trainable_variables
=metrics
%	variables

>layers
?layer_regularization_losses
V__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
&:$	@2Adam/dense_25/kernel/m
 :@2Adam/dense_25/bias/m
&:$@@2Adam/dense_26/kernel/m
 :@2Adam/dense_26/bias/m
&:$@2Adam/dense_27/kernel/m
 :2Adam/dense_27/bias/m
&:$	@2Adam/dense_25/kernel/v
 :@2Adam/dense_25/bias/v
&:$@@2Adam/dense_26/kernel/v
 :@2Adam/dense_26/bias/v
&:$@2Adam/dense_27/kernel/v
 :2Adam/dense_27/bias/v
ь2щ
 __inference__wrapped_model_13140─
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *4в1
/К,
normalization_9_input         	
ю2ы
H__inference_sequential_15_layer_call_and_return_conditional_losses_13372
H__inference_sequential_15_layer_call_and_return_conditional_losses_13407
H__inference_sequential_15_layer_call_and_return_conditional_losses_13256
H__inference_sequential_15_layer_call_and_return_conditional_losses_13240└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
-__inference_sequential_15_layer_call_fn_13420
-__inference_sequential_15_layer_call_fn_13433
-__inference_sequential_15_layer_call_fn_13286
-__inference_sequential_15_layer_call_fn_13315└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ї2ё
J__inference_normalization_9_layer_call_and_return_conditional_losses_13448в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┘2╓
/__inference_normalization_9_layer_call_fn_13455в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_25_layer_call_and_return_conditional_losses_13466в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_dense_25_layer_call_fn_13473в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_26_layer_call_and_return_conditional_losses_13484в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_dense_26_layer_call_fn_13491в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_27_layer_call_and_return_conditional_losses_13501в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_dense_27_layer_call_fn_13508в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
@B>
#__inference_signature_wrapper_13337normalization_9_inputг
 __inference__wrapped_model_13140!">в;
4в1
/К,
normalization_9_input         	
к "3к0
.
dense_27"К
dense_27         г
C__inference_dense_25_layer_call_and_return_conditional_losses_13466\/в,
%в"
 К
inputs         	
к "%в"
К
0         @
Ъ {
(__inference_dense_25_layer_call_fn_13473O/в,
%в"
 К
inputs         	
к "К         @г
C__inference_dense_26_layer_call_and_return_conditional_losses_13484\/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ {
(__inference_dense_26_layer_call_fn_13491O/в,
%в"
 К
inputs         @
к "К         @г
C__inference_dense_27_layer_call_and_return_conditional_losses_13501\!"/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ {
(__inference_dense_27_layer_call_fn_13508O!"/в,
%в"
 К
inputs         @
к "К         к
J__inference_normalization_9_layer_call_and_return_conditional_losses_13448\/в,
%в"
 К
inputs         	
к "%в"
К
0         	
Ъ В
/__inference_normalization_9_layer_call_fn_13455O/в,
%в"
 К
inputs         	
к "К         	┼
H__inference_sequential_15_layer_call_and_return_conditional_losses_13240y!"FвC
<в9
/К,
normalization_9_input         	
p

 
к "%в"
К
0         
Ъ ┼
H__inference_sequential_15_layer_call_and_return_conditional_losses_13256y!"FвC
<в9
/К,
normalization_9_input         	
p 

 
к "%в"
К
0         
Ъ ╢
H__inference_sequential_15_layer_call_and_return_conditional_losses_13372j!"7в4
-в*
 К
inputs         	
p

 
к "%в"
К
0         
Ъ ╢
H__inference_sequential_15_layer_call_and_return_conditional_losses_13407j!"7в4
-в*
 К
inputs         	
p 

 
к "%в"
К
0         
Ъ Э
-__inference_sequential_15_layer_call_fn_13286l!"FвC
<в9
/К,
normalization_9_input         	
p

 
к "К         Э
-__inference_sequential_15_layer_call_fn_13315l!"FвC
<в9
/К,
normalization_9_input         	
p 

 
к "К         О
-__inference_sequential_15_layer_call_fn_13420]!"7в4
-в*
 К
inputs         	
p

 
к "К         О
-__inference_sequential_15_layer_call_fn_13433]!"7в4
-в*
 К
inputs         	
p 

 
к "К         └
#__inference_signature_wrapper_13337Ш!"WвT
в 
MкJ
H
normalization_9_input/К,
normalization_9_input         	"3к0
.
dense_27"К
dense_27         