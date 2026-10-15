* TS: src/_imacro_references.ts:9:1 IMacroReferences
INTERFACE zif_lnt_macro_references PUBLIC.
  METHODS add_definition IMPORTING i_ref TYPE REF TO zcl_lnt_ifilename_and_token i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position.
  METHODS add_reference IMPORTING i_ref TYPE REF TO zcl_lnt_ifilename_and_token.
  METHODS list_definitions_by_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_usagesby_macro IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_definition_range IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_irange.
  METHODS find_definition_by_usage IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_ifilename_and_token.
  METHODS clear_feba IMPORTING i_filename TYPE string.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
