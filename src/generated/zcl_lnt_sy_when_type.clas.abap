* TS: src/abap/5_syntax/statements/when_type.ts:11:1 WhenType
CLASS zcl_lnt_sy_when_type DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_when_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t5.
      t14 = t15.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t3.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abstract_type.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE string( ).
    DATA t26 TYPE string.
    DATA t27 TYPE string.
    DATA t28 TYPE REF TO zcl_lnt_abstract_token.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t30) = t3.
    t29 = t30.
    t28 = t29.
    DATA t31 TYPE string.
    DATA(t32) = t28.
    t31 = t32->str.
    t27 = t31.
    DATA(t33) = strlen( t27 ).
    t26 = t27.
    IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t26 TO UPPER CASE.
    ELSE.
      t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
    ENDIF.
    t25 = t26.
    DATA t34 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_current_scope.
    DATA(t37) = t2.
    t36 = t37->scope.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA(t39) = abap_true.
    IF t39 = abap_true.
      DATA(t40) = t25.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t40.
      t38 = t41.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t38 = t42.
    ENDIF.
    t35 = t36->exists_object( i_name = t38 ).
    t34 = t35.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_shape_59e28496.
    DATA(t46) = t34.
    t45 = t46.
    DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t47.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = t45.
    IF t49 IS INITIAL.
      t48 = abap_true.
    ENDIF.
    IF t48 = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t50.
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t52 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t53) = t45.
      t52 = t53.
      t51 = t52->id.
      t47 = t51.
    ENDIF.
    t44 = t47.
    t43 = xsdbool( t44 IS BOUND ).
    IF t43 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t57 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t58) = t34.
      t57 = t58.
      t56 = t57->id.
      t55 = t56.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t59.
      t54 = NEW zcl_lnt_object_reference_type( i_id = t55 i_extra = t59 ).
      t23 = t54.
      DATA t60 TYPE REF TO zcl_lnt_current_scope.
      DATA(t61) = t2.
      t60 = t61->scope.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t62.
      DATA(t63) = abap_true.
      IF t63 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t65) = t3.
        t64 = t65.
        t62 = t64.
      ELSE.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t66.
        t62 = t66.
      ENDIF.
      DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t67.
      DATA(t68) = abap_true.
      IF t68 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t71 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t72) = t34.
        t71 = t72.
        t70 = t71->id.
        t69 = t70.
        t67 = t69.
      ELSE.
        DATA t73 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t73.
        t67 = t73.
      ENDIF.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      DATA(t75) = |Object|.
      CLEAR t74.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t74->sval = t75.
      DATA t76 TYPE string.
      DATA(t77) = t2.
      t76 = t77->filename.
      DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t78.
      t60->add_reference( i_usage = t62 i_referencing = t67 i_type_9913 = t74 i_filename = t76 i_extra = t78 ).
    ELSE.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE abap_bool( ).
      DATA t81 TYPE REF TO zcl_lnt_ddic.
      DATA t82 TYPE REF TO zcl_lnt_ddic.
      DATA t83 TYPE REF TO zcl_lnt_current_scope.
      DATA t84 TYPE REF TO zcl_lnt_current_scope.
      DATA(t85) = t2.
      t84 = t85->scope.
      t83 = t84.
      DATA t86 TYPE REF TO zcl_lnt_ddic.
      DATA t87 TYPE REF TO zif_lnt_registry.
      DATA(t88) = t83.
      t87 = t88->reg.
      t86 = NEW zcl_lnt_ddic( i_reg_f149 = t87 ).
      t82 = t86.
      t81 = t82.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA(t91) = abap_true.
      IF t91 = abap_true.
        DATA(t92) = t25.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t92.
        t90 = t93.
      ELSE.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t90 = t94.
      ENDIF.
      t89 = t90.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t98) = t89.
      t97 = t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      t99 = t100.
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = t97.
      IF t102 IS INITIAL.
        t101 = abap_true.
      ELSEIF t102->has = abap_false.
        t101 = abap_true.
      ENDIF.
      t96 = t101.
      IF t96 = abap_true.
        DATA(t103) = abap_true.
        t95 = t103.
      ELSE.
        DATA t104 TYPE abap_bool.
        DATA t105 TYPE REF TO zif_lnt_registry.
        DATA(t106) = t81.
        t105 = t106->reg.
        DATA t107 TYPE string.
        DATA(t108) = t89.
        t107 = t108->value.
        t104 = t105->in_error_namespace( i_name = t107 ).
        t95 = t104.
      ENDIF.
      t80 = t95.
      DATA(t109) = abap_false.
      t79 = xsdbool( t80 = t109 ).
      IF t79 = abap_true.
        DATA t110 TYPE REF TO zcl_lnt_void_type.
        CLEAR t110.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA(t112) = abap_true.
        IF t112 = abap_true.
          DATA(t113) = t25.
          DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t114->has = abap_true.
          t114->value = t113.
          t111 = t114.
        ELSE.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t111 = t115.
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        t110 = zcl_lnt_void_type=>get_db65( i_voided = t111 i_qualified_name = t116 ).
        t23 = t110.
        DATA t117 TYPE REF TO zcl_lnt_current_scope.
        DATA(t118) = t2.
        t117 = t118->scope.
        DATA t119 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t119.
        DATA(t120) = abap_true.
        IF t120 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t122) = t3.
          t121 = t122.
          t119 = t121.
        ELSE.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t123.
          t119 = t123.
        ENDIF.
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        DATA(t126) = |Object (Void)|.
        CLEAR t125.
        CREATE OBJECT t125.
        t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t125->sval = t126.
        DATA t127 TYPE string.
        DATA(t128) = t2.
        t127 = t128->filename.
        DATA t129 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA(t134) = abap_true.
          IF t134 = abap_true.
            DATA(t135) = t25.
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t135.
            t133 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t133 = t137.
          ENDIF.
          t132 = t133.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA(t140) = abap_true.
          IF t140 = abap_true.
            DATA(t141) = |Void|.
            DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t142->has = abap_true.
            t142->value = t141.
            t139 = t142.
          ELSE.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            t139 = t143.
          ENDIF.
          t138 = t139.
          DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t145.
          t144 = t145.
          t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t138 i_found_qualified = t144 ).
          CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
          t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t147 ).
          ENDIF.
          CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
          t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t148) = |ooName|.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
          ENDIF.
          DATA(t150) = |ooType|.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
          ENDIF.
          t129 = t131.
        ELSE.
          DATA t152 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t152.
          t129 = t152.
        ENDIF.
        t117->add_reference( i_usage = t119 i_referencing = t124 i_type_9913 = t125 i_filename = t127 i_extra = t129 ).
      ELSE.
        DATA t153 TYPE string.
        DATA t154 TYPE string.
        DATA t155 TYPE string.
        DATA(t156) = |Class |.
        DATA(t157) = t25.
        DATA(t158) = strlen( t156 ).
        t155 = |{ t156 }{ t157 }|.
        DATA(t159) = | not found|.
        DATA(t160) = strlen( t155 ).
        t154 = |{ t155 }{ t159 }|.
        t153 = t154.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t162) = t2.
        t161 = t162->issues.
        DATA t163 TYPE REF TO zcl_lnt_issue.
        DATA(t164) = t2.
        DATA t165 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t166) = t3.
        t165 = t166.
        DATA(t167) = t153.
        DATA t168 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t168.
        t163 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t164 i_token = t165 i_message_26cb = t167 i_fix = t168 ).
        t161->load( ).
        APPEND t163 TO t161->items.
        t161->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t169 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t169.
    DATA t170 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t170.
    DATA t171 TYPE REF TO zcl_lnt_statement_node.
    DATA(t172) = t1.
    t171 = t172.
    DATA t173 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t173.
    DATA(t174) = VALUE abap_bool( ).
    DATA(t175) = t171.
    IF t175 IS INITIAL.
      t174 = abap_true.
    ENDIF.
    IF t174 = abap_true.
      DATA t176 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t176.
      t173 = t176.
    ELSE.
      DATA t177 TYPE REF TO zcl_lnt_expression_node.
      DATA(t178) = t171.
      DATA(t179) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t177 = t178->find_direct_expression( i_type_9913 = t179 ).
      t173 = t177.
    ENDIF.
    t170 = t173.
    t169 = t170.
    DATA t180 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t180.
    DATA t181 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t181.
    DATA t182 TYPE REF TO zcl_lnt_expression_node.
    DATA(t183) = t169.
    t182 = t183.
    DATA t184 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t184.
    DATA(t185) = VALUE abap_bool( ).
    DATA(t186) = t182.
    IF t186 IS INITIAL.
      t185 = abap_true.
    ENDIF.
    IF t185 = abap_true.
      DATA t187 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t187.
      t184 = t187.
    ELSE.
      DATA t188 TYPE REF TO zcl_lnt_expression_node.
      DATA t189 TYPE REF TO zcl_lnt_expression_node.
      DATA(t190) = t182.
      t189 = t190.
      DATA(t191) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t188 = t189->find_direct_expression( i_type_9913 = t191 ).
      t184 = t188.
    ENDIF.
    t181 = t184.
    t180 = t181.
    DATA t192 TYPE abap_bool.
    DATA(t193) = t180.
    t192 = xsdbool( t193 IS BOUND ).
    IF t192 = abap_true.
      DATA t194 TYPE REF TO zcl_lnt_expression_node.
      DATA(t195) = t180.
      t194 = t195.
      DATA(t196) = t2.
      DATA t197 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t197.
      DATA(t198) = abap_true.
      IF t198 = abap_true.
        DATA t199 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t200) = t23.
        t199 = t200.
        t197 = t199.
      ELSE.
        DATA t201 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t201.
        t197 = t201.
      ENDIF.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t194 i_input_967e = t196 i_type_9913 = t197 ).
    ELSE.
      DATA t202 TYPE abap_bool.
      DATA(t203) = t169.
      t202 = xsdbool( t203 IS BOUND ).
      IF t202 = abap_true.
        DATA t204 TYPE REF TO zcl_lnt_abstract_type.
        DATA t205 TYPE REF TO zcl_lnt_expression_node.
        DATA(t206) = t169.
        t205 = t206.
        DATA(t207) = t2.
        t204 = zcl_lnt_sy_target=>run_syntax( i_node = t205 i_input_967e = t207 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d985_a5bb0f4f58f1.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
