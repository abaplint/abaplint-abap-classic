* TS: src/rules/obsolete_statement.ts:16:1 ObsoleteStatementConf
CLASS zcl_lnt_obslt_sttmnt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA refresh_83dc TYPE abap_bool.
    DATA compute_3a6a TYPE abap_bool.
    DATA add_51c1 TYPE abap_bool.
    DATA subtract_1d9c TYPE abap_bool.
    DATA multiply_0deb TYPE abap_bool.
    DATA divide_5c22 TYPE abap_bool.
    DATA move_9ad0 TYPE abap_bool.
    DATA requested TYPE abap_bool.
    DATA occurs TYPE abap_bool.
    DATA set_extended TYPE abap_bool.
    DATA with_header_line TYPE abap_bool.
    DATA field_symbol_structure TYPE abap_bool.
    DATA type_pools_243d TYPE abap_bool.
    DATA load TYPE abap_bool.
    DATA parameter_6dfd TYPE abap_bool.
    DATA ranges_ca07 TYPE abap_bool.
    DATA communication_6e94 TYPE abap_bool.
    DATA pack_130b TYPE abap_bool.
    DATA select_without_into TYPE abap_bool.
    DATA free_memory_596a TYPE abap_bool.
    DATA exit_from_sql TYPE abap_bool.
    DATA sort_by_fs TYPE abap_bool.
    DATA call_transformation_5f8a TYPE abap_bool.
    DATA regex TYPE abap_bool.
    DATA occurences TYPE abap_bool.
    DATA client_specified TYPE abap_bool.
    DATA form_definition_b43b TYPE abap_bool.
    DATA form_implementation TYPE abap_bool.
    DATA common_part TYPE abap_bool.
    DATA field_groups TYPE abap_bool.
    DATA replace_into TYPE abap_bool.
    DATA loop_extract_daeb TYPE abap_bool.
    DATA sort_extract TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_obslt_sttmnt_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->refresh_83dc = t1.
    DATA(t2) = abap_true.
    me->compute_3a6a = t2.
    DATA(t3) = abap_true.
    me->add_51c1 = t3.
    DATA(t4) = abap_true.
    me->subtract_1d9c = t4.
    DATA(t5) = abap_true.
    me->multiply_0deb = t5.
    DATA(t6) = abap_true.
    me->divide_5c22 = t6.
    DATA(t7) = abap_true.
    me->move_9ad0 = t7.
    DATA(t8) = abap_true.
    me->requested = t8.
    DATA(t9) = abap_true.
    me->occurs = t9.
    DATA(t10) = abap_true.
    me->set_extended = t10.
    DATA(t11) = abap_true.
    me->with_header_line = t11.
    DATA(t12) = abap_true.
    me->field_symbol_structure = t12.
    DATA(t13) = abap_true.
    me->type_pools_243d = t13.
    DATA(t14) = abap_true.
    me->load = t14.
    DATA(t15) = abap_true.
    me->parameter_6dfd = t15.
    DATA(t16) = abap_true.
    me->ranges_ca07 = t16.
    DATA(t17) = abap_true.
    me->communication_6e94 = t17.
    DATA(t18) = abap_true.
    me->pack_130b = t18.
    DATA(t19) = abap_true.
    me->select_without_into = t19.
    DATA(t20) = abap_true.
    me->free_memory_596a = t20.
    DATA(t21) = abap_true.
    me->exit_from_sql = t21.
    DATA(t22) = abap_true.
    me->sort_by_fs = t22.
    DATA(t23) = abap_true.
    me->call_transformation_5f8a = t23.
    DATA(t24) = abap_true.
    me->regex = t24.
    DATA(t25) = abap_true.
    me->occurences = t25.
    DATA(t26) = abap_true.
    me->client_specified = t26.
    DATA(t27) = abap_true.
    me->form_definition_b43b = t27.
    DATA(t28) = abap_true.
    me->form_implementation = t28.
    DATA(t29) = abap_true.
    me->common_part = t29.
    DATA(t30) = abap_true.
    me->field_groups = t30.
    DATA(t31) = abap_true.
    me->replace_into = t31.
    DATA(t32) = abap_true.
    me->loop_extract_daeb = t32.
    DATA(t33) = abap_true.
    me->sort_extract = t33.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1533_8526610ab6ad.
  ENDMETHOD.
ENDCLASS.
