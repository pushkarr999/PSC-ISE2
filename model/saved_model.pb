??
??
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
8
Const
output"dtype"
valuetensor"
dtypetype
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
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.11.02v2.11.0-rc2-15-g6290819256d8??
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
?
Adam/v/neural_net/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/v/neural_net/dense_2/bias
?
2Adam/v/neural_net/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/neural_net/dense_2/bias*
_output_shapes
:*
dtype0
?
Adam/m/neural_net/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/m/neural_net/dense_2/bias
?
2Adam/m/neural_net/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/neural_net/dense_2/bias*
_output_shapes
:*
dtype0
?
 Adam/v/neural_net/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/v/neural_net/dense_2/kernel
?
4Adam/v/neural_net/dense_2/kernel/Read/ReadVariableOpReadVariableOp Adam/v/neural_net/dense_2/kernel*
_output_shapes

:*
dtype0
?
 Adam/m/neural_net/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/m/neural_net/dense_2/kernel
?
4Adam/m/neural_net/dense_2/kernel/Read/ReadVariableOpReadVariableOp Adam/m/neural_net/dense_2/kernel*
_output_shapes

:*
dtype0
?
Adam/v/neural_net/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/v/neural_net/dense_1/bias
?
2Adam/v/neural_net/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/neural_net/dense_1/bias*
_output_shapes
:*
dtype0
?
Adam/m/neural_net/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/m/neural_net/dense_1/bias
?
2Adam/m/neural_net/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/neural_net/dense_1/bias*
_output_shapes
:*
dtype0
?
 Adam/v/neural_net/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/v/neural_net/dense_1/kernel
?
4Adam/v/neural_net/dense_1/kernel/Read/ReadVariableOpReadVariableOp Adam/v/neural_net/dense_1/kernel*
_output_shapes

:*
dtype0
?
 Adam/m/neural_net/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/m/neural_net/dense_1/kernel
?
4Adam/m/neural_net/dense_1/kernel/Read/ReadVariableOpReadVariableOp Adam/m/neural_net/dense_1/kernel*
_output_shapes

:*
dtype0
?
Adam/v/neural_net/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/v/neural_net/dense/bias
?
0Adam/v/neural_net/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/neural_net/dense/bias*
_output_shapes
:*
dtype0
?
Adam/m/neural_net/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/m/neural_net/dense/bias
?
0Adam/m/neural_net/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/neural_net/dense/bias*
_output_shapes
:*
dtype0
?
Adam/v/neural_net/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/v/neural_net/dense/kernel
?
2Adam/v/neural_net/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/neural_net/dense/kernel*
_output_shapes

:*
dtype0
?
Adam/m/neural_net/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/m/neural_net/dense/kernel
?
2Adam/m/neural_net/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/neural_net/dense/kernel*
_output_shapes

:*
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
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
?
neural_net/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameneural_net/dense_2/bias

+neural_net/dense_2/bias/Read/ReadVariableOpReadVariableOpneural_net/dense_2/bias*
_output_shapes
:*
dtype0
?
neural_net/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nameneural_net/dense_2/kernel
?
-neural_net/dense_2/kernel/Read/ReadVariableOpReadVariableOpneural_net/dense_2/kernel*
_output_shapes

:*
dtype0
?
neural_net/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameneural_net/dense_1/bias

+neural_net/dense_1/bias/Read/ReadVariableOpReadVariableOpneural_net/dense_1/bias*
_output_shapes
:*
dtype0
?
neural_net/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nameneural_net/dense_1/kernel
?
-neural_net/dense_1/kernel/Read/ReadVariableOpReadVariableOpneural_net/dense_1/kernel*
_output_shapes

:*
dtype0
?
neural_net/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameneural_net/dense/bias
{
)neural_net/dense/bias/Read/ReadVariableOpReadVariableOpneural_net/dense/bias*
_output_shapes
:*
dtype0
?
neural_net/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameneural_net/dense/kernel
?
+neural_net/dense/kernel/Read/ReadVariableOpReadVariableOpneural_net/dense/kernel*
_output_shapes

:*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1neural_net/dense/kernelneural_net/dense/biasneural_net/dense_1/kernelneural_net/dense_1/biasneural_net/dense_2/kernelneural_net/dense_2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_4367276

NoOpNoOp
?*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?*
value?*B?* B?*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
layer_1
	layer_2

output_layer
	optimizer

signatures*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

kernel
bias*
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

kernel
bias*
?
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

kernel
bias*
?
.
_variables
/_iterations
0_learning_rate
1_index_dict
2
_momentums
3_velocities
4_update_step_xla*

5serving_default* 
WQ
VARIABLE_VALUEneural_net/dense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEneural_net/dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEneural_net/dense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEneural_net/dense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEneural_net/dense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEneural_net/dense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1

2*

60
71*
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

=trace_0* 

>trace_0* 

0
1*

0
1*
* 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

Dtrace_0* 

Etrace_0* 

0
1*

0
1*
* 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
b
/0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10
W11
X12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
M0
O1
Q2
S3
U4
W5*
.
N0
P1
R2
T3
V4
X5*
* 
* 
8
Y	variables
Z	keras_api
	[total
	\count*
H
]	variables
^	keras_api
	_total
	`count
a
_fn_kwargs*
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
ic
VARIABLE_VALUEAdam/m/neural_net/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/neural_net/dense/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/neural_net/dense/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/neural_net/dense/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/neural_net/dense_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/neural_net/dense_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/neural_net/dense_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/neural_net/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/neural_net/dense_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/neural_net/dense_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/neural_net/dense_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/neural_net/dense_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

Y	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

_0
`1*

]	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+neural_net/dense/kernel/Read/ReadVariableOp)neural_net/dense/bias/Read/ReadVariableOp-neural_net/dense_1/kernel/Read/ReadVariableOp+neural_net/dense_1/bias/Read/ReadVariableOp-neural_net/dense_2/kernel/Read/ReadVariableOp+neural_net/dense_2/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp2Adam/m/neural_net/dense/kernel/Read/ReadVariableOp2Adam/v/neural_net/dense/kernel/Read/ReadVariableOp0Adam/m/neural_net/dense/bias/Read/ReadVariableOp0Adam/v/neural_net/dense/bias/Read/ReadVariableOp4Adam/m/neural_net/dense_1/kernel/Read/ReadVariableOp4Adam/v/neural_net/dense_1/kernel/Read/ReadVariableOp2Adam/m/neural_net/dense_1/bias/Read/ReadVariableOp2Adam/v/neural_net/dense_1/bias/Read/ReadVariableOp4Adam/m/neural_net/dense_2/kernel/Read/ReadVariableOp4Adam/v/neural_net/dense_2/kernel/Read/ReadVariableOp2Adam/m/neural_net/dense_2/bias/Read/ReadVariableOp2Adam/v/neural_net/dense_2/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2	*
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
 __inference__traced_save_4367473
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameneural_net/dense/kernelneural_net/dense/biasneural_net/dense_1/kernelneural_net/dense_1/biasneural_net/dense_2/kernelneural_net/dense_2/bias	iterationlearning_rateAdam/m/neural_net/dense/kernelAdam/v/neural_net/dense/kernelAdam/m/neural_net/dense/biasAdam/v/neural_net/dense/bias Adam/m/neural_net/dense_1/kernel Adam/v/neural_net/dense_1/kernelAdam/m/neural_net/dense_1/biasAdam/v/neural_net/dense_1/bias Adam/m/neural_net/dense_2/kernel Adam/v/neural_net/dense_2/kernelAdam/m/neural_net/dense_2/biasAdam/v/neural_net/dense_2/biastotal_1count_1totalcount*$
Tin
2*
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
#__inference__traced_restore_4367555??
?
?
%__inference_signature_wrapper_4367276
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_4367115o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
G__inference_neural_net_layer_call_and_return_conditional_losses_4367174

inputs
dense_4367134:
dense_4367136:!
dense_1_4367151:
dense_1_4367153:!
dense_2_4367168:
dense_2_4367170:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4367134dense_4367136*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4367133?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4367151dense_1_4367153*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4367150?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_4367168dense_2_4367170*
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
GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4367167w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?
 __inference__traced_save_4367473
file_prefix6
2savev2_neural_net_dense_kernel_read_readvariableop4
0savev2_neural_net_dense_bias_read_readvariableop8
4savev2_neural_net_dense_1_kernel_read_readvariableop6
2savev2_neural_net_dense_1_bias_read_readvariableop8
4savev2_neural_net_dense_2_kernel_read_readvariableop6
2savev2_neural_net_dense_2_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop=
9savev2_adam_m_neural_net_dense_kernel_read_readvariableop=
9savev2_adam_v_neural_net_dense_kernel_read_readvariableop;
7savev2_adam_m_neural_net_dense_bias_read_readvariableop;
7savev2_adam_v_neural_net_dense_bias_read_readvariableop?
;savev2_adam_m_neural_net_dense_1_kernel_read_readvariableop?
;savev2_adam_v_neural_net_dense_1_kernel_read_readvariableop=
9savev2_adam_m_neural_net_dense_1_bias_read_readvariableop=
9savev2_adam_v_neural_net_dense_1_bias_read_readvariableop?
;savev2_adam_m_neural_net_dense_2_kernel_read_readvariableop?
;savev2_adam_v_neural_net_dense_2_kernel_read_readvariableop=
9savev2_adam_m_neural_net_dense_2_bias_read_readvariableop=
9savev2_adam_v_neural_net_dense_2_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
: ?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_neural_net_dense_kernel_read_readvariableop0savev2_neural_net_dense_bias_read_readvariableop4savev2_neural_net_dense_1_kernel_read_readvariableop2savev2_neural_net_dense_1_bias_read_readvariableop4savev2_neural_net_dense_2_kernel_read_readvariableop2savev2_neural_net_dense_2_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop9savev2_adam_m_neural_net_dense_kernel_read_readvariableop9savev2_adam_v_neural_net_dense_kernel_read_readvariableop7savev2_adam_m_neural_net_dense_bias_read_readvariableop7savev2_adam_v_neural_net_dense_bias_read_readvariableop;savev2_adam_m_neural_net_dense_1_kernel_read_readvariableop;savev2_adam_v_neural_net_dense_1_kernel_read_readvariableop9savev2_adam_m_neural_net_dense_1_bias_read_readvariableop9savev2_adam_v_neural_net_dense_1_bias_read_readvariableop;savev2_adam_m_neural_net_dense_2_kernel_read_readvariableop;savev2_adam_v_neural_net_dense_2_kernel_read_readvariableop9savev2_adam_m_neural_net_dense_2_bias_read_readvariableop9savev2_adam_v_neural_net_dense_2_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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
?: ::::::: : ::::::::::::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

::$
 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_neural_net_layer_call_and_return_conditional_losses_4367318

inputs6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_2_layer_call_fn_4367367

inputs
unknown:
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
GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4367167o
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_4367358

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
"__inference__wrapped_model_4367115
input_1A
/neural_net_dense_matmul_readvariableop_resource:>
0neural_net_dense_biasadd_readvariableop_resource:C
1neural_net_dense_1_matmul_readvariableop_resource:@
2neural_net_dense_1_biasadd_readvariableop_resource:C
1neural_net_dense_2_matmul_readvariableop_resource:@
2neural_net_dense_2_biasadd_readvariableop_resource:
identity??'neural_net/dense/BiasAdd/ReadVariableOp?&neural_net/dense/MatMul/ReadVariableOp?)neural_net/dense_1/BiasAdd/ReadVariableOp?(neural_net/dense_1/MatMul/ReadVariableOp?)neural_net/dense_2/BiasAdd/ReadVariableOp?(neural_net/dense_2/MatMul/ReadVariableOp?
&neural_net/dense/MatMul/ReadVariableOpReadVariableOp/neural_net_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
neural_net/dense/MatMulMatMulinput_1.neural_net/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'neural_net/dense/BiasAdd/ReadVariableOpReadVariableOp0neural_net_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
neural_net/dense/BiasAddBiasAdd!neural_net/dense/MatMul:product:0/neural_net/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
neural_net/dense/ReluRelu!neural_net/dense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(neural_net/dense_1/MatMul/ReadVariableOpReadVariableOp1neural_net_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
neural_net/dense_1/MatMulMatMul#neural_net/dense/Relu:activations:00neural_net/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)neural_net/dense_1/BiasAdd/ReadVariableOpReadVariableOp2neural_net_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
neural_net/dense_1/BiasAddBiasAdd#neural_net/dense_1/MatMul:product:01neural_net/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
neural_net/dense_1/ReluRelu#neural_net/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(neural_net/dense_2/MatMul/ReadVariableOpReadVariableOp1neural_net_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
neural_net/dense_2/MatMulMatMul%neural_net/dense_1/Relu:activations:00neural_net/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)neural_net/dense_2/BiasAdd/ReadVariableOpReadVariableOp2neural_net_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
neural_net/dense_2/BiasAddBiasAdd#neural_net/dense_2/MatMul:product:01neural_net/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
neural_net/dense_2/SigmoidSigmoid#neural_net/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????m
IdentityIdentityneural_net/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^neural_net/dense/BiasAdd/ReadVariableOp'^neural_net/dense/MatMul/ReadVariableOp*^neural_net/dense_1/BiasAdd/ReadVariableOp)^neural_net/dense_1/MatMul/ReadVariableOp*^neural_net/dense_2/BiasAdd/ReadVariableOp)^neural_net/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2R
'neural_net/dense/BiasAdd/ReadVariableOp'neural_net/dense/BiasAdd/ReadVariableOp2P
&neural_net/dense/MatMul/ReadVariableOp&neural_net/dense/MatMul/ReadVariableOp2V
)neural_net/dense_1/BiasAdd/ReadVariableOp)neural_net/dense_1/BiasAdd/ReadVariableOp2T
(neural_net/dense_1/MatMul/ReadVariableOp(neural_net/dense_1/MatMul/ReadVariableOp2V
)neural_net/dense_2/BiasAdd/ReadVariableOp)neural_net/dense_2/BiasAdd/ReadVariableOp2T
(neural_net/dense_2/MatMul/ReadVariableOp(neural_net/dense_2/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
G__inference_neural_net_layer_call_and_return_conditional_losses_4367255
input_1
dense_4367239:
dense_4367241:!
dense_1_4367244:
dense_1_4367246:!
dense_2_4367249:
dense_2_4367251:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_4367239dense_4367241*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4367133?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4367244dense_1_4367246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4367150?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_4367249dense_2_4367251*
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
GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4367167w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
B__inference_dense_layer_call_and_return_conditional_losses_4367133

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_neural_net_layer_call_fn_4367189
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_neural_net_layer_call_and_return_conditional_losses_4367174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?h
?
#__inference__traced_restore_4367555
file_prefix:
(assignvariableop_neural_net_dense_kernel:6
(assignvariableop_1_neural_net_dense_bias:>
,assignvariableop_2_neural_net_dense_1_kernel:8
*assignvariableop_3_neural_net_dense_1_bias:>
,assignvariableop_4_neural_net_dense_2_kernel:8
*assignvariableop_5_neural_net_dense_2_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: C
1assignvariableop_8_adam_m_neural_net_dense_kernel:C
1assignvariableop_9_adam_v_neural_net_dense_kernel:>
0assignvariableop_10_adam_m_neural_net_dense_bias:>
0assignvariableop_11_adam_v_neural_net_dense_bias:F
4assignvariableop_12_adam_m_neural_net_dense_1_kernel:F
4assignvariableop_13_adam_v_neural_net_dense_1_kernel:@
2assignvariableop_14_adam_m_neural_net_dense_1_bias:@
2assignvariableop_15_adam_v_neural_net_dense_1_bias:F
4assignvariableop_16_adam_m_neural_net_dense_2_kernel:F
4assignvariableop_17_adam_v_neural_net_dense_2_kernel:@
2assignvariableop_18_adam_m_neural_net_dense_2_bias:@
2assignvariableop_19_adam_v_neural_net_dense_2_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_neural_net_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_neural_net_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_neural_net_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_neural_net_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_neural_net_dense_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp*assignvariableop_5_neural_net_dense_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp1assignvariableop_8_adam_m_neural_net_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp1assignvariableop_9_adam_v_neural_net_dense_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_adam_m_neural_net_dense_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_adam_v_neural_net_dense_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp4assignvariableop_12_adam_m_neural_net_dense_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp4assignvariableop_13_adam_v_neural_net_dense_1_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_m_neural_net_dense_1_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_v_neural_net_dense_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_m_neural_net_dense_2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_v_neural_net_dense_2_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_m_neural_net_dense_2_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_v_neural_net_dense_2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_4367150

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_4367378

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_1_layer_call_fn_4367347

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4367150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_layer_call_fn_4367327

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4367133o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_neural_net_layer_call_fn_4367293

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_neural_net_layer_call_and_return_conditional_losses_4367174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
B__inference_dense_layer_call_and_return_conditional_losses_4367338

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_4367167

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?`
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
layer_1
	layer_2

output_layer
	optimizer

signatures"
_tf_keras_model
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
trace_0
trace_12?
,__inference_neural_net_layer_call_fn_4367189
,__inference_neural_net_layer_call_fn_4367293?
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
 ztrace_0ztrace_1
?
trace_0
trace_12?
G__inference_neural_net_layer_call_and_return_conditional_losses_4367318
G__inference_neural_net_layer_call_and_return_conditional_losses_4367255?
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
 ztrace_0ztrace_1
?B?
"__inference__wrapped_model_4367115input_1"?
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
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
.
_variables
/_iterations
0_learning_rate
1_index_dict
2
_momentums
3_velocities
4_update_step_xla"
experimentalOptimizer
,
5serving_default"
signature_map
):'2neural_net/dense/kernel
#:!2neural_net/dense/bias
+:)2neural_net/dense_1/kernel
%:#2neural_net/dense_1/bias
+:)2neural_net/dense_2/kernel
%:#2neural_net/dense_2/bias
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
,__inference_neural_net_layer_call_fn_4367189input_1"?
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
,__inference_neural_net_layer_call_fn_4367293inputs"?
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
G__inference_neural_net_layer_call_and_return_conditional_losses_4367318inputs"?
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
G__inference_neural_net_layer_call_and_return_conditional_losses_4367255input_1"?
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?
=trace_02?
'__inference_dense_layer_call_fn_4367327?
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
 z=trace_0
?
>trace_02?
B__inference_dense_layer_call_and_return_conditional_losses_4367338?
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
 z>trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?
Dtrace_02?
)__inference_dense_1_layer_call_fn_4367347?
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
 zDtrace_0
?
Etrace_02?
D__inference_dense_1_layer_call_and_return_conditional_losses_4367358?
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
 zEtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
?
Ktrace_02?
)__inference_dense_2_layer_call_fn_4367367?
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
 zKtrace_0
?
Ltrace_02?
D__inference_dense_2_layer_call_and_return_conditional_losses_4367378?
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
 zLtrace_0
~
/0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10
W11
X12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
M0
O1
Q2
S3
U4
W5"
trackable_list_wrapper
J
N0
P1
R2
T3
V4
X5"
trackable_list_wrapper
?2??
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
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
 0
?B?
%__inference_signature_wrapper_4367276input_1"?
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
N
Y	variables
Z	keras_api
	[total
	\count"
_tf_keras_metric
^
]	variables
^	keras_api
	_total
	`count
a
_fn_kwargs"
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
?B?
'__inference_dense_layer_call_fn_4367327inputs"?
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
B__inference_dense_layer_call_and_return_conditional_losses_4367338inputs"?
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
)__inference_dense_1_layer_call_fn_4367347inputs"?
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
D__inference_dense_1_layer_call_and_return_conditional_losses_4367358inputs"?
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
)__inference_dense_2_layer_call_fn_4367367inputs"?
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
D__inference_dense_2_layer_call_and_return_conditional_losses_4367378inputs"?
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
.:,2Adam/m/neural_net/dense/kernel
.:,2Adam/v/neural_net/dense/kernel
(:&2Adam/m/neural_net/dense/bias
(:&2Adam/v/neural_net/dense/bias
0:.2 Adam/m/neural_net/dense_1/kernel
0:.2 Adam/v/neural_net/dense_1/kernel
*:(2Adam/m/neural_net/dense_1/bias
*:(2Adam/v/neural_net/dense_1/bias
0:.2 Adam/m/neural_net/dense_2/kernel
0:.2 Adam/v/neural_net/dense_2/kernel
*:(2Adam/m/neural_net/dense_2/bias
*:(2Adam/v/neural_net/dense_2/bias
.
[0
\1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
.
_0
`1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper?
"__inference__wrapped_model_4367115o0?-
&?#
!?
input_1?????????
? "3?0
.
output_1"?
output_1??????????
D__inference_dense_1_layer_call_and_return_conditional_losses_4367358c/?,
%?"
 ?
inputs?????????
? ",?)
"?
tensor_0?????????
? ?
)__inference_dense_1_layer_call_fn_4367347X/?,
%?"
 ?
inputs?????????
? "!?
unknown??????????
D__inference_dense_2_layer_call_and_return_conditional_losses_4367378c/?,
%?"
 ?
inputs?????????
? ",?)
"?
tensor_0?????????
? ?
)__inference_dense_2_layer_call_fn_4367367X/?,
%?"
 ?
inputs?????????
? "!?
unknown??????????
B__inference_dense_layer_call_and_return_conditional_losses_4367338c/?,
%?"
 ?
inputs?????????
? ",?)
"?
tensor_0?????????
? ?
'__inference_dense_layer_call_fn_4367327X/?,
%?"
 ?
inputs?????????
? "!?
unknown??????????
G__inference_neural_net_layer_call_and_return_conditional_losses_4367255h0?-
&?#
!?
input_1?????????
? ",?)
"?
tensor_0?????????
? ?
G__inference_neural_net_layer_call_and_return_conditional_losses_4367318g/?,
%?"
 ?
inputs?????????
? ",?)
"?
tensor_0?????????
? ?
,__inference_neural_net_layer_call_fn_4367189]0?-
&?#
!?
input_1?????????
? "!?
unknown??????????
,__inference_neural_net_layer_call_fn_4367293\/?,
%?"
 ?
inputs?????????
? "!?
unknown??????????
%__inference_signature_wrapper_4367276z;?8
? 
1?.
,
input_1!?
input_1?????????"3?0
.
output_1"?
output_1?????????