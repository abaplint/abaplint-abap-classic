* TS: src/abap/5_syntax/expressions/field_chain.ts:120:51 union.194edae4cbf169cd5ee6878c10874735c9f3700a3e1c0052a962baa6ec1ca38f
INTERFACE zif_lnt_union_297610d4 PUBLIC.
  METHODS contains_void RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_abstract_type_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type_data.
  METHODS get_conversion_exit RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_ddic_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_description RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_qualified_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_rtti_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS is_generic RETURNING VALUE(result) TYPE abap_bool.
  METHODS to_abap RETURNING VALUE(result) TYPE string.
  METHODS to_cds RETURNING VALUE(result) TYPE string.
  METHODS to_text IMPORTING i_level TYPE f RETURNING VALUE(result) TYPE string.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
