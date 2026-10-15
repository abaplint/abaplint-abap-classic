* TS: src/_iddic_references.ts:10:1 IDDICReferences
INTERFACE zif_lnt_ddic_references PUBLIC.
  METHODS set_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_using TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS add_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_using TYPE REF TO zcl_lnt_iobject_and_token.
  METHODS clear_feba IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
  METHODS list_using IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_by_filename IMPORTING i_filename TYPE string i_line TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_where_used IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
