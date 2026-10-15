* TS: src/abap/5_syntax/statements/assign.ts:12:1 Assign
CLASS zcl_lnt_sy_assign DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_assign IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
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
    CLEAR t14.
    DATA(t15) = t3.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t14.
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
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA(t24) = t14.
      t23 = t24.
      t22 = t23.
      DATA t25 TYPE REF TO zif_lnt_node.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_node.
        CLEAR t27.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t28.
        DATA(t29) = t22.
        t28 = t29->children.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t28->load( ).
        CLEAR t30.
        READ TABLE t28->items INDEX 1 INTO t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t27.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t30.
          DATA t32 TYPE REF TO object.
          CLEAR t32.
          t32 = t31->as_ref( ).
          t27 ?= t32.
        ELSE.
          t27 ?= t30.
        ENDIF.
        t25 = t27.
      ELSE.
        DATA t33 TYPE REF TO zif_lnt_node.
        CLEAR t33.
        t25 = t33.
      ENDIF.
      t21 = t25.
      t20 ?= t21.
      t16 = t20.
    ENDIF.
    t13 = t16.
    t12 = t13.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t12.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t34 = t37.
    ELSE.
      DATA(t38) = VALUE string( ).
      DATA t39 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t39.
      DATA(t40) = t12.
      t39 = t40.
      t38 = t39->concat_tokens( ).
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t38.
      t34 = t41.
    ENDIF.
    t11 = t34.
    t10 = t11.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t10.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ELSEIF t44->has = abap_false.
      t43 = abap_true.
    ENDIF.
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t42 = t45.
    ELSE.
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      DATA(t48) = t10.
      t47 = t48->value.
      DATA(t49) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t46.
      t42 = t50.
    ENDIF.
    t9 = t42.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA(t52) = abap_true.
    IF t52 = abap_true.
      DATA(t53) = |COMPONENT|.
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t53.
      t51 = t54.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      t51 = t55.
    ENDIF.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t56 = t9->has.
    ENDIF.
    IF t51 IS BOUND.
      t57 = t51->has.
    ENDIF.
    IF t56 = t57.
      IF t56 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t51->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    t7 = t8.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    DATA(t63) = t3.
    t62 = t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = t62.
    IF t66 IS INITIAL.
      t65 = abap_true.
    ENDIF.
    IF t65 = abap_true.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t67.
      t64 = t67.
    ELSE.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t69.
      DATA(t70) = t62.
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t73.
      CREATE OBJECT t73.
      t72 = t73.
      DATA(t74) = t72.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t74->load( ).
      APPEND t75 TO t74->items.
      t74->save( ).
      DATA(t76) = t72.
      DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t76->load( ).
      APPEND t77 TO t76->items.
      t76->save( ).
      DATA(t78) = t72.
      t71 = t78.
      t68 = t69->find_direct_expressions_multi( i_type_9913 = t71 ).
      t64 = t68.
    ENDIF.
    t61 = t64.
    t60 = t61.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t60.
    t80 = xsdbool( t81 IS BOUND ).
    IF t80 = abap_true.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t82.
      DATA(t83) = t60.
      t82 = t83.
      t79 = t82.
    ELSE.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t84.
      CREATE OBJECT t84.
      t79 = t84.
    ENDIF.
    t59 = t79.
    t58 = t59.
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t85.
    DATA t86 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t86.
    DATA(t87) = t58.
    DATA(t88) = VALUE i( ).
    DATA(t89) = VALUE i( ).
    DATA(t90) = t58.
    t90->load( ).
    t89 = lines( t90->items ).
    DATA(t91) = 1.
    t88 = t89 - t91.
    t88 = t88 + 1.
    DATA t92 TYPE REF TO object.
    CLEAR t92.
    t87->load( ).
    CLEAR t92.
    READ TABLE t87->items INDEX t88 INTO t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    CLEAR t86.
    IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t93 ?= t92.
      DATA t94 TYPE REF TO object.
      CLEAR t94.
      t94 = t93->as_ref( ).
      t86 ?= t94.
    ELSE.
      t86 ?= t92.
    ENDIF.
    t85 = t86.
    DATA t95 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t95.
    DATA t96 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t96.
    t95 = t96.
    DATA t97 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t101.
    DATA(t102) = t3.
    t101 = t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = t101.
    IF t105 IS INITIAL.
      t104 = abap_true.
    ENDIF.
    IF t104 = abap_true.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t106.
      t103 = t106.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t107.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t108.
      DATA t109 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t110.
      DATA(t111) = t101.
      t110 = t111.
      t109 = t110.
      DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t112.
      DATA(t113) = t109.
      t112 = t113->children.
      t108 = t112.
      t107 ?= t108.
      t103 = t107.
    ENDIF.
    t100 = t103.
    t99 = t100.
    DATA t114 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t114.
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = t99.
    IF t116 IS INITIAL.
      t115 = abap_true.
    ENDIF.
    IF t115 = abap_true.
      DATA t117 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t117.
      t114 = t117.
    ELSE.
      DATA t118 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t118.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t119.
      DATA(t120) = t99.
      t119 = t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      t119->load( ).
      CLEAR t121.
      READ TABLE t119->items INDEX 1 INTO t121.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      CLEAR t118.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t121.
        DATA t123 TYPE REF TO object.
        CLEAR t123.
        t123 = t122->as_ref( ).
        t118 ?= t123.
      ELSE.
        t118 ?= t121.
      ENDIF.
      t114 = t118.
    ENDIF.
    t98 = t114.
    t97 = t98.
    DATA t124 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA t128 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t128.
    DATA(t129) = t3.
    t128 = t129.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t130.
    DATA(t131) = VALUE abap_bool( ).
    DATA(t132) = t128.
    IF t132 IS INITIAL.
      t131 = abap_true.
    ENDIF.
    IF t131 = abap_true.
      DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t133.
      t130 = t133.
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t135.
      DATA t136 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t137.
      DATA(t138) = t128.
      t137 = t138.
      t136 = t137.
      DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t139.
      DATA(t140) = t136.
      t139 = t140->children.
      t135 = t139.
      t134 ?= t135.
      t130 = t134.
    ENDIF.
    t127 = t130.
    t126 = t127.
    DATA t141 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t141.
    DATA(t142) = VALUE abap_bool( ).
    DATA(t143) = t126.
    IF t143 IS INITIAL.
      t142 = abap_true.
    ENDIF.
    IF t142 = abap_true.
      DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t144.
      t141 = t144.
    ELSE.
      DATA t145 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t146.
      DATA(t147) = t126.
      t146 = t147.
      DATA t148 TYPE REF TO object.
      CLEAR t148.
      t146->load( ).
      CLEAR t148.
      READ TABLE t146->items INDEX 2 INTO t148.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      CLEAR t145.
      IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t149 ?= t148.
        DATA t150 TYPE REF TO object.
        CLEAR t150.
        t150 = t149->as_ref( ).
        t145 ?= t150.
      ELSE.
        t145 ?= t148.
      ENDIF.
      t141 = t145.
    ENDIF.
    t125 = t141.
    t124 = t125.
    DATA t151 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t154.
    DATA t155 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t155.
    DATA(t156) = t3.
    t155 = t156.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t157.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = t155.
    IF t159 IS INITIAL.
      t158 = abap_true.
    ENDIF.
    IF t158 = abap_true.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t160.
      t157 = t160.
    ELSE.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t164.
      DATA(t165) = t155.
      t164 = t165.
      t163 = t164.
      DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t166.
      DATA(t167) = t163.
      t166 = t167->children.
      t162 = t166.
      t161 ?= t162.
      t157 = t161.
    ENDIF.
    t154 = t157.
    t153 = t154.
    DATA t168 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t168.
    DATA(t169) = VALUE abap_bool( ).
    DATA(t170) = t153.
    IF t170 IS INITIAL.
      t169 = abap_true.
    ENDIF.
    IF t169 = abap_true.
      DATA t171 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t171.
      t168 = t171.
    ELSE.
      DATA t172 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t172.
      DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t173.
      DATA(t174) = t153.
      t173 = t174.
      DATA t175 TYPE REF TO object.
      CLEAR t175.
      t173->load( ).
      CLEAR t175.
      READ TABLE t173->items INDEX 3 INTO t175.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t176.
      CLEAR t172.
      IF t175 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t176 ?= t175.
        DATA t177 TYPE REF TO object.
        CLEAR t177.
        t177 = t176->as_ref( ).
        t172 ?= t177.
      ELSE.
        t172 ?= t175.
      ENDIF.
      t168 = t172.
    ENDIF.
    t152 = t168.
    t151 = t152.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = VALUE abap_bool( ).
    DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t181.
    DATA t182 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t182.
    DATA(t183) = t124.
    t182 = t183.
    DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t184.
    DATA(t185) = VALUE abap_bool( ).
    DATA(t186) = t182.
    IF t186 IS INITIAL.
      t185 = abap_true.
    ENDIF.
    IF t185 = abap_true.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      t184 = t187.
    ELSE.
      DATA(t188) = VALUE string( ).
      DATA t189 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t189.
      DATA(t190) = t182.
      t189 = t190.
      t188 = t189->concat_tokens( ).
      DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t191->has = abap_true.
      t191->value = t188.
      t184 = t191.
    ENDIF.
    t181 = t184.
    DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t192.
    DATA(t193) = abap_true.
    IF t193 = abap_true.
      DATA(t194) = |=>|.
      DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t195->has = abap_true.
      t195->value = t194.
      t192 = t195.
    ELSE.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      t192 = t196.
    ENDIF.
    DATA(t197) = VALUE abap_bool( ).
    DATA(t198) = VALUE abap_bool( ).
    IF t181 IS BOUND.
      t197 = t181->has.
    ENDIF.
    IF t192 IS BOUND.
      t198 = t192->has.
    ENDIF.
    IF t197 = t198.
      IF t197 = abap_false.
        t180 = abap_true.
      ELSEIF t181->value = t192->value.
        t180 = abap_true.
      ENDIF.
    ENDIF.
    t179 = t180.
    IF t180 = abap_true.
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = t97.
      t199 = xsdbool( t200 IS BOUND ).
      t179 = t199.
    ENDIF.
    t178 = t179.
    IF t179 = abap_true.
      DATA(t201) = VALUE abap_bool( ).
      DATA t202 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t202.
      DATA t203 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t203.
      DATA(t204) = t151.
      t203 = t204.
      DATA t205 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t205.
      DATA(t206) = VALUE abap_bool( ).
      DATA(t207) = t203.
      IF t207 IS INITIAL.
        t206 = abap_true.
      ENDIF.
      IF t206 = abap_true.
        DATA t208 TYPE REF TO zif_lnt_union_daf022d4.
        CLEAR t208.
        t205 = t208.
      ELSE.
        DATA t209 TYPE REF TO zif_lnt_union_daf022d4.
        CLEAR t209.
        DATA t210 TYPE REF TO object.
        CLEAR t210.
        DATA t211 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t211.
        DATA(t212) = t203.
        t211 = t212.
        t210 = t211->get_db65( ).
        DATA t213 TYPE REF TO object.
        CLEAR t213.
        t213 = t210.
        t209 ?= t213.
        t205 = t209.
      ENDIF.
      t202 = t205.
      t201 = xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_st_dynamic ).
      t178 = t201.
    ENDIF.
    IF t178 = abap_true.
      DATA(t214) = VALUE string( ).
      DATA(t215) = VALUE string( ).
      DATA t216 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t216.
      DATA(t217) = t97.
      t216 = t217.
      t215 = t216->concat_tokens( ).
      t214 = t215.
      DATA t218 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t218.
      DATA t219 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t219.
      DATA t220 TYPE REF TO zif_lnt_class_definition.
      CLEAR t220.
      DATA t221 TYPE REF TO zif_lnt_class_definition.
      CLEAR t221.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t222.
      DATA t223 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t223.
      DATA(t224) = t2.
      t223 = t224->scope.
      t222 = t223.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t226.
      DATA(t227) = abap_true.
      IF t227 = abap_true.
        DATA(t228) = t214.
        DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t229->has = abap_true.
        t229->value = t228.
        t226 = t229.
      ELSE.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        t226 = t230.
      ENDIF.
      t225 = t226.
      DATA t231 TYPE REF TO zif_lnt_class_definition.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t233.
      DATA(t234) = t225.
      t233 = t234.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t235 = t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = t233.
      IF t238 IS INITIAL.
        t237 = abap_true.
      ELSEIF t238->has = abap_false.
        t237 = abap_true.
      ENDIF.
      t232 = t237.
      IF t232 = abap_true.
        DATA t239 TYPE REF TO zif_lnt_class_definition.
        CLEAR t239.
        t231 = t239.
      ELSE.
        DATA t240 TYPE REF TO zif_lnt_class_definition.
        CLEAR t240.
        DATA t241 TYPE REF TO zif_lnt_class_definition.
        CLEAR t241.
        DATA t242 TYPE REF TO zif_lnt_class_definition.
        CLEAR t242.
        DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t243.
        DATA t244 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t244.
        DATA(t245) = t222.
        t244 = t245->current.
        t243 = t244.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = t243.
        IF t248 IS INITIAL.
          t247 = abap_true.
        ENDIF.
        IF t247 = abap_true.
          DATA t249 TYPE REF TO zif_lnt_class_definition.
          CLEAR t249.
          t246 = t249.
        ELSE.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          CLEAR t250.
          DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t251.
          DATA(t252) = t243.
          t251 = t252.
          DATA(t253) = VALUE string( ).
          DATA(t254) = t225.
          t253 = t254->value.
          t250 = t251->find_class_definition( i_name = t253 ).
          t246 = t250.
        ENDIF.
        t242 = t246.
        t241 = t242.
        DATA t255 TYPE REF TO zif_lnt_class_definition.
        CLEAR t255.
        DATA(t256) = VALUE abap_bool( ).
        DATA(t257) = t241.
        t256 = xsdbool( t257 IS BOUND ).
        IF t256 = abap_true.
          DATA t258 TYPE REF TO zif_lnt_class_definition.
          CLEAR t258.
          DATA(t259) = abap_true.
          IF t259 = abap_true.
            DATA t260 TYPE REF TO zif_lnt_class_definition.
            CLEAR t260.
            DATA(t261) = t241.
            t260 = t261.
            t258 = t260.
          ELSE.
            DATA t262 TYPE REF TO zif_lnt_class_definition.
            CLEAR t262.
            t258 = t262.
          ENDIF.
          t255 = t258.
        ELSE.
          DATA t263 TYPE REF TO zif_lnt_class_definition.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_class.
          CLEAR t264.
          DATA t265 TYPE REF TO zcl_lnt_class.
          CLEAR t265.
          DATA t266 TYPE REF TO zif_lnt_object.
          CLEAR t266.
          DATA t267 TYPE REF TO zif_lnt_registry.
          CLEAR t267.
          DATA(t268) = t222.
          t267 = t268->reg.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          DATA(t270) = abap_true.
          IF t270 = abap_true.
            DATA(t271) = |CLAS|.
            DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t272->has = abap_true.
            t272->value = t271.
            t269 = t272.
          ELSE.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t273.
            t269 = t273.
          ENDIF.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA(t276) = VALUE string( ).
            DATA(t277) = t225.
            t276 = t277->value.
            DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t278->has = abap_true.
            t278->value = t276.
            t274 = t278.
          ELSE.
            DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t279.
            t274 = t279.
          ENDIF.
          t266 = t267->get_object( i_type_9913 = t269 i_name = t274 ).
          DATA t280 TYPE REF TO object.
          CLEAR t280.
          t280 = t266.
          t265 ?= t280.
          t264 = t265.
          DATA t281 TYPE REF TO zif_lnt_class_definition.
          CLEAR t281.
          DATA(t282) = VALUE abap_bool( ).
          DATA(t283) = t264.
          t282 = xsdbool( t283 IS BOUND ).
          IF t282 = abap_true.
            DATA t284 TYPE REF TO zif_lnt_class_definition.
            CLEAR t284.
            DATA t285 TYPE REF TO zcl_lnt_class.
            CLEAR t285.
            DATA(t286) = t264.
            t285 = t286.
            t284 = t285->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t281 = t284.
          ELSE.
            DATA t287 TYPE REF TO zif_lnt_class_definition.
            CLEAR t287.
            t281 = t287.
          ENDIF.
          t263 = t281.
          t255 = t263.
        ENDIF.
        t240 = t255.
        t231 = t240.
      ENDIF.
      t221 = t231.
      t220 = t221.
      DATA t288 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = t220.
      t289 = xsdbool( t290 IS BOUND ).
      IF t289 = abap_true.
        DATA t291 TYPE REF TO zif_lnt_union_f405367a.
        CLEAR t291.
        DATA(t292) = t220.
        t291 ?= t292.
        t288 = t291.
      ELSE.
        DATA t293 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t293.
        DATA t294 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t294.
        DATA t295 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t295.
        DATA(t296) = t2.
        t295 = t296->scope.
        t294 = t295.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t298.
        DATA(t299) = abap_true.
        IF t299 = abap_true.
          DATA(t300) = t214.
          DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t301->has = abap_true.
          t301->value = t300.
          t298 = t301.
        ELSE.
          DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t302.
          t298 = t302.
        ENDIF.
        t297 = t298.
        DATA t303 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t303.
        DATA(t304) = VALUE abap_bool( ).
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        DATA(t306) = t297.
        t305 = t306.
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t307.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        t307 = t308.
        DATA(t309) = VALUE abap_bool( ).
        DATA(t310) = t305.
        IF t310 IS INITIAL.
          t309 = abap_true.
        ELSEIF t310->has = abap_false.
          t309 = abap_true.
        ENDIF.
        t304 = t309.
        IF t304 = abap_true.
          DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t311.
          t303 = t311.
        ELSE.
          DATA t312 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t312.
          DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t313.
          DATA t314 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t314.
          DATA t315 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t315.
          DATA t316 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t316.
          DATA(t317) = t294.
          t316 = t317->current.
          t315 = t316.
          DATA t318 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t318.
          DATA(t319) = VALUE abap_bool( ).
          DATA(t320) = t315.
          IF t320 IS INITIAL.
            t319 = abap_true.
          ENDIF.
          IF t319 = abap_true.
            DATA t321 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t321.
            t318 = t321.
          ELSE.
            DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t322.
            DATA t323 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t323.
            DATA(t324) = t315.
            t323 = t324.
            DATA(t325) = VALUE string( ).
            DATA(t326) = t297.
            t325 = t326->value.
            t322 = t323->find_variable( i_name = t325 ).
            t318 = t322.
          ENDIF.
          t314 = t318.
          t313 = t314.
          DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t327.
          DATA(t328) = VALUE abap_bool( ).
          DATA(t329) = t313.
          t328 = xsdbool( t329 IS BOUND ).
          IF t328 = abap_true.
            DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t330.
            DATA(t331) = abap_true.
            IF t331 = abap_true.
              DATA t332 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t332.
              DATA(t333) = t313.
              t332 = t333.
              t330 = t332.
            ELSE.
              DATA t334 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t334.
              t330 = t334.
            ENDIF.
            t327 = t330.
          ELSE.
            DATA t335 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t335.
            DATA(t336) = t294.
            DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t337.
            DATA(t338) = abap_true.
            IF t338 = abap_true.
              DATA(t339) = VALUE string( ).
              DATA(t340) = t297.
              t339 = t340->value.
              DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t341->has = abap_true.
              t341->value = t339.
              t337 = t341.
            ELSE.
              DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t342.
              t337 = t342.
            ENDIF.
            t335 = t336->find_type_pool_constant( i_name = t337 ).
            t327 = t335.
          ENDIF.
          t312 = t327.
          t303 = t312.
        ENDIF.
        t293 = t303.
        t288 = t293.
      ENDIF.
      t219 = t288.
      t218 = t219.
      DATA(t343) = VALUE abap_bool( ).
      DATA(t344) = VALUE abap_bool( ).
      DATA(t345) = VALUE abap_bool( ).
      DATA t346 TYPE REF TO zif_lnt_union_f405367a.
      CLEAR t346.
      DATA(t347) = t218.
      t346 = t347.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t348.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      t348 = t349.
      DATA(t350) = VALUE abap_bool( ).
      DATA(t351) = t346.
      IF t351 IS INITIAL.
        t350 = abap_true.
      ENDIF.
      t345 = t350.
      t344 = t345.
      IF t345 = abap_true.
        DATA(t352) = VALUE abap_bool( ).
        DATA t353 TYPE REF TO zcl_lnt_ddic.
        CLEAR t353.
        DATA t354 TYPE REF TO zcl_lnt_ddic.
        CLEAR t354.
        DATA t355 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t355.
        DATA t356 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t356.
        DATA(t357) = t2.
        t356 = t357->scope.
        t355 = t356.
        DATA t358 TYPE REF TO zcl_lnt_ddic.
        CLEAR t358.
        DATA t359 TYPE REF TO zif_lnt_registry.
        CLEAR t359.
        DATA(t360) = t355.
        t359 = t360->reg.
        t358 = NEW zcl_lnt_ddic( i_reg_f149 = t359 ).
        t354 = t358.
        t353 = t354.
        DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t361.
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t362.
        DATA(t363) = abap_true.
        IF t363 = abap_true.
          DATA(t364) = t214.
          DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t365->has = abap_true.
          t365->value = t364.
          t362 = t365.
        ELSE.
          DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t366.
          t362 = t366.
        ENDIF.
        t361 = t362.
        DATA(t367) = VALUE abap_bool( ).
        DATA(t368) = VALUE abap_bool( ).
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        DATA(t370) = t361.
        t369 = t370.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        t371 = t372.
        DATA(t373) = VALUE abap_bool( ).
        DATA(t374) = t369.
        IF t374 IS INITIAL.
          t373 = abap_true.
        ELSEIF t374->has = abap_false.
          t373 = abap_true.
        ENDIF.
        t368 = t373.
        IF t368 = abap_true.
          DATA(t375) = abap_true.
          t367 = t375.
        ELSE.
          DATA(t376) = VALUE abap_bool( ).
          DATA t377 TYPE REF TO zif_lnt_registry.
          CLEAR t377.
          DATA(t378) = t353.
          t377 = t378->reg.
          DATA(t379) = VALUE string( ).
          DATA(t380) = t361.
          t379 = t380->value.
          t376 = t377->in_error_namespace( i_name = t379 ).
          t367 = t376.
        ENDIF.
        t352 = t367.
        t344 = t352.
      ENDIF.
      t343 = t344.
      IF t344 = abap_true.
        DATA(t381) = VALUE abap_bool( ).
        DATA(t382) = VALUE abap_bool( ).
        DATA(t383) = t214.
        DATA(t384) = |(|.
        DATA(t385) = strlen( t383 ).
        DATA(t386) = VALUE i( ).
        DATA(t387) = VALUE i( ).
        DATA(t388) = VALUE string( ).
        t386 = strlen( t384 ).
        IF t386 = 0.
          t382 = abap_true.
        ELSEIF t386 <= t385.
          t387 = 0.
          t388 = t383+t387(t386).
          IF t388 = t384.
            t382 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t389) = abap_false.
        t381 = xsdbool( t382 = t389 ).
        t343 = t381.
      ENDIF.
      IF t343 = abap_true.
        DATA(t390) = VALUE string( ).
        DATA(t391) = VALUE string( ).
        DATA(t392) = t214.
        DATA(t393) = | not found, dynamic|.
        DATA(t394) = strlen( t392 ).
        t391 = |{ t392 }{ t393 }|.
        t390 = t391.
        DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t395.
        DATA(t396) = t2.
        t395 = t396->issues.
        DATA t397 TYPE REF TO zcl_lnt_issue.
        CLEAR t397.
        DATA(t398) = t2.
        DATA t399 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t399.
        DATA(t400) = t1.
        t399 = t400->get_first_token( ).
        DATA(t401) = t390.
        DATA t402 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t402.
        t397 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t398 i_token = t399 i_message_26cb = t401 i_fix = t402 ).
        t395->load( ).
        APPEND t397 TO t395->items.
        t395->save( ).
        RETURN.
      ENDIF.
      DATA t403 TYPE REF TO zcl_lnt_void_type.
      CLEAR t403.
      DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t404.
      DATA(t405) = abap_true.
      IF t405 = abap_true.
        DATA(t406) = |Dynamic|.
        DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t407->has = abap_true.
        t407->value = t406.
        t404 = t407.
      ELSE.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t408.
        t404 = t408.
      ENDIF.
      DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t409.
      t403 = zcl_lnt_void_type=>get_db65( i_voided = t404 i_qualified_name = t409 ).
      t95 = t403.
    ELSE.
      DATA t410 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t410.
      DATA t411 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t411.
      DATA(t412) = abap_true.
      IF t412 = abap_true.
        DATA(t413) = t85.
        t411 = t413.
      ELSE.
        DATA t414 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t414.
        t411 = t414.
      ENDIF.
      DATA(t415) = t2.
      DATA t416 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t416.
      DATA t417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t417.
      DATA(t418) = abap_true.
      IF t418 = abap_true.
        DATA(t419) = abap_false.
        DATA(t420) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t420->has = abap_true.
        t420->value = t419.
        t417 = t420.
      ELSE.
        DATA t421 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t421.
        t417 = t421.
      ENDIF.
      DATA t422 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t422.
      DATA(t423) = abap_true.
      IF t423 = abap_true.
        DATA(t424) = VALUE abap_bool( ).
        DATA(t425) = t7.
        DATA(t426) = abap_false.
        t424 = xsdbool( t425 = t426 ).
        DATA(t427) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t427->has = abap_true.
        t427->value = t424.
        t422 = t427.
      ELSE.
        DATA t428 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t428.
        t422 = t428.
      ENDIF.
      DATA t429 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t429.
      t410 = zcl_lnt_sy_source=>run_syntax( i_node = t411 i_input_967e = t415 i_target_type = t416 i_write_reference = t417 i_allow_generic_deference = t422 i_read_reference = t429 ).
      t95 = t410.
    ENDIF.
    DATA(t430) = VALUE abap_bool( ).
    DATA(t431) = VALUE abap_bool( ).
    DATA t432 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t432.
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t434.
    DATA t435 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t435.
    DATA(t436) = t3.
    t435 = t436.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t437.
    DATA(t438) = VALUE abap_bool( ).
    DATA(t439) = t435.
    IF t439 IS INITIAL.
      t438 = abap_true.
    ENDIF.
    IF t438 = abap_true.
      DATA t440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t440.
      t437 = t440.
    ELSE.
      DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t441.
      DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t442.
      DATA t443 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t443.
      DATA t444 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t444.
      DATA(t445) = t435.
      t444 = t445.
      t443 = t444.
      DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t446.
      DATA(t447) = t443.
      t446 = t447->children.
      t442 = t446.
      t441 ?= t442.
      t437 = t441.
    ENDIF.
    t434 = t437.
    t433 = t434.
    DATA t448 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t448.
    DATA(t449) = VALUE abap_bool( ).
    DATA(t450) = t433.
    IF t450 IS INITIAL.
      t449 = abap_true.
    ENDIF.
    IF t449 = abap_true.
      DATA t451 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t451.
      t448 = t451.
    ELSE.
      DATA(t452) = VALUE f( ).
      DATA(t453) = VALUE i( ).
      DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t454.
      DATA(t455) = t433.
      t454 = t455.
      t454->load( ).
      t453 = lines( t454->items ).
      t452 = t453.
      DATA(t456) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t456->has = abap_true.
      t456->value = t452.
      t448 = t456.
    ENDIF.
    t432 = t448.
    DATA t457 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t457.
    DATA(t458) = abap_true.
    IF t458 = abap_true.
      DATA(t459) = CONV f( 5 ).
      DATA(t460) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t460->has = abap_true.
      t460->value = t459.
      t457 = t460.
    ELSE.
      DATA t461 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t461.
      t457 = t461.
    ENDIF.
    DATA(t462) = VALUE abap_bool( ).
    DATA(t463) = VALUE abap_bool( ).
    IF t432 IS BOUND.
      t462 = t432->has.
    ENDIF.
    IF t457 IS BOUND.
      t463 = t457->has.
    ENDIF.
    IF t462 = t463.
      IF t462 = abap_false.
        t431 = abap_true.
      ELSE.
        IF t432->number_special <> 0 OR t457->number_special <> 0.
          t431 = xsdbool( t432->number_special = t457->number_special AND t432->number_special <> 1 ).
        ELSE.
          t431 = xsdbool( t432->value = t457->value ).
        ENDIF.
      ENDIF.
    ENDIF.
    t430 = t431.
    IF t431 = abap_true.
      DATA(t464) = t7.
      t430 = t464.
    ENDIF.
    IF t430 = abap_true.
      DATA t465 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t465.
      DATA t466 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t466.
      DATA(t467) = t58.
      DATA(t468) = VALUE i( ).
      DATA(t469) = VALUE i( ).
      DATA(t470) = t58.
      t470->load( ).
      t469 = lines( t470->items ).
      DATA(t471) = 2.
      t468 = t469 - t471.
      t468 = t468 + 1.
      DATA t472 TYPE REF TO object.
      CLEAR t472.
      t467->load( ).
      CLEAR t472.
      READ TABLE t467->items INDEX t468 INTO t472.
      DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t473.
      CLEAR t466.
      IF t472 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t473 ?= t472.
        DATA t474 TYPE REF TO object.
        CLEAR t474.
        t474 = t473->as_ref( ).
        t466 ?= t474.
      ELSE.
        t466 ?= t472.
      ENDIF.
      t465 = t466.
      DATA t475 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t475.
      DATA t476 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t476.
      DATA t477 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t477.
      DATA(t478) = abap_true.
      IF t478 = abap_true.
        DATA(t479) = t465.
        t477 = t479.
      ELSE.
        DATA t480 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t480.
        t477 = t480.
      ENDIF.
      DATA(t481) = t2.
      DATA t482 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t482.
      DATA t483 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t483.
      DATA t484 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t484.
      DATA t485 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t485.
      t476 = zcl_lnt_sy_source=>run_syntax( i_node = t477 i_input_967e = t481 i_target_type = t482 i_write_reference = t483 i_allow_generic_deference = t484 i_read_reference = t485 ).
      t475 = t476.
      DATA(t486) = VALUE abap_bool( ).
      DATA(t487) = VALUE abap_bool( ).
      DATA t488 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t488.
      DATA t489 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t489.
      DATA(t490) = t2.
      t489 = t490->scope.
      t488 = NEW zcl_lnt_type_utils( i_scope = t489 ).
      DATA(t491) = t475.
      DATA t492 TYPE REF TO zcl_lnt_character_type.
      CLEAR t492.
      DATA(t493) = CONV f( 30 ).
      DATA t494 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t494.
      t492 = NEW zcl_lnt_character_type( i_length = t493 i_extra = t494 ).
      t487 = t488->is_assignable( i_source_75cf = t491 i_target_5f8a = t492 ).
      DATA(t495) = abap_false.
      t486 = xsdbool( t487 = t495 ).
      IF t486 = abap_true.
        DATA(t496) = VALUE string( ).
        DATA(t497) = |component name must be charlike|.
        t496 = t497.
        DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t498.
        DATA(t499) = t2.
        t498 = t499->issues.
        DATA t500 TYPE REF TO zcl_lnt_issue.
        CLEAR t500.
        DATA(t501) = t2.
        DATA t502 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t502.
        DATA(t503) = t1.
        t502 = t503->get_first_token( ).
        DATA(t504) = t496.
        DATA t505 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t505.
        t500 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t501 i_token = t502 i_message_26cb = t504 i_fix = t505 ).
        t498->load( ).
        APPEND t500 TO t498->items.
        t498->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t506) = VALUE abap_bool( ).
    DATA(t507) = VALUE abap_bool( ).
    DATA t508 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t508.
    DATA(t509) = t95.
    t508 = t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    t510 = t511.
    DATA(t512) = VALUE abap_bool( ).
    DATA(t513) = t508.
    IF t513 IS INITIAL.
      t512 = abap_true.
    ENDIF.
    t507 = t512.
    t506 = t507.
    IF t507 = abap_false.
      DATA(t514) = VALUE abap_bool( ).
      DATA t515 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t515.
      DATA t516 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t516.
      DATA(t517) = t3.
      t516 = t517.
      DATA t518 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t518.
      DATA(t519) = VALUE abap_bool( ).
      DATA(t520) = t516.
      IF t520 IS INITIAL.
        t519 = abap_true.
      ENDIF.
      IF t519 = abap_true.
        DATA t521 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t521.
        t518 = t521.
      ELSE.
        DATA t522 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t522.
        DATA t523 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t523.
        DATA(t524) = t516.
        t523 = t524.
        DATA(t525) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
        t522 = t523->find_direct_expression( i_type_9913 = t525 ).
        t518 = t522.
      ENDIF.
      t515 = t518.
      t514 = xsdbool( t515 IS BOUND ).
      t506 = t514.
    ENDIF.
    IF t506 = abap_true.
      DATA t526 TYPE REF TO zcl_lnt_any_type.
      CLEAR t526.
      DATA t527 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t527.
      t526 = zcl_lnt_any_type=>get_db65( i_input_967e = t527 ).
      t95 = t526.
    ENDIF.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t529.
    DATA t530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t530.
    DATA t531 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t531.
    DATA(t532) = t3.
    t531 = t532.
    DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t533.
    DATA(t534) = VALUE abap_bool( ).
    DATA(t535) = t531.
    IF t535 IS INITIAL.
      t534 = abap_true.
    ENDIF.
    IF t534 = abap_true.
      DATA t536 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t536.
      t533 = t536.
    ELSE.
      DATA t537 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t537.
      DATA t538 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t538.
      DATA(t539) = t531.
      t538 = t539.
      DATA(t540) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t537 = t538->find_all_expressions( i_type_9913 = t540 ).
      t533 = t537.
    ENDIF.
    t530 = t533.
    t529 = t530.
    DATA t541 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t541.
    DATA(t542) = VALUE abap_bool( ).
    DATA(t543) = t529.
    t542 = xsdbool( t543 IS BOUND ).
    IF t542 = abap_true.
      DATA t544 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t544.
      DATA(t545) = t529.
      t544 = t545.
      t541 = t544.
    ELSE.
      DATA t546 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t546.
      CREATE OBJECT t546.
      t541 = t546.
    ENDIF.
    t528 = t541.
    DATA t547 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t547.
    DATA t548 TYPE REF TO object.
    CLEAR t548.
    DATA(t549) = VALUE i( ).
    DO.
      t528->load( ).
      IF t549 >= lines( t528->items ).
        EXIT.
      ENDIF.
      CLEAR t548.
      READ TABLE t528->items INDEX t549 + 1 INTO t548.
      t549 = t549 + 1.
      DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t550.
      CLEAR t547.
      IF t548 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t550 ?= t548.
        DATA t551 TYPE REF TO object.
        CLEAR t551.
        t551 = t550->as_ref( ).
        t547 ?= t551.
      ELSE.
        t547 ?= t548.
      ENDIF.
      DATA(t552) = t547.
      DATA(t553) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t552 i_input_967e = t553 ).
    ENDDO.
    DATA t554 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t554.
    DATA t555 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t555.
    DATA(t556) = t1.
    DATA(t557) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t555 = t556->find_direct_expression( i_type_9913 = t557 ).
    t554 = t555.
    DATA(t558) = VALUE abap_bool( ).
    DATA(t559) = t554.
    t558 = xsdbool( t559 IS BOUND ).
    IF t558 = abap_true.
      DATA(t560) = t7.
      IF t560 = abap_true.
        DATA t561 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t561.
        DATA(t562) = t554.
        t561 = t562.
        DATA(t563) = t2.
        DATA t564 TYPE REF TO zcl_lnt_any_type.
        CLEAR t564.
        DATA t565 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t565.
        t564 = zcl_lnt_any_type=>get_db65( i_input_967e = t565 ).
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t561 i_input_967e = t563 i_type_9913 = t564 ).
      ELSE.
        DATA t566 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t566.
        DATA(t567) = t554.
        t566 = t567.
        DATA(t568) = t2.
        DATA t569 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t569.
        DATA(t570) = abap_true.
        IF t570 = abap_true.
          DATA t571 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t571.
          DATA(t572) = t95.
          t571 = t572.
          t569 = t571.
        ELSE.
          DATA t573 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t573.
          t569 = t573.
        ENDIF.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t566 i_input_967e = t568 i_type_9913 = t569 ).
      ENDIF.
    ENDIF.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t574.
    DATA(t575) = t1.
    DATA(t576) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t574 = t575->find_all_expressions( i_type_9913 = t576 ).
    DATA t577 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t577.
    DATA t578 TYPE REF TO object.
    CLEAR t578.
    DATA(t579) = VALUE i( ).
    DO.
      t574->load( ).
      IF t579 >= lines( t574->items ).
        EXIT.
      ENDIF.
      CLEAR t578.
      READ TABLE t574->items INDEX t579 + 1 INTO t578.
      t579 = t579 + 1.
      DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t580.
      CLEAR t577.
      IF t578 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t580 ?= t578.
        DATA t581 TYPE REF TO object.
        CLEAR t581.
        t581 = t580->as_ref( ).
        t577 ?= t581.
      ELSE.
        t577 ?= t578.
      ENDIF.
      DATA(t582) = VALUE abap_bool( ).
      DATA(t583) = t577.
      DATA(t584) = t85.
      DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t585.
      DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t586.
      CLEAR t585.
      IF t583 IS BOUND.
        DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t587.
        DATA t588 TYPE REF TO object.
        CLEAR t588.
        CLEAR t587.
        t588 = t583.
        TRY.
            t585 ?= t588.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t585 IS NOT BOUND.
          TRY.
              t587 ?= t583.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t587 IS BOUND.
            t585 = t587->source( ).
          ENDIF.
          IF t585 IS NOT BOUND.
            CREATE OBJECT t585.
            t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t585->oval = t583.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t586.
      IF t584 IS BOUND.
        DATA t589 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t589.
        DATA t590 TYPE REF TO object.
        CLEAR t590.
        CLEAR t589.
        t590 = t584.
        TRY.
            t586 ?= t590.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t586 IS NOT BOUND.
          TRY.
              t589 ?= t584.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t589 IS BOUND.
            t586 = t589->source( ).
          ENDIF.
          IF t586 IS NOT BOUND.
            CREATE OBJECT t586.
            t586->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t586->oval = t584.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t585 IS BOUND.
        t582 = t585->strict_equals( t586 ).
      ELSE.
        t582 = xsdbool( t586 IS NOT BOUND ).
      ENDIF.
      IF t582 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t591 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t591.
      DATA t592 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t592.
      DATA(t593) = abap_true.
      IF t593 = abap_true.
        DATA(t594) = t577.
        t592 = t594.
      ELSE.
        DATA t595 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t595.
        t592 = t595.
      ENDIF.
      DATA(t596) = t2.
      DATA t597 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t597.
      DATA t598 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t598.
      DATA t599 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t599.
      DATA t600 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t600.
      t591 = zcl_lnt_sy_source=>run_syntax( i_node = t592 i_input_967e = t596 i_target_type = t597 i_write_reference = t598 i_allow_generic_deference = t599 i_read_reference = t600 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d857_8f4cc3b8bf4f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
