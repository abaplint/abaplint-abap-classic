* TS: src/rules/classic_exceptions_overlap.ts:11:1 ClassicExceptionsOverlap
CLASS zcl_lnt_clssc_excptns_ovrlp DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov RETURNING VALUE(result) TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
    METHODS s_c_i_s_r_cl_ex_ov_ts_cl_ex_ov IMPORTING i_conf TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
    METHODS r_p_i_s_r_cl_ex_ov_ts_cl_ex_ov IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clssc_excptns_ovrlp IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_clssc_excptn_ovrlp_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |classic_exceptions_overlap|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Classic exceptions overlap when catching|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find overlapping classic exceptions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |When debugging its typically good to know exactly which exce|.
      t11 = t11 && |ption is caught|.
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
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
      t27 = t27 && |     = 1 MESSAGE lv_message\n    communication_failure = 1 ME|.
      t27 = t27 && |SSAGE lv_message\n    resource_failure      = 1\n    OTHERS   |.
      t27 = t27 && |             = 1.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
      t33 = t33 && |     = 1 MESSAGE lv_message\n    communication_failure = 2 ME|.
      t33 = t33 && |SSAGE lv_message\n    resource_failure      = 3\n    OTHERS   |.
      t33 = t33 && |             = 4.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ex_ov_ts_cl_ex_ov.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_cl_ex_ov_ts_cl_ex_ov.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
    t18 = t19->find_all_expressions( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t28) = NEW zlnt_runtime_set__1827558fd4c7( ).
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = t22.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
      t29 = t30->find_all_expressions( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t29->load( ).
        IF t34 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t29->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_expression_node.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        DATA(t43) = t32.
        DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
        t42 = t43->find_direct_expression( i_type_9913 = t44 ).
        t41 = t42.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t41.
        IF t47 IS INITIAL.
          t46 = abap_true.
        ENDIF.
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          t45 = t48.
        ELSE.
          DATA t49 TYPE string.
          DATA t50 TYPE REF TO zcl_lnt_expression_node.
          DATA(t51) = t41.
          t50 = t51.
          t49 = t50->concat_tokens( ).
          DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t52->has = abap_true.
          t52->value = t49.
          t45 = t52.
        ENDIF.
        t40 = t45.
        t39 = t40.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t39.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ELSEIF t55->has = abap_false.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t53 = t56.
        ELSE.
          DATA t57 TYPE string.
          DATA t58 TYPE string.
          DATA(t59) = t39.
          t58 = t59->value.
          DATA(t60) = strlen( t58 ).
          t57 = t58.
          IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t57 TO UPPER CASE.
          ELSE.
            t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
          ENDIF.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t57.
          t53 = t61.
        ENDIF.
        t38 = t53.
        t37 = t38.
        DATA(t62) = VALUE abap_bool( ).
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t64) = t37.
        t63 = t64.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        t65 = t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t63.
        IF t68 IS INITIAL.
          t67 = abap_true.
        ELSEIF t68->has = abap_false.
          t67 = abap_true.
        ENDIF.
        t62 = t67.
        IF t62 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t27.
        DATA t71 TYPE string.
        DATA(t72) = t37.
        t71 = t72->value.
        t69 = t70->has( p0 = t71 ).
        IF t69 = abap_true.
          DATA t73 TYPE string.
          DATA t74 TYPE string.
          DATA(t75) = |Exception overlap, |.
          DATA t76 TYPE string.
          DATA(t77) = t37.
          t76 = t77->value.
          DATA(t78) = strlen( t75 ).
          t74 = |{ t75 }{ t76 }|.
          t73 = t74.
          DATA t79 TYPE REF TO zcl_lnt_issue.
          CLEAR t79.
          DATA t80 TYPE REF TO zcl_lnt_issue.
          CLEAR t80.
          DATA(t81) = t1.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t32.
          t82 = t83->get_first_token( ).
          DATA(t84) = t73.
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t86.
          DATA t87 TYPE string.
          DATA(t88) = |classic_exceptions_overlap|.
          t87 = t88.
          DATA t89 TYPE string.
          DATA(t90) = |Classic exceptions overlap when catching|.
          t89 = t90.
          DATA t91 TYPE string.
          DATA(t92) = |Find overlapping classic exceptions|.
          t91 = t92.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA(t96) = |When debugging its typically good to know exactly which exce|.
            t96 = t96 && |ption is caught|.
            DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t97->has = abap_true.
            t97->value = t96.
            t94 = t97.
          ELSE.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            t94 = t98.
          ENDIF.
          t93 = t94.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t99.
          DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t104.
            t103 = t104.
            DATA(t105) = t103.
            DATA(t106) = |SingleFile|.
            t105->load( ).
            APPEND t106 TO t105->items.
            t105->save( ).
            DATA(t107) = t103.
            t102 = t107.
            t100 = t102.
          ELSE.
            DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t108.
            t100 = t108.
          ENDIF.
          t99 = t100.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          DATA(t111) = abap_true.
          IF t111 = abap_true.
            DATA(t112) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
            t112 = t112 && |     = 1 MESSAGE lv_message\n    communication_failure = 1 ME|.
            t112 = t112 && |SSAGE lv_message\n    resource_failure      = 1\n    OTHERS   |.
            t112 = t112 && |             = 1.|.
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t112.
            t110 = t113.
          ELSE.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            t110 = t114.
          ENDIF.
          t109 = t110.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA(t118) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
            t118 = t118 && |     = 1 MESSAGE lv_message\n    communication_failure = 2 ME|.
            t118 = t118 && |SSAGE lv_message\n    resource_failure      = 3\n    OTHERS   |.
            t118 = t118 && |             = 4.|.
            DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t119->has = abap_true.
            t119->value = t118.
            t116 = t119.
          ELSE.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            t116 = t120.
          ENDIF.
          t115 = t116.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t121 = t122.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          t123 = t124.
          t86 = NEW zcl_lnt_irule_metadata( i_key = t87 i_title = t89 i_short_description = t91 i_bad_example = t109 i_good_example = t115 i_extended_information = t93 i_tags = t99 i_pragma = t121 i_pseudo_comment = t123 ).
          CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
          t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t125 ).
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t126 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t127 ).
          ENDIF.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t128 ).
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t129 ).
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t130 ).
          ENDIF.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t131 ).
          ENDIF.
          CREATE OBJECT t86->zlnt_json_ownkeys_70e5fd461788.
          t86->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t132) = |key|.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
          ENDIF.
          DATA(t134) = |title|.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
          ENDIF.
          DATA(t136) = |shortDescription|.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
          ENDIF.
          DATA(t138) = |extendedInformation|.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
          ENDIF.
          DATA(t140) = |tags|.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
          ENDIF.
          DATA(t142) = |badExample|.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
          ENDIF.
          DATA(t144) = |goodExample|.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
          ENDIF.
          t85 = t86->key.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t147) = CAST zcl_lnt_clssc_excptn_ovrlp_cnf( me->g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( ) ).
          t146 = t147->zlnt_view_read_sr_15c06369f827( ).
          DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t148.
          t80 = zcl_lnt_issue=>at_token( i_file = t81 i_token = t82 i_message_26cb = t84 i_key = t85 i_severity = t146 i_fix = t148 ).
          t79 = t80.
          DATA(t149) = t2.
          DATA(t150) = t79.
          t149->load( ).
          APPEND t150 TO t149->items.
          t149->save( ).
          EXIT.
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t152) = t27.
        DATA t153 TYPE string.
        DATA(t154) = t37.
        t153 = t154->value.
        t151 = t152->add( p0 = t153 ).
      ENDDO.
    ENDDO.
    DATA(t155) = t2.
    result = t155.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_clssc_excptn_ovrlp_cnf( me->g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_clssc_excptn_ovrlp_cnf( me->g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
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
        t1 = NEW zcl_lnt_clssc_excptn_ovrlp_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_cl_ex_ov_ts_cl_ex_ov( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1452_546824256892.
  ENDMETHOD.
ENDCLASS.
