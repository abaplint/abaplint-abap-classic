* TS: src/abap/5_syntax/_type_utils.ts:373:12 union.1532b9ee42f6c5fab180310d3a387dc37110121fcad0012ba4d95ad354dd90d7
INTERFACE zif_lnt_union_f16d2839 PUBLIC.
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
