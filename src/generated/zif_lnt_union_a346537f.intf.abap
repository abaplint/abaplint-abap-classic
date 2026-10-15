* TS: src/abap/types/_class_attributes.ts:13:29 union.d5d4f551716fb35a83e015f075b12846b0b35989c4a14421d59932fed90c92ee
INTERFACE zif_lnt_union_a346537f PUBLIC.
  METHODS debug_description RETURNING VALUE(result) TYPE string.
  METHODS equals IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_filename RETURNING VALUE(result) TYPE string.
  METHODS get_meta RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  METHODS get_name RETURNING VALUE(result) TYPE string.
  METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
  METHODS get_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
  METHODS get_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
  METHODS get_value RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  METHODS get_visibility RETURNING VALUE(result) TYPE f.
  METHODS to_text RETURNING VALUE(result) TYPE string.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
