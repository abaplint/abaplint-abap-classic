* TS: src/_config.ts:104:1 IConfiguration
INTERFACE zif_lnt_configuration PUBLIC.
  METHODS get_enabled_rules RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iconfig.
  METHODS get_global RETURNING VALUE(result) TYPE REF TO zcl_lnt_iglobal_config.
  METHODS get_version RETURNING VALUE(result) TYPE string.
  METHODS get_release RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
  METHODS get_language_version RETURNING VALUE(result) TYPE string.
  METHODS is_open_abap RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_syntax_setttings RETURNING VALUE(result) TYPE REF TO zcl_lnt_isyntax_settings.
  METHODS read_by_rule IMPORTING i_rule TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  METHODS read_by_key IMPORTING i_rule TYPE string i_key TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
