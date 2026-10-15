* TS: src/rules/check_ddic.ts:53:15 union.9cd84873b07febc46de5d793ec2e5a8cf0508313aa6ec349dd35ec5ccfd6dbca
INTERFACE zif_lnt_union_42a36aec PUBLIC.
  METHODS add_file IMPORTING i_file TYPE REF TO zif_lnt_file.
  METHODS contains_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_allowed_naming RETURNING VALUE(result) TYPE REF TO zcl_lnt_iallowed_naming.
  METHODS get_description RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_fi_identifier.
  METHODS get_name RETURNING VALUE(result) TYPE string.
  METHODS get_parsing_issues RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_type RETURNING VALUE(result) TYPE string.
  METHODS get_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_xml_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
  METHODS is_dirty RETURNING VALUE(result) TYPE abap_bool.
  METHODS parse IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry i_language_version_0e1d TYPE REF TO
  zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
  METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
  METHODS remove_file IMPORTING i_file TYPE REF TO zif_lnt_file.
  METHODS set_dirty.
  METHODS update_file IMPORTING i_file TYPE REF TO zif_lnt_file.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
