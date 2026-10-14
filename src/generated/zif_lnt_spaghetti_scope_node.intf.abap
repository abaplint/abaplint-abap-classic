* TS: src/abap/5_syntax/_spaghetti_scope.ts:46:1 ISpaghettiScopeNode
INTERFACE zif_lnt_spaghetti_scope_node PUBLIC.
  METHODS get_parent RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
  METHODS add_child IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node.
  METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
  METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_iscope_identifier.
  METHODS get_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_iscope_data.
  METHODS calc_coverage RETURNING VALUE(result) TYPE REF TO zcl_lnt_irange.
  METHODS find_class_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
  METHODS list_class_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_interface_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_form_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_form_definition.
  METHODS find_interface_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
  METHODS find_type IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
  METHODS find_variable IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
  METHODS find_scope_for_variable IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_iscope_identifier.
  METHODS find_write_reference IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
  METHODS find_table_reference IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS find_table_void_reference IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
