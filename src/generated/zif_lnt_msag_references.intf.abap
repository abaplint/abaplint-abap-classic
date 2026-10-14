* TS: src/_imsag_references.ts:4:1 IMSAGReferences
INTERFACE zif_lnt_msag_references PUBLIC.
  METHODS clear_feba IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
  METHODS add_using IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token i_message_class TYPE string i_number TYPE string.
  METHODS list_by_filename IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS list_by_message IMPORTING i_message_class TYPE string i_number TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
