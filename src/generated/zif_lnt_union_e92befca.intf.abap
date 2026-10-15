* TS: src/abap/5_syntax/expressions/source.ts:328:14 union.6b70c763a940933a30aa6a8fe132f5240e0428cb0b5e04752e35b75bfd362847
INTERFACE zif_lnt_union_e92befca PUBLIC.
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
