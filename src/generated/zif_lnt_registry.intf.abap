* TS: src/_iregistry.ts:15:1 IRegistry
INTERFACE zif_lnt_registry PUBLIC.
  METHODS parse RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS parse_async IMPORTING i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_prom_0ff5910e175e.
  METHODS clear_feba.
  METHODS add_dependencies IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS add_dependency IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS remove_dependency IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
  METHODS is_dependency IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE abap_bool.
  METHODS is_file_dependency IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE abap_bool.
  METHODS find_issues IMPORTING i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS find_issues_object IMPORTING i_iobj TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  METHODS in_error_namespace IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
  METHODS get_ddic_references RETURNING VALUE(result) TYPE REF TO zif_lnt_ddic_references.
  METHODS get_msag_references RETURNING VALUE(result) TYPE REF TO zif_lnt_msag_references.
  METHODS get_macro_references RETURNING VALUE(result) TYPE REF TO zif_lnt_macro_references.
  METHODS get_config RETURNING VALUE(result) TYPE REF TO zif_lnt_configuration.
  METHODS set_config IMPORTING i_conf TYPE REF TO zif_lnt_configuration RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS get_objects RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
  METHODS get_objects_by_type IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
  METHODS get_object_count RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_ca985c56.
  METHODS get_first_object RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
  METHODS get_object IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
  METHODS find_object_for_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
  METHODS add_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS update_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS remove_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS add_files_179c IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS get_file_by_name IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
  METHODS get_files RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_75a8ddd7.
  METHODS add_files_one IMPORTING i_x TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.
