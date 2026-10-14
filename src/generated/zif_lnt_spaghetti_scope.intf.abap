* TS: src/abap/5_syntax/_spaghetti_scope.ts:67:1 ISpaghettiScope
INTERFACE zif_lnt_spaghetti_scope PUBLIC.
  METHODS list_definitions IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_read_positions IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_write_positions IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS lookup_position IMPORTING i_p TYPE REF TO zcl_lnt_position i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
  METHODS get_top RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
  METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
