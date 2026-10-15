* TS: src/abap/5_syntax/syntax.ts:428:26 union.ef34b1fae8df131c6c97185482820bb32cd957a6b0ed51ce6b23465fc63eb844
INTERFACE zif_lnt_union_8249fcb1 PUBLIC.
  METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
  METHODS concat_tokens RETURNING VALUE(result) TYPE string.
  METHODS find_all_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_all_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_all_expressions_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_first_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
  METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
  METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_node.
  METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_last_child RETURNING VALUE(result) TYPE REF TO zif_lnt_node.
  METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
