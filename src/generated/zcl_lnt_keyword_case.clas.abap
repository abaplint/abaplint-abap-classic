* TS: src/rules/keyword_case.ts:110:1 KeywordCase
CLASS zcl_lnt_keyword_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ky_cs_ts_kyw_cs RETURNING VALUE(result) TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS st_cn_in_sr_rl_ky_cs_ts_kyw_cs IMPORTING i_conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS rn_pr_in_sr_rl_ky_cs_ts_kyw_cs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS traverse IMPORTING i_s TYPE REF TO zif_lnt_union_bb14dc41 i_parent TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS violates_rule IMPORTING i_keyword TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_keyword_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_keyword_case_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |keyword_case|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Keyword case|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that keywords have the same case. Non-keywords must b|.
    t7 = t7 && |e lower case.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#use-your-teams-abap-formatter-settings|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |write 'hello world'.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |WRITE 'hello world'.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ky_cs_ts_kyw_cs.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ky_cs_ts_kyw_cs.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_keyword_case_conf.
    DATA(t5) = me->conf.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA(t10) = NEW zcl_lnt_keyword_case_conf( ).
      me->conf = t10.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t14) = me->conf.
    t13 = t14->zlnt_view_read_sr_98fc2d44a45f( ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t12.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ELSEIF t18->has = abap_false.
      t17 = abap_true.
    ENDIF.
    t11 = t17.
    IF t11 = abap_true.
      DATA(t19) = NEW zcl_lnt_keyword_case_conf( ).
      me->conf = t19.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    ENDIF.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t23) = me->conf.
    t22 = t23->zlnt_view_read_sr_10e8de9b4f9f( ).
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t21.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ELSEIF t27->has = abap_false.
      t26 = abap_true.
    ENDIF.
    t20 = t26.
    IF t20 = abap_true.
      DATA(t28) = me->conf.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t30) = NEW zcl_lnt_keyword_case_conf( ).
      t29 = t30->zlnt_view_read_sr_10e8de9b4f9f( ).
      t28->zlnt_view_write_s_98f31361663b( p0 = t29 ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ky_cs_ts_kyw_cs.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    t5 = t6.
    DATA t8 TYPE i.
    DATA(t9) = 100.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t13) = me->conf.
    t12 = t13->zlnt_view_read_sr_10e8de9b4f9f( ).
    IF t12 IS BOUND.
      IF t12->has = abap_true.
        t11 = xsdbool( t12->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t10 = t11.
    IF t11 = abap_true.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t2.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_class ).
      t10 = t14.
    ENDIF.
    IF t10 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_class.
      DATA t19 TYPE REF TO zcl_lnt_class.
      DATA(t20) = t2.
      DATA t21 TYPE REF TO object.
      t21 = t20.
      t19 ?= t21.
      t18 = t19.
      DATA t22 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      DATA(t27) = t18.
      t26 = t27->get_main_abap_file( ).
      t25 = t26.
      DATA t28 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t25.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zif_lnt_abap_file_information.
        DATA t33 TYPE REF TO zcl_lnt_abap_file.
        DATA t34 TYPE REF TO zcl_lnt_abap_file.
        DATA(t35) = t25.
        t34 = t35.
        t33 = t34.
        DATA t36 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t37) = t33.
        t36 = t37->info.
        t32 = t36.
        t28 = t32.
      ENDIF.
      t24 = t28.
      t23 = t24.
      DATA t38 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t23.
      IF t40 IS INITIAL.
        t39 = abap_true.
      ENDIF.
      IF t39 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t41.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t43 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t44) = t23.
        t43 = t44.
        DATA t45 TYPE string.
        DATA t46 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t47) = t18.
        t46 = t47.
        DATA t48 TYPE string.
        DATA(t49) = t46.
        t48 = t49->name.
        t45 = t48.
        t42 = t43->get_class_definition_by_name( i_name = t45 ).
        t38 = t42.
      ENDIF.
      t22 = t38.
      t17 = t22.
      t16 = t17.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t53) = t16.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      t54 = t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t52.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      t51 = t56.
      t50 = t51.
      IF t51 = abap_false.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t5.
        DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t63) = t16.
          t62 = t63.
          t60 = t62.
        ELSE.
          DATA t64 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t64.
          t60 = t64.
        ENDIF.
        DATA t65 TYPE REF TO zcl_lnt_class.
        DATA(t66) = t2.
        DATA t67 TYPE REF TO object.
        t67 = t66.
        t65 ?= t67.
        t58 = t59->is_exception( i_def = t60 i_obj_ac26 = t65 ).
        t50 = t58.
      ENDIF.
      IF t50 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t68.
        result = t68.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t71) = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ).
    t70 = t71->zlnt_view_read_sr_a5f5d8291c71( ).
    t69 = t70.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t75) = t69.
    t74 = t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    t76 = t77.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = t74.
    IF t79 IS INITIAL.
      t78 = abap_true.
    ELSEIF t79->has = abap_false.
      t78 = abap_true.
    ENDIF.
    t73 = t78.
    t72 = t73.
    IF t73 = abap_false.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE f( ).
      DATA(t82) = t69.
      IF t82->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t81 = t82->value.
      DATA(t83) = CONV f( 1 ).
      t80 = xsdbool( t81 < t83 ).
      t72 = t80.
    ENDIF.
    IF t72 = abap_true.
      DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t84.
      DATA(t85) = abap_true.
      IF t85 = abap_true.
        DATA(t86) = CONV f( 10 ).
        DATA(t87) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t87->has = abap_true.
        t87->value = t86.
        t84 = t87.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t88.
        t84 = t88.
      ENDIF.
      t69 = t84.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_rl_skip.
    DATA t90 TYPE REF TO zcl_lnt_rl_skip.
    DATA(t91) = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ).
    t90 = NEW zcl_lnt_rl_skip( i_conf = t91 ).
    t89 = t90.
    DATA t92 TYPE REF TO zcl_lnt_abstract_token.
    DATA t93 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t93.
    t92 = t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zcl_lnt_abap_file.
    DATA(t96) = t1.
    t95 = t96.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t98) = t95.
    t97 = t98->statements.
    t94 = t97.
    DATA t99 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t99.
    DATA t100 TYPE REF TO object.
    CLEAR t100.
    DATA(t101) = VALUE i( ).
    DO.
      t94->load( ).
      IF t101 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t100.
      READ TABLE t94->items INDEX t101 + 1 INTO t100.
      t101 = t101 + 1.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      CLEAR t99.
      IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t102 ?= t100.
        DATA t103 TYPE REF TO object.
        t103 = t102->as_ref( ).
        t99 ?= t103.
      ELSE.
        t99 ?= t100.
      ENDIF.
      DATA t104 TYPE abap_bool.
      DATA t105 TYPE abap_bool.
      DATA(t106) = t89.
      DATA(t107) = t99.
      t105 = t106->skip_statement( i_statement = t107 ).
      DATA(t108) = abap_true.
      t104 = xsdbool( t105 = t108 ).
      IF t104 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t111) = t99.
      DATA t112 TYPE REF TO zif_lnt_statement.
      DATA(t113) = t99.
      t112 = t113->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t110 = me->traverse( i_s = t111 i_parent = t112 ).
      t109 = t110.
      DATA t114 TYPE abap_bool.
      DATA t115 TYPE i.
      DATA(t116) = t109.
      t116->load( ).
      t115 = lines( t116->items ).
      DATA(t117) = 0.
      t114 = xsdbool( t115 > t117 ).
      IF t114 = abap_true.
        DATA t118 TYPE abap_bool.
        DATA t119 TYPE abap_bool.
        DATA(t120) = t92.
        t119 = xsdbool( t120 IS BOUND ).
        t118 = t119.
        IF t119 = abap_true.
          DATA(t121) = VALUE abap_bool( ).
          DATA t122 TYPE REF TO zcl_lnt_position.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t123.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t124.
          DATA t125 TYPE REF TO zcl_lnt_token_and_keyword.
          CLEAR t125.
          DATA(t126) = t109.
          DATA t127 TYPE REF TO object.
          CLEAR t127.
          t126->load( ).
          CLEAR t127.
          READ TABLE t126->items INDEX 1 INTO t127.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          CLEAR t125.
          IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t128 ?= t127.
            DATA t129 TYPE REF TO object.
            t129 = t128->as_ref( ).
            t125 ?= t129.
          ELSE.
            t125 ?= t127.
          ENDIF.
          t124 = t125->token.
          t123 = t124.
          DATA t130 TYPE REF TO zcl_lnt_position.
          DATA(t131) = t123.
          t130 = t131->start.
          t122 = t130.
          DATA t132 TYPE REF TO zcl_lnt_position.
          DATA t133 TYPE REF TO zcl_lnt_abstract_token.
          DATA t134 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t135) = t92.
          t134 = t135.
          t133 = t134.
          DATA t136 TYPE REF TO zcl_lnt_position.
          DATA(t137) = t133.
          t136 = t137->start.
          t132 = t136.
          t121 = t122->equals( i_p = t132 ).
          t118 = t121.
        ENDIF.
        IF t118 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t138) = VALUE abap_bool( ).
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        DATA t141 TYPE REF TO zcl_lnt_statement_node.
        DATA(t142) = t99.
        t141 = t142.
        DATA t143 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t144) = t141.
        t143 = t144->colon.
        t140 = t143.
        t139 = t140.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        t145 = t146.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = t139.
        IF t149 IS INITIAL.
          t148 = abap_true.
        ENDIF.
        t147 = xsdbool( t148 = abap_false ).
        t138 = t147.
        IF t138 = abap_true.
          DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t152.
          t151 = t152.
          DATA(t153) = t151.
          DATA t154 TYPE REF TO zcl_lnt_token_and_keyword.
          CLEAR t154.
          DATA(t155) = t109.
          DATA t156 TYPE REF TO object.
          CLEAR t156.
          t155->load( ).
          CLEAR t156.
          READ TABLE t155->items INDEX 1 INTO t156.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          CLEAR t154.
          IF t156 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t157 ?= t156.
            DATA t158 TYPE REF TO object.
            t158 = t157->as_ref( ).
            t154 ?= t158.
          ELSE.
            t154 ?= t156.
          ENDIF.
          t153->load( ).
          APPEND t154 TO t153->items.
          t153->save( ).
          DATA(t159) = t151.
          t150 = t159.
          t109 = t150.
        ENDIF.
        DATA t160 TYPE REF TO zcl_lnt_issue.
        DATA t161 TYPE REF TO zcl_lnt_issue.
        DATA(t162) = t109.
        DATA(t163) = t1.
        t161 = me->build( i_tokens = t162 i_file = t163 ).
        t160 = t161.
        DATA(t164) = t3.
        DATA(t165) = t160.
        t164->load( ).
        APPEND t165 TO t164->items.
        t164->save( ).
        DATA t166 TYPE abap_bool.
        DATA t167 TYPE i.
        DATA(t168) = t3.
        t168->load( ).
        t167 = lines( t168->items ).
        DATA(t169) = t8.
        t166 = xsdbool( t167 > t169 ).
        IF t166 = abap_true.
          EXIT.
        ENDIF.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t170.
        DATA(t171) = abap_true.
        IF t171 = abap_true.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t172.
          DATA t173 TYPE REF TO zcl_lnt_token_and_keyword.
          CLEAR t173.
          DATA(t174) = t109.
          DATA t175 TYPE REF TO object.
          CLEAR t175.
          t174->load( ).
          CLEAR t175.
          READ TABLE t174->items INDEX 1 INTO t175.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          CLEAR t173.
          IF t175 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t176 ?= t175.
            DATA t177 TYPE REF TO object.
            t177 = t176->as_ref( ).
            t173 ?= t177.
          ELSE.
            t173 ?= t175.
          ENDIF.
          t172 = t173->token.
          t170 = t172.
        ELSE.
          DATA t178 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t178.
          t170 = t178.
        ENDIF.
        t92 = t170.
      ENDIF.
      DATA(t179) = VALUE abap_bool( ).
      DATA t180 TYPE f.
      DATA t181 TYPE i.
      DATA(t182) = t3.
      t182->load( ).
      t181 = lines( t182->items ).
      t180 = t181.
      DATA(t183) = VALUE f( ).
      DATA(t184) = t69.
      IF t184->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t183 = t184->value.
      t179 = xsdbool( t180 >= t183 ).
      IF t179 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t185) = t3.
    result = t185.

  ENDMETHOD.

  METHOD build.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_tokens.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_token_and_keyword.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_token_and_keyword.
    CLEAR t4.
    DATA(t5) = t1.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    t5->load( ).
    CLEAR t6.
    READ TABLE t5->items INDEX 1 INTO t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    CLEAR t4.
    IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t7 ?= t6.
      DATA t8 TYPE REF TO object.
      t8 = t7->as_ref( ).
      t4 ?= t8.
    ELSE.
      t4 ?= t6.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_token_and_keyword.
    CLEAR t11.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    t12->load( ).
    CLEAR t13.
    READ TABLE t12->items INDEX 1 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t11.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      DATA t15 TYPE REF TO object.
      t15 = t14->as_ref( ).
      t11 ?= t15.
    ELSE.
      t11 ?= t13.
    ENDIF.
    t10 = t11->token.
    t9 = t10.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_token_and_keyword.
    CLEAR t18.
    DATA(t19) = t1.
    DATA t20 TYPE i.
    DATA t21 TYPE i.
    DATA(t22) = t1.
    t22->load( ).
    t21 = lines( t22->items ).
    DATA(t23) = 1.
    t20 = t21 - t23.
    t20 = t20 + 1.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    t19->load( ).
    CLEAR t24.
    READ TABLE t19->items INDEX t20 INTO t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    CLEAR t18.
    IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t25 ?= t24.
      DATA t26 TYPE REF TO object.
      t26 = t25->as_ref( ).
      t18 ?= t26.
    ELSE.
      t18 ?= t24.
    ENDIF.
    t17 = t18->token.
    t16 = t17.
    DATA t27 TYPE string.
    DATA t28 TYPE string.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t30) = t9.
    t29 = t30.
    DATA t31 TYPE string.
    DATA(t32) = t29.
    t31 = t32->str.
    t28 = t31.
    t27 = t28.
    DATA t33 TYPE string.
    DATA(t34) = ||.
    t33 = t34.
    DATA t35 TYPE abap_bool.
    DATA t36 TYPE abap_bool.
    DATA(t37) = t3.
    t36 = t37->keyword.
    DATA(t38) = abap_true.
    t35 = xsdbool( t36 = t38 ).
    IF t35 = abap_true.
      DATA(t39) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = |Keyword should be |.
      DATA(t44) = VALUE string( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t47) = me->conf.
      t46 = t47->zlnt_view_read_sr_98fc2d44a45f( ).
      t45 = t46.
      DATA(t48) = VALUE string( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t45.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ELSEIF t50->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA(t51) = |undefined|.
        t48 = t51.
      ELSE.
        DATA t52 TYPE string.
        DATA(t53) = t45.
        t52 = t53->value.
        t48 = t52.
      ENDIF.
      t44 = t48.
      DATA(t54) = strlen( t43 ).
      t42 = |{ t43 }{ t44 }|.
      DATA(t55) = | case: "|.
      DATA(t56) = strlen( t42 ).
      t41 = |{ t42 }{ t55 }|.
      DATA(t57) = t27.
      DATA(t58) = strlen( t41 ).
      t40 = |{ t41 }{ t57 }|.
      DATA(t59) = |"|.
      DATA(t60) = strlen( t40 ).
      t39 = |{ t40 }{ t59 }|.
      t33 = t39.
    ELSE.
      DATA t61 TYPE string.
      DATA t62 TYPE string.
      DATA(t63) = |Identifiers should be lower case: "|.
      DATA(t64) = t27.
      DATA(t65) = strlen( t63 ).
      t62 = |{ t63 }{ t64 }|.
      DATA(t66) = |"|.
      DATA(t67) = strlen( t62 ).
      t61 = |{ t62 }{ t66 }|.
      t33 = t61.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_edit_draft.
    DATA t69 TYPE REF TO zcl_lnt_edit_draft.
    DATA(t70) = t2.
    t69 = NEW zcl_lnt_edit_draft( i_file = t70 ).
    t68 = t69.
    DATA(t71) = t1.
    DATA t72 TYPE REF TO zcl_lnt_token_and_keyword.
    CLEAR t72.
    DATA t73 TYPE REF TO object.
    CLEAR t73.
    DATA(t74) = VALUE i( ).
    DO.
      t71->load( ).
      IF t74 >= lines( t71->items ).
        EXIT.
      ENDIF.
      CLEAR t73.
      READ TABLE t71->items INDEX t74 + 1 INTO t73.
      t74 = t74 + 1.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t72.
      IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t75 ?= t73.
        DATA t76 TYPE REF TO object.
        t76 = t75->as_ref( ).
        t72 ?= t76.
      ELSE.
        t72 ?= t73.
      ENDIF.
      DATA t77 TYPE string.
      DATA t78 TYPE string.
      DATA t79 TYPE REF TO zcl_lnt_abstract_token.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t81) = t72.
      t80 = t81->token.
      t79 = t80.
      DATA t82 TYPE string.
      DATA(t83) = t79.
      t82 = t83->str.
      t78 = t82.
      t77 = t78.
      DATA t84 TYPE REF TO zcl_lnt_position.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t88) = t72.
      t87 = t88->token.
      t86 = t87.
      DATA t89 TYPE REF TO zcl_lnt_position.
      DATA(t90) = t86.
      t89 = t90->start.
      t85 = t89.
      t84 = t85.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      DATA(t93) = t72.
      t92 = t93->keyword.
      DATA(t94) = abap_true.
      t91 = xsdbool( t92 = t94 ).
      IF t91 = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t97) = me->conf.
        t96 = t97->zlnt_view_read_sr_98fc2d44a45f( ).
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA(t100) = |lower|.
          DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t101->has = abap_true.
          t101->value = t100.
          t98 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t98 = t102.
        ENDIF.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        IF t96 IS BOUND.
          t103 = t96->has.
        ENDIF.
        IF t98 IS BOUND.
          t104 = t98->has.
        ENDIF.
        IF t103 = t104.
          IF t103 = abap_false.
            t95 = abap_true.
          ELSEIF t96->value = t98->value.
            t95 = abap_true.
          ENDIF.
        ENDIF.
        IF t95 = abap_true.
          DATA t105 TYPE REF TO zcl_lnt_edit_draft.
          DATA(t106) = t68.
          t105 = t106.
          DATA t107 TYPE REF TO zcl_lnt_position.
          DATA(t108) = t84.
          t107 = t108.
          DATA t109 TYPE string.
          DATA t110 TYPE string.
          DATA(t111) = t77.
          DATA(t112) = strlen( t111 ).
          t110 = t111.
          TRANSLATE t110 TO LOWER CASE.
          t109 = t110.
          DATA(t113) = VALUE abap_bool( ).
          DATA(t114) = VALUE abap_bool( ).
          DATA t115 TYPE REF TO zcl_lnt_position.
          DATA t116 TYPE REF TO zcl_lnt_position.
          DATA(t117) = t105.
          t116 = t117->start.
          t115 = t116.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          t118 = t119.
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = t115.
          IF t121 IS INITIAL.
            t120 = abap_true.
          ENDIF.
          t114 = t120.
          t113 = t114.
          IF t114 = abap_false.
            DATA(t122) = VALUE abap_bool( ).
            DATA t123 TYPE REF TO zcl_lnt_position.
            DATA(t124) = t107.
            t123 = t124.
            DATA t125 TYPE REF TO zcl_lnt_position.
            DATA t126 TYPE REF TO zcl_lnt_position.
            DATA t127 TYPE REF TO zcl_lnt_position.
            DATA(t128) = t105.
            t127 = t128->start.
            t126 = t127.
            t125 = t126.
            DATA t129 TYPE abap_bool.
            DATA t130 TYPE abap_bool.
            DATA t131 TYPE f.
            DATA(t132) = t123.
            t131 = t132->row.
            DATA t133 TYPE f.
            DATA(t134) = t125.
            t133 = t134->row.
            t130 = xsdbool( t131 < t133 ).
            t129 = t130.
            IF t130 = abap_false.
              DATA t135 TYPE abap_bool.
              DATA t136 TYPE abap_bool.
              DATA t137 TYPE f.
              DATA(t138) = t123.
              t137 = t138->row.
              DATA t139 TYPE f.
              DATA(t140) = t125.
              t139 = t140->row.
              t136 = xsdbool( t137 = t139 ).
              t135 = t136.
              IF t136 = abap_true.
                DATA t141 TYPE abap_bool.
                DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t143) = t123.
                t142 = t143->col.
                DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t145) = t125.
                t144 = t145->col.
                t141 = zlnt_runtime_numb_290eb04a9758=>compare( left = t142 right = t144 op = `<` ).
                t135 = t141.
              ENDIF.
              t129 = t135.
            ENDIF.
            t122 = t129.
            t113 = t122.
          ENDIF.
          IF t113 = abap_true.
            DATA(t146) = t105.
            DATA t147 TYPE REF TO zcl_lnt_position.
            CLEAR t147.
            DATA(t148) = abap_true.
            IF t148 = abap_true.
              DATA(t149) = t107.
              t147 = t149.
            ELSE.
              DATA t150 TYPE REF TO zcl_lnt_position.
              CLEAR t150.
              t147 = t150.
            ENDIF.
            t146->start = t147.
            DELETE t146->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
          ENDIF.
          DATA t151 TYPE REF TO zcl_lnt_position.
          DATA t152 TYPE REF TO zcl_lnt_position.
          DATA t153 TYPE f.
          DATA t154 TYPE REF TO zcl_lnt_position.
          DATA(t155) = t107.
          t154 = t155.
          DATA t156 TYPE f.
          DATA(t157) = t154.
          t156 = t157->row.
          t153 = t156.
          DATA t158 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t159 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t160 TYPE REF TO zcl_lnt_position.
          DATA(t161) = t107.
          t160 = t161.
          DATA t162 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t163) = t160.
          t162 = t163->col.
          t159 = t162.
          DATA t164 TYPE f.
          DATA t165 TYPE i.
          DATA(t166) = t109.
          DATA(t167) = strlen( t166 ).
          t165 = t167.
          t164 = t165.
          DATA(t168) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t168->has = abap_true.
          t168->value = t164.
          t158 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t159 right = t168 op = `+` ).
          t152 = NEW zcl_lnt_position( i_row = t153 i_col = t158 ).
          t151 = t152.
          DATA(t169) = VALUE abap_bool( ).
          DATA(t170) = VALUE abap_bool( ).
          DATA t171 TYPE REF TO zcl_lnt_position.
          DATA t172 TYPE REF TO zcl_lnt_position.
          DATA(t173) = t105.
          t172 = t173->end.
          t171 = t172.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          t174 = t175.
          DATA(t176) = VALUE abap_bool( ).
          DATA(t177) = t171.
          IF t177 IS INITIAL.
            t176 = abap_true.
          ENDIF.
          t170 = t176.
          t169 = t170.
          IF t170 = abap_false.
            DATA t178 TYPE abap_bool.
            DATA(t179) = t151.
            DATA t180 TYPE REF TO zcl_lnt_position.
            DATA t181 TYPE REF TO zcl_lnt_position.
            DATA(t182) = t105.
            t181 = t182->end.
            t180 = t181.
            t178 = t179->is_after( i_p = t180 ).
            t169 = t178.
          ENDIF.
          IF t169 = abap_true.
            DATA(t183) = t105.
            DATA t184 TYPE REF TO zcl_lnt_position.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA(t186) = t151.
              t184 = t186.
            ELSE.
              DATA t187 TYPE REF TO zcl_lnt_position.
              CLEAR t187.
              t184 = t187.
            ENDIF.
            t183->end = t184.
            DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
          ENDIF.
          DATA(t188) = VALUE string( ).
          DATA(t189) = VALUE string( ).
          DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t191) = t105.
          t190 = t191->rows.
          DATA(t192) = VALUE i( ).
          DATA t193 TYPE f.
          DATA t194 TYPE f.
          DATA t195 TYPE REF TO zcl_lnt_position.
          DATA(t196) = t107.
          t195 = t196.
          DATA t197 TYPE f.
          DATA(t198) = t195.
          t197 = t198->row.
          t194 = t197.
          DATA(t199) = CONV f( 1 ).
          t193 = t194 - t199.
          IF t193 > range_i32_upper.
            t192 = range_i32_upper.
          ELSEIF t193 < range_i32_lower.
            t192 = range_i32_lower.
          ELSE.
            t192 = trunc( t193 ).
          ENDIF.
          t192 = t192 + 1.
          IF t190->has( t192 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t190->load( ).
          CLEAR t189.
          READ TABLE t190->items INDEX t192 INTO t189.
          t188 = t189.
          DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t201) = t105.
          t200 = t201->rows.
          DATA(t202) = VALUE i( ).
          DATA t203 TYPE f.
          DATA t204 TYPE f.
          DATA t205 TYPE REF TO zcl_lnt_position.
          DATA(t206) = t107.
          t205 = t206.
          DATA t207 TYPE f.
          DATA(t208) = t205.
          t207 = t208->row.
          t204 = t207.
          DATA(t209) = CONV f( 1 ).
          t203 = t204 - t209.
          IF t203 > range_i32_upper.
            t202 = range_i32_upper.
          ELSEIF t203 < range_i32_lower.
            t202 = range_i32_lower.
          ELSE.
            t202 = trunc( t203 ).
          ENDIF.
          DATA(t210) = VALUE string( ).
          DATA(t211) = VALUE string( ).
          DATA(t212) = VALUE string( ).
          DATA(t213) = t188.
          DATA(t214) = 0.
          DATA t215 TYPE i.
          DATA t216 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t217 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t218 TYPE REF TO zcl_lnt_position.
          DATA(t219) = t107.
          t218 = t219.
          DATA t220 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t221) = t218.
          t220 = t221->col.
          t217 = t220.
          DATA(t222) = CONV f( 1 ).
          DATA(t223) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t223->has = abap_true.
          t223->value = t222.
          t216 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t217 right = t223 op = `-` ).
          t215 = zlnt_runtime_numb_290eb04a9758=>index( t216 ).
          DATA(t224) = strlen( t213 ).
          IF t214 < 0.
            t214 = t214 + t224.
            IF t214 < 0.
              t214 = 0.
            ENDIF.
          ENDIF.
          IF t214 > t224 OR t215 <= 0.
            CLEAR t212.
          ELSE.
            IF t215 > t224 - t214.
              t215 = t224 - t214.
            ENDIF.
            t212 = t213+t214(t215).
          ENDIF.
          DATA(t225) = t109.
          DATA(t226) = strlen( t212 ).
          t211 = |{ t212 }{ t225 }|.
          DATA(t227) = VALUE string( ).
          DATA t228 TYPE string.
          DATA(t229) = t188.
          t228 = t229.
          DATA(t230) = VALUE string( ).
          DATA(t231) = t228.
          DATA t232 TYPE i.
          DATA t233 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t236 TYPE REF TO zcl_lnt_position.
          DATA(t237) = t107.
          t236 = t237.
          DATA t238 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t239) = t236.
          t238 = t239->col.
          t235 = t238.
          DATA t240 TYPE f.
          DATA t241 TYPE i.
          DATA(t242) = t109.
          DATA(t243) = strlen( t242 ).
          t241 = t243.
          t240 = t241.
          DATA(t244) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t244->has = abap_true.
          t244->value = t240.
          t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t244 op = `+` ).
          DATA(t245) = CONV f( 1 ).
          DATA(t246) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t246->has = abap_true.
          t246->value = t245.
          t233 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t234 right = t246 op = `-` ).
          t232 = zlnt_runtime_numb_290eb04a9758=>index( t233 ).
          DATA t247 TYPE i.
          DATA(t248) = t228.
          DATA(t249) = strlen( t248 ).
          t247 = t249.
          DATA(t250) = strlen( t231 ).
          IF t232 < 0.
            t232 = t232 + t250.
            IF t232 < 0.
              t232 = 0.
            ENDIF.
          ENDIF.
          IF t232 > t250 OR t247 <= 0.
            CLEAR t230.
          ELSE.
            IF t247 > t250 - t232.
              t247 = t250 - t232.
            ENDIF.
            t230 = t231+t232(t247).
          ENDIF.
          t227 = t230.
          DATA(t251) = strlen( t211 ).
          t210 = |{ t211 }{ t227 }|.
          t200->put( p0 = t202 p1 = t210 ).
        ELSE.
          DATA t252 TYPE REF TO zcl_lnt_edit_draft.
          DATA(t253) = t68.
          t252 = t253.
          DATA t254 TYPE REF TO zcl_lnt_position.
          DATA(t255) = t84.
          t254 = t255.
          DATA(t256) = VALUE string( ).
          DATA t257 TYPE string.
          DATA(t258) = t77.
          DATA(t259) = strlen( t258 ).
          t257 = t258.
          IF t257 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t257 TO UPPER CASE.
          ELSE.
            t257 = zlnt_runtime_uppe_91169605024d=>full( t257 ).
          ENDIF.
          t256 = t257.
          DATA(t260) = VALUE abap_bool( ).
          DATA(t261) = VALUE abap_bool( ).
          DATA t262 TYPE REF TO zcl_lnt_position.
          DATA t263 TYPE REF TO zcl_lnt_position.
          DATA(t264) = t252.
          t263 = t264->start.
          t262 = t263.
          DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t266.
          t265 = t266.
          DATA(t267) = VALUE abap_bool( ).
          DATA(t268) = t262.
          IF t268 IS INITIAL.
            t267 = abap_true.
          ENDIF.
          t261 = t267.
          t260 = t261.
          IF t261 = abap_false.
            DATA(t269) = VALUE abap_bool( ).
            DATA t270 TYPE REF TO zcl_lnt_position.
            DATA(t271) = t254.
            t270 = t271.
            DATA t272 TYPE REF TO zcl_lnt_position.
            DATA t273 TYPE REF TO zcl_lnt_position.
            DATA t274 TYPE REF TO zcl_lnt_position.
            DATA(t275) = t252.
            t274 = t275->start.
            t273 = t274.
            t272 = t273.
            DATA t276 TYPE abap_bool.
            DATA t277 TYPE abap_bool.
            DATA t278 TYPE f.
            DATA(t279) = t270.
            t278 = t279->row.
            DATA t280 TYPE f.
            DATA(t281) = t272.
            t280 = t281->row.
            t277 = xsdbool( t278 < t280 ).
            t276 = t277.
            IF t277 = abap_false.
              DATA t282 TYPE abap_bool.
              DATA t283 TYPE abap_bool.
              DATA t284 TYPE f.
              DATA(t285) = t270.
              t284 = t285->row.
              DATA t286 TYPE f.
              DATA(t287) = t272.
              t286 = t287->row.
              t283 = xsdbool( t284 = t286 ).
              t282 = t283.
              IF t283 = abap_true.
                DATA t288 TYPE abap_bool.
                DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t290) = t270.
                t289 = t290->col.
                DATA t291 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t292) = t272.
                t291 = t292->col.
                t288 = zlnt_runtime_numb_290eb04a9758=>compare( left = t289 right = t291 op = `<` ).
                t282 = t288.
              ENDIF.
              t276 = t282.
            ENDIF.
            t269 = t276.
            t260 = t269.
          ENDIF.
          IF t260 = abap_true.
            DATA(t293) = t252.
            DATA t294 TYPE REF TO zcl_lnt_position.
            CLEAR t294.
            DATA(t295) = abap_true.
            IF t295 = abap_true.
              DATA(t296) = t254.
              t294 = t296.
            ELSE.
              DATA t297 TYPE REF TO zcl_lnt_position.
              CLEAR t297.
              t294 = t297.
            ENDIF.
            t293->start = t294.
            DELETE t293->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
          ENDIF.
          DATA t298 TYPE REF TO zcl_lnt_position.
          DATA t299 TYPE REF TO zcl_lnt_position.
          DATA t300 TYPE f.
          DATA t301 TYPE REF TO zcl_lnt_position.
          DATA(t302) = t254.
          t301 = t302.
          DATA t303 TYPE f.
          DATA(t304) = t301.
          t303 = t304->row.
          t300 = t303.
          DATA t305 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t306 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t307 TYPE REF TO zcl_lnt_position.
          DATA(t308) = t254.
          t307 = t308.
          DATA t309 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t310) = t307.
          t309 = t310->col.
          t306 = t309.
          DATA t311 TYPE f.
          DATA t312 TYPE i.
          DATA(t313) = t256.
          DATA(t314) = strlen( t313 ).
          t312 = t314.
          t311 = t312.
          DATA(t315) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t315->has = abap_true.
          t315->value = t311.
          t305 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t306 right = t315 op = `+` ).
          t299 = NEW zcl_lnt_position( i_row = t300 i_col = t305 ).
          t298 = t299.
          DATA(t316) = VALUE abap_bool( ).
          DATA(t317) = VALUE abap_bool( ).
          DATA t318 TYPE REF TO zcl_lnt_position.
          DATA t319 TYPE REF TO zcl_lnt_position.
          DATA(t320) = t252.
          t319 = t320->end.
          t318 = t319.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          t321 = t322.
          DATA(t323) = VALUE abap_bool( ).
          DATA(t324) = t318.
          IF t324 IS INITIAL.
            t323 = abap_true.
          ENDIF.
          t317 = t323.
          t316 = t317.
          IF t317 = abap_false.
            DATA t325 TYPE abap_bool.
            DATA(t326) = t298.
            DATA t327 TYPE REF TO zcl_lnt_position.
            DATA t328 TYPE REF TO zcl_lnt_position.
            DATA(t329) = t252.
            t328 = t329->end.
            t327 = t328.
            t325 = t326->is_after( i_p = t327 ).
            t316 = t325.
          ENDIF.
          IF t316 = abap_true.
            DATA(t330) = t252.
            DATA t331 TYPE REF TO zcl_lnt_position.
            CLEAR t331.
            DATA(t332) = abap_true.
            IF t332 = abap_true.
              DATA(t333) = t298.
              t331 = t333.
            ELSE.
              DATA t334 TYPE REF TO zcl_lnt_position.
              CLEAR t334.
              t331 = t334.
            ENDIF.
            t330->end = t331.
            DELETE t330->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
          ENDIF.
          DATA(t335) = VALUE string( ).
          DATA(t336) = VALUE string( ).
          DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t338) = t252.
          t337 = t338->rows.
          DATA(t339) = VALUE i( ).
          DATA t340 TYPE f.
          DATA t341 TYPE f.
          DATA t342 TYPE REF TO zcl_lnt_position.
          DATA(t343) = t254.
          t342 = t343.
          DATA t344 TYPE f.
          DATA(t345) = t342.
          t344 = t345->row.
          t341 = t344.
          DATA(t346) = CONV f( 1 ).
          t340 = t341 - t346.
          IF t340 > range_i32_upper.
            t339 = range_i32_upper.
          ELSEIF t340 < range_i32_lower.
            t339 = range_i32_lower.
          ELSE.
            t339 = trunc( t340 ).
          ENDIF.
          t339 = t339 + 1.
          IF t337->has( t339 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t337->load( ).
          CLEAR t336.
          READ TABLE t337->items INDEX t339 INTO t336.
          t335 = t336.
          DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t348) = t252.
          t347 = t348->rows.
          DATA(t349) = VALUE i( ).
          DATA t350 TYPE f.
          DATA t351 TYPE f.
          DATA t352 TYPE REF TO zcl_lnt_position.
          DATA(t353) = t254.
          t352 = t353.
          DATA t354 TYPE f.
          DATA(t355) = t352.
          t354 = t355->row.
          t351 = t354.
          DATA(t356) = CONV f( 1 ).
          t350 = t351 - t356.
          IF t350 > range_i32_upper.
            t349 = range_i32_upper.
          ELSEIF t350 < range_i32_lower.
            t349 = range_i32_lower.
          ELSE.
            t349 = trunc( t350 ).
          ENDIF.
          DATA(t357) = VALUE string( ).
          DATA(t358) = VALUE string( ).
          DATA(t359) = VALUE string( ).
          DATA(t360) = t335.
          DATA(t361) = 0.
          DATA t362 TYPE i.
          DATA t363 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t364 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t365 TYPE REF TO zcl_lnt_position.
          DATA(t366) = t254.
          t365 = t366.
          DATA t367 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t368) = t365.
          t367 = t368->col.
          t364 = t367.
          DATA(t369) = CONV f( 1 ).
          DATA(t370) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t370->has = abap_true.
          t370->value = t369.
          t363 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t364 right = t370 op = `-` ).
          t362 = zlnt_runtime_numb_290eb04a9758=>index( t363 ).
          DATA(t371) = strlen( t360 ).
          IF t361 < 0.
            t361 = t361 + t371.
            IF t361 < 0.
              t361 = 0.
            ENDIF.
          ENDIF.
          IF t361 > t371 OR t362 <= 0.
            CLEAR t359.
          ELSE.
            IF t362 > t371 - t361.
              t362 = t371 - t361.
            ENDIF.
            t359 = t360+t361(t362).
          ENDIF.
          DATA(t372) = t256.
          DATA(t373) = strlen( t359 ).
          t358 = |{ t359 }{ t372 }|.
          DATA(t374) = VALUE string( ).
          DATA t375 TYPE string.
          DATA(t376) = t335.
          t375 = t376.
          DATA(t377) = VALUE string( ).
          DATA(t378) = t375.
          DATA t379 TYPE i.
          DATA t380 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t381 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t382 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t383 TYPE REF TO zcl_lnt_position.
          DATA(t384) = t254.
          t383 = t384.
          DATA t385 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t386) = t383.
          t385 = t386->col.
          t382 = t385.
          DATA t387 TYPE f.
          DATA t388 TYPE i.
          DATA(t389) = t256.
          DATA(t390) = strlen( t389 ).
          t388 = t390.
          t387 = t388.
          DATA(t391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t391->has = abap_true.
          t391->value = t387.
          t381 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t382 right = t391 op = `+` ).
          DATA(t392) = CONV f( 1 ).
          DATA(t393) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t393->has = abap_true.
          t393->value = t392.
          t380 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t381 right = t393 op = `-` ).
          t379 = zlnt_runtime_numb_290eb04a9758=>index( t380 ).
          DATA t394 TYPE i.
          DATA(t395) = t375.
          DATA(t396) = strlen( t395 ).
          t394 = t396.
          DATA(t397) = strlen( t378 ).
          IF t379 < 0.
            t379 = t379 + t397.
            IF t379 < 0.
              t379 = 0.
            ENDIF.
          ENDIF.
          IF t379 > t397 OR t394 <= 0.
            CLEAR t377.
          ELSE.
            IF t394 > t397 - t379.
              t394 = t397 - t379.
            ENDIF.
            t377 = t378+t379(t394).
          ENDIF.
          t374 = t377.
          DATA(t398) = strlen( t358 ).
          t357 = |{ t358 }{ t374 }|.
          t347->put( p0 = t349 p1 = t357 ).
        ENDIF.
      ELSE.
        DATA t399 TYPE REF TO zcl_lnt_edit_draft.
        DATA(t400) = t68.
        t399 = t400.
        DATA t401 TYPE REF TO zcl_lnt_position.
        DATA(t402) = t84.
        t401 = t402.
        DATA t403 TYPE string.
        DATA t404 TYPE string.
        DATA(t405) = t77.
        DATA(t406) = strlen( t405 ).
        t404 = t405.
        TRANSLATE t404 TO LOWER CASE.
        t403 = t404.
        DATA(t407) = VALUE abap_bool( ).
        DATA(t408) = VALUE abap_bool( ).
        DATA t409 TYPE REF TO zcl_lnt_position.
        DATA t410 TYPE REF TO zcl_lnt_position.
        DATA(t411) = t399.
        t410 = t411->start.
        t409 = t410.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t413.
        t412 = t413.
        DATA(t414) = VALUE abap_bool( ).
        DATA(t415) = t409.
        IF t415 IS INITIAL.
          t414 = abap_true.
        ENDIF.
        t408 = t414.
        t407 = t408.
        IF t408 = abap_false.
          DATA(t416) = VALUE abap_bool( ).
          DATA t417 TYPE REF TO zcl_lnt_position.
          DATA(t418) = t401.
          t417 = t418.
          DATA t419 TYPE REF TO zcl_lnt_position.
          DATA t420 TYPE REF TO zcl_lnt_position.
          DATA t421 TYPE REF TO zcl_lnt_position.
          DATA(t422) = t399.
          t421 = t422->start.
          t420 = t421.
          t419 = t420.
          DATA t423 TYPE abap_bool.
          DATA t424 TYPE abap_bool.
          DATA t425 TYPE f.
          DATA(t426) = t417.
          t425 = t426->row.
          DATA t427 TYPE f.
          DATA(t428) = t419.
          t427 = t428->row.
          t424 = xsdbool( t425 < t427 ).
          t423 = t424.
          IF t424 = abap_false.
            DATA t429 TYPE abap_bool.
            DATA t430 TYPE abap_bool.
            DATA t431 TYPE f.
            DATA(t432) = t417.
            t431 = t432->row.
            DATA t433 TYPE f.
            DATA(t434) = t419.
            t433 = t434->row.
            t430 = xsdbool( t431 = t433 ).
            t429 = t430.
            IF t430 = abap_true.
              DATA t435 TYPE abap_bool.
              DATA t436 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t437) = t417.
              t436 = t437->col.
              DATA t438 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t439) = t419.
              t438 = t439->col.
              t435 = zlnt_runtime_numb_290eb04a9758=>compare( left = t436 right = t438 op = `<` ).
              t429 = t435.
            ENDIF.
            t423 = t429.
          ENDIF.
          t416 = t423.
          t407 = t416.
        ENDIF.
        IF t407 = abap_true.
          DATA(t440) = t399.
          DATA t441 TYPE REF TO zcl_lnt_position.
          CLEAR t441.
          DATA(t442) = abap_true.
          IF t442 = abap_true.
            DATA(t443) = t401.
            t441 = t443.
          ELSE.
            DATA t444 TYPE REF TO zcl_lnt_position.
            CLEAR t444.
            t441 = t444.
          ENDIF.
          t440->start = t441.
          DELETE t440->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
        ENDIF.
        DATA t445 TYPE REF TO zcl_lnt_position.
        DATA t446 TYPE REF TO zcl_lnt_position.
        DATA t447 TYPE f.
        DATA t448 TYPE REF TO zcl_lnt_position.
        DATA(t449) = t401.
        t448 = t449.
        DATA t450 TYPE f.
        DATA(t451) = t448.
        t450 = t451->row.
        t447 = t450.
        DATA t452 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t453 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t454 TYPE REF TO zcl_lnt_position.
        DATA(t455) = t401.
        t454 = t455.
        DATA t456 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t457) = t454.
        t456 = t457->col.
        t453 = t456.
        DATA t458 TYPE f.
        DATA t459 TYPE i.
        DATA(t460) = t403.
        DATA(t461) = strlen( t460 ).
        t459 = t461.
        t458 = t459.
        DATA(t462) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t462->has = abap_true.
        t462->value = t458.
        t452 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t453 right = t462 op = `+` ).
        t446 = NEW zcl_lnt_position( i_row = t447 i_col = t452 ).
        t445 = t446.
        DATA(t463) = VALUE abap_bool( ).
        DATA(t464) = VALUE abap_bool( ).
        DATA t465 TYPE REF TO zcl_lnt_position.
        DATA t466 TYPE REF TO zcl_lnt_position.
        DATA(t467) = t399.
        t466 = t467->end.
        t465 = t466.
        DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t469.
        t468 = t469.
        DATA(t470) = VALUE abap_bool( ).
        DATA(t471) = t465.
        IF t471 IS INITIAL.
          t470 = abap_true.
        ENDIF.
        t464 = t470.
        t463 = t464.
        IF t464 = abap_false.
          DATA t472 TYPE abap_bool.
          DATA(t473) = t445.
          DATA t474 TYPE REF TO zcl_lnt_position.
          DATA t475 TYPE REF TO zcl_lnt_position.
          DATA(t476) = t399.
          t475 = t476->end.
          t474 = t475.
          t472 = t473->is_after( i_p = t474 ).
          t463 = t472.
        ENDIF.
        IF t463 = abap_true.
          DATA(t477) = t399.
          DATA t478 TYPE REF TO zcl_lnt_position.
          CLEAR t478.
          DATA(t479) = abap_true.
          IF t479 = abap_true.
            DATA(t480) = t445.
            t478 = t480.
          ELSE.
            DATA t481 TYPE REF TO zcl_lnt_position.
            CLEAR t481.
            t478 = t481.
          ENDIF.
          t477->end = t478.
          DELETE t477->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
        ENDIF.
        DATA(t482) = VALUE string( ).
        DATA(t483) = VALUE string( ).
        DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t485) = t399.
        t484 = t485->rows.
        DATA(t486) = VALUE i( ).
        DATA t487 TYPE f.
        DATA t488 TYPE f.
        DATA t489 TYPE REF TO zcl_lnt_position.
        DATA(t490) = t401.
        t489 = t490.
        DATA t491 TYPE f.
        DATA(t492) = t489.
        t491 = t492->row.
        t488 = t491.
        DATA(t493) = CONV f( 1 ).
        t487 = t488 - t493.
        IF t487 > range_i32_upper.
          t486 = range_i32_upper.
        ELSEIF t487 < range_i32_lower.
          t486 = range_i32_lower.
        ELSE.
          t486 = trunc( t487 ).
        ENDIF.
        t486 = t486 + 1.
        IF t484->has( t486 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t484->load( ).
        CLEAR t483.
        READ TABLE t484->items INDEX t486 INTO t483.
        t482 = t483.
        DATA t494 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t495) = t399.
        t494 = t495->rows.
        DATA(t496) = VALUE i( ).
        DATA t497 TYPE f.
        DATA t498 TYPE f.
        DATA t499 TYPE REF TO zcl_lnt_position.
        DATA(t500) = t401.
        t499 = t500.
        DATA t501 TYPE f.
        DATA(t502) = t499.
        t501 = t502->row.
        t498 = t501.
        DATA(t503) = CONV f( 1 ).
        t497 = t498 - t503.
        IF t497 > range_i32_upper.
          t496 = range_i32_upper.
        ELSEIF t497 < range_i32_lower.
          t496 = range_i32_lower.
        ELSE.
          t496 = trunc( t497 ).
        ENDIF.
        DATA(t504) = VALUE string( ).
        DATA(t505) = VALUE string( ).
        DATA(t506) = VALUE string( ).
        DATA(t507) = t482.
        DATA(t508) = 0.
        DATA t509 TYPE i.
        DATA t510 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t511 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t512 TYPE REF TO zcl_lnt_position.
        DATA(t513) = t401.
        t512 = t513.
        DATA t514 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t515) = t512.
        t514 = t515->col.
        t511 = t514.
        DATA(t516) = CONV f( 1 ).
        DATA(t517) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t517->has = abap_true.
        t517->value = t516.
        t510 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t511 right = t517 op = `-` ).
        t509 = zlnt_runtime_numb_290eb04a9758=>index( t510 ).
        DATA(t518) = strlen( t507 ).
        IF t508 < 0.
          t508 = t508 + t518.
          IF t508 < 0.
            t508 = 0.
          ENDIF.
        ENDIF.
        IF t508 > t518 OR t509 <= 0.
          CLEAR t506.
        ELSE.
          IF t509 > t518 - t508.
            t509 = t518 - t508.
          ENDIF.
          t506 = t507+t508(t509).
        ENDIF.
        DATA(t519) = t403.
        DATA(t520) = strlen( t506 ).
        t505 = |{ t506 }{ t519 }|.
        DATA(t521) = VALUE string( ).
        DATA t522 TYPE string.
        DATA(t523) = t482.
        t522 = t523.
        DATA(t524) = VALUE string( ).
        DATA(t525) = t522.
        DATA t526 TYPE i.
        DATA t527 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t528 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t529 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t530 TYPE REF TO zcl_lnt_position.
        DATA(t531) = t401.
        t530 = t531.
        DATA t532 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t533) = t530.
        t532 = t533->col.
        t529 = t532.
        DATA t534 TYPE f.
        DATA t535 TYPE i.
        DATA(t536) = t403.
        DATA(t537) = strlen( t536 ).
        t535 = t537.
        t534 = t535.
        DATA(t538) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t538->has = abap_true.
        t538->value = t534.
        t528 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t529 right = t538 op = `+` ).
        DATA(t539) = CONV f( 1 ).
        DATA(t540) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t540->has = abap_true.
        t540->value = t539.
        t527 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t528 right = t540 op = `-` ).
        t526 = zlnt_runtime_numb_290eb04a9758=>index( t527 ).
        DATA t541 TYPE i.
        DATA(t542) = t522.
        DATA(t543) = strlen( t542 ).
        t541 = t543.
        DATA(t544) = strlen( t525 ).
        IF t526 < 0.
          t526 = t526 + t544.
          IF t526 < 0.
            t526 = 0.
          ENDIF.
        ENDIF.
        IF t526 > t544 OR t541 <= 0.
          CLEAR t524.
        ELSE.
          IF t541 > t544 - t526.
            t541 = t544 - t526.
          ENDIF.
          t524 = t525+t526(t541).
        ENDIF.
        t521 = t524.
        DATA(t545) = strlen( t505 ).
        t504 = |{ t505 }{ t521 }|.
        t494->put( p0 = t496 p1 = t504 ).
      ENDIF.
    ENDDO.
    DATA t546 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t548) = t68.
    t547 = t548->to_edit( ).
    t546 = t547.
    DATA t549 TYPE REF TO zcl_lnt_issue.
    CLEAR t549.
    DATA(t550) = t2.
    DATA t551 TYPE REF TO zcl_lnt_position.
    DATA t552 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t553) = t9.
    t552 = t553.
    DATA t554 TYPE REF TO zcl_lnt_position.
    DATA(t555) = t552.
    t554 = t555->start.
    t551 = t554.
    DATA t556 TYPE REF TO zcl_lnt_position.
    DATA t557 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t558) = t16.
    t557 = t558.
    DATA t559 TYPE REF TO zcl_lnt_position.
    DATA t560 TYPE f.
    DATA t561 TYPE REF TO zcl_lnt_position.
    DATA t562 TYPE REF TO zcl_lnt_position.
    DATA(t563) = t557.
    t562 = t563->start.
    t561 = t562.
    DATA t564 TYPE f.
    DATA(t565) = t561.
    t564 = t565->row.
    t560 = t564.
    DATA t566 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t567 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t568 TYPE REF TO zcl_lnt_position.
    DATA t569 TYPE REF TO zcl_lnt_position.
    DATA(t570) = t557.
    t569 = t570->start.
    t568 = t569.
    DATA t571 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t572) = t568.
    t571 = t572->col.
    t567 = t571.
    DATA t573 TYPE f.
    DATA t574 TYPE i.
    DATA t575 TYPE string.
    DATA(t576) = t557.
    t575 = t576->str.
    DATA(t577) = strlen( t575 ).
    t574 = t577.
    t573 = t574.
    DATA(t578) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t578->has = abap_true.
    t578->value = t573.
    t566 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t567 right = t578 op = `+` ).
    t559 = NEW zcl_lnt_position( i_row = t560 i_col = t566 ).
    t556 = t559.
    DATA(t579) = t33.
    DATA(t580) = VALUE string( ).
    DATA t581 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t581.
    DATA t582 TYPE string.
    DATA(t583) = |keyword_case|.
    t582 = t583.
    DATA t584 TYPE string.
    DATA(t585) = |Keyword case|.
    t584 = t585.
    DATA t586 TYPE string.
    DATA(t587) = |Checks that keywords have the same case. Non-keywords must b|.
    t587 = t587 && |e lower case.|.
    t586 = t587.
    DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t588.
    DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t589.
    DATA(t590) = abap_true.
    IF t590 = abap_true.
      DATA(t591) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t591 = t591 && |nABAP.md#use-your-teams-abap-formatter-settings|.
      DATA(t592) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t592->has = abap_true.
      t592->value = t591.
      t589 = t592.
    ELSE.
      DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t593.
      t589 = t593.
    ENDIF.
    t588 = t589.
    DATA t594 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t594.
    DATA t595 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t595.
    DATA(t596) = abap_true.
    IF t596 = abap_true.
      DATA t597 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t598 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t599 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t599.
      t598 = t599.
      DATA(t600) = t598.
      DATA(t601) = |Styleguide|.
      t600->load( ).
      APPEND t601 TO t600->items.
      t600->save( ).
      DATA(t602) = t598.
      DATA(t603) = |SingleFile|.
      t602->load( ).
      APPEND t603 TO t602->items.
      t602->save( ).
      DATA(t604) = t598.
      DATA(t605) = |Quickfix|.
      t604->load( ).
      APPEND t605 TO t604->items.
      t604->save( ).
      DATA(t606) = t598.
      t597 = t606.
      t595 = t597.
    ELSE.
      DATA t607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t607.
      t595 = t607.
    ENDIF.
    t594 = t595.
    DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t608.
    DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t609.
    DATA(t610) = abap_true.
    IF t610 = abap_true.
      DATA(t611) = |write 'hello world'.|.
      DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t612->has = abap_true.
      t612->value = t611.
      t609 = t612.
    ELSE.
      DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t613.
      t609 = t613.
    ENDIF.
    t608 = t609.
    DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t614.
    DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t615.
    DATA(t616) = abap_true.
    IF t616 = abap_true.
      DATA(t617) = |WRITE 'hello world'.|.
      DATA(t618) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t618->has = abap_true.
      t618->value = t617.
      t615 = t618.
    ELSE.
      DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t619.
      t615 = t619.
    ENDIF.
    t614 = t615.
    DATA t620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t621.
    t620 = t621.
    DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t623.
    t622 = t623.
    t581 = NEW zcl_lnt_irule_metadata( i_key = t582 i_title = t584 i_short_description = t586 i_bad_example = t608 i_good_example = t614 i_extended_information = t588 i_tags = t594 i_pragma = t620 i_pseudo_comment = t622 ).
    CREATE OBJECT t581->zlnt_view_ownkeys_b0e8086400eb.
    t581->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t624.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t624 ).
    ENDIF.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t625 ).
    ENDIF.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t626.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t626 ).
    ENDIF.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t627 ).
    ENDIF.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t628 ).
    ENDIF.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t629 ).
    ENDIF.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t630 ).
    ENDIF.
    CREATE OBJECT t581->zlnt_json_ownkeys_70e5fd461788.
    t581->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t631) = |key|.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t631 p1 = t632 ).
    ENDIF.
    DATA(t633) = |title|.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t634.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t633 p1 = t634 ).
    ENDIF.
    DATA(t635) = |shortDescription|.
    DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t636.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t635 p1 = t636 ).
    ENDIF.
    DATA(t637) = |extendedInformation|.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t638.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t637 p1 = t638 ).
    ENDIF.
    DATA(t639) = |tags|.
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t640.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t639 p1 = t640 ).
    ENDIF.
    DATA(t641) = |badExample|.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t641 p1 = t642 ).
    ENDIF.
    DATA(t643) = |goodExample|.
    DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t644.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t643 p1 = t644 ).
    ENDIF.
    t580 = t581->key.
    DATA t645 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t646) = me->conf.
    t645 = t646->zlnt_view_read_sr_15c06369f827( ).
    DATA t647 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t647.
    DATA(t648) = abap_true.
    IF t648 = abap_true.
      DATA(t649) = t546.
      t647 = t649.
    ELSE.
      DATA t650 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t650.
      t647 = t650.
    ENDIF.
    DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t651.
    t549 = zcl_lnt_issue=>at_range( i_file = t550 i_start = t551 i_end = t556 i_message_26cb = t579 i_key = t580 i_severity = t645 i_fix = t647 i_alternative_fixes = t651 ).
    result = t549.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_s.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->get_children( ).
    t6 ?= t7.
    t5 = t6.
    DATA(t9) = VALUE i( ).
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t9.
      DATA(t13) = VALUE i( ).
      DATA(t14) = t5.
      t14->load( ).
      t13 = lines( t14->items ).
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t16.
      DATA(t17) = t5.
      DATA(t18) = t9.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t17->load( ).
      CLEAR t19.
      READ TABLE t17->items INDEX t18 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t16.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        t21 = t20->as_ref( ).
        t16 ?= t21.
      ELSE.
        t16 ?= t19.
      ENDIF.
      t15 = t16.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t15.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_token_node_regex ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t24.
        DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t25.
        DATA(t26) = t5.
        DATA(t27) = VALUE i( ).
        DATA(t28) = t9.
        DATA(t29) = 1.
        t27 = t28 + t29.
        t27 = t27 + 1.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t26->load( ).
        CLEAR t30.
        READ TABLE t26->items INDEX t27 INTO t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t25.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t30.
          DATA t32 TYPE REF TO object.
          CLEAR t32.
          t32 = t31->as_ref( ).
          t25 ?= t32.
        ELSE.
          t25 ?= t30.
        ENDIF.
        t24 = t25.
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = VALUE abap_bool( ).
        DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t35.
        DATA(t36) = me->conf.
        t35 = t36->zlnt_view_read_sr_274b357e7ae8( ).
        IF t35 IS BOUND.
          IF t35->has = abap_true.
            t34 = xsdbool( t35->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t33 = t34.
        IF t34 = abap_true.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t2.
          t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          t33 = t37.
        ENDIF.
        IF t33 = abap_true.
          DATA(t39) = VALUE i( ).
          DATA(t40) = t9.
          DATA(t41) = 1.
          t39 = t40 + t41.
          t9 = t39.
          CONTINUE.
        ENDIF.
        DATA(t42) = VALUE string( ).
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_token_node_regex.
        CLEAR t47.
        DATA(t48) = t15.
        DATA t49 TYPE REF TO object.
        CLEAR t49.
        t49 = t48.
        t47 ?= t49.
        t46 = t47->get_db65( ).
        t45 ?= t46.
        t44 = t45.
        DATA(t50) = VALUE string( ).
        DATA(t51) = t44.
        t50 = t51->str.
        t43 = t50.
        t42 = t43.
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA(t54) = t42.
        DATA(t55) = strlen( t54 ).
        t53 = t54.
        IF t53 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t53 TO UPPER CASE.
        ELSE.
          t53 = zlnt_runtime_uppe_91169605024d=>full( t53 ).
        ENDIF.
        t52 = t53.
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = t52.
        DATA(t59) = |OTHERS|.
        t57 = xsdbool( t58 = t59 ).
        t56 = t57.
        IF t57 = abap_false.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = t52.
          DATA(t63) = |TEXT|.
          t61 = xsdbool( t62 = t63 ).
          t60 = t61.
          IF t61 = abap_true.
            DATA(t64) = VALUE abap_bool( ).
            DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t65.
            DATA t66 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t66.
            DATA(t67) = t24.
            t66 = t67.
            DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t68.
            DATA(t69) = VALUE abap_bool( ).
            DATA(t70) = t66.
            IF t70 IS INITIAL.
              t69 = abap_true.
            ENDIF.
            IF t69 = abap_true.
              DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t71.
              t68 = t71.
            ELSE.
              DATA(t72) = VALUE string( ).
              DATA(t73) = t66.
              t72 = t73->concat_tokens( ).
              DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t74->has = abap_true.
              t74->value = t72.
              t68 = t74.
            ENDIF.
            t65 = t68.
            DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t75.
            DATA(t76) = abap_true.
            IF t76 = abap_true.
              DATA(t77) = |-|.
              DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t78->has = abap_true.
              t78->value = t77.
              t75 = t78.
            ELSE.
              DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t79.
              t75 = t79.
            ENDIF.
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = VALUE abap_bool( ).
            IF t65 IS BOUND.
              t80 = t65->has.
            ENDIF.
            IF t75 IS BOUND.
              t81 = t75->has.
            ENDIF.
            IF t80 = t81.
              IF t80 = abap_false.
                t64 = abap_true.
              ELSEIF t65->value = t75->value.
                t64 = abap_true.
              ENDIF.
            ENDIF.
            t60 = t64.
          ENDIF.
          t56 = t60.
        ENDIF.
        IF t56 = abap_true.
          DATA(t82) = VALUE i( ).
          DATA(t83) = t9.
          DATA(t84) = 1.
          t82 = t83 + t84.
          t9 = t82.
          CONTINUE.
        ENDIF.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = me->conf.
        t88 = t89->zlnt_view_read_sr_767dc70211a6( ).
        DATA(t90) = abap_true.
        t87 = xsdbool( t88 = t90 ).
        t86 = t87.
        IF t87 = abap_true.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = t2.
          t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_function_module ).
          t86 = t91.
        ENDIF.
        t85 = t86.
        IF t86 = abap_true.
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = t52.
          DATA(t95) = |FUNCTION|.
          t93 = xsdbool( t94 <> t95 ).
          t85 = t93.
        ENDIF.
        IF t85 = abap_true.
          DATA(t96) = VALUE i( ).
          DATA(t97) = t9.
          DATA(t98) = 1.
          t96 = t97 + t98.
          t9 = t96.
          CONTINUE.
        ENDIF.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = t52.
        DATA(t102) = |SCREEN|.
        t100 = xsdbool( t101 = t102 ).
        t99 = t100.
        IF t100 = abap_true.
          DATA(t103) = VALUE abap_bool( ).
          DATA(t104) = VALUE abap_bool( ).
          DATA(t105) = VALUE abap_bool( ).
          DATA(t106) = t2.
          t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_st_modify_database ).
          t104 = t105.
          IF t105 = abap_false.
            DATA(t107) = VALUE abap_bool( ).
            DATA(t108) = t2.
            t107 = xsdbool( t108 IS BOUND AND t108 IS INSTANCE OF zcl_lnt_st_modify_internal ).
            t104 = t107.
          ENDIF.
          t103 = t104.
          IF t104 = abap_false.
            DATA(t109) = VALUE abap_bool( ).
            DATA(t110) = t2.
            t109 = xsdbool( t110 IS BOUND AND t110 IS INSTANCE OF zcl_lnt_st_loop ).
            t103 = t109.
          ENDIF.
          t99 = t103.
        ENDIF.
        IF t99 = abap_true.
          DATA(t111) = VALUE i( ).
          DATA(t112) = t9.
          DATA(t113) = 1.
          t111 = t112 + t113.
          t9 = t111.
          CONTINUE.
        ENDIF.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = VALUE abap_bool( ).
        DATA(t116) = t42.
        DATA(t117) = VALUE string( ).
        DATA(t118) = t42.
        DATA(t119) = strlen( t118 ).
        t117 = t118.
        TRANSLATE t117 TO LOWER CASE.
        t115 = xsdbool( t116 <> t117 ).
        t114 = t115.
        IF t115 = abap_true.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t121.
          DATA t122 TYPE REF TO object.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_token_node_regex.
          CLEAR t123.
          DATA(t124) = t15.
          DATA t125 TYPE REF TO object.
          CLEAR t125.
          t125 = t124.
          t123 ?= t125.
          t122 = t123->get_db65( ).
          t121 ?= t122.
          t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_lx_identifier ).
          t114 = t120.
        ENDIF.
        IF t114 = abap_true.
          DATA(t126) = t3.
          DATA t127 TYPE REF TO zcl_lnt_token_and_keyword.
          CLEAR t127.
          DATA t128 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t129.
          DATA t130 TYPE REF TO object.
          CLEAR t130.
          DATA t131 TYPE REF TO zcl_lnt_token_node_regex.
          CLEAR t131.
          DATA(t132) = t15.
          DATA t133 TYPE REF TO object.
          CLEAR t133.
          t133 = t132.
          t131 ?= t133.
          t130 = t131->get_db65( ).
          t129 ?= t130.
          t128 = t129.
          DATA(t134) = VALUE abap_bool( ).
          DATA(t135) = abap_false.
          t134 = t135.
          t127 = NEW zcl_lnt_token_and_keyword( i_token = t128 i_keyword = t134 ).
          CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
          t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t136 ).
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t137 ).
          ENDIF.
          CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
          t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t138) = |token|.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
          ENDIF.
          DATA(t140) = |keyword|.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
          ENDIF.
          t126->load( ).
          APPEND t127 TO t126->items.
          t126->save( ).
        ENDIF.
      ELSE.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = t15.
        t142 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_token_node ).
        IF t142 = abap_true.
          DATA(t144) = VALUE string( ).
          DATA(t145) = VALUE string( ).
          DATA t146 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_token_node.
          CLEAR t148.
          DATA(t149) = t15.
          DATA t150 TYPE REF TO object.
          CLEAR t150.
          t150 = t149.
          t148 ?= t150.
          t147 = t148->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t146 = t147.
          DATA(t151) = VALUE string( ).
          DATA(t152) = t146.
          t151 = t152->str.
          t145 = t151.
          t144 = t145.
          DATA(t153) = VALUE abap_bool( ).
          DATA(t154) = VALUE abap_bool( ).
          DATA(t155) = t144.
          t154 = me->violates_rule( i_keyword = t155 ).
          t153 = t154.
          IF t154 = abap_true.
            DATA(t156) = VALUE abap_bool( ).
            DATA t157 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t157.
            DATA t158 TYPE REF TO zcl_lnt_token_node.
            CLEAR t158.
            DATA(t159) = t15.
            DATA t160 TYPE REF TO object.
            CLEAR t160.
            t160 = t159.
            t158 ?= t160.
            t157 = t158->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
            t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_lx_identifier ).
            t153 = t156.
          ENDIF.
          IF t153 = abap_true.
            DATA(t161) = t3.
            DATA t162 TYPE REF TO zcl_lnt_token_and_keyword.
            CLEAR t162.
            DATA t163 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t163.
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t164.
            DATA t165 TYPE REF TO zcl_lnt_token_node.
            CLEAR t165.
            DATA(t166) = t15.
            DATA t167 TYPE REF TO object.
            CLEAR t167.
            t167 = t166.
            t165 ?= t167.
            t164 = t165->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
            t163 = t164.
            DATA(t168) = VALUE abap_bool( ).
            DATA(t169) = abap_true.
            t168 = t169.
            t162 = NEW zcl_lnt_token_and_keyword( i_token = t163 i_keyword = t168 ).
            CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
            t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t170.
            IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t170 ).
            ENDIF.
            DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t171.
            IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t171 ).
            ENDIF.
            CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
            t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t172) = |token|.
            DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t173.
            IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
            ENDIF.
            DATA(t174) = |keyword|.
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t175.
            IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
            ENDIF.
            t161->load( ).
            APPEND t162 TO t161->items.
            t161->save( ).
          ENDIF.
        ELSE.
          DATA(t176) = VALUE abap_bool( ).
          DATA(t177) = t15.
          t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_expression_node ).
          IF t176 = abap_true.
            DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t178.
            DATA(t179) = t3.
            DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t180.
            DATA t181 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t181.
            DATA(t182) = t15.
            DATA t183 TYPE REF TO object.
            CLEAR t183.
            t183 = t182.
            t181 ?= t183.
            DATA(t184) = t2.
            t180 = me->traverse( i_s = t181 i_parent = t184 ).
            t178 = t179->concat( p0 = t180 ).
            t3 = t178.
          ELSE.
            DATA t185 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t185.
            DATA t186 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t186.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            DATA(t188) = abap_true.
            IF t188 = abap_true.
              DATA(t189) = |keyword_case, traverseStatement, unexpected node type|.
              DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t190->has = abap_true.
              t190->value = t189.
              t187 = t190.
            ELSE.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              t187 = t191.
            ENDIF.
            t186 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t187 ).
            t185 = NEW #( ).
            t185->payload = t186.
            CLEAR t185->source_value.
            IF t186 IS BOUND.
              DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t192.
              DATA t193 TYPE REF TO object.
              CLEAR t193.
              CLEAR t192.
              t193 = t186.
              TRY.
                  t185->source_value ?= t193.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t185->source_value IS NOT BOUND.
                TRY.
                    t192 ?= t186.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t192 IS BOUND.
                  t185->source_value = t192->source( ).
                ENDIF.
                IF t185->source_value IS NOT BOUND.
                  CREATE OBJECT t185->source_value.
                  t185->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t185->source_value->oval = t186.
                ENDIF.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t185.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t194) = VALUE i( ).
      DATA(t195) = t9.
      DATA(t196) = 1.
      t194 = t195 + t196.
      t9 = t194.
    ENDDO.
    DATA(t197) = t3.
    result = t197.

  ENDMETHOD.

  METHOD violates_rule.
    DATA(t1) = i_keyword.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = me->conf.
    t4 = t5->zlnt_view_read_sr_20e2964f7001( ).
    t3 = xsdbool( t4 IS BOUND ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t9.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t12) = me->conf.
      t11 = t12->zlnt_view_read_sr_20e2964f7001( ).
      t10 = t11.
      DATA(t13) = VALUE string( ).
      t10->dense( ).
      DATA(t14) = VALUE i( ).
      DO.
        t10->load( ).
        IF t14 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t13.
        READ TABLE t10->items INDEX t14 + 1 INTO t13.
        IF t10->has( t14 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t14 = t14 + 1.
        DATA(t15) = t8.
        DATA t16 TYPE string.
        DATA(t17) = t13.
        DATA(t18) = strlen( t17 ).
        t16 = t17.
        IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t16 TO UPPER CASE.
        ELSE.
          t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
        ENDIF.
        t15->load( ).
        APPEND t16 TO t15->items.
        t15->save( ).
      ENDDO.
      DATA(t19) = t8.
      t7 = t19.
      DATA t20 TYPE string.
      DATA(t21) = t1.
      DATA(t22) = strlen( t21 ).
      t20 = t21.
      IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t20 TO UPPER CASE.
      ELSE.
        t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
      ENDIF.
      t6 = t7->includes( p0 = t20 ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA(t23) = abap_false.
      result = t23.
      RETURN.
    ENDIF.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = me->conf.
    t25 = t26->zlnt_view_read_sr_98fc2d44a45f( ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |lower|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    IF t25 IS BOUND.
      t32 = t25->has.
    ENDIF.
    IF t27 IS BOUND.
      t33 = t27->has.
    ENDIF.
    IF t32 = t33.
      IF t32 = abap_false.
        t24 = abap_true.
      ELSEIF t25->value = t27->value.
        t24 = abap_true.
      ENDIF.
    ENDIF.
    IF t24 = abap_true.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t1.
      DATA t36 TYPE string.
      DATA(t37) = t1.
      DATA(t38) = strlen( t37 ).
      t36 = t37.
      TRANSLATE t36 TO LOWER CASE.
      t34 = xsdbool( t35 <> t36 ).
      result = t34.
      RETURN.
    ELSE.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = me->conf.
      t40 = t41->zlnt_view_read_sr_98fc2d44a45f( ).
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = |upper|.
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t44.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t42 = t46.
      ENDIF.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      IF t40 IS BOUND.
        t47 = t40->has.
      ENDIF.
      IF t42 IS BOUND.
        t48 = t42->has.
      ENDIF.
      IF t47 = t48.
        IF t47 = abap_false.
          t39 = abap_true.
        ELSEIF t40->value = t42->value.
          t39 = abap_true.
        ENDIF.
      ENDIF.
      IF t39 = abap_true.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = t1.
        DATA t51 TYPE string.
        DATA(t52) = t1.
        DATA(t53) = strlen( t52 ).
        t51 = t52.
        IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t51 TO UPPER CASE.
        ELSE.
          t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
        ENDIF.
        t49 = xsdbool( t50 <> t51 ).
        result = t49.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t54) = abap_false.
    result = t54.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_keyword_case_conf.
    CLEAR t1.
    CLEAR t1.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_keyword_case_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ky_cs_ts_kyw_cs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ky_cs_ts_kyw_cs( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1557_93a2fd328614.
  ENDMETHOD.
ENDCLASS.
