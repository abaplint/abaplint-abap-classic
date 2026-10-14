* TS: src/abap/nodes/_inode.ts:3:1 INode
INTERFACE zif_lnt_node PUBLIC.
  METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
  METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
  METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
