* TS: src/abap/5_syntax/statements/assign.ts:12:1 Assign
CLASS zcl_lnt_sy_assign DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_assign IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = CAST zcl_lnt_expression_node( t3 ).
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zcl_lnt_expression_node( t14 ).
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_node.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_node.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = CAST zcl_lnt_expression_node( t14 ).
      t23 = t24.
      t22 = t23.
      DATA t25 TYPE REF TO zif_lnt_node.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_node.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t29) = CAST zcl_lnt_abstract_node( t22 ).
        t28 = t29->children.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        READ TABLE t28->items INDEX 1 INTO t30.
        t27 ?= t30.
        t25 = t27.
      ELSE.
        DATA t31 TYPE REF TO zif_lnt_node.
        CLEAR t31.
        t25 = t31.
      ENDIF.
      t21 = t25.
      t20 ?= t21.
      t16 = t20.
    ENDIF.
    t13 = t16.
    t12 = t13.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zif_lnt_union_4cf1d054( t12 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t38) = CAST zif_lnt_union_4cf1d054( t12 ).
      t37 = t38.
      t36 = t37->concat_tokens( ).
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t36.
      t32 = t39.
    ENDIF.
    t11 = t32.
    t10 = t11.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
    IF t42 IS INITIAL.
      t41 = abap_true.
    ELSEIF t42->has = abap_false.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t40 = t43.
    ELSE.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA(t46) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
      t45 = t46->value.
      DATA(t47) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t44.
      t40 = t48.
    ENDIF.
    t9 = t40.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA(t51) = |COMPONENT|.
      DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t52->has = abap_true.
      t52->value = t51.
      t49 = t52.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      t49 = t53.
    ENDIF.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t54 = t9->has.
    ENDIF.
    IF t49 IS BOUND.
      t55 = t49->has.
    ENDIF.
    IF t54 = t55.
      IF t54 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t49->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    t7 = t8.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    DATA(t61) = CAST zcl_lnt_expression_node( t3 ).
    t60 = t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = CAST zcl_lnt_expression_node( t60 ).
    IF t64 IS INITIAL.
      t63 = abap_true.
    ENDIF.
    IF t63 = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t65.
      t62 = t65.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      DATA(t68) = CAST zcl_lnt_expression_node( t60 ).
      t67 = t68.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t71.
      t70 = t71.
      DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
      DATA(t73) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      APPEND t73 TO t72->items.
      DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
      DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
      APPEND t75 TO t74->items.
      DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
      t69 = t76.
      t66 = t67->find_direct_expressions_multi( i_type_9913 = t69 ).
      t62 = t66.
    ENDIF.
    t59 = t62.
    t58 = t59.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE abap_bool.
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t78 = xsdbool( t79 IS BOUND ).
    IF t78 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
      t80 = t81.
      t77 = t80.
    ELSE.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t82.
      t77 = t82.
    ENDIF.
    t57 = t77.
    t56 = t57.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    DATA t84 TYPE REF TO zcl_lnt_expression_node.
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
    DATA t86 TYPE i.
    DATA t87 TYPE i.
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
    t87 = lines( t88->items ).
    DATA(t89) = 1.
    t86 = t87 - t89.
    t86 = t86 + 1.
    DATA t90 TYPE REF TO object.
    CLEAR t90.
    READ TABLE t85->items INDEX t86 INTO t90.
    t84 ?= t90.
    t83 = t84.
    DATA t91 TYPE REF TO zcl_lnt_abstract_type.
    DATA t92 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t92.
    t91 = t92.
    DATA t93 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_expression_node.
    DATA(t98) = CAST zcl_lnt_expression_node( t3 ).
    t97 = t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = CAST zcl_lnt_expression_node( t97 ).
    IF t101 IS INITIAL.
      t100 = abap_true.
    ENDIF.
    IF t100 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t102.
      t99 = t102.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t105 TYPE REF TO zcl_lnt_abstract_node.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      DATA(t107) = CAST zcl_lnt_expression_node( t97 ).
      t106 = t107.
      t105 = t106.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t109) = CAST zcl_lnt_abstract_node( t105 ).
      t108 = t109->children.
      t104 = t108.
      t103 ?= t104.
      t99 = t103.
    ENDIF.
    t96 = t99.
    t95 = t96.
    DATA t110 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t110.
    DATA(t111) = VALUE abap_bool( ).
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    IF t112 IS INITIAL.
      t111 = abap_true.
    ENDIF.
    IF t111 = abap_true.
      DATA t113 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t113.
      t110 = t113.
    ELSE.
      DATA t114 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t116) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
      t115 = t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      READ TABLE t115->items INDEX 1 INTO t117.
      t114 ?= t117.
      t110 = t114.
    ENDIF.
    t94 = t110.
    t93 = t94.
    DATA t118 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_expression_node.
    DATA(t123) = CAST zcl_lnt_expression_node( t3 ).
    t122 = t123.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    DATA(t125) = VALUE abap_bool( ).
    DATA(t126) = CAST zcl_lnt_expression_node( t122 ).
    IF t126 IS INITIAL.
      t125 = abap_true.
    ENDIF.
    IF t125 = abap_true.
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t127.
      t124 = t127.
    ELSE.
      DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t130 TYPE REF TO zcl_lnt_abstract_node.
      DATA t131 TYPE REF TO zcl_lnt_expression_node.
      DATA(t132) = CAST zcl_lnt_expression_node( t122 ).
      t131 = t132.
      t130 = t131.
      DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t134) = CAST zcl_lnt_abstract_node( t130 ).
      t133 = t134->children.
      t129 = t133.
      t128 ?= t129.
      t124 = t128.
    ENDIF.
    t121 = t124.
    t120 = t121.
    DATA t135 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t135.
    DATA(t136) = VALUE abap_bool( ).
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
    IF t137 IS INITIAL.
      t136 = abap_true.
    ENDIF.
    IF t136 = abap_true.
      DATA t138 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t138.
      t135 = t138.
    ELSE.
      DATA t139 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
      t140 = t141.
      DATA t142 TYPE REF TO object.
      CLEAR t142.
      READ TABLE t140->items INDEX 2 INTO t142.
      t139 ?= t142.
      t135 = t139.
    ENDIF.
    t119 = t135.
    t118 = t119.
    DATA t143 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t146.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    DATA(t148) = CAST zcl_lnt_expression_node( t3 ).
    t147 = t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = CAST zcl_lnt_expression_node( t147 ).
    IF t151 IS INITIAL.
      t150 = abap_true.
    ENDIF.
    IF t150 = abap_true.
      DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t152.
      t149 = t152.
    ELSE.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t155 TYPE REF TO zcl_lnt_abstract_node.
      DATA t156 TYPE REF TO zcl_lnt_expression_node.
      DATA(t157) = CAST zcl_lnt_expression_node( t147 ).
      t156 = t157.
      t155 = t156.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t159) = CAST zcl_lnt_abstract_node( t155 ).
      t158 = t159->children.
      t154 = t158.
      t153 ?= t154.
      t149 = t153.
    ENDIF.
    t146 = t149.
    t145 = t146.
    DATA t160 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t160.
    DATA(t161) = VALUE abap_bool( ).
    DATA(t162) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    IF t162 IS INITIAL.
      t161 = abap_true.
    ENDIF.
    IF t161 = abap_true.
      DATA t163 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t163.
      t160 = t163.
    ELSE.
      DATA t164 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t166) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
      t165 = t166.
      DATA t167 TYPE REF TO object.
      CLEAR t167.
      READ TABLE t165->items INDEX 3 INTO t167.
      t164 ?= t167.
      t160 = t164.
    ENDIF.
    t144 = t160.
    t143 = t144.
    DATA(t168) = VALUE abap_bool( ).
    DATA(t169) = VALUE abap_bool( ).
    DATA(t170) = VALUE abap_bool( ).
    DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t173) = CAST zif_lnt_union_4cf1d054( t118 ).
    t172 = t173.
    DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t174.
    DATA(t175) = VALUE abap_bool( ).
    DATA(t176) = CAST zif_lnt_union_4cf1d054( t172 ).
    IF t176 IS INITIAL.
      t175 = abap_true.
    ENDIF.
    IF t175 = abap_true.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      t174 = t177.
    ELSE.
      DATA t178 TYPE string.
      DATA t179 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t180) = CAST zif_lnt_union_4cf1d054( t172 ).
      t179 = t180.
      t178 = t179->concat_tokens( ).
      DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t181->has = abap_true.
      t181->value = t178.
      t174 = t181.
    ENDIF.
    t171 = t174.
    DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t182.
    DATA(t183) = abap_true.
    IF t183 = abap_true.
      DATA(t184) = |=>|.
      DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t185->has = abap_true.
      t185->value = t184.
      t182 = t185.
    ELSE.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      t182 = t186.
    ENDIF.
    DATA(t187) = VALUE abap_bool( ).
    DATA(t188) = VALUE abap_bool( ).
    IF t171 IS BOUND.
      t187 = t171->has.
    ENDIF.
    IF t182 IS BOUND.
      t188 = t182->has.
    ENDIF.
    IF t187 = t188.
      IF t187 = abap_false.
        t170 = abap_true.
      ELSEIF t171->value = t182->value.
        t170 = abap_true.
      ENDIF.
    ENDIF.
    t169 = t170.
    IF t170 = abap_true.
      DATA t189 TYPE abap_bool.
      DATA(t190) = CAST zif_lnt_union_4cf1d054( t93 ).
      t189 = xsdbool( t190 IS BOUND ).
      t169 = t189.
    ENDIF.
    t168 = t169.
    IF t169 = abap_true.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t192.
      DATA t193 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t194) = CAST zif_lnt_union_4cf1d054( t143 ).
      t193 = t194.
      DATA t195 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t195.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = CAST zif_lnt_union_4cf1d054( t193 ).
      IF t197 IS INITIAL.
        t196 = abap_true.
      ENDIF.
      IF t196 = abap_true.
        DATA t198 TYPE REF TO zif_lnt_union_daf022d4.
        CLEAR t198.
        t195 = t198.
      ELSE.
        DATA t199 TYPE REF TO zif_lnt_union_daf022d4.
        DATA t200 TYPE REF TO object.
        DATA t201 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t202) = CAST zif_lnt_union_4cf1d054( t193 ).
        t201 = t202.
        t200 = t201->get_db65( ).
        DATA t203 TYPE REF TO object.
        t203 = t200.
        t199 ?= t203.
        t195 = t199.
      ENDIF.
      t192 = t195.
      t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_st_dynamic ).
      t168 = t191.
    ENDIF.
    IF t168 = abap_true.
      DATA t204 TYPE string.
      DATA t205 TYPE string.
      DATA t206 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t207) = CAST zif_lnt_union_4cf1d054( t93 ).
      t206 = t207.
      t205 = t206->concat_tokens( ).
      t204 = t205.
      DATA t208 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t208.
      DATA t209 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t209.
      DATA t210 TYPE REF TO zif_lnt_class_definition.
      CLEAR t210.
      DATA t211 TYPE REF TO zif_lnt_class_definition.
      CLEAR t211.
      DATA t212 TYPE REF TO zcl_lnt_current_scope.
      DATA t213 TYPE REF TO zcl_lnt_current_scope.
      DATA(t214) = CAST zcl_lnt_syntax_input( t2 ).
      t213 = t214->scope.
      t212 = t213.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t216.
      DATA(t217) = abap_true.
      IF t217 = abap_true.
        DATA(t218) = t204.
        DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t219->has = abap_true.
        t219->value = t218.
        t216 = t219.
      ELSE.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t220.
        t216 = t220.
      ENDIF.
      t215 = t216.
      DATA t221 TYPE REF TO zif_lnt_class_definition.
      CLEAR t221.
      DATA(t222) = VALUE abap_bool( ).
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t224) = CAST zlnt_runtime_opti_4ba3bdccd169( t215 ).
      t223 = t224.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t226.
      t225 = t226.
      DATA(t227) = VALUE abap_bool( ).
      DATA(t228) = CAST zlnt_runtime_opti_4ba3bdccd169( t223 ).
      IF t228 IS INITIAL.
        t227 = abap_true.
      ELSEIF t228->has = abap_false.
        t227 = abap_true.
      ENDIF.
      t222 = t227.
      IF t222 = abap_true.
        DATA t229 TYPE REF TO zif_lnt_class_definition.
        CLEAR t229.
        t221 = t229.
      ELSE.
        DATA t230 TYPE REF TO zif_lnt_class_definition.
        CLEAR t230.
        DATA t231 TYPE REF TO zif_lnt_class_definition.
        CLEAR t231.
        DATA t232 TYPE REF TO zif_lnt_class_definition.
        CLEAR t232.
        DATA t233 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t234 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t235) = CAST zcl_lnt_current_scope( t212 ).
        t234 = t235->current.
        t233 = t234.
        DATA t236 TYPE REF TO zif_lnt_class_definition.
        CLEAR t236.
        DATA(t237) = VALUE abap_bool( ).
        DATA(t238) = CAST zcl_lnt_spaghetti_scope_node( t233 ).
        IF t238 IS INITIAL.
          t237 = abap_true.
        ENDIF.
        IF t237 = abap_true.
          DATA t239 TYPE REF TO zif_lnt_class_definition.
          CLEAR t239.
          t236 = t239.
        ELSE.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          DATA t241 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t242) = CAST zcl_lnt_spaghetti_scope_node( t233 ).
          t241 = t242.
          DATA t243 TYPE string.
          DATA(t244) = CAST zlnt_runtime_opti_4ba3bdccd169( t215 ).
          t243 = t244->value.
          t240 = t241->find_class_definition( i_name = t243 ).
          t236 = t240.
        ENDIF.
        t232 = t236.
        t231 = t232.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        CLEAR t245.
        DATA t246 TYPE abap_bool.
        DATA(t247) = CAST zif_lnt_class_definition( t231 ).
        t246 = xsdbool( t247 IS BOUND ).
        IF t246 = abap_true.
          DATA t248 TYPE REF TO zif_lnt_class_definition.
          CLEAR t248.
          DATA(t249) = abap_true.
          IF t249 = abap_true.
            DATA t250 TYPE REF TO zif_lnt_class_definition.
            DATA(t251) = CAST zif_lnt_class_definition( t231 ).
            t250 = t251.
            t248 = t250.
          ELSE.
            DATA t252 TYPE REF TO zif_lnt_class_definition.
            CLEAR t252.
            t248 = t252.
          ENDIF.
          t245 = t248.
        ELSE.
          DATA t253 TYPE REF TO zif_lnt_class_definition.
          CLEAR t253.
          DATA t254 TYPE REF TO zcl_lnt_class.
          CLEAR t254.
          DATA t255 TYPE REF TO zcl_lnt_class.
          CLEAR t255.
          DATA t256 TYPE REF TO zif_lnt_object.
          CLEAR t256.
          DATA t257 TYPE REF TO zif_lnt_registry.
          DATA(t258) = CAST zcl_lnt_current_scope( t212 ).
          t257 = t258->reg.
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t259.
          DATA(t260) = abap_true.
          IF t260 = abap_true.
            DATA(t261) = |CLAS|.
            DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t262->has = abap_true.
            t262->value = t261.
            t259 = t262.
          ELSE.
            DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t263.
            t259 = t263.
          ENDIF.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t264.
          DATA(t265) = abap_true.
          IF t265 = abap_true.
            DATA t266 TYPE string.
            DATA(t267) = CAST zlnt_runtime_opti_4ba3bdccd169( t215 ).
            t266 = t267->value.
            DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t268->has = abap_true.
            t268->value = t266.
            t264 = t268.
          ELSE.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t269.
            t264 = t269.
          ENDIF.
          t256 = t257->get_object( i_type_9913 = t259 i_name = t264 ).
          DATA t270 TYPE REF TO object.
          t270 = t256.
          t255 ?= t270.
          t254 = t255.
          DATA t271 TYPE REF TO zif_lnt_class_definition.
          CLEAR t271.
          DATA t272 TYPE abap_bool.
          DATA(t273) = CAST zcl_lnt_class( t254 ).
          t272 = xsdbool( t273 IS BOUND ).
          IF t272 = abap_true.
            DATA t274 TYPE REF TO zif_lnt_class_definition.
            DATA t275 TYPE REF TO zcl_lnt_class.
            DATA(t276) = CAST zcl_lnt_class( t254 ).
            t275 = t276.
            t274 = t275->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t271 = t274.
          ELSE.
            DATA t277 TYPE REF TO zif_lnt_class_definition.
            CLEAR t277.
            t271 = t277.
          ENDIF.
          t253 = t271.
          t245 = t253.
        ENDIF.
        t230 = t245.
        t221 = t230.
      ENDIF.
      t211 = t221.
      t210 = t211.
      DATA t278 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t278.
      DATA t279 TYPE abap_bool.
      DATA(t280) = CAST zif_lnt_class_definition( t210 ).
      t279 = xsdbool( t280 IS BOUND ).
      IF t279 = abap_true.
        DATA t281 TYPE REF TO zif_lnt_union_f405367a.
        DATA(t282) = CAST zif_lnt_class_definition( t210 ).
        t281 ?= t282.
        t278 = t281.
      ELSE.
        DATA t283 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t283.
        DATA t284 TYPE REF TO zcl_lnt_current_scope.
        DATA t285 TYPE REF TO zcl_lnt_current_scope.
        DATA(t286) = CAST zcl_lnt_syntax_input( t2 ).
        t285 = t286->scope.
        t284 = t285.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        DATA(t289) = abap_true.
        IF t289 = abap_true.
          DATA(t290) = t204.
          DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t291->has = abap_true.
          t291->value = t290.
          t288 = t291.
        ELSE.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          t288 = t292.
        ENDIF.
        t287 = t288.
        DATA t293 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t293.
        DATA(t294) = VALUE abap_bool( ).
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t296) = CAST zlnt_runtime_opti_4ba3bdccd169( t287 ).
        t295 = t296.
        DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        t297 = t298.
        DATA(t299) = VALUE abap_bool( ).
        DATA(t300) = CAST zlnt_runtime_opti_4ba3bdccd169( t295 ).
        IF t300 IS INITIAL.
          t299 = abap_true.
        ELSEIF t300->has = abap_false.
          t299 = abap_true.
        ENDIF.
        t294 = t299.
        IF t294 = abap_true.
          DATA t301 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t301.
          t293 = t301.
        ELSE.
          DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t302.
          DATA t303 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t303.
          DATA t304 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t304.
          DATA t305 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t306 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t307) = CAST zcl_lnt_current_scope( t284 ).
          t306 = t307->current.
          t305 = t306.
          DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t308.
          DATA(t309) = VALUE abap_bool( ).
          DATA(t310) = CAST zcl_lnt_spaghetti_scope_node( t305 ).
          IF t310 IS INITIAL.
            t309 = abap_true.
          ENDIF.
          IF t309 = abap_true.
            DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t311.
            t308 = t311.
          ELSE.
            DATA t312 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t313 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t314) = CAST zcl_lnt_spaghetti_scope_node( t305 ).
            t313 = t314.
            DATA t315 TYPE string.
            DATA(t316) = CAST zlnt_runtime_opti_4ba3bdccd169( t287 ).
            t315 = t316->value.
            t312 = t313->find_variable( i_name = t315 ).
            t308 = t312.
          ENDIF.
          t304 = t308.
          t303 = t304.
          DATA t317 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t317.
          DATA t318 TYPE abap_bool.
          DATA(t319) = CAST zcl_lnt_typed_identifier( t303 ).
          t318 = xsdbool( t319 IS BOUND ).
          IF t318 = abap_true.
            DATA t320 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t320.
            DATA(t321) = abap_true.
            IF t321 = abap_true.
              DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t323) = CAST zcl_lnt_typed_identifier( t303 ).
              t322 = t323.
              t320 = t322.
            ELSE.
              DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t324.
              t320 = t324.
            ENDIF.
            t317 = t320.
          ELSE.
            DATA t325 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t325.
            DATA(t326) = CAST zcl_lnt_current_scope( t284 ).
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t327.
            DATA(t328) = abap_true.
            IF t328 = abap_true.
              DATA t329 TYPE string.
              DATA(t330) = CAST zlnt_runtime_opti_4ba3bdccd169( t287 ).
              t329 = t330->value.
              DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t331->has = abap_true.
              t331->value = t329.
              t327 = t331.
            ELSE.
              DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t332.
              t327 = t332.
            ENDIF.
            t325 = t326->find_type_pool_constant( i_name = t327 ).
            t317 = t325.
          ENDIF.
          t302 = t317.
          t293 = t302.
        ENDIF.
        t283 = t293.
        t278 = t283.
      ENDIF.
      t209 = t278.
      t208 = t209.
      DATA(t333) = VALUE abap_bool( ).
      DATA(t334) = VALUE abap_bool( ).
      DATA(t335) = VALUE abap_bool( ).
      DATA t336 TYPE REF TO zif_lnt_union_f405367a.
      DATA(t337) = CAST zif_lnt_union_f405367a( t208 ).
      t336 = t337.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t339.
      t338 = t339.
      DATA(t340) = VALUE abap_bool( ).
      DATA(t341) = CAST zif_lnt_union_f405367a( t336 ).
      IF t341 IS INITIAL.
        t340 = abap_true.
      ENDIF.
      t335 = t340.
      t334 = t335.
      IF t335 = abap_true.
        DATA(t342) = VALUE abap_bool( ).
        DATA t343 TYPE REF TO zcl_lnt_ddic.
        DATA t344 TYPE REF TO zcl_lnt_ddic.
        DATA t345 TYPE REF TO zcl_lnt_current_scope.
        DATA t346 TYPE REF TO zcl_lnt_current_scope.
        DATA(t347) = CAST zcl_lnt_syntax_input( t2 ).
        t346 = t347->scope.
        t345 = t346.
        DATA t348 TYPE REF TO zcl_lnt_ddic.
        DATA t349 TYPE REF TO zif_lnt_registry.
        DATA(t350) = CAST zcl_lnt_current_scope( t345 ).
        t349 = t350->reg.
        t348 = NEW zcl_lnt_ddic( i_reg_f149 = t349 ).
        t344 = t348.
        t343 = t344.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        DATA(t353) = abap_true.
        IF t353 = abap_true.
          DATA(t354) = t204.
          DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t355->has = abap_true.
          t355->value = t354.
          t352 = t355.
        ELSE.
          DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t356.
          t352 = t356.
        ENDIF.
        t351 = t352.
        DATA(t357) = VALUE abap_bool( ).
        DATA(t358) = VALUE abap_bool( ).
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t360) = CAST zlnt_runtime_opti_4ba3bdccd169( t351 ).
        t359 = t360.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        t361 = t362.
        DATA(t363) = VALUE abap_bool( ).
        DATA(t364) = CAST zlnt_runtime_opti_4ba3bdccd169( t359 ).
        IF t364 IS INITIAL.
          t363 = abap_true.
        ELSEIF t364->has = abap_false.
          t363 = abap_true.
        ENDIF.
        t358 = t363.
        IF t358 = abap_true.
          DATA(t365) = abap_true.
          t357 = t365.
        ELSE.
          DATA t366 TYPE abap_bool.
          DATA t367 TYPE REF TO zif_lnt_registry.
          DATA(t368) = CAST zcl_lnt_ddic( t343 ).
          t367 = t368->reg.
          DATA t369 TYPE string.
          DATA(t370) = CAST zlnt_runtime_opti_4ba3bdccd169( t351 ).
          t369 = t370->value.
          t366 = t367->in_error_namespace( i_name = t369 ).
          t357 = t366.
        ENDIF.
        t342 = t357.
        t334 = t342.
      ENDIF.
      t333 = t334.
      IF t334 = abap_true.
        DATA(t371) = VALUE abap_bool( ).
        DATA(t372) = VALUE abap_bool( ).
        DATA(t373) = t204.
        DATA(t374) = |(|.
        DATA(t375) = strlen( t373 ).
        DATA t376 TYPE i.
        DATA(t377) = VALUE i( ).
        DATA(t378) = VALUE string( ).
        t376 = strlen( t374 ).
        IF t376 = 0.
          t372 = abap_true.
        ELSEIF t376 <= t375.
          t377 = 0.
          t378 = t373+t377(t376).
          IF t378 = t374.
            t372 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t379) = abap_false.
        t371 = xsdbool( t372 = t379 ).
        t333 = t371.
      ENDIF.
      IF t333 = abap_true.
        DATA t380 TYPE string.
        DATA t381 TYPE string.
        DATA(t382) = t204.
        DATA(t383) = | not found, dynamic|.
        DATA(t384) = strlen( t382 ).
        t381 = |{ t382 }{ t383 }|.
        t380 = t381.
        DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t386) = CAST zcl_lnt_syntax_input( t2 ).
        t385 = t386->issues.
        DATA t387 TYPE REF TO zcl_lnt_issue.
        DATA(t388) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t389 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t390) = CAST zcl_lnt_statement_node( t1 ).
        t389 = t390->get_first_token( ).
        DATA(t391) = t380.
        DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t392.
        t387 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t388 i_token = t389 i_message_26cb = t391 i_fix = t392 ).
        APPEND t387 TO t385->items.
        RETURN.
      ENDIF.
      DATA t393 TYPE REF TO zcl_lnt_void_type.
      CLEAR t393.
      DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t394.
      DATA(t395) = abap_true.
      IF t395 = abap_true.
        DATA(t396) = |Dynamic|.
        DATA(t397) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t397->has = abap_true.
        t397->value = t396.
        t394 = t397.
      ELSE.
        DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t398.
        t394 = t398.
      ENDIF.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      t393 = zcl_lnt_void_type=>get_db65( i_voided = t394 i_qualified_name = t399 ).
      t91 = t393.
    ELSE.
      DATA t400 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t400.
      DATA t401 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t401.
      DATA(t402) = abap_true.
      IF t402 = abap_true.
        DATA(t403) = CAST zcl_lnt_expression_node( t83 ).
        t401 = t403.
      ELSE.
        DATA t404 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t404.
        t401 = t404.
      ENDIF.
      DATA(t405) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t406 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t406.
      DATA t407 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t407.
      DATA(t408) = abap_true.
      IF t408 = abap_true.
        DATA(t409) = abap_false.
        DATA(t410) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t410->has = abap_true.
        t410->value = t409.
        t407 = t410.
      ELSE.
        DATA t411 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t411.
        t407 = t411.
      ENDIF.
      DATA t412 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t412.
      DATA(t413) = abap_true.
      IF t413 = abap_true.
        DATA t414 TYPE abap_bool.
        DATA(t415) = t7.
        DATA(t416) = abap_false.
        t414 = xsdbool( t415 = t416 ).
        DATA(t417) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t417->has = abap_true.
        t417->value = t414.
        t412 = t417.
      ELSE.
        DATA t418 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t418.
        t412 = t418.
      ENDIF.
      DATA t419 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t419.
      t400 = zcl_lnt_sy_source=>run_syntax( i_node = t401 i_input_967e = t405 i_target_type = t406 i_write_reference = t407 i_allow_generic_deference = t412 i_read_reference = t419 ).
      t91 = t400.
    ENDIF.
    DATA(t420) = VALUE abap_bool( ).
    DATA(t421) = VALUE abap_bool( ).
    DATA t422 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t424.
    DATA t425 TYPE REF TO zcl_lnt_expression_node.
    DATA(t426) = CAST zcl_lnt_expression_node( t3 ).
    t425 = t426.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t427.
    DATA(t428) = VALUE abap_bool( ).
    DATA(t429) = CAST zcl_lnt_expression_node( t425 ).
    IF t429 IS INITIAL.
      t428 = abap_true.
    ENDIF.
    IF t428 = abap_true.
      DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t430.
      t427 = t430.
    ELSE.
      DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t433 TYPE REF TO zcl_lnt_abstract_node.
      DATA t434 TYPE REF TO zcl_lnt_expression_node.
      DATA(t435) = CAST zcl_lnt_expression_node( t425 ).
      t434 = t435.
      t433 = t434.
      DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t437) = CAST zcl_lnt_abstract_node( t433 ).
      t436 = t437->children.
      t432 = t436.
      t431 ?= t432.
      t427 = t431.
    ENDIF.
    t424 = t427.
    t423 = t424.
    DATA t438 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t438.
    DATA(t439) = VALUE abap_bool( ).
    DATA(t440) = CAST zlnt_runtime_arra_c22708faf2e3( t423 ).
    IF t440 IS INITIAL.
      t439 = abap_true.
    ENDIF.
    IF t439 = abap_true.
      DATA t441 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t441.
      t438 = t441.
    ELSE.
      DATA t442 TYPE int8.
      DATA t443 TYPE i.
      DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t445) = CAST zlnt_runtime_arra_c22708faf2e3( t423 ).
      t444 = t445.
      t443 = lines( t444->items ).
      t442 = t443.
      DATA(t446) = NEW zlnt_runtime_opti_4a236cd5714d( ).
      t446->has = abap_true.
      t446->value = t442.
      t438 = t446.
    ENDIF.
    t422 = t438.
    DATA t447 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t447.
    DATA(t448) = abap_true.
    IF t448 = abap_true.
      DATA(t449) = CONV int8( 5 ).
      DATA(t450) = NEW zlnt_runtime_opti_4a236cd5714d( ).
      t450->has = abap_true.
      t450->value = t449.
      t447 = t450.
    ELSE.
      DATA t451 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t451.
      t447 = t451.
    ENDIF.
    DATA(t452) = VALUE abap_bool( ).
    DATA(t453) = VALUE abap_bool( ).
    IF t422 IS BOUND.
      t452 = t422->has.
    ENDIF.
    IF t447 IS BOUND.
      t453 = t447->has.
    ENDIF.
    IF t452 = t453.
      IF t452 = abap_false.
        t421 = abap_true.
      ELSEIF t422->value = t447->value.
        t421 = abap_true.
      ENDIF.
    ENDIF.
    t420 = t421.
    IF t421 = abap_true.
      DATA(t454) = t7.
      t420 = t454.
    ENDIF.
    IF t420 = abap_true.
      DATA t455 TYPE REF TO zcl_lnt_expression_node.
      DATA t456 TYPE REF TO zcl_lnt_expression_node.
      DATA(t457) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
      DATA t458 TYPE i.
      DATA t459 TYPE i.
      DATA(t460) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
      t459 = lines( t460->items ).
      DATA(t461) = 2.
      t458 = t459 - t461.
      t458 = t458 + 1.
      DATA t462 TYPE REF TO object.
      CLEAR t462.
      READ TABLE t457->items INDEX t458 INTO t462.
      t456 ?= t462.
      t455 = t456.
      DATA t463 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t463.
      DATA t464 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t464.
      DATA t465 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t465.
      DATA(t466) = abap_true.
      IF t466 = abap_true.
        DATA(t467) = CAST zcl_lnt_expression_node( t455 ).
        t465 = t467.
      ELSE.
        DATA t468 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t468.
        t465 = t468.
      ENDIF.
      DATA(t469) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t470 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t470.
      DATA t471 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t471.
      DATA t472 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t472.
      DATA t473 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t473.
      t464 = zcl_lnt_sy_source=>run_syntax( i_node = t465 i_input_967e = t469 i_target_type = t470 i_write_reference = t471 i_allow_generic_deference = t472 i_read_reference = t473 ).
      t463 = t464.
      DATA t474 TYPE abap_bool.
      DATA t475 TYPE abap_bool.
      DATA t476 TYPE REF TO zcl_lnt_type_utils.
      DATA t477 TYPE REF TO zcl_lnt_current_scope.
      DATA(t478) = CAST zcl_lnt_syntax_input( t2 ).
      t477 = t478->scope.
      t476 = NEW zcl_lnt_type_utils( i_scope = t477 ).
      DATA(t479) = CAST zcl_lnt_abstract_type( t463 ).
      DATA t480 TYPE REF TO zcl_lnt_character_type.
      DATA(t481) = CONV int8( 30 ).
      DATA t482 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t482.
      t480 = NEW zcl_lnt_character_type( i_length = t481 i_extra = t482 ).
      t475 = t476->is_assignable( i_source_75cf = t479 i_target_5f8a = t480 ).
      DATA(t483) = abap_false.
      t474 = xsdbool( t475 = t483 ).
      IF t474 = abap_true.
        DATA t484 TYPE string.
        DATA(t485) = |component name must be charlike|.
        t484 = t485.
        DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t487) = CAST zcl_lnt_syntax_input( t2 ).
        t486 = t487->issues.
        DATA t488 TYPE REF TO zcl_lnt_issue.
        DATA(t489) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t490 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t491) = CAST zcl_lnt_statement_node( t1 ).
        t490 = t491->get_first_token( ).
        DATA(t492) = t484.
        DATA t493 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t493.
        t488 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t489 i_token = t490 i_message_26cb = t492 i_fix = t493 ).
        APPEND t488 TO t486->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t494) = VALUE abap_bool( ).
    DATA(t495) = VALUE abap_bool( ).
    DATA t496 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t497) = CAST zcl_lnt_abstract_type( t91 ).
    t496 = t497.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    t498 = t499.
    DATA(t500) = VALUE abap_bool( ).
    DATA(t501) = CAST zcl_lnt_abstract_type( t496 ).
    IF t501 IS INITIAL.
      t500 = abap_true.
    ENDIF.
    t495 = t500.
    t494 = t495.
    IF t495 = abap_false.
      DATA(t502) = VALUE abap_bool( ).
      DATA t503 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t503.
      DATA t504 TYPE REF TO zcl_lnt_expression_node.
      DATA(t505) = CAST zcl_lnt_expression_node( t3 ).
      t504 = t505.
      DATA t506 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t506.
      DATA(t507) = VALUE abap_bool( ).
      DATA(t508) = CAST zcl_lnt_expression_node( t504 ).
      IF t508 IS INITIAL.
        t507 = abap_true.
      ENDIF.
      IF t507 = abap_true.
        DATA t509 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t509.
        t506 = t509.
      ELSE.
        DATA t510 TYPE REF TO zcl_lnt_expression_node.
        DATA t511 TYPE REF TO zcl_lnt_expression_node.
        DATA(t512) = CAST zcl_lnt_expression_node( t504 ).
        t511 = t512.
        DATA(t513) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
        t510 = t511->find_direct_expression( i_type_9913 = t513 ).
        t506 = t510.
      ENDIF.
      t503 = t506.
      t502 = xsdbool( t503 IS BOUND ).
      t494 = t502.
    ENDIF.
    IF t494 = abap_true.
      DATA t514 TYPE REF TO zcl_lnt_any_type.
      DATA t515 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t515.
      t514 = zcl_lnt_any_type=>get_db65( i_input_967e = t515 ).
      t91 = t514.
    ENDIF.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t516.
    DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t517.
    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t518.
    DATA t519 TYPE REF TO zcl_lnt_expression_node.
    DATA(t520) = CAST zcl_lnt_expression_node( t3 ).
    t519 = t520.
    DATA t521 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t521.
    DATA(t522) = VALUE abap_bool( ).
    DATA(t523) = CAST zcl_lnt_expression_node( t519 ).
    IF t523 IS INITIAL.
      t522 = abap_true.
    ENDIF.
    IF t522 = abap_true.
      DATA t524 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t524.
      t521 = t524.
    ELSE.
      DATA t525 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t526 TYPE REF TO zcl_lnt_expression_node.
      DATA(t527) = CAST zcl_lnt_expression_node( t519 ).
      t526 = t527.
      DATA(t528) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
      t525 = t526->find_all_expressions( i_type_9913 = t528 ).
      t521 = t525.
    ENDIF.
    t518 = t521.
    t517 = t518.
    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t529.
    DATA t530 TYPE abap_bool.
    DATA(t531) = CAST zlnt_runtime_arra_c22708faf2e3( t517 ).
    t530 = xsdbool( t531 IS BOUND ).
    IF t530 = abap_true.
      DATA t532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t533) = CAST zlnt_runtime_arra_c22708faf2e3( t517 ).
      t532 = t533.
      t529 = t532.
    ELSE.
      DATA t534 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t534.
      t529 = t534.
    ENDIF.
    t516 = t529.
    DATA t535 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t535.
    DATA t536 TYPE REF TO object.
    CLEAR t536.
    LOOP AT t516->items INTO t536.
      t535 ?= t536.
      DATA(t537) = CAST zcl_lnt_expression_node( t535 ).
      DATA(t538) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t537 i_input_967e = t538 ).
    ENDLOOP.
    DATA t539 TYPE REF TO zcl_lnt_expression_node.
    DATA t540 TYPE REF TO zcl_lnt_expression_node.
    DATA(t541) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t542) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
    t540 = t541->find_direct_expression( i_type_9913 = t542 ).
    t539 = t540.
    DATA t543 TYPE abap_bool.
    DATA(t544) = CAST zcl_lnt_expression_node( t539 ).
    t543 = xsdbool( t544 IS BOUND ).
    IF t543 = abap_true.
      DATA(t545) = t7.
      IF t545 = abap_true.
        DATA t546 TYPE REF TO zcl_lnt_expression_node.
        DATA(t547) = CAST zcl_lnt_expression_node( t539 ).
        t546 = t547.
        DATA(t548) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t549 TYPE REF TO zcl_lnt_any_type.
        DATA t550 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t550.
        t549 = zcl_lnt_any_type=>get_db65( i_input_967e = t550 ).
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t546 i_input_967e = t548 i_type_9913 = t549 ).
      ELSE.
        DATA t551 TYPE REF TO zcl_lnt_expression_node.
        DATA(t552) = CAST zcl_lnt_expression_node( t539 ).
        t551 = t552.
        DATA(t553) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t554 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t554.
        DATA(t555) = abap_true.
        IF t555 = abap_true.
          DATA t556 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t557) = CAST zcl_lnt_abstract_type( t91 ).
          t556 = t557.
          t554 = t556.
        ELSE.
          DATA t558 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t558.
          t554 = t558.
        ENDIF.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t551 i_input_967e = t553 i_type_9913 = t554 ).
      ENDIF.
    ENDIF.
    DATA t559 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t560) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t561) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t559 = t560->find_all_expressions( i_type_9913 = t561 ).
    DATA t562 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t562.
    DATA t563 TYPE REF TO object.
    CLEAR t563.
    LOOP AT t559->items INTO t563.
      t562 ?= t563.
      DATA t564 TYPE abap_bool.
      DATA(t565) = CAST zcl_lnt_expression_node( t562 ).
      DATA(t566) = CAST zcl_lnt_expression_node( t83 ).
      t564 = xsdbool( t565 = t566 ).
      IF t564 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t567 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t567.
      DATA t568 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t568.
      DATA(t569) = abap_true.
      IF t569 = abap_true.
        DATA(t570) = CAST zcl_lnt_expression_node( t562 ).
        t568 = t570.
      ELSE.
        DATA t571 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t571.
        t568 = t571.
      ENDIF.
      DATA(t572) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t573 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t573.
      DATA t574 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t574.
      DATA t575 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t575.
      DATA t576 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t576.
      t567 = zcl_lnt_sy_source=>run_syntax( i_node = t568 i_input_967e = t572 i_target_type = t573 i_write_reference = t574 i_allow_generic_deference = t575 i_read_reference = t576 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d835_877fa39e77bb.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
