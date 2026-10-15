* TS: src/abap/5_syntax/statements/split.ts:15:11 union.2f0946ecffa05554c13d40fe2365a7d0da65f46cba543ee5891df59b4c39bb1d
INTERFACE zif_lnt_union_72e2c467 PUBLIC.
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
