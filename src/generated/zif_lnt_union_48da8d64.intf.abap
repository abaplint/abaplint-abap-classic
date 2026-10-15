* TS: src/rules/cds_check_syntax.ts:22:9 union.aad2f19e5c1111d28457c7733dee5beae625bf1d44c7be857066401a0bad3cb1
INTERFACE zif_lnt_union_48da8d64 PUBLIC.
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
