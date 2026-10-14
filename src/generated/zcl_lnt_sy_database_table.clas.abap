* TS: src/abap/5_syntax/expressions/database_table.ts:8:1 DatabaseTable
CLASS zcl_lnt_sy_database_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_union_c74a232f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_database_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    t4 = t5->get_first_token(  ).
    t3 = t4.
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = CAST zcl_lnt_abstract_token( t3 ).
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = CAST zcl_lnt_abstract_token( t8 ).
    t10 = t11->str.
    t7 = t10.
    t6 = t7.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t6.
    DATA(t15) = |*|.
    DATA(t16) = strlen( t14 ).
    DATA t17 TYPE i.
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE string( ).
    t17 = strlen( t15 ).
    IF t17 = 0.
      t13 = abap_true.
    ELSEIF t17 <= t16.
      t18 = 0.
      t19 = t14+t18(t17).
      IF t19 = t15.
        t13 = abap_true.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    DATA(t22) = t12.
    IF t22 = abap_true.
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE string.
      DATA(t25) = t6.
      t24 = t25.
      DATA(t26) = VALUE string( ).
      DATA(t27) = t24.
      DATA(t28) = 1.
      DATA t29 TYPE i.
      DATA(t30) = t24.
      DATA(t31) = strlen( t30 ).
      t29 = t31.
      DATA(t32) = strlen( t27 ).
      t28 = COND i( WHEN t28 < 0 THEN 0 WHEN t28 > t32 THEN t32 ELSE t28 ).
      t29 = COND i( WHEN t29 < 0 THEN 0 WHEN t29 > t32 THEN t32 ELSE t29 ).
      IF t28 > t29.
        t32 = t28.
        t28 = t29.
        t29 = t32.
      ENDIF.
      t32 = t29 - t28.
      t26 = t27+t28(t32).
      t23 = t26.
      t21 = t23.
    ELSE.
      DATA(t33) = t6.
      t21 = t33.
    ENDIF.
    t20 = t21.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t20.
    DATA(t36) = |(|.
    t34 = xsdbool( t35 = t36 ).
    IF t34 = abap_true.
      DATA t37 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t37.
      result = t37.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_ddic.
    DATA t41 TYPE REF TO zcl_lnt_current_scope.
    DATA t42 TYPE REF TO zcl_lnt_current_scope.
    DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
    t42 = t43->scope.
    t41 = t42.
    DATA t44 TYPE REF TO zcl_lnt_ddic.
    DATA t45 TYPE REF TO zif_lnt_registry.
    DATA(t46) = CAST zcl_lnt_current_scope( t41 ).
    t45 = t46->reg.
    t44 = NEW zcl_lnt_ddic( i_reg_f149 = t45 ).
    t40 = t44.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA(t48) = abap_true.
    IF t48 = abap_true.
      DATA(t49) = t20.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t47 = t51.
    ENDIF.
    t39 = t40->lookup_table_or_view2( i_name = t47 ).
    t38 = t39.
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zif_lnt_union_c74a232f.
    DATA(t55) = CAST zif_lnt_union_c74a232f( t38 ).
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    t56 = t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = CAST zif_lnt_union_c74a232f( t54 ).
    IF t59 IS INITIAL.
      t58 = abap_true.
    ENDIF.
    t53 = t58.
    t52 = t53.
    IF t53 = abap_true.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE REF TO zcl_lnt_ddic.
      DATA t63 TYPE REF TO zcl_lnt_ddic.
      DATA t64 TYPE REF TO zcl_lnt_current_scope.
      DATA t65 TYPE REF TO zcl_lnt_current_scope.
      DATA(t66) = CAST zcl_lnt_syntax_input( t2 ).
      t65 = t66->scope.
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_ddic.
      DATA t68 TYPE REF TO zif_lnt_registry.
      DATA(t69) = CAST zcl_lnt_current_scope( t64 ).
      t68 = t69->reg.
      t67 = NEW zcl_lnt_ddic( i_reg_f149 = t68 ).
      t63 = t67.
      t62 = t63.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA(t72) = abap_true.
      IF t72 = abap_true.
        DATA(t73) = t20.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = t73.
        t71 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t71 = t75.
      ENDIF.
      t70 = t71.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t79) = CAST zlnt_runtime_opti_4ba3bdccd169( t70 ).
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      t80 = t81.
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = CAST zlnt_runtime_opti_4ba3bdccd169( t78 ).
      IF t83 IS INITIAL.
        t82 = abap_true.
      ELSEIF t83->has = abap_false.
        t82 = abap_true.
      ENDIF.
      t77 = t82.
      IF t77 = abap_true.
        DATA(t84) = abap_true.
        t76 = t84.
      ELSE.
        DATA t85 TYPE abap_bool.
        DATA t86 TYPE REF TO zif_lnt_registry.
        DATA(t87) = CAST zcl_lnt_ddic( t62 ).
        t86 = t87->reg.
        DATA t88 TYPE string.
        DATA(t89) = CAST zlnt_runtime_opti_4ba3bdccd169( t70 ).
        t88 = t89->value.
        t85 = t86->in_error_namespace( i_name = t88 ).
        t76 = t85.
      ENDIF.
      t61 = t76.
      DATA(t90) = abap_true.
      t60 = xsdbool( t61 = t90 ).
      t52 = t60.
    ENDIF.
    IF t52 = abap_true.
      DATA t91 TYPE string.
      DATA t92 TYPE string.
      DATA t93 TYPE string.
      DATA(t94) = |Database table or view "|.
      DATA(t95) = t20.
      DATA(t96) = strlen( t94 ).
      t93 = |{ t94 }{ t95 }|.
      DATA(t97) = |" not found|.
      DATA(t98) = strlen( t93 ).
      t92 = |{ t93 }{ t97 }|.
      t91 = t92.
      DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t100) = CAST zcl_lnt_syntax_input( t2 ).
      t99 = t100->issues.
      DATA t101 TYPE REF TO zcl_lnt_issue.
      DATA(t102) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t103 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t104) = CAST zcl_lnt_expression_node( t1 ).
      t103 = t104->get_first_token(  ).
      DATA(t105) = t91.
      DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t106.
      t101 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t102 i_token = t103 i_message_26cb = t105 i_fix = t106 ).
      APPEND t101 TO t99->items.
    ELSE.
      DATA(t107) = VALUE abap_bool( ).
      DATA t108 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t109) = CAST zif_lnt_union_c74a232f( t38 ).
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      t110 = t111.
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = CAST zif_lnt_union_c74a232f( t108 ).
      IF t113 IS INITIAL.
        t112 = abap_true.
      ENDIF.
      t107 = t112.
      IF t107 = abap_true.
        DATA t114 TYPE REF TO zcl_lnt_current_scope.
        DATA(t115) = CAST zcl_lnt_syntax_input( t2 ).
        t114 = t115->scope.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t116.
        DATA(t117) = abap_true.
        IF t117 = abap_true.
          DATA(t118) = CAST zcl_lnt_abstract_token( t3 ).
          t116 = t118.
        ELSE.
          DATA t119 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t119.
          t116 = t119.
        ENDIF.
        DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t120.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t122) = |Table (Void)|.
        CREATE OBJECT t121.
        t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t121->sval = t122.
        DATA t123 TYPE string.
        DATA(t124) = CAST zcl_lnt_syntax_input( t2 ).
        t123 = t124->filename.
        DATA t125 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t125.
        t114->add_reference( i_usage = t116 i_referencing = t120 i_type_9913 = t121 i_filename = t123 i_extra = t125 ).
      ELSE.
        DATA t126 TYPE REF TO zcl_lnt_current_scope.
        DATA(t127) = CAST zcl_lnt_syntax_input( t2 ).
        t126 = t127->scope.
        DATA t128 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = CAST zcl_lnt_abstract_token( t3 ).
          t128 = t130.
        ELSE.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t131.
          t128 = t131.
        ENDIF.
        DATA t132 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t133 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t134) = CAST zif_lnt_union_c74a232f( t38 ).
        t133 = t134.
        t132 = t133->get_identifier(  ).
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t136) = |Table|.
        CREATE OBJECT t135.
        t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t135->sval = t136.
        DATA t137 TYPE string.
        DATA(t138) = CAST zcl_lnt_syntax_input( t2 ).
        t137 = t138->filename.
        DATA t139 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t139.
        t126->add_reference( i_usage = t128 i_referencing = t132 i_type_9913 = t135 i_filename = t137 i_extra = t139 ).
        DATA t140 TYPE REF TO zif_lnt_ddic_references.
        DATA t141 TYPE REF TO zcl_lnt_current_scope.
        DATA t142 TYPE REF TO zcl_lnt_current_scope.
        DATA(t143) = CAST zcl_lnt_syntax_input( t2 ).
        t142 = t143->scope.
        t141 = t142.
        DATA t144 TYPE REF TO zif_lnt_ddic_references.
        DATA t145 TYPE REF TO zif_lnt_registry.
        DATA(t146) = CAST zcl_lnt_current_scope( t141 ).
        t145 = t146->reg.
        t144 = t145->get_ddic_references(  ).
        t140 = t144.
        DATA t147 TYPE REF TO zif_lnt_object.
        DATA t148 TYPE REF TO zcl_lnt_current_scope.
        DATA t149 TYPE REF TO zcl_lnt_current_scope.
        DATA(t150) = CAST zcl_lnt_syntax_input( t2 ).
        t149 = t150->scope.
        t148 = t149.
        DATA t151 TYPE REF TO zif_lnt_object.
        DATA(t152) = CAST zcl_lnt_current_scope( t148 ).
        t151 = t152->parent_obj.
        t147 = t151.
        DATA t153 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA t155 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t155.
          DATA t156 TYPE REF TO zif_lnt_object.
          DATA t157 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t158) = CAST zif_lnt_union_c74a232f( t38 ).
          t157 = t158.
          t156 ?= t157.
          DATA t159 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA(t161) = CAST zcl_lnt_abstract_token( t3 ).
            t159 = t161.
          ELSE.
            DATA t162 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t162.
            t159 = t162.
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          DATA(t164) = abap_true.
          IF t164 = abap_true.
            DATA t165 TYPE string.
            DATA(t166) = CAST zcl_lnt_syntax_input( t2 ).
            t165 = t166->filename.
            DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t167->has = abap_true.
            t167->value = t165.
            t163 = t167.
          ELSE.
            DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t168.
            t163 = t168.
          ENDIF.
          t155 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t156 i_token = t159 i_filename = t163 ).
          t153 = t155.
        ELSE.
          DATA t169 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t169.
          t153 = t169.
        ENDIF.
        t140->add_using( i_obj_1ed0 = t147 i_using = t153 ).
      ENDIF.
    ENDIF.
    DATA(t170) = CAST zif_lnt_union_c74a232f( t38 ).
    result = t170.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d776_0af84275feed.
  ENDMETHOD.
ENDCLASS.
