CLASS zlnt_runtime_mate_ad6460c301e9 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iglobal_config.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_ad6460c301e9 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    field0 = zlnt_runtime_mate_1731deb81a07=>project( p0->get( `files` ) ).
    DATA field1 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field1 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipGeneratedBOPFInterfaces` ) ).
    DATA field2 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field2 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipGeneratedFunctionGroups` ) ).
    DATA field3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field3 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipGeneratedGatewayClasses` ) ).
    DATA field4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field4 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipGeneratedPersistentClasses` ) ).
    DATA field5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field5 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipGeneratedProxyClasses` ) ).
    DATA field6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field6 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipGeneratedProxyInterfaces` ) ).
    DATA field7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field7 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `useApackDependencies` ) ).
    DATA field8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field8 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `skipIncludesWithoutMain` ) ).
    DATA field9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    field9 = zlnt_runtime_mate_19262b45a580=>project( p0->get( `errorOnDuplicateFilenames` ) ).
    DATA field10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    field10 = zlnt_runtime_mate_9c3cf809b41d=>project( p0->get( `exclude` ) ).
    DATA field11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    field11 = zlnt_runtime_mate_9c3cf809b41d=>project( p0->get( `noIssues` ) ).
    result = NEW zcl_lnt_iglobal_config( i_files = field0 i_skp_gnrtd_bpf_intrfcs = field1 i_skp_gnrtd_fnctn_grps = field2 i_skp_gnrtd_gtwy_clsss = field3 i_skp_gnrtd_prsstnt_clsss = field4 i_skip_generated_proxy_classes = field5
    i_skp_gnrtd_prxy_intrfcs = field6 i_use_apack_dependencies = field7 i_skip_includes_without_main = field8 i_error_on_duplicate_filenames = field9 i_exclude = field10 i_no_issues = field11 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
