* TS: src/abap/types/_class_definition.ts:4:1 IClassDefinition
INTERFACE zif_lnt_class_definition PUBLIC.
  METHODS is_final RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_for_testing RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_abstract RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_shared_memory RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_friends RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  METHODS get_create_visibility RETURNING VALUE(result) TYPE f.
  METHODS get_attributes RETURNING VALUE(result) TYPE REF TO zif_lnt_attributes.
  METHODS get_type_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_type_definitions.
  METHODS get_method_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definitions.
  METHODS get_events RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS is_global RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_super_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_aliases RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_implementing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS equals IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_filename RETURNING VALUE(result) TYPE string.
  METHODS get_name RETURNING VALUE(result) TYPE string.
  METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
