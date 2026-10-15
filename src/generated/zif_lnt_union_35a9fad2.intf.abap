* TS: harness/registry_run.ts:1:1 union.20af2d70f84ee763df576281f1099cbb4bd5dc460d5ec044a0d8656bf754e6ae
INTERFACE zif_lnt_union_35a9fad2 PUBLIC.
  METHODS add_file IMPORTING i_file TYPE REF TO zif_lnt_file.
  METHODS contains_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE abap_bool.
  METHODS debug_description RETURNING VALUE(result) TYPE string.
  METHODS get_abap_file_by_name IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
  METHODS get_abap_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_allowed_naming RETURNING VALUE(result) TYPE REF TO zcl_lnt_iallowed_naming.
  METHODS get_description RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_fi_identifier.
  METHODS get_main_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
  METHODS get_name RETURNING VALUE(result) TYPE string.
  METHODS get_parsing_issues RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_sequenced_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_text_elements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
  METHODS get_text_elements_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_text_symbols RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
  METHODS get_type RETURNING VALUE(result) TYPE string.
  METHODS get_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_xml_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
  METHODS is_dirty RETURNING VALUE(result) TYPE abap_bool.
  METHODS parse IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry i_language_version_0e1d TYPE REF TO
  zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
  METHODS remove_file IMPORTING i_file TYPE REF TO zif_lnt_file.
  METHODS set_dirty.
  METHODS update_file IMPORTING i_file TYPE REF TO zif_lnt_file.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
