* TS: src/abap/5_syntax/statements/delete_database.ts:11:1 DeleteDatabase
CLASS zcl_lnt_sy_delete_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_delete_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t21 = t22->find_all_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = t24.
        t30 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        t30 = t33.
      ENDIF.
      DATA(t34) = t2.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t34 i_target_type = t35 i_write_reference = t36 i_allow_generic_deference = t37 i_read_reference = t38 ).
    ENDDO.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t40) = t1.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t39 = t40->find_all_expressions( i_type_9913 = t41 ).
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t42.
    DATA t43 TYPE REF TO object.
    CLEAR t43.
    DATA(t44) = VALUE i( ).
    DO.
      t39->load( ).
      IF t44 >= lines( t39->items ).
        EXIT.
      ENDIF.
      CLEAR t43.
      READ TABLE t39->items INDEX t44 + 1 INTO t43.
      t44 = t44 + 1.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t42.
      IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t43.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t42 ?= t46.
      ELSE.
        t42 ?= t43.
      ENDIF.
      DATA(t47) = t42.
      DATA(t48) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t47 i_input_967e = t48 ).
    ENDDO.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t50) = t1.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
    t49 = t50->find_all_expressions( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t52.
    DATA t53 TYPE REF TO object.
    CLEAR t53.
    DATA(t54) = VALUE i( ).
    DO.
      t49->load( ).
      IF t54 >= lines( t49->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t49->items INDEX t54 + 1 INTO t53.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t52.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t53.
        DATA t56 TYPE REF TO object.
        t56 = t55->as_ref( ).
        t52 ?= t56.
      ELSE.
        t52 ?= t53.
      ENDIF.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      DATA(t59) = t52.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d.
      t58 = t59->find_direct_expression( i_type_9913 = t60 ).
      t57 = t58.
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA(t63) = t57.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      t64 = t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t62.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      t66 = xsdbool( t67 = abap_false ).
      t61 = t66.
      IF t61 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        DATA(t70) = t57.
        t69 = t70.
        DATA(t71) = t2.
        zcl_lnt_sy_sql_in=>run_syntax( i_node = t69 i_input_967e = t71 ).
      ENDIF.
    ENDDO.
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    DATA t73 TYPE REF TO zcl_lnt_expression_node.
    DATA(t74) = t1.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t73 = t74->find_first_expression( i_type_9913 = t75 ).
    t72 = t73.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zcl_lnt_expression_node.
    DATA(t78) = t72.
    t77 = t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    t79 = t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA(t82) = VALUE abap_bool( ).
    DATA(t83) = t77.
    IF t83 IS INITIAL.
      t82 = abap_true.
    ENDIF.
    t81 = xsdbool( t82 = abap_false ).
    t76 = t81.
    IF t76 = abap_true.
      DATA t84 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t85 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t86 TYPE REF TO zcl_lnt_expression_node.
      DATA(t87) = t72.
      t86 = t87.
      DATA(t88) = t2.
      t85 = zcl_lnt_sy_database_table=>run_syntax( i_node = t86 i_input_967e = t88 ).
      t84 = t85.
      DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t92 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t92.
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t95 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t95.
      t94 = t95.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t97) = t1.
      DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
      t96 = t97->find_all_expressions( i_type_9913 = t98 ).
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t99.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      DATA(t101) = VALUE i( ).
      DO.
        t96->load( ).
        IF t101 >= lines( t96->items ).
          EXIT.
        ENDIF.
        CLEAR t100.
        READ TABLE t96->items INDEX t101 + 1 INTO t100.
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
        DATA(t104) = t94.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        DATA t109 TYPE REF TO zcl_lnt_expression_node.
        DATA(t110) = t99.
        DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
        t109 = t110->find_direct_expression( i_type_9913 = t111 ).
        t108 = t109.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = t108.
        IF t114 IS INITIAL.
          t113 = abap_true.
        ENDIF.
        IF t113 = abap_true.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t112 = t115.
        ELSE.
          DATA t116 TYPE string.
          DATA t117 TYPE REF TO zcl_lnt_expression_node.
          DATA(t118) = t108.
          t117 = t118.
          t116 = t117->concat_tokens( ).
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t116.
          t112 = t119.
        ENDIF.
        t107 = t112.
        t106 = t107.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = t106.
        IF t122 IS INITIAL.
          t121 = abap_true.
        ELSEIF t122->has = abap_false.
          t121 = abap_true.
        ENDIF.
        IF t121 = abap_true.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t120 = t123.
        ELSE.
          DATA t124 TYPE string.
          DATA t125 TYPE string.
          DATA(t126) = t106.
          t125 = t126->value.
          DATA(t127) = strlen( t125 ).
          t124 = t125.
          IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t124 TO UPPER CASE.
          ELSE.
            t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
          ENDIF.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t124.
          t120 = t128.
        ENDIF.
        t105 = t120.
        t104->load( ).
        APPEND t105 TO t104->items.
        t104->save( ).
      ENDDO.
      DATA(t129) = t94.
      t93 = t129.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      DATA(t131) = VALUE i( ).
      DO.
        t93->load( ).
        IF t131 >= lines( t93->items ).
          EXIT.
        ENDIF.
        CLEAR t130.
        READ TABLE t93->items INDEX t131 + 1 INTO t130.
        t131 = t131 + 1.
        DATA(t132) = VALUE abap_bool( ).
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t134) = t130.
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        t135 = t136.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = VALUE abap_bool( ).
        DATA(t139) = t133.
        IF t139 IS INITIAL.
          t138 = abap_true.
        ELSEIF t139->has = abap_false.
          t138 = abap_true.
        ENDIF.
        t137 = xsdbool( t138 = abap_false ).
        t132 = t137.
        IF t132 = abap_true.
          DATA(t140) = t91.
          DATA(t141) = t130.
          t140->load( ).
          APPEND t141 TO t140->items.
          t140->save( ).
        ENDIF.
      ENDDO.
      DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t142.
      DATA(t143) = t91.
      IF t143->source IS BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `emit.go: array mutation: graph-backed storage requires live mutation ABI`.
      ENDIF.
      CREATE OBJECT t142.
      LOOP AT t143->items INTO DATA(t144).
        IF t144 IS NOT BOUND OR t144->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t144->value TO t142->items.
      ENDLOOP.
      t90 = t142.
      t89 = t90.
      DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t146) = t1.
      DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
      t145 = t146->find_all_expressions( i_type_9913 = t147 ).
      DATA t148 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t148.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      DATA(t150) = VALUE i( ).
      DO.
        t145->load( ).
        IF t150 >= lines( t145->items ).
          EXIT.
        ENDIF.
        CLEAR t149.
        READ TABLE t145->items INDEX t150 + 1 INTO t149.
        t150 = t150 + 1.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        CLEAR t148.
        IF t149 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t151 ?= t149.
          DATA t152 TYPE REF TO object.
          t152 = t151->as_ref( ).
          t148 ?= t152.
        ELSE.
          t148 ?= t149.
        ENDIF.
        DATA(t153) = VALUE i( ).
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t154.
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t158) = t148.
        DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
        t157 = t158->find_all_expressions( i_type_9913 = t159 ).
        DATA t160 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t160.
        DATA t161 TYPE REF TO object.
        CLEAR t161.
        DATA(t162) = VALUE i( ).
        DO.
          t157->load( ).
          IF t162 >= lines( t157->items ).
            EXIT.
          ENDIF.
          CLEAR t161.
          READ TABLE t157->items INDEX t162 + 1 INTO t161.
          t162 = t162 + 1.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          CLEAR t160.
          IF t161 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t163 ?= t161.
            DATA t164 TYPE REF TO object.
            t164 = t163->as_ref( ).
            t160 ?= t164.
          ELSE.
            t160 ?= t161.
          ENDIF.
          DATA(t165) = t155.
          DATA t166 TYPE string.
          DATA t167 TYPE string.
          DATA(t168) = t160.
          t167 = t168->concat_tokens( ).
          DATA(t169) = strlen( t167 ).
          t166 = t167.
          IF t166 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t166 TO UPPER CASE.
          ELSE.
            t166 = zlnt_runtime_uppe_91169605024d=>full( t166 ).
          ENDIF.
          t165->load( ).
          APPEND t166 TO t165->items.
          t165->save( ).
        ENDDO.
        DATA(t170) = t155.
        t154 = t170.
        DATA(t171) = VALUE string( ).
        t154->dense( ).
        DATA(t172) = VALUE i( ).
        DO.
          t154->load( ).
          IF t172 >= lines( t154->items ).
            EXIT.
          ENDIF.
          CLEAR t171.
          READ TABLE t154->items INDEX t172 + 1 INTO t171.
          IF t154->has( t172 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t172 = t172 + 1.
          DATA(t173) = t89.
          DATA(t174) = t171.
          t173->load( ).
          APPEND t174 TO t173->items.
          t173->save( ).
        ENDDO.
        DATA t175 TYPE i.
        DATA(t176) = t89.
        t176->load( ).
        t175 = lines( t176->items ).
        t153 = t175.
      ENDDO.
      DATA(t177) = t89.
      DATA t178 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t179 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t180 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CREATE OBJECT t180.
      t179 = t180.
      DATA(t181) = t179.
      DATA(t182) = t84.
      t181->load( ).
      APPEND t182 TO t181->items.
      t181->save( ).
      DATA(t183) = t179.
      t178 = t183.
      DATA(t184) = t2.
      DATA t185 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t186) = t1.
      t185 = t186->get_first_token( ).
      zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t177 i_db_sources = t178 i_input_967e = t184 i_token = t185 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d888_3da74a56cced.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
