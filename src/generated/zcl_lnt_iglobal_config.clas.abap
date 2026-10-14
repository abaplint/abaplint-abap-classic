* TS: src/_config.ts:4:1 IGlobalConfig
CLASS zcl_lnt_iglobal_config DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA files TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA skip_generated_bopf_interfaces TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_generated_function_groups TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_generated_gateway_classes TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skp_gnrtd_prsstnt_clsss TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_generated_proxy_classes TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skp_gnrtd_prxy_intrfcs TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA use_apack_dependencies TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_includes_without_main TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA error_on_duplicate_filenames TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA exclude TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA no_issues TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_files TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_skp_gnrtd_bpf_intrfcs TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skp_gnrtd_fnctn_grps TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_skp_gnrtd_gtwy_clsss TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skp_gnrtd_prsstnt_clsss TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skip_generated_proxy_classes TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_skp_gnrtd_prxy_intrfcs TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_use_apack_dependencies TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skip_includes_without_main TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_error_on_duplicate_filenames TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_exclude TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_no_issues TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iglobal_config IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_files ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_skp_gnrtd_bpf_intrfcs ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_skp_gnrtd_fnctn_grps ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_skp_gnrtd_gtwy_clsss ).
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( i_skp_gnrtd_prsstnt_clsss ).
    DATA(t6) = CAST zlnt_runtime_opti_7f2541396f43( i_skip_generated_proxy_classes ).
    DATA(t7) = CAST zlnt_runtime_opti_7f2541396f43( i_skp_gnrtd_prxy_intrfcs ).
    DATA(t8) = CAST zlnt_runtime_opti_7f2541396f43( i_use_apack_dependencies ).
    DATA(t9) = CAST zlnt_runtime_opti_7f2541396f43( i_skip_includes_without_main ).
    DATA(t10) = CAST zlnt_runtime_opti_7f2541396f43( i_error_on_duplicate_filenames ).
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_exclude ).
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_no_issues ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    me->files = t13.
    DATA(t14) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    me->skip_generated_bopf_interfaces = t14.
    DATA(t15) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    me->skip_generated_function_groups = t15.
    DATA(t16) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
    me->skip_generated_gateway_classes = t16.
    DATA(t17) = CAST zlnt_runtime_opti_7f2541396f43( t5 ).
    me->skp_gnrtd_prsstnt_clsss = t17.
    DATA(t18) = CAST zlnt_runtime_opti_7f2541396f43( t6 ).
    me->skip_generated_proxy_classes = t18.
    DATA(t19) = CAST zlnt_runtime_opti_7f2541396f43( t7 ).
    me->skp_gnrtd_prxy_intrfcs = t19.
    DATA(t20) = CAST zlnt_runtime_opti_7f2541396f43( t8 ).
    me->use_apack_dependencies = t20.
    DATA(t21) = CAST zlnt_runtime_opti_7f2541396f43( t9 ).
    me->skip_includes_without_main = t21.
    DATA(t22) = CAST zlnt_runtime_opti_7f2541396f43( t10 ).
    me->error_on_duplicate_filenames = t22.
    DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
    me->exclude = t23.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t12 ).
    me->no_issues = t24.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d0_5ecc9e9989d6ba.
  ENDMETHOD.
ENDCLASS.
