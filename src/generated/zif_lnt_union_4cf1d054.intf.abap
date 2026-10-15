* TS: src/abap/2_statements/combi.ts:1055:66 union.66719939903e43ae9586894a3271d3c1e0bc1a87886c0b01d3e32f95e19d70c3
INTERFACE zif_lnt_union_4cf1d054 PUBLIC.
  METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
  METHODS concat_tokens RETURNING VALUE(result) TYPE string.
  METHODS count_tokens RETURNING VALUE(result) TYPE f.
  METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
  METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
