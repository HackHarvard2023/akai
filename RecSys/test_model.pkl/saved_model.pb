��

��
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
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
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
�
MutableDenseHashTableV2
	empty_key"	key_dtype
deleted_key"	key_dtype
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype"
value_shapeshape: " 
initial_num_bucketsint��"
max_load_factorfloat%��L?�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��	
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
�
@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_embVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*Q
shared_nameB@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb
�
Tscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Read/ReadVariableOpReadVariableOp@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb*
_output_shapes
:	�*
dtype0
�
@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_embVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*Q
shared_nameB@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb
�
Tscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Read/ReadVariableOpReadVariableOp@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb* 
_output_shapes
:
��*
dtype0
T
	empty_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������
V
deleted_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
MutableDenseHashTableMutableDenseHashTableV2	empty_keydeleted_key*
_output_shapes
: *
	key_dtype0*
shared_nametable_26466*
value_dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *,
f'R%
#__inference_signature_wrapper_27805
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *'
f"R 
__inference__initializer_28273

NoOpNoOp^PartitionedCall
�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableDenseHashTable*
Tkeys0*
Tvalues0*(
_class
loc:@MutableDenseHashTable*
_output_shapes

::
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
scoring_layer
	corruption_layer

encoding_layer
focusE_params
partitioner_metadata
mapping_dict

use_filter
	all_ranks

_get_ranks

signatures*

0
1*

0
1*

0
1* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
 trace_1
!trace_2
"trace_3* 
* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
ent_emb
rel_emb*
* 
* 
k
5_create_resource
6_initialize
7_destroy_resource'
tablemapping_dict/.ATTRIBUTES/table*
* 
* 
* 

8serving_default* 
�z
VARIABLE_VALUE@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb&variables/1/.ATTRIBUTES/VARIABLE_VALUE*

9trace_0* 

:trace_0* 
* 

0
	1

2*

;0*
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
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

Atrace_0* 

Btrace_0* 
* 
* 
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

Htrace_0* 

Itrace_0* 

0
1*

0
1*

0
1* 
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 

Qtrace_0* 

Rtrace_0* 

Strace_0* 
* 
* 
* 
8
T	variables
U	keras_api
	Vtotal
	Wcount*
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

0
1* 
* 
* 
* 
* 
* 
* 

V0
W1*

T	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_embtotalcountDMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2FMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:1Const*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *'
f"R 
__inference__traced_save_28360
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameMutableDenseHashTable@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_embtotalcount*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � **
f%R#
!__inference__traced_restore_28385��	
�
�
#__inference_signature_wrapper_27805
input_1
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *)
f$R"
 __inference__wrapped_model_27440k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27728
input_1
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *c
f^R\
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27721k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�W
�
 __inference__wrapped_model_27440
input_1c
Oscoring_based_embedding_model_3_embedding_lookup_layer_3_embedding_lookup_27397:
��d
Qscoring_based_embedding_model_3_embedding_lookup_layer_3_embedding_lookup_1_27406:	�
identity��Iscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup�Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1�Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2�
Lscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Nscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Nscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Fscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_sliceStridedSliceinput_1Uscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice/stack:output:0Wscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice/stack_1:output:0Wscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Iscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookupResourceGatherOscoring_based_embedding_model_3_embedding_lookup_layer_3_embedding_lookup_27397Oscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice:output:0*
Tindices0*b
_classX
VTloc:@scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/27397*(
_output_shapes
:����������*
dtype0�
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/IdentityIdentityRscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup:output:0*
T0*b
_classX
VTloc:@scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/27397*(
_output_shapes
:�����������
Tscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/Identity_1Identity[scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
Nscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Hscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1StridedSliceinput_1Wscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1/stack:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1/stack_1:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1ResourceGatherQscoring_based_embedding_model_3_embedding_lookup_layer_3_embedding_lookup_1_27406Qscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_1:output:0*
Tindices0*d
_classZ
XVloc:@scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1/27406*(
_output_shapes
:����������*
dtype0�
Tscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1/IdentityIdentityTscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1:output:0*
T0*d
_classZ
XVloc:@scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1/27406*(
_output_shapes
:�����������
Vscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1/Identity_1Identity]scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:�����������
Nscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Hscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2StridedSliceinput_1Wscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2/stack:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2/stack_1:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2ResourceGatherOscoring_based_embedding_model_3_embedding_lookup_layer_3_embedding_lookup_27397Qscoring_based_embedding_model_3/embedding_lookup_layer_3/strided_slice_2:output:0*
Tindices0*b
_classX
VTloc:@scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/27397*(
_output_shapes
:����������*
dtype0�
Tscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2/IdentityIdentityTscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2:output:0*
T0*b
_classX
VTloc:@scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/27397*(
_output_shapes
:�����������
Vscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2/Identity_1Identity]scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:����������y
7scoring_based_embedding_model_3/ComplEx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-scoring_based_embedding_model_3/ComplEx/splitSplit@scoring_based_embedding_model_3/ComplEx/split/split_dim:output:0]scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split{
9scoring_based_embedding_model_3/ComplEx/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/scoring_based_embedding_model_3/ComplEx/split_1SplitBscoring_based_embedding_model_3/ComplEx/split_1/split_dim:output:0_scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split{
9scoring_based_embedding_model_3/ComplEx/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/scoring_based_embedding_model_3/ComplEx/split_2SplitBscoring_based_embedding_model_3/ComplEx/split_2/split_dim:output:0_scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split�
+scoring_based_embedding_model_3/ComplEx/mulMul8scoring_based_embedding_model_3/ComplEx/split_1:output:08scoring_based_embedding_model_3/ComplEx/split_2:output:0*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model_3/ComplEx/mul_1Mul8scoring_based_embedding_model_3/ComplEx/split_1:output:18scoring_based_embedding_model_3/ComplEx/split_2:output:1*
T0*(
_output_shapes
:�����������
+scoring_based_embedding_model_3/ComplEx/addAddV2/scoring_based_embedding_model_3/ComplEx/mul:z:01scoring_based_embedding_model_3/ComplEx/mul_1:z:0*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model_3/ComplEx/mul_2Mul6scoring_based_embedding_model_3/ComplEx/split:output:0/scoring_based_embedding_model_3/ComplEx/add:z:0*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model_3/ComplEx/mul_3Mul8scoring_based_embedding_model_3/ComplEx/split_1:output:08scoring_based_embedding_model_3/ComplEx/split_2:output:1*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model_3/ComplEx/mul_4Mul8scoring_based_embedding_model_3/ComplEx/split_1:output:18scoring_based_embedding_model_3/ComplEx/split_2:output:0*
T0*(
_output_shapes
:�����������
+scoring_based_embedding_model_3/ComplEx/subSub1scoring_based_embedding_model_3/ComplEx/mul_3:z:01scoring_based_embedding_model_3/ComplEx/mul_4:z:0*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model_3/ComplEx/mul_5Mul6scoring_based_embedding_model_3/ComplEx/split:output:1/scoring_based_embedding_model_3/ComplEx/sub:z:0*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model_3/ComplEx/add_1AddV21scoring_based_embedding_model_3/ComplEx/mul_2:z:01scoring_based_embedding_model_3/ComplEx/mul_5:z:0*
T0*(
_output_shapes
:����������
=scoring_based_embedding_model_3/ComplEx/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
+scoring_based_embedding_model_3/ComplEx/SumSum1scoring_based_embedding_model_3/ComplEx/add_1:z:0Fscoring_based_embedding_model_3/ComplEx/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������
IdentityIdentity4scoring_based_embedding_model_3/ComplEx/Sum:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpJ^scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookupL^scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1L^scoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2�
Iscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookupIscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup2�
Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_1Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_12�
Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2Kscoring_based_embedding_model_3/embedding_lookup_layer_3/embedding_lookup_2:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27816

inputs
unknown:
��
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *c
f^R\
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27682k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_save_fn_28297
checkpoint_keyU
Qmutabledensehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5��DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Qmutabledensehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityKMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityMMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOpE^MutableDenseHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�
y
C__inference_corruption_generation_layer_train_3_layer_call_fn_28139
pos
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallpos*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *g
fbR`
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_27589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:���������

_user_specified_namepos
��
�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27993

inputsC
/embedding_lookup_layer_3_embedding_lookup_27832:
��D
1embedding_lookup_layer_3_embedding_lookup_1_27841:	�
identity

identity_1��)embedding_lookup_layer_3/embedding_lookup�+embedding_lookup_layer_3/embedding_lookup_1�+embedding_lookup_layer_3/embedding_lookup_2�+embedding_lookup_layer_3/embedding_lookup_3�+embedding_lookup_layer_3/embedding_lookup_4�+embedding_lookup_layer_3/embedding_lookup_5�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp}
,embedding_lookup_layer_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.embedding_lookup_layer_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer_3/strided_sliceStridedSliceinputs5embedding_lookup_layer_3/strided_slice/stack:output:07embedding_lookup_layer_3/strided_slice/stack_1:output:07embedding_lookup_layer_3/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer_3/embedding_lookupResourceGather/embedding_lookup_layer_3_embedding_lookup_27832/embedding_lookup_layer_3/strided_slice:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer_3/embedding_lookup/IdentityIdentity2embedding_lookup_layer_3/embedding_lookup:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:�����������
4embedding_lookup_layer_3/embedding_lookup/Identity_1Identity;embedding_lookup_layer_3/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������
.embedding_lookup_layer_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_1StridedSliceinputs7embedding_lookup_layer_3/strided_slice_1/stack:output:09embedding_lookup_layer_3/strided_slice_1/stack_1:output:09embedding_lookup_layer_3/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_1ResourceGather1embedding_lookup_layer_3_embedding_lookup_1_278411embedding_lookup_layer_3/strided_slice_1:output:0*
Tindices0*D
_class:
86loc:@embedding_lookup_layer_3/embedding_lookup_1/27841*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_1/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_1:output:0*
T0*D
_class:
86loc:@embedding_lookup_layer_3/embedding_lookup_1/27841*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_1/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������
.embedding_lookup_layer_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_2StridedSliceinputs7embedding_lookup_layer_3/strided_slice_2/stack:output:09embedding_lookup_layer_3/strided_slice_2/stack_1:output:09embedding_lookup_layer_3/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_2ResourceGather/embedding_lookup_layer_3_embedding_lookup_278321embedding_lookup_layer_3/strided_slice_2:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_2/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_2:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_2/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:����������Y
ComplEx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/splitSplit ComplEx/split/split_dim:output:0=embedding_lookup_layer_3/embedding_lookup/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split[
ComplEx/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_1Split"ComplEx/split_1/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_1/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split[
ComplEx/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_2Split"ComplEx/split_2/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_2/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_splity
ComplEx/mulMulComplEx/split_1:output:0ComplEx/split_2:output:0*
T0*(
_output_shapes
:����������{
ComplEx/mul_1MulComplEx/split_1:output:1ComplEx/split_2:output:1*
T0*(
_output_shapes
:����������k
ComplEx/addAddV2ComplEx/mul:z:0ComplEx/mul_1:z:0*
T0*(
_output_shapes
:����������p
ComplEx/mul_2MulComplEx/split:output:0ComplEx/add:z:0*
T0*(
_output_shapes
:����������{
ComplEx/mul_3MulComplEx/split_1:output:0ComplEx/split_2:output:1*
T0*(
_output_shapes
:����������{
ComplEx/mul_4MulComplEx/split_1:output:1ComplEx/split_2:output:0*
T0*(
_output_shapes
:����������k
ComplEx/subSubComplEx/mul_3:z:0ComplEx/mul_4:z:0*
T0*(
_output_shapes
:����������p
ComplEx/mul_5MulComplEx/split:output:1ComplEx/sub:z:0*
T0*(
_output_shapes
:����������o
ComplEx/add_1AddV2ComplEx/mul_2:z:0ComplEx/mul_5:z:0*
T0*(
_output_shapes
:����������_
ComplEx/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :{
ComplEx/SumSumComplEx/add_1:z:0&ComplEx/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:����������
1corruption_generation_layer_train_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
+corruption_generation_layer_train_3/ReshapeReshapeinputs:corruption_generation_layer_train_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������|
2corruption_generation_layer_train_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB:�
(corruption_generation_layer_train_3/TileTile4corruption_generation_layer_train_3/Reshape:output:0;corruption_generation_layer_train_3/Tile/multiples:output:0*
T0*#
_output_shapes
:���������m
)corruption_generation_layer_train_3/ShapeShapeinputs*
T0*
_output_shapes
::���
7corruption_generation_layer_train_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9corruption_generation_layer_train_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9corruption_generation_layer_train_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1corruption_generation_layer_train_3/strided_sliceStridedSlice2corruption_generation_layer_train_3/Shape:output:0@corruption_generation_layer_train_3/strided_slice/stack:output:0Bcorruption_generation_layer_train_3/strided_slice/stack_1:output:0Bcorruption_generation_layer_train_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)corruption_generation_layer_train_3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
'corruption_generation_layer_train_3/mulMul:corruption_generation_layer_train_3/strided_slice:output:02corruption_generation_layer_train_3/mul/y:output:0*
T0*
_output_shapes
: w
5corruption_generation_layer_train_3/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
3corruption_generation_layer_train_3/Reshape_1/shapePack+corruption_generation_layer_train_3/mul:z:0>corruption_generation_layer_train_3/Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:�
-corruption_generation_layer_train_3/Reshape_1Reshape1corruption_generation_layer_train_3/Tile:output:0<corruption_generation_layer_train_3/Reshape_1/shape:output:0*
T0*'
_output_shapes
:����������
+corruption_generation_layer_train_3/Shape_1Shape6corruption_generation_layer_train_3/Reshape_1:output:0*
T0*
_output_shapes
::���
9corruption_generation_layer_train_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;corruption_generation_layer_train_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;corruption_generation_layer_train_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3corruption_generation_layer_train_3/strided_slice_1StridedSlice4corruption_generation_layer_train_3/Shape_1:output:0Bcorruption_generation_layer_train_3/strided_slice_1/stack:output:0Dcorruption_generation_layer_train_3/strided_slice_1/stack_1:output:0Dcorruption_generation_layer_train_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8corruption_generation_layer_train_3/random_uniform/shapePack<corruption_generation_layer_train_3/strided_slice_1:output:0*
N*
T0*
_output_shapes
:x
6corruption_generation_layer_train_3/random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : x
6corruption_generation_layer_train_3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
2corruption_generation_layer_train_3/random_uniformRandomUniformIntAcorruption_generation_layer_train_3/random_uniform/shape:output:0?corruption_generation_layer_train_3/random_uniform/min:output:0?corruption_generation_layer_train_3/random_uniform/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2�����
(corruption_generation_layer_train_3/CastCast;corruption_generation_layer_train_3/random_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:����������
.corruption_generation_layer_train_3/LogicalNot
LogicalNot,corruption_generation_layer_train_3/Cast:y:0*#
_output_shapes
:����������
*corruption_generation_layer_train_3/Cast_1Cast,corruption_generation_layer_train_3/Cast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:����������
*corruption_generation_layer_train_3/Cast_2Cast2corruption_generation_layer_train_3/LogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:����������
+corruption_generation_layer_train_3/Shape_2Shape6corruption_generation_layer_train_3/Reshape_1:output:0*
T0*
_output_shapes
::���
9corruption_generation_layer_train_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;corruption_generation_layer_train_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;corruption_generation_layer_train_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3corruption_generation_layer_train_3/strided_slice_2StridedSlice4corruption_generation_layer_train_3/Shape_2:output:0Bcorruption_generation_layer_train_3/strided_slice_2/stack:output:0Dcorruption_generation_layer_train_3/strided_slice_2/stack_1:output:0Dcorruption_generation_layer_train_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:corruption_generation_layer_train_3/random_uniform_1/shapePack<corruption_generation_layer_train_3/strided_slice_2:output:0*
N*
T0*
_output_shapes
:z
8corruption_generation_layer_train_3/random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : {
8corruption_generation_layer_train_3/random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
value
B :��
4corruption_generation_layer_train_3/random_uniform_1RandomUniformIntCcorruption_generation_layer_train_3/random_uniform_1/shape:output:0Acorruption_generation_layer_train_3/random_uniform_1/min:output:0Acorruption_generation_layer_train_3/random_uniform_1/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2�����
9corruption_generation_layer_train_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
;corruption_generation_layer_train_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
;corruption_generation_layer_train_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3corruption_generation_layer_train_3/strided_slice_3StridedSlice6corruption_generation_layer_train_3/Reshape_1:output:0Bcorruption_generation_layer_train_3/strided_slice_3/stack:output:0Dcorruption_generation_layer_train_3/strided_slice_3/stack_1:output:0Dcorruption_generation_layer_train_3/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)corruption_generation_layer_train_3/Mul_1Mul.corruption_generation_layer_train_3/Cast_1:y:0<corruption_generation_layer_train_3/strided_slice_3:output:0*
T0*#
_output_shapes
:����������
)corruption_generation_layer_train_3/Mul_2Mul.corruption_generation_layer_train_3/Cast_2:y:0=corruption_generation_layer_train_3/random_uniform_1:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train_3/AddAddV2-corruption_generation_layer_train_3/Mul_1:z:0-corruption_generation_layer_train_3/Mul_2:z:0*
T0*#
_output_shapes
:����������
9corruption_generation_layer_train_3/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
;corruption_generation_layer_train_3/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
;corruption_generation_layer_train_3/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3corruption_generation_layer_train_3/strided_slice_4StridedSlice6corruption_generation_layer_train_3/Reshape_1:output:0Bcorruption_generation_layer_train_3/strided_slice_4/stack:output:0Dcorruption_generation_layer_train_3/strided_slice_4/stack_1:output:0Dcorruption_generation_layer_train_3/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
9corruption_generation_layer_train_3/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
;corruption_generation_layer_train_3/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
;corruption_generation_layer_train_3/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3corruption_generation_layer_train_3/strided_slice_5StridedSlice6corruption_generation_layer_train_3/Reshape_1:output:0Bcorruption_generation_layer_train_3/strided_slice_5/stack:output:0Dcorruption_generation_layer_train_3/strided_slice_5/stack_1:output:0Dcorruption_generation_layer_train_3/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)corruption_generation_layer_train_3/Mul_3Mul.corruption_generation_layer_train_3/Cast_2:y:0<corruption_generation_layer_train_3/strided_slice_5:output:0*
T0*#
_output_shapes
:����������
)corruption_generation_layer_train_3/Mul_4Mul.corruption_generation_layer_train_3/Cast_1:y:0=corruption_generation_layer_train_3/random_uniform_1:output:0*
T0*#
_output_shapes
:����������
)corruption_generation_layer_train_3/Add_1AddV2-corruption_generation_layer_train_3/Mul_3:z:0-corruption_generation_layer_train_3/Mul_4:z:0*
T0*#
_output_shapes
:����������
)corruption_generation_layer_train_3/stackPack+corruption_generation_layer_train_3/Add:z:0<corruption_generation_layer_train_3/strided_slice_4:output:0-corruption_generation_layer_train_3/Add_1:z:0*
N*
T0*'
_output_shapes
:����������
2corruption_generation_layer_train_3/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
-corruption_generation_layer_train_3/transpose	Transpose2corruption_generation_layer_train_3/stack:output:0;corruption_generation_layer_train_3/transpose/perm:output:0*
T0*'
_output_shapes
:���������
.embedding_lookup_layer_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0embedding_lookup_layer_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_3StridedSlice1corruption_generation_layer_train_3/transpose:y:07embedding_lookup_layer_3/strided_slice_3/stack:output:09embedding_lookup_layer_3/strided_slice_3/stack_1:output:09embedding_lookup_layer_3/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_3ResourceGather/embedding_lookup_layer_3_embedding_lookup_278321embedding_lookup_layer_3/strided_slice_3:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_3/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_3:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_3/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_3/Identity:output:0*
T0*(
_output_shapes
:����������
.embedding_lookup_layer_3/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_4StridedSlice1corruption_generation_layer_train_3/transpose:y:07embedding_lookup_layer_3/strided_slice_4/stack:output:09embedding_lookup_layer_3/strided_slice_4/stack_1:output:09embedding_lookup_layer_3/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_4ResourceGather1embedding_lookup_layer_3_embedding_lookup_1_278411embedding_lookup_layer_3/strided_slice_4:output:0*
Tindices0*D
_class:
86loc:@embedding_lookup_layer_3/embedding_lookup_1/27841*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_4/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_4:output:0*
T0*D
_class:
86loc:@embedding_lookup_layer_3/embedding_lookup_1/27841*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_4/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_4/Identity:output:0*
T0*(
_output_shapes
:����������
.embedding_lookup_layer_3/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_5StridedSlice1corruption_generation_layer_train_3/transpose:y:07embedding_lookup_layer_3/strided_slice_5/stack:output:09embedding_lookup_layer_3/strided_slice_5/stack_1:output:09embedding_lookup_layer_3/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_5ResourceGather/embedding_lookup_layer_3_embedding_lookup_278321embedding_lookup_layer_3/strided_slice_5:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_5/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_5:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/27832*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_5/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_5/Identity:output:0*
T0*(
_output_shapes
:����������[
ComplEx/split_3/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_3Split"ComplEx/split_3/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_3/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split[
ComplEx/split_4/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_4Split"ComplEx/split_4/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_4/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split[
ComplEx/split_5/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_5Split"ComplEx/split_5/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_5/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split{
ComplEx/mul_6MulComplEx/split_4:output:0ComplEx/split_5:output:0*
T0*(
_output_shapes
:����������{
ComplEx/mul_7MulComplEx/split_4:output:1ComplEx/split_5:output:1*
T0*(
_output_shapes
:����������o
ComplEx/add_2AddV2ComplEx/mul_6:z:0ComplEx/mul_7:z:0*
T0*(
_output_shapes
:����������t
ComplEx/mul_8MulComplEx/split_3:output:0ComplEx/add_2:z:0*
T0*(
_output_shapes
:����������{
ComplEx/mul_9MulComplEx/split_4:output:0ComplEx/split_5:output:1*
T0*(
_output_shapes
:����������|
ComplEx/mul_10MulComplEx/split_4:output:1ComplEx/split_5:output:0*
T0*(
_output_shapes
:����������n
ComplEx/sub_1SubComplEx/mul_9:z:0ComplEx/mul_10:z:0*
T0*(
_output_shapes
:����������u
ComplEx/mul_11MulComplEx/split_3:output:1ComplEx/sub_1:z:0*
T0*(
_output_shapes
:����������p
ComplEx/add_3AddV2ComplEx/mul_8:z:0ComplEx/mul_11:z:0*
T0*(
_output_shapes
:����������a
ComplEx/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
ComplEx/Sum_1SumComplEx/add_3:z:0(ComplEx/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:����������
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_lookup_layer_3_embedding_lookup_27832* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOp1embedding_lookup_layer_3_embedding_lookup_1_27841*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityComplEx/Sum:output:0^NoOp*
T0*#
_output_shapes
:���������c

Identity_1IdentityComplEx/Sum_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp*^embedding_lookup_layer_3/embedding_lookup,^embedding_lookup_layer_3/embedding_lookup_1,^embedding_lookup_layer_3/embedding_lookup_2,^embedding_lookup_layer_3/embedding_lookup_3,^embedding_lookup_layer_3/embedding_lookup_4,^embedding_lookup_layer_3/embedding_lookup_5`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2V
)embedding_lookup_layer_3/embedding_lookup)embedding_lookup_layer_3/embedding_lookup2Z
+embedding_lookup_layer_3/embedding_lookup_1+embedding_lookup_layer_3/embedding_lookup_12Z
+embedding_lookup_layer_3/embedding_lookup_2+embedding_lookup_layer_3/embedding_lookup_22Z
+embedding_lookup_layer_3/embedding_lookup_3+embedding_lookup_layer_3/embedding_lookup_32Z
+embedding_lookup_layer_3/embedding_lookup_4+embedding_lookup_layer_3/embedding_lookup_42Z
+embedding_lookup_layer_3/embedding_lookup_5+embedding_lookup_layer_3/embedding_lookup_52�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
8__inference_embedding_lookup_layer_3_layer_call_fn_28213

sample
unknown:
��
	unknown_0:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsampleunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_namesample
�
�
__inference_loss_fn_0_28088|
hscoring_based_embedding_model_3_embedding_lookup_layer_3_ent_emb_regularizer_abs_readvariableop_resource:
��
identity��_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOphscoring_based_embedding_model_3_embedding_lookup_layer_3_ent_emb_regularizer_abs_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentityTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp
�_
�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_28059

inputsC
/embedding_lookup_layer_3_embedding_lookup_28000:
��D
1embedding_lookup_layer_3_embedding_lookup_1_28009:	�
identity��)embedding_lookup_layer_3/embedding_lookup�+embedding_lookup_layer_3/embedding_lookup_1�+embedding_lookup_layer_3/embedding_lookup_2�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp}
,embedding_lookup_layer_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.embedding_lookup_layer_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer_3/strided_sliceStridedSliceinputs5embedding_lookup_layer_3/strided_slice/stack:output:07embedding_lookup_layer_3/strided_slice/stack_1:output:07embedding_lookup_layer_3/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer_3/embedding_lookupResourceGather/embedding_lookup_layer_3_embedding_lookup_28000/embedding_lookup_layer_3/strided_slice:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/28000*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer_3/embedding_lookup/IdentityIdentity2embedding_lookup_layer_3/embedding_lookup:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/28000*(
_output_shapes
:�����������
4embedding_lookup_layer_3/embedding_lookup/Identity_1Identity;embedding_lookup_layer_3/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������
.embedding_lookup_layer_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_1StridedSliceinputs7embedding_lookup_layer_3/strided_slice_1/stack:output:09embedding_lookup_layer_3/strided_slice_1/stack_1:output:09embedding_lookup_layer_3/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_1ResourceGather1embedding_lookup_layer_3_embedding_lookup_1_280091embedding_lookup_layer_3/strided_slice_1:output:0*
Tindices0*D
_class:
86loc:@embedding_lookup_layer_3/embedding_lookup_1/28009*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_1/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_1:output:0*
T0*D
_class:
86loc:@embedding_lookup_layer_3/embedding_lookup_1/28009*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_1/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������
.embedding_lookup_layer_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0embedding_lookup_layer_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(embedding_lookup_layer_3/strided_slice_2StridedSliceinputs7embedding_lookup_layer_3/strided_slice_2/stack:output:09embedding_lookup_layer_3/strided_slice_2/stack_1:output:09embedding_lookup_layer_3/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
+embedding_lookup_layer_3/embedding_lookup_2ResourceGather/embedding_lookup_layer_3_embedding_lookup_280001embedding_lookup_layer_3/strided_slice_2:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/28000*(
_output_shapes
:����������*
dtype0�
4embedding_lookup_layer_3/embedding_lookup_2/IdentityIdentity4embedding_lookup_layer_3/embedding_lookup_2:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer_3/embedding_lookup/28000*(
_output_shapes
:�����������
6embedding_lookup_layer_3/embedding_lookup_2/Identity_1Identity=embedding_lookup_layer_3/embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:����������Y
ComplEx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/splitSplit ComplEx/split/split_dim:output:0=embedding_lookup_layer_3/embedding_lookup/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split[
ComplEx/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_1Split"ComplEx/split_1/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_1/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_split[
ComplEx/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
ComplEx/split_2Split"ComplEx/split_2/split_dim:output:0?embedding_lookup_layer_3/embedding_lookup_2/Identity_1:output:0*
T0*<
_output_shapes*
(:����������:����������*
	num_splity
ComplEx/mulMulComplEx/split_1:output:0ComplEx/split_2:output:0*
T0*(
_output_shapes
:����������{
ComplEx/mul_1MulComplEx/split_1:output:1ComplEx/split_2:output:1*
T0*(
_output_shapes
:����������k
ComplEx/addAddV2ComplEx/mul:z:0ComplEx/mul_1:z:0*
T0*(
_output_shapes
:����������p
ComplEx/mul_2MulComplEx/split:output:0ComplEx/add:z:0*
T0*(
_output_shapes
:����������{
ComplEx/mul_3MulComplEx/split_1:output:0ComplEx/split_2:output:1*
T0*(
_output_shapes
:����������{
ComplEx/mul_4MulComplEx/split_1:output:1ComplEx/split_2:output:0*
T0*(
_output_shapes
:����������k
ComplEx/subSubComplEx/mul_3:z:0ComplEx/mul_4:z:0*
T0*(
_output_shapes
:����������p
ComplEx/mul_5MulComplEx/split:output:1ComplEx/sub:z:0*
T0*(
_output_shapes
:����������o
ComplEx/add_1AddV2ComplEx/mul_2:z:0ComplEx/mul_5:z:0*
T0*(
_output_shapes
:����������_
ComplEx/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :{
ComplEx/SumSumComplEx/add_1:z:0&ComplEx/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:����������
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_lookup_layer_3_embedding_lookup_28000* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOp1embedding_lookup_layer_3_embedding_lookup_1_28009*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityComplEx/Sum:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp*^embedding_lookup_layer_3/embedding_lookup,^embedding_lookup_layer_3/embedding_lookup_1,^embedding_lookup_layer_3/embedding_lookup_2`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2V
)embedding_lookup_layer_3/embedding_lookup)embedding_lookup_layer_3/embedding_lookup2Z
+embedding_lookup_layer_3/embedding_lookup_1+embedding_lookup_layer_3/embedding_lookup_12Z
+embedding_lookup_layer_3/embedding_lookup_2+embedding_lookup_layer_3/embedding_lookup_22�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference__traced_restore_28385
file_prefixW
Mmutabledensehashtable_table_restore_lookuptableimportv2_mutabledensehashtable: e
Qassignvariableop_scoring_based_embedding_model_3_embedding_lookup_layer_3_ent_emb:
��f
Sassignvariableop_1_scoring_based_embedding_model_3_embedding_lookup_layer_3_rel_emb:	�"
assignvariableop_2_total: "
assignvariableop_3_count: 

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�7MutableDenseHashTable_table_restore/LookupTableImportV2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B#mapping_dict/.ATTRIBUTES/table-keysB%mapping_dict/.ATTRIBUTES/table-valuesB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2�
7MutableDenseHashTable_table_restore/LookupTableImportV2LookupTableImportV2Mmutabledensehashtable_table_restore_lookuptableimportv2_mutabledensehashtableRestoreV2:tensors:0RestoreV2:tensors:1*	
Tin0*

Tout0*(
_class
loc:@MutableDenseHashTable*&
 _has_manual_control_dependencies(*
_output_shapes
 [
IdentityIdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpQassignvariableop_scoring_based_embedding_model_3_embedding_lookup_layer_3_ent_embIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpSassignvariableop_1_scoring_based_embedding_model_3_embedding_lookup_layer_3_rel_embIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_totalIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_countIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_38^MutableDenseHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_38^MutableDenseHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes
: : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32r
7MutableDenseHashTable_table_restore/LookupTableImportV27MutableDenseHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_class
loc:@MutableDenseHashTable
�0
�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27643
input_12
embedding_lookup_layer_3_27618:
��1
embedding_lookup_layer_3_27620:	�
identity��0embedding_lookup_layer_3/StatefulPartitionedCall�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp�
0embedding_lookup_layer_3/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_lookup_layer_3_27618embedding_lookup_layer_3_27620*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492�
ComplEx/PartitionedCallPartitionedCall9embedding_lookup_layer_3/StatefulPartitionedCall:output:09embedding_lookup_layer_3/StatefulPartitionedCall:output:19embedding_lookup_layer_3/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27618* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27620*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity ComplEx/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp1^embedding_lookup_layer_3/StatefulPartitionedCall`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2d
0embedding_lookup_layer_3/StatefulPartitionedCall0embedding_lookup_layer_3/StatefulPartitionedCall2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
}
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526
triples
	triples_1
	triples_2
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0triples*
T0*<
_output_shapes*
(:����������:����������*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0	triples_1*
T0*<
_output_shapes*
(:����������:����������*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_2Splitsplit_2/split_dim:output:0	triples_2*
T0*<
_output_shapes*
(:����������:����������*
	num_splita
mulMulsplit_1:output:0split_2:output:0*
T0*(
_output_shapes
:����������c
mul_1Mulsplit_1:output:1split_2:output:1*
T0*(
_output_shapes
:����������S
addAddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������X
mul_2Mulsplit:output:0add:z:0*
T0*(
_output_shapes
:����������c
mul_3Mulsplit_1:output:0split_2:output:1*
T0*(
_output_shapes
:����������c
mul_4Mulsplit_1:output:1split_2:output:0*
T0*(
_output_shapes
:����������S
subSub	mul_3:z:0	mul_4:z:0*
T0*(
_output_shapes
:����������X
mul_5Mulsplit:output:1sub:z:0*
T0*(
_output_shapes
:����������W
add_1AddV2	mul_2:z:0	mul_5:z:0*
T0*(
_output_shapes
:����������W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :c
SumSum	add_1:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������P
IdentityIdentitySum:output:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������:Q M
(
_output_shapes
:����������
!
_user_specified_name	triples:QM
(
_output_shapes
:����������
!
_user_specified_name	triples:QM
(
_output_shapes
:����������
!
_user_specified_name	triples
�6
z
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_27589
pos
identity�`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������]
ReshapeReshapeposReshape/shape:output:0*
T0*#
_output_shapes
:���������X
Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB:e
TileTileReshape:output:0Tile/multiples:output:0*
T0*#
_output_shapes
:���������F
ShapeShapepos*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulstrided_slice:output:0mul/y:output:0*
T0*
_output_shapes
: S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
Reshape_1/shapePackmul:z:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_1ReshapeTile:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������W
Shape_1ShapeReshape_1:output:0*
T0*
_output_shapes
::��_
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
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_uniform/shapePackstrided_slice_1:output:0*
N*
T0*
_output_shapes
:T
random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : T
random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
random_uniformRandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����b
CastCastrandom_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:���������G

LogicalNot
LogicalNotCast:y:0*#
_output_shapes
:���������U
Cast_1CastCast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������[
Cast_2CastLogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������W
Shape_2ShapeReshape_1:output:0*
T0*
_output_shapes
::��_
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
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
random_uniform_1/shapePackstrided_slice_2:output:0*
N*
T0*
_output_shapes
:V
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : W
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
value
B :��
random_uniform_1RandomUniformIntrandom_uniform_1/shape:output:0random_uniform_1/min:output:0random_uniform_1/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReshape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_1Mul
Cast_1:y:0strided_slice_3:output:0*
T0*#
_output_shapes
:���������a
Mul_2Mul
Cast_2:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������P
AddAddV2	Mul_1:z:0	Mul_2:z:0*
T0*#
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceReshape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceReshape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_3Mul
Cast_2:y:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������a
Mul_4Mul
Cast_1:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������R
Add_1AddV2	Mul_3:z:0	Mul_4:z:0*
T0*#
_output_shapes
:���������v
stackPackAdd:z:0strided_slice_4:output:0	Add_1:z:0*
N*
T0*'
_output_shapes
:���������_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       q
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*'
_output_shapes
:���������U
IdentityIdentitytranspose:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:L H
'
_output_shapes
:���������

_user_specified_namepos
�
�
__inference_loss_fn_1_28101{
hscoring_based_embedding_model_3_embedding_lookup_layer_3_rel_emb_regularizer_abs_readvariableop_resource:	�
identity��_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOphscoring_based_embedding_model_3_embedding_lookup_layer_3_rel_emb_regularizer_abs_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentityTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp
�D
�
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492

sample*
embedding_lookup_27451:
��+
embedding_lookup_1_27460:	�
identity

identity_1

identity_2��embedding_lookup�embedding_lookup_1�embedding_lookup_2�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicesamplestrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookupResourceGatherembedding_lookup_27451strided_slice:output:0*
Tindices0*)
_class
loc:@embedding_lookup/27451*(
_output_shapes
:����������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27451*(
_output_shapes
:����������~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicesamplestrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_1ResourceGatherembedding_lookup_1_27460strided_slice_1:output:0*
Tindices0*+
_class!
loc:@embedding_lookup_1/27460*(
_output_shapes
:����������*
dtype0�
embedding_lookup_1/IdentityIdentityembedding_lookup_1:output:0*
T0*+
_class!
loc:@embedding_lookup_1/27460*(
_output_shapes
:�����������
embedding_lookup_1/Identity_1Identity$embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicesamplestrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_2ResourceGatherembedding_lookup_27451strided_slice_2:output:0*
Tindices0*)
_class
loc:@embedding_lookup/27451*(
_output_shapes
:����������*
dtype0�
embedding_lookup_2/IdentityIdentityembedding_lookup_2:output:0*
T0*)
_class
loc:@embedding_lookup/27451*(
_output_shapes
:�����������
embedding_lookup_2/Identity_1Identity$embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_27451* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_1_27460*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_1Identity&embedding_lookup_1/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_2Identity&embedding_lookup_2/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^embedding_lookup^embedding_lookup_1^embedding_lookup_2`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2$
embedding_lookupembedding_lookup2(
embedding_lookup_1embedding_lookup_12(
embedding_lookup_2embedding_lookup_22�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_namesample
�6
z
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_28200
pos
identity�`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������]
ReshapeReshapeposReshape/shape:output:0*
T0*#
_output_shapes
:���������X
Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB:e
TileTileReshape:output:0Tile/multiples:output:0*
T0*#
_output_shapes
:���������F
ShapeShapepos*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulstrided_slice:output:0mul/y:output:0*
T0*
_output_shapes
: S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
Reshape_1/shapePackmul:z:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_1ReshapeTile:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������W
Shape_1ShapeReshape_1:output:0*
T0*
_output_shapes
::��_
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
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_uniform/shapePackstrided_slice_1:output:0*
N*
T0*
_output_shapes
:T
random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : T
random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
random_uniformRandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����b
CastCastrandom_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:���������G

LogicalNot
LogicalNotCast:y:0*#
_output_shapes
:���������U
Cast_1CastCast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������[
Cast_2CastLogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������W
Shape_2ShapeReshape_1:output:0*
T0*
_output_shapes
::��_
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
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
random_uniform_1/shapePackstrided_slice_2:output:0*
N*
T0*
_output_shapes
:V
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : W
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
value
B :��
random_uniform_1RandomUniformIntrandom_uniform_1/shape:output:0random_uniform_1/min:output:0random_uniform_1/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReshape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_1Mul
Cast_1:y:0strided_slice_3:output:0*
T0*#
_output_shapes
:���������a
Mul_2Mul
Cast_2:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������P
AddAddV2	Mul_1:z:0	Mul_2:z:0*
T0*#
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceReshape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceReshape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_3Mul
Cast_2:y:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������a
Mul_4Mul
Cast_1:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������R
Add_1AddV2	Mul_3:z:0	Mul_4:z:0*
T0*#
_output_shapes
:���������v
stackPackAdd:z:0strided_slice_4:output:0	Add_1:z:0*
N*
T0*'
_output_shapes
:���������_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       q
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*'
_output_shapes
:���������U
IdentityIdentitytranspose:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:L H
'
_output_shapes
:���������

_user_specified_namepos
�

B__inference_ComplEx_layer_call_and_return_conditional_losses_28134
	triples_0
	triples_1
	triples_2
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0	triples_0*
T0*<
_output_shapes*
(:����������:����������*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0	triples_1*
T0*<
_output_shapes*
(:����������:����������*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_2Splitsplit_2/split_dim:output:0	triples_2*
T0*<
_output_shapes*
(:����������:����������*
	num_splita
mulMulsplit_1:output:0split_2:output:0*
T0*(
_output_shapes
:����������c
mul_1Mulsplit_1:output:1split_2:output:1*
T0*(
_output_shapes
:����������S
addAddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������X
mul_2Mulsplit:output:0add:z:0*
T0*(
_output_shapes
:����������c
mul_3Mulsplit_1:output:0split_2:output:1*
T0*(
_output_shapes
:����������c
mul_4Mulsplit_1:output:1split_2:output:0*
T0*(
_output_shapes
:����������S
subSub	mul_3:z:0	mul_4:z:0*
T0*(
_output_shapes
:����������X
mul_5Mulsplit:output:1sub:z:0*
T0*(
_output_shapes
:����������W
add_1AddV2	mul_2:z:0	mul_5:z:0*
T0*(
_output_shapes
:����������W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :c
SumSum	add_1:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������P
IdentityIdentitySum:output:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������:S O
(
_output_shapes
:����������
#
_user_specified_name	triples_0:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_1:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_2
�0
�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27721

inputs2
embedding_lookup_layer_3_27696:
��1
embedding_lookup_layer_3_27698:	�
identity��0embedding_lookup_layer_3/StatefulPartitionedCall�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp�
0embedding_lookup_layer_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_lookup_layer_3_27696embedding_lookup_layer_3_27698*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492�
ComplEx/PartitionedCallPartitionedCall9embedding_lookup_layer_3/StatefulPartitionedCall:output:09embedding_lookup_layer_3/StatefulPartitionedCall:output:19embedding_lookup_layer_3/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27696* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27698*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity ComplEx/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp1^embedding_lookup_layer_3/StatefulPartitionedCall`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2d
0embedding_lookup_layer_3/StatefulPartitionedCall0embedding_lookup_layer_3/StatefulPartitionedCall2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27691
input_1
unknown:
��
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *c
f^R\
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27682k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
.
__inference__initializer_28273
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
�	
�
__inference_restore_fn_28305
restored_tensors_0
restored_tensors_1H
Dmutabledensehashtable_table_restore_lookuptableimportv2_table_handle
identity��7MutableDenseHashTable_table_restore/LookupTableImportV2�
7MutableDenseHashTable_table_restore/LookupTableImportV2LookupTableImportV2Dmutabledensehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0*
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
: �
NoOpNoOp8^MutableDenseHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2r
7MutableDenseHashTable_table_restore/LookupTableImportV27MutableDenseHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
�@
�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27615
input_12
embedding_lookup_layer_3_27493:
��1
embedding_lookup_layer_3_27495:	�
identity

identity_1��;corruption_generation_layer_train_3/StatefulPartitionedCall�0embedding_lookup_layer_3/StatefulPartitionedCall�2embedding_lookup_layer_3/StatefulPartitionedCall_1�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp�
0embedding_lookup_layer_3/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_lookup_layer_3_27493embedding_lookup_layer_3_27495*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492�
ComplEx/PartitionedCallPartitionedCall9embedding_lookup_layer_3/StatefulPartitionedCall:output:09embedding_lookup_layer_3/StatefulPartitionedCall:output:19embedding_lookup_layer_3/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526�
;corruption_generation_layer_train_3/StatefulPartitionedCallStatefulPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *g
fbR`
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_27589�
2embedding_lookup_layer_3/StatefulPartitionedCall_1StatefulPartitionedCallDcorruption_generation_layer_train_3/StatefulPartitionedCall:output:0embedding_lookup_layer_3_27493embedding_lookup_layer_3_27495*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492�
ComplEx/PartitionedCall_1PartitionedCall;embedding_lookup_layer_3/StatefulPartitionedCall_1:output:0;embedding_lookup_layer_3/StatefulPartitionedCall_1:output:1;embedding_lookup_layer_3/StatefulPartitionedCall_1:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27493* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27495*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity ComplEx/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������o

Identity_1Identity"ComplEx/PartitionedCall_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp<^corruption_generation_layer_train_3/StatefulPartitionedCall1^embedding_lookup_layer_3/StatefulPartitionedCall3^embedding_lookup_layer_3/StatefulPartitionedCall_1`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2z
;corruption_generation_layer_train_3/StatefulPartitionedCall;corruption_generation_layer_train_3/StatefulPartitionedCall2d
0embedding_lookup_layer_3/StatefulPartitionedCall0embedding_lookup_layer_3/StatefulPartitionedCall2h
2embedding_lookup_layer_3/StatefulPartitionedCall_12embedding_lookup_layer_3/StatefulPartitionedCall_12�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�1
�
__inference__traced_save_28360
file_prefixk
Wread_disablecopyonread_scoring_based_embedding_model_3_embedding_lookup_layer_3_ent_emb:
��l
Yread_1_disablecopyonread_scoring_based_embedding_model_3_embedding_lookup_layer_3_rel_emb:	�(
read_2_disablecopyonread_total: (
read_3_disablecopyonread_count: O
Ksavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2Q
Msavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2_1
savev2_const

identity_9��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOpw
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
: �
Read/DisableCopyOnReadDisableCopyOnReadWread_disablecopyonread_scoring_based_embedding_model_3_embedding_lookup_layer_3_ent_emb"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpWread_disablecopyonread_scoring_based_embedding_model_3_embedding_lookup_layer_3_ent_emb^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_1/DisableCopyOnReadDisableCopyOnReadYread_1_disablecopyonread_scoring_based_embedding_model_3_embedding_lookup_layer_3_rel_emb"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpYread_1_disablecopyonread_scoring_based_embedding_model_3_embedding_lookup_layer_3_rel_emb^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	�r
Read_2/DisableCopyOnReadDisableCopyOnReadread_2_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpread_2_disablecopyonread_total^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_3/DisableCopyOnReadDisableCopyOnReadread_3_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpread_3_disablecopyonread_count^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B#mapping_dict/.ATTRIBUTES/table-keysB%mapping_dict/.ATTRIBUTES/table-valuesB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Ksavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2Msavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2_1Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
	2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h

Identity_8Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: S

Identity_9IdentityIdentity_8:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*'
_input_shapes
: : : : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
: 
�D
�
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_28261

sample*
embedding_lookup_28220:
��+
embedding_lookup_1_28229:	�
identity

identity_1

identity_2��embedding_lookup�embedding_lookup_1�embedding_lookup_2�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicesamplestrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookupResourceGatherembedding_lookup_28220strided_slice:output:0*
Tindices0*)
_class
loc:@embedding_lookup/28220*(
_output_shapes
:����������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/28220*(
_output_shapes
:����������~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicesamplestrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_1ResourceGatherembedding_lookup_1_28229strided_slice_1:output:0*
Tindices0*+
_class!
loc:@embedding_lookup_1/28229*(
_output_shapes
:����������*
dtype0�
embedding_lookup_1/IdentityIdentityembedding_lookup_1:output:0*
T0*+
_class!
loc:@embedding_lookup_1/28229*(
_output_shapes
:�����������
embedding_lookup_1/Identity_1Identity$embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicesamplestrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_2ResourceGatherembedding_lookup_28220strided_slice_2:output:0*
Tindices0*)
_class
loc:@embedding_lookup/28220*(
_output_shapes
:����������*
dtype0�
embedding_lookup_2/IdentityIdentityembedding_lookup_2:output:0*
T0*)
_class
loc:@embedding_lookup/28220*(
_output_shapes
:�����������
embedding_lookup_2/Identity_1Identity$embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_28220* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_1_28229*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_1Identity&embedding_lookup_1/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_2Identity&embedding_lookup_2/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^embedding_lookup^embedding_lookup_1^embedding_lookup_2`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2$
embedding_lookupembedding_lookup2(
embedding_lookup_1embedding_lookup_12(
embedding_lookup_2embedding_lookup_22�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_namesample
�
K
__inference__creator_28268
identity: ��MutableDenseHashTableT
	empty_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������V
deleted_keyConst*
_output_shapes
: *
dtype0*
valueB :
����������
MutableDenseHashTableMutableDenseHashTableV2empty_key:output:0deleted_key:output:0*
_output_shapes
: *
	key_dtype0*
shared_nametable_26466*
value_dtype0b
IdentityIdentity$MutableDenseHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: ^
NoOpNoOp^MutableDenseHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2.
MutableDenseHashTableMutableDenseHashTable
�
,
__inference__destroyer_28278
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
�@
�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27682

inputs2
embedding_lookup_layer_3_27649:
��1
embedding_lookup_layer_3_27651:	�
identity

identity_1��;corruption_generation_layer_train_3/StatefulPartitionedCall�0embedding_lookup_layer_3/StatefulPartitionedCall�2embedding_lookup_layer_3/StatefulPartitionedCall_1�_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp�_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp�
0embedding_lookup_layer_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_lookup_layer_3_27649embedding_lookup_layer_3_27651*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492�
ComplEx/PartitionedCallPartitionedCall9embedding_lookup_layer_3/StatefulPartitionedCall:output:09embedding_lookup_layer_3/StatefulPartitionedCall:output:19embedding_lookup_layer_3/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526�
;corruption_generation_layer_train_3/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *g
fbR`
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_27589�
2embedding_lookup_layer_3/StatefulPartitionedCall_1StatefulPartitionedCallDcorruption_generation_layer_train_3/StatefulPartitionedCall:output:0embedding_lookup_layer_3_27649embedding_lookup_layer_3_27651*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *\
fWRU
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_27492�
ComplEx/PartitionedCall_1PartitionedCall;embedding_lookup_layer_3/StatefulPartitionedCall_1:output:0;embedding_lookup_layer_3/StatefulPartitionedCall_1:output:1;embedding_lookup_layer_3/StatefulPartitionedCall_1:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27649* 
_output_shapes
:
��*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow/y:output:0*
T0* 
_output_shapes
:
���
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_3_27651*
_output_shapes
:	�*
dtype0�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/AbsAbsgscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/PowPowTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs:y:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/SumSumTscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Pow:z:0[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Rscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Pscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mulMul[scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/mul/x:output:0Yscoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity ComplEx/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������o

Identity_1Identity"ComplEx/PartitionedCall_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp<^corruption_generation_layer_train_3/StatefulPartitionedCall1^embedding_lookup_layer_3/StatefulPartitionedCall3^embedding_lookup_layer_3/StatefulPartitionedCall_1`^scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp`^scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2z
;corruption_generation_layer_train_3/StatefulPartitionedCall;corruption_generation_layer_train_3/StatefulPartitionedCall2d
0embedding_lookup_layer_3/StatefulPartitionedCall0embedding_lookup_layer_3/StatefulPartitionedCall2h
2embedding_lookup_layer_3/StatefulPartitionedCall_12embedding_lookup_layer_3/StatefulPartitionedCall_12�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb/Regularizer/Abs/ReadVariableOp2�
_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp_scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
'__inference_ComplEx_layer_call_fn_28108
	triples_0
	triples_1
	triples_2
identity�
PartitionedCallPartitionedCall	triples_0	triples_1	triples_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *K
fFRD
B__inference_ComplEx_layer_call_and_return_conditional_losses_27526\
IdentityIdentityPartitionedCall:output:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������:S O
(
_output_shapes
:����������
#
_user_specified_name	triples_0:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_1:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_2
�
�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27825

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *c
f^R\
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27721k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������8
output_1,
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
scoring_layer
	corruption_layer

encoding_layer
focusE_params
partitioner_metadata
mapping_dict

use_filter
	all_ranks

_get_ranks

signatures"
_tf_keras_model
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27691
?__inference_scoring_based_embedding_model_3_layer_call_fn_27728
?__inference_scoring_based_embedding_model_3_layer_call_fn_27816
?__inference_scoring_based_embedding_model_3_layer_call_fn_27825�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
 trace_1
!trace_2
"trace_32�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27615
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27643
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27993
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_28059�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0z trace_1z!trace_2z"trace_3
�B�
 __inference__wrapped_model_27440input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
ent_emb
rel_emb"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
O
5_create_resource
6_initialize
7_destroy_resourceR Z
tableXY
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�2��
���
FullArgSpecv
argsn�k
jinputs

jent_embs

jstart_id
jend_id
	jfilters
jmapping_dict
jcorrupt_side
jranking_strategy
varargs
 
varkw
 
defaults�
js,o
jworst

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
8serving_default"
signature_map
T:R
��2@scoring_based_embedding_model_3/embedding_lookup_layer_3/ent_emb
S:Q	�2@scoring_based_embedding_model_3/embedding_lookup_layer_3/rel_emb
�
9trace_02�
__inference_loss_fn_0_28088�
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
annotations� *� z9trace_0
�
:trace_02�
__inference_loss_fn_1_28101�
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
annotations� *� z:trace_0
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27691input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27728input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27816inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_scoring_based_embedding_model_3_layer_call_fn_27825inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27615input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27643input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27993inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_28059inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
Atrace_02�
'__inference_ComplEx_layer_call_fn_28108�
���
FullArgSpec
args�
	jtriples
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
 zAtrace_0
�
Btrace_02�
B__inference_ComplEx_layer_call_and_return_conditional_losses_28134�
���
FullArgSpec
args�
	jtriples
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
 zBtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
Htrace_02�
C__inference_corruption_generation_layer_train_3_layer_call_fn_28139�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
 zHtrace_0
�
Itrace_02�
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_28200�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
 zItrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
Otrace_02�
8__inference_embedding_lookup_layer_3_layer_call_fn_28213�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
�
Ptrace_02�
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_28261�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0
�
Qtrace_02�
__inference__creator_28268�
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
annotations� *� zQtrace_0
�
Rtrace_02�
__inference__initializer_28273�
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
annotations� *� zRtrace_0
�
Strace_02�
__inference__destroyer_28278�
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
annotations� *� zStrace_0
�B�
#__inference_signature_wrapper_27805input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_28088"�
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
__inference_loss_fn_1_28101"�
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
N
T	variables
U	keras_api
	Vtotal
	Wcount"
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
�B�
'__inference_ComplEx_layer_call_fn_28108	triples_0	triples_1	triples_2"�
���
FullArgSpec
args�
	jtriples
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
B__inference_ComplEx_layer_call_and_return_conditional_losses_28134	triples_0	triples_1	triples_2"�
���
FullArgSpec
args�
	jtriples
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
C__inference_corruption_generation_layer_train_3_layer_call_fn_28139pos"�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_28200pos"�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_embedding_lookup_layer_3_layer_call_fn_28213sample"�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_28261sample"�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference__creator_28268"�
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
__inference__initializer_28273"�
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
__inference__destroyer_28278"�
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
.
V0
W1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
:  (2total
:  (2count
�B�
__inference_save_fn_28297checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_28305restored_tensors_0restored_tensors_1"�
���
FullArgSpec7
args/�,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	��
B__inference_ComplEx_layer_call_and_return_conditional_losses_28134����
z�w
u�r
$�!
	triples_0����������
$�!
	triples_1����������
$�!
	triples_2����������
� "(�%
�
tensor_0���������
� �
'__inference_ComplEx_layer_call_fn_28108����
z�w
u�r
$�!
	triples_0����������
$�!
	triples_1����������
$�!
	triples_2����������
� "�
unknown���������?
__inference__creator_28268!�

� 
� "�
unknown A
__inference__destroyer_28278!�

� 
� "�
unknown C
__inference__initializer_28273!�

� 
� "�
unknown �
 __inference__wrapped_model_27440g0�-
&�#
!�
input_1���������
� "/�,
*
output_1�
output_1����������
^__inference_corruption_generation_layer_train_3_layer_call_and_return_conditional_losses_28200e5�2
+�(
�
pos���������
`�
`

� ",�)
"�
tensor_0���������
� �
C__inference_corruption_generation_layer_train_3_layer_call_fn_28139Z5�2
+�(
�
pos���������
`�
`

� "!�
unknown����������
S__inference_embedding_lookup_layer_3_layer_call_and_return_conditional_losses_28261�4�1
*�'
 �
sample���������
jt
� "��
x�u
%�"

tensor_0_0����������
%�"

tensor_0_1����������
%�"

tensor_0_2����������
� �
8__inference_embedding_lookup_layer_3_layer_call_fn_28213�4�1
*�'
 �
sample���������
jt
� "r�o
#� 
tensor_0����������
#� 
tensor_1����������
#� 
tensor_2����������C
__inference_loss_fn_0_28088$�

� 
� "�
unknown C
__inference_loss_fn_1_28101$�

� 
� "�
unknown �
__inference_restore_fn_28305bK�H
A�>
�
restored_tensors_0
�
restored_tensors_1
� "�
unknown �
__inference_save_fn_28297�&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor�
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27615�4�1
*�'
!�
input_1���������
p
� "Q�N
G�D
 �

tensor_0_0���������
 �

tensor_0_1���������
� �
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27643d4�1
*�'
!�
input_1���������
p 
� "(�%
�
tensor_0���������
� �
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_27993�3�0
)�&
 �
inputs���������
p
� "Q�N
G�D
 �

tensor_0_0���������
 �

tensor_0_1���������
� �
Z__inference_scoring_based_embedding_model_3_layer_call_and_return_conditional_losses_28059c3�0
)�&
 �
inputs���������
p 
� "(�%
�
tensor_0���������
� �
?__inference_scoring_based_embedding_model_3_layer_call_fn_276914�1
*�'
!�
input_1���������
p
� "C�@
�
tensor_0���������
�
tensor_1����������
?__inference_scoring_based_embedding_model_3_layer_call_fn_27728Y4�1
*�'
!�
input_1���������
p 
� "�
unknown����������
?__inference_scoring_based_embedding_model_3_layer_call_fn_27816~3�0
)�&
 �
inputs���������
p
� "C�@
�
tensor_0���������
�
tensor_1����������
?__inference_scoring_based_embedding_model_3_layer_call_fn_27825X3�0
)�&
 �
inputs���������
p 
� "�
unknown����������
#__inference_signature_wrapper_27805r;�8
� 
1�.
,
input_1!�
input_1���������"/�,
*
output_1�
output_1���������