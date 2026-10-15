* TS: src/abap/5_syntax/structures/data.ts:22:11 union.795b6da53aa36863c83feef87ea5cea66db46f6d6c499a0ee6ad321a0d071968
INTERFACE zif_lnt_union_1e9858bf PUBLIC.
  METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
  METHODS concat_tokens RETURNING VALUE(result) TYPE string.
  METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
  METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
