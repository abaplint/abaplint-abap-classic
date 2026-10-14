* TS: src/abap/types/_type_definitions.ts:7:1 ITypeDefinitions
INTERFACE zif_lnt_type_definitions PUBLIC.
  METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
