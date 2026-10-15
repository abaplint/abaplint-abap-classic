* TS: src/abap/5_syntax/statements/modify_database.ts:10:1 ModifyDatabase
CLASS zcl_lnt_sy_modify_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_modify_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = t6.
      DATA(t12) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t11 i_input_967e = t12 ).
    ENDDO.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t14 = t15->find_first_expression( i_type_9913 = t16 ).
    t13 = t14.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = t13.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t18.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    t17 = t22.
    IF t17 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE i.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t30) = t1.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t29.
      t31 = t32->children.
      t28 = t31.
      t27 ?= t28.
      t27->load( ).
      t26 = lines( t27->items ).
      DATA(t33) = 5.
      t25 = xsdbool( t26 = t33 ).
      IF t25 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_current_scope.
        DATA t37 TYPE REF TO zcl_lnt_current_scope.
        DATA(t38) = t2.
        t37 = t38->scope.
        t36 = t37.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE string.
          DATA t43 TYPE REF TO zcl_lnt_expression_node.
          DATA(t44) = t13.
          t43 = t44.
          t42 = t43->concat_tokens( ).
          DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t45->has = abap_true.
          t45->value = t42.
          t40 = t45.
        ELSE.
          DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t46.
          t40 = t46.
        ENDIF.
        t39 = t40.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t50) = t39.
        t49 = t50.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t51 = t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t49.
        IF t54 IS INITIAL.
          t53 = abap_true.
        ELSEIF t54->has = abap_false.
          t53 = abap_true.
        ENDIF.
        t48 = t53.
        IF t48 = abap_true.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t55.
          t47 = t55.
        ELSE.
          DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t56.
          DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t58.
          DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t61) = t36.
          t60 = t61->current.
          t59 = t60.
          DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t62.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = t59.
          IF t64 IS INITIAL.
            t63 = abap_true.
          ENDIF.
          IF t63 = abap_true.
            DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t65.
            t62 = t65.
          ELSE.
            DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t68) = t59.
            t67 = t68.
            DATA t69 TYPE string.
            DATA(t70) = t39.
            t69 = t70->value.
            t66 = t67->find_variable( i_name = t69 ).
            t62 = t66.
          ENDIF.
          t58 = t62.
          t57 = t58.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t71.
          DATA t72 TYPE abap_bool.
          DATA(t73) = t57.
          t72 = xsdbool( t73 IS BOUND ).
          IF t72 = abap_true.
            DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t74.
            DATA(t75) = abap_true.
            IF t75 = abap_true.
              DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t77) = t57.
              t76 = t77.
              t74 = t76.
            ELSE.
              DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t78.
              t74 = t78.
            ENDIF.
            t71 = t74.
          ELSE.
            DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t79.
            DATA(t80) = t36.
            DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t81.
            DATA(t82) = abap_true.
            IF t82 = abap_true.
              DATA t83 TYPE string.
              DATA(t84) = t39.
              t83 = t84->value.
              DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t85->has = abap_true.
              t85->value = t83.
              t81 = t85.
            ELSE.
              DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t86.
              t81 = t86.
            ENDIF.
            t79 = t80->find_type_pool_constant( i_name = t81 ).
            t71 = t79.
          ENDIF.
          t56 = t71.
          t47 = t56.
        ENDIF.
        t35 = t47.
        t34 = t35.
        DATA t87 TYPE abap_bool.
        DATA(t88) = t34.
        t87 = xsdbool( t88 IS BOUND ).
        IF t87 = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_current_scope.
          DATA(t90) = t2.
          t89 = t90->scope.
          DATA t91 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t91.
          DATA(t92) = abap_true.
          IF t92 = abap_true.
            DATA t93 TYPE REF TO zcl_lnt_abstract_token.
            DATA t94 TYPE REF TO zcl_lnt_expression_node.
            DATA(t95) = t13.
            t94 = t95.
            t93 = t94->get_first_token( ).
            t91 = t93.
          ELSE.
            DATA t96 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t96.
            t91 = t96.
          ENDIF.
          DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t98) = t34.
          t97 = t98.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          DATA(t100) = |Write To|.
          CLEAR t99.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t99->sval = t100.
          DATA t101 TYPE string.
          DATA(t102) = t2.
          t101 = t102->filename.
          DATA t103 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t103.
          t89->add_reference( i_usage = t91 i_referencing = t97 i_type_9913 = t99 i_filename = t101 i_extra = t103 ).
        ELSE.
          DATA t104 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t105 TYPE REF TO zcl_lnt_expression_node.
          DATA(t106) = t13.
          t105 = t106.
          DATA(t107) = t2.
          t104 = zcl_lnt_sy_database_table=>run_syntax( i_node = t105 i_input_967e = t107 ).
        ENDIF.
      ELSE.
        DATA t108 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t109 TYPE REF TO zcl_lnt_expression_node.
        DATA(t110) = t13.
        t109 = t110.
        DATA(t111) = t2.
        t108 = zcl_lnt_sy_database_table=>run_syntax( i_node = t109 i_input_967e = t111 ).
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t113) = t1.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t112 = t113->find_all_expressions( i_type_9913 = t114 ).
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t115.
    DATA t116 TYPE REF TO object.
    CLEAR t116.
    DATA(t117) = VALUE i( ).
    DO.
      t112->load( ).
      IF t117 >= lines( t112->items ).
        EXIT.
      ENDIF.
      CLEAR t116.
      READ TABLE t112->items INDEX t117 + 1 INTO t116.
      t117 = t117 + 1.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t115.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t116.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t115 ?= t119.
      ELSE.
        t115 ?= t116.
      ENDIF.
      DATA t120 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t120.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t121.
      DATA(t122) = abap_true.
      IF t122 = abap_true.
        DATA(t123) = t115.
        t121 = t123.
      ELSE.
        DATA t124 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t124.
        t121 = t124.
      ENDIF.
      DATA(t125) = t2.
      DATA t126 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t129.
      t120 = zcl_lnt_sy_source=>run_syntax( i_node = t121 i_input_967e = t125 i_target_type = t126 i_write_reference = t127 i_allow_generic_deference = t128 i_read_reference = t129 ).
    ENDDO.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t131) = t1.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t130 = t131->find_all_expressions( i_type_9913 = t132 ).
    DATA t133 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t133.
    DATA t134 TYPE REF TO object.
    CLEAR t134.
    DATA(t135) = VALUE i( ).
    DO.
      t130->load( ).
      IF t135 >= lines( t130->items ).
        EXIT.
      ENDIF.
      CLEAR t134.
      READ TABLE t130->items INDEX t135 + 1 INTO t134.
      t135 = t135 + 1.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      CLEAR t133.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t136 ?= t134.
        DATA t137 TYPE REF TO object.
        t137 = t136->as_ref( ).
        t133 ?= t137.
      ELSE.
        t133 ?= t134.
      ENDIF.
      DATA t138 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t138.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t139.
      DATA(t140) = abap_true.
      IF t140 = abap_true.
        DATA(t141) = t133.
        t139 = t141.
      ELSE.
        DATA t142 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t142.
        t139 = t142.
      ENDIF.
      DATA(t143) = t2.
      DATA t144 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t146.
      DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t147.
      t138 = zcl_lnt_sy_source=>run_syntax( i_node = t139 i_input_967e = t143 i_target_type = t144 i_write_reference = t145 i_allow_generic_deference = t146 i_read_reference = t147 ).
    ENDDO.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d930_fb3618e3512f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
