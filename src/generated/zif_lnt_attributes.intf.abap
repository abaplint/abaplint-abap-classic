* TS: src/abap/types/_class_attributes.ts:7:1 IAttributes
INTERFACE zif_lnt_attributes PUBLIC.
  METHODS get_static RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_statics_by_visibility IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_instance RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_instances_by_visibility IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_constants_by_visibility IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_union_a346537f.
  METHODS get_constants RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_aliases RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_types RETURNING VALUE(result) TYPE REF TO zif_lnt_type_definitions.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
