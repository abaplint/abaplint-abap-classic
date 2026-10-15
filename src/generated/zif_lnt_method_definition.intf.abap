* TS: src/abap/types/_method_definition.ts:5:1 IMethodDefinition
INTERFACE zif_lnt_method_definition PUBLIC.
  METHODS get_visibility RETURNING VALUE(result) TYPE f.
  METHODS is_redefinition RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_abstract RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_static_4685 RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_event_handler RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_event_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_event_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zif_lnt_method_parameters.
  METHODS get_raising RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  METHODS get_exceptions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  METHODS equals IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_filename RETURNING VALUE(result) TYPE string.
  METHODS get_name RETURNING VALUE(result) TYPE string.
  METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
