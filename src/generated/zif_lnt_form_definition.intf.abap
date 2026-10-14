* TS: src/abap/types/_form_definition.ts:4:1 IFormDefinition
INTERFACE zif_lnt_form_definition PUBLIC.
  METHODS get_tables_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_using_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_changing_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS equals IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_filename RETURNING VALUE(result) TYPE string.
  METHODS get_name RETURNING VALUE(result) TYPE string.
  METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
