* TS: src/abap/types/_method_definitions.ts:3:1 IMethodDefinitions
INTERFACE zif_lnt_method_definitions PUBLIC.
  METHODS get_all RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_0f59ca3c.
  METHODS get_by_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
