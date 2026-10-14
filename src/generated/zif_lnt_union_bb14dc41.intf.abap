* TS: src/abap/5_syntax/basic_types.ts:105:32 union.1dc781d688b499b689954b1b927801e747aa5652930f44e438fa1175f7c6e7b5
INTERFACE zif_lnt_union_bb14dc41 PUBLIC.
  METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
  METHODS concat_tokens RETURNING VALUE(result) TYPE string.
  METHODS cnct_tkns_wtht_strng_and_cmmnt RETURNING VALUE(result) TYPE string.
  METHODS find_all_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_all_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_all_expressions_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_direct_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
  METHODS find_direct_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_direct_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_direct_token_by_text IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS find_expression_after_token IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
  METHODS find_first_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
  METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
  METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_node.
  METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_last_child RETURNING VALUE(result) TYPE REF TO zif_lnt_node.
  METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS set_children_value IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
