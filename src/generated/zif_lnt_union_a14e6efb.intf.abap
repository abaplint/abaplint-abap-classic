* TS: src/abap/5_syntax/expressions/string_template.ts:58:54 union.1ae7ffce4da484c41c37f29ee12fc212ae5a91ab5f2f74470718054666f6fb43
INTERFACE zif_lnt_union_a14e6efb PUBLIC.
  METHODS debug_description RETURNING VALUE(result) TYPE string.
  METHODS get_col RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
  METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_row RETURNING VALUE(result) TYPE f.
  METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_str RETURNING VALUE(result) TYPE string.
  METHODS get_upper_str RETURNING VALUE(result) TYPE string.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
