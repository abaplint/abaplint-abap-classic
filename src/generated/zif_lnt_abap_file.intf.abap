* TS: src/abap/iabap_file.ts:5:1 IABAPFile
INTERFACE zif_lnt_abap_file PUBLIC.
  METHODS get_info RETURNING VALUE(result) TYPE REF TO zif_lnt_abap_file_information.
  METHODS get_structure RETURNING VALUE(result) TYPE REF TO zcl_lnt_structure_node.
  METHODS get_tokens IMPORTING i_with_pragmas TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_statements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
