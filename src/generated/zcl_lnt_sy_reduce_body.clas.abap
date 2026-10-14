* TS: src/abap/5_syntax/expressions/reduce_body.ts:13:1 ReduceBody
CLASS zcl_lnt_sy_reduce_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_reduce_body IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_expression_node( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA(t13) = abap_false.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = CAST zcl_lnt_expression_node( t1 ).
    t16 = t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9 ).
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t14 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = CAST zcl_lnt_expression_node( t14 ).
        t24 = t25.
        t22 = t24.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t27 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE REF TO zcl_lnt_abstract_type.
    DATA t30 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t30.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    DATA(t33) = CAST zcl_lnt_expression_node( t1 ).
    t32 = t33.
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6 ).
    t31 = t32->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    LOOP AT t31->items INTO t36.
      t35 ?= t36.
      DATA t37 TYPE abap_bool.
      DATA(t38) = t12.
      DATA(t39) = abap_false.
      t37 = xsdbool( t38 = t39 ).
      IF t37 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_current_scope.
        DATA t41 TYPE REF TO zcl_lnt_current_scope.
        DATA(t42) = CAST zcl_lnt_syntax_input( t2 ).
        t41 = t42->scope.
        t40 = t41.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA t44 TYPE REF TO zcl_lnt_position.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = CAST zcl_lnt_expression_node( t1 ).
        t47 = t48.
        t46 = t47->get_first_token( ).
        t45 = t46.
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA(t50) = CAST zcl_lnt_abstract_token( t45 ).
        t49 = t50->start.
        t44 = t49.
        t43 = t44.
        DATA t51 TYPE string.
        DATA t52 TYPE string.
        DATA(t53) = CAST zcl_lnt_syntax_input( t2 ).
        t52 = t53->filename.
        t51 = t52.
        DATA t54 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t55 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t56) = |let|.
        DATA(t57) = |LET|.
        DATA(t58) = t51.
        DATA(t59) = CAST zcl_lnt_position( t43 ).
        DATA t60 TYPE REF TO zcl_lnt_position.
        CLEAR t60.
        t55 = NEW zcl_lnt_iscope_identifier( i_stype = t56 i_sname = t57 i_filename = t58 i_start = t59 i_end = t60 ).
        t54 = t55.
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t64) = CAST zcl_lnt_current_scope( t40 ).
        t63 = t64->current.
        t62 = t63.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        t65 = t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = CAST zcl_lnt_spaghetti_scope_node( t62 ).
        IF t68 IS INITIAL.
          t67 = abap_true.
        ENDIF.
        t61 = t67.
        IF t61 = abap_true.
          DATA(t69) = CAST zcl_lnt_current_scope( t40 ).
          DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t73) = CAST zcl_lnt_iscope_identifier( t54 ).
            DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t74.
            t72 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t73 i_parent = t74 ).
            t70 = t72.
          ELSE.
            DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t75.
            t70 = t75.
          ENDIF.
          t69->current = t70.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t79) = CAST zcl_lnt_current_scope( t40 ).
          t78 = t79->current.
          t77 = t78.
          t76 = t77.
          DATA(t80) = CAST zcl_lnt_current_scope( t40 ).
          DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t83.
            DATA(t84) = CAST zcl_lnt_iscope_identifier( t54 ).
            DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t85.
            DATA(t86) = abap_true.
            IF t86 = abap_true.
              DATA(t87) = CAST zcl_lnt_spaghetti_scope_node( t76 ).
              t85 = t87.
            ELSE.
              DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t88.
              t85 = t88.
            ENDIF.
            t83 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t84 i_parent = t85 ).
            t81 = t83.
          ELSE.
            DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t89.
            t81 = t89.
          ENDIF.
          t80->current = t81.
          DATA(t90) = CAST zcl_lnt_spaghetti_scope_node( t76 ).
          DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t93) = CAST zcl_lnt_current_scope( t40 ).
          t92 = t93->current.
          t91 = t92.
          t90->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t91 ).
        ENDIF.
        DATA(t94) = abap_true.
        t12 = t94.
      ENDIF.
      DATA t95 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t96) = CAST zcl_lnt_abstract_type( t3 ).
      t95 = t96.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      DATA(t99) = CAST zcl_lnt_expression_node( t35 ).
      DATA(t100) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t98 = t99->find_direct_expression( i_type_9913 = t100 ).
      t97 = t98.
      DATA t101 TYPE abap_bool.
      DATA(t102) = CAST zcl_lnt_expression_node( t97 ).
      t101 = xsdbool( t102 IS BOUND ).
      IF t101 = abap_true.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t103.
        DATA t104 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t104.
        DATA(t105) = abap_true.
        IF t105 = abap_true.
          DATA t106 TYPE REF TO zcl_lnt_expression_node.
          DATA(t107) = CAST zcl_lnt_expression_node( t97 ).
          t106 = t107.
          t104 = t106.
        ELSE.
          DATA t108 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t108.
          t104 = t108.
        ENDIF.
        DATA(t109) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t110) = CAST zcl_lnt_abstract_type( t3 ).
        DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t113.
        t103 = zcl_lnt_sy_source=>run_syntax( i_node = t104 i_input_967e = t109 i_target_type = t110 i_write_reference = t111 i_allow_generic_deference = t112 i_read_reference = t113 ).
        t95 = t103.
      ENDIF.
      DATA t114 TYPE REF TO zcl_lnt_abstract_type.
      DATA t115 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t116) = CAST zcl_lnt_expression_node( t35 ).
      DATA(t117) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t118) = CAST zcl_lnt_abstract_type( t95 ).
      t115 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t116 i_input_967e = t117 i_target_type = t118 ).
      t114 = t115.
      DATA t119 TYPE abap_bool.
      DATA t120 TYPE abap_bool.
      DATA(t121) = CAST zcl_lnt_abstract_type( t114 ).
      t120 = xsdbool( t121 IS BOUND ).
      t119 = t120.
      IF t120 = abap_true.
        DATA(t122) = VALUE abap_bool( ).
        DATA t123 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t124) = CAST zcl_lnt_abstract_type( t29 ).
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        t125 = t126.
        DATA(t127) = VALUE abap_bool( ).
        DATA(t128) = CAST zcl_lnt_abstract_type( t123 ).
        IF t128 IS INITIAL.
          t127 = abap_true.
        ENDIF.
        t122 = t127.
        t119 = t122.
      ENDIF.
      IF t119 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t132) = CAST zcl_lnt_abstract_type( t114 ).
          t131 = t132.
          t129 = t131.
        ELSE.
          DATA t133 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t133.
          t129 = t133.
        ENDIF.
        t29 = t129.
      ENDIF.
    ENDLOOP.
    DATA t134 TYPE int8.
    DATA(t135) = CONV int8( 0 ).
    t134 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zcl_lnt_expression_node.
    DATA(t140) = CAST zcl_lnt_expression_node( t1 ).
    t139 = t140.
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d ).
    t138 = t139->find_direct_expressions( i_type_9913 = t141 ).
    t137 = t138.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t142.
    DATA t143 TYPE abap_bool.
    DATA(t144) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
    t143 = xsdbool( t144 IS BOUND ).
    IF t143 = abap_true.
      DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t137 ).
      t142 = t145.
    ELSE.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t146.
      t142 = t146.
    ENDIF.
    t136 = t142.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t147.
    DATA t148 TYPE REF TO object.
    CLEAR t148.
    LOOP AT t136->items INTO t148.
      t147 ?= t148.
      DATA t149 TYPE abap_bool.
      DATA t150 TYPE abap_bool.
      DATA(t151) = CAST zcl_lnt_expression_node( t147 ).
      DATA(t152) = CAST zcl_lnt_syntax_input( t2 ).
      t150 = zcl_lnt_sy_for=>run_syntax( i_node = t151 i_input_967e = t152 ).
      t149 = t150.
      DATA t153 TYPE abap_bool.
      DATA(t154) = t149.
      DATA(t155) = abap_true.
      t153 = xsdbool( t154 = t155 ).
      IF t153 = abap_true.
        DATA t156 TYPE int8.
        DATA(t157) = t134.
        DATA(t158) = CONV int8( 1 ).
        t156 = t157 + t158.
        IF t156 < range_int8_bound_min OR t156 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t134 = t156.
      ENDIF.
    ENDLOOP.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zcl_lnt_expression_node.
    DATA(t161) = CAST zcl_lnt_expression_node( t1 ).
    t160 = t161.
    DATA(t162) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t159 = t160->find_direct_expressions( i_type_9913 = t162 ).
    DATA t163 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t163.
    DATA t164 TYPE REF TO object.
    CLEAR t164.
    LOOP AT t159->items INTO t164.
      t163 ?= t164.
      DATA t165 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA(t167) = abap_true.
      IF t167 = abap_true.
        DATA(t168) = CAST zcl_lnt_expression_node( t163 ).
        t166 = t168.
      ELSE.
        DATA t169 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t169.
        t166 = t169.
      ENDIF.
      DATA(t170) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t171 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t171.
      DATA t172 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t172.
      DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t173.
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t174.
      t165 = zcl_lnt_sy_source=>run_syntax( i_node = t166 i_input_967e = t170 i_target_type = t171 i_write_reference = t172 i_allow_generic_deference = t173 i_read_reference = t174 ).
    ENDLOOP.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t176 TYPE REF TO zcl_lnt_expression_node.
    DATA(t177) = CAST zcl_lnt_expression_node( t1 ).
    t176 = t177.
    DATA(t178) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d247_a74410852a3d ).
    t175 = t176->find_direct_expressions( i_type_9913 = t178 ).
    DATA t179 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t179.
    DATA t180 TYPE REF TO object.
    CLEAR t180.
    LOOP AT t175->items INTO t180.
      t179 ?= t180.
      DATA t181 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t181.
      DATA(t182) = abap_true.
      IF t182 = abap_true.
        DATA(t183) = CAST zcl_lnt_expression_node( t179 ).
        t181 = t183.
      ELSE.
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t184.
        t181 = t184.
      ENDIF.
      DATA(t185) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_reduce_next=>run_syntax( i_node = t181 i_input_967e = t185 ).
    ENDLOOP.
    DATA t186 TYPE abap_bool.
    DATA(t187) = t12.
    DATA(t188) = abap_true.
    t186 = xsdbool( t187 = t188 ).
    IF t186 = abap_true.
      DATA t189 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_current_scope.
      DATA(t191) = CAST zcl_lnt_syntax_input( t2 ).
      t190 = t191->scope.
      DATA t192 TYPE REF TO zcl_lnt_position.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_abstract_token.
      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
      DATA t195 TYPE REF TO zcl_lnt_expression_node.
      DATA(t196) = CAST zcl_lnt_expression_node( t1 ).
      t195 = t196.
      t194 = t195->get_last_token( ).
      t193 = t194.
      DATA t197 TYPE REF TO zcl_lnt_position.
      CLEAR t197.
      DATA t198 TYPE int8.
      DATA t199 TYPE REF TO zcl_lnt_position.
      DATA t200 TYPE REF TO zcl_lnt_position.
      DATA(t201) = CAST zcl_lnt_abstract_token( t193 ).
      t200 = t201->start.
      t199 = t200.
      DATA t202 TYPE int8.
      DATA(t203) = CAST zcl_lnt_position( t199 ).
      t202 = t203->row.
      t198 = t202.
      DATA t204 TYPE int8.
      DATA t205 TYPE int8.
      DATA t206 TYPE REF TO zcl_lnt_position.
      DATA t207 TYPE REF TO zcl_lnt_position.
      DATA(t208) = CAST zcl_lnt_abstract_token( t193 ).
      t207 = t208->start.
      t206 = t207.
      DATA t209 TYPE int8.
      DATA(t210) = CAST zcl_lnt_position( t206 ).
      t209 = t210->col.
      t205 = t209.
      DATA t211 TYPE int8.
      DATA t212 TYPE i.
      DATA t213 TYPE string.
      DATA(t214) = CAST zcl_lnt_abstract_token( t193 ).
      t213 = t214->str.
      DATA(t215) = strlen( t213 ).
      t212 = t215.
      t211 = t212.
      t204 = t205 + t211.
      IF t204 < range_int8_bound_min OR t204 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t197 = NEW zcl_lnt_position( i_row = t198 i_col = t204 ).
      t192 = t197.
      t189 = t190->pop( i_end = t192 ).
    ENDIF.
    DATA t216 TYPE int8.
    DATA(t217) = CONV int8( 0 ).
    t216 = t217.
    DO.
      DATA t218 TYPE abap_bool.
      DATA(t219) = t216.
      DATA(t220) = t134.
      t218 = xsdbool( t219 < t220 ).
      IF t218 = abap_false.
        EXIT.
      ENDIF.
      DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t221.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      DATA(t223) = CAST zcl_lnt_syntax_input( t2 ).
      t222 = t223->scope.
      DATA t224 TYPE REF TO zcl_lnt_position.
      CLEAR t224.
      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
      DATA t226 TYPE REF TO zcl_lnt_abstract_token.
      DATA t227 TYPE REF TO zcl_lnt_expression_node.
      DATA(t228) = CAST zcl_lnt_expression_node( t1 ).
      t227 = t228.
      t226 = t227->get_last_token( ).
      t225 = t226.
      DATA t229 TYPE REF TO zcl_lnt_position.
      CLEAR t229.
      DATA t230 TYPE int8.
      DATA t231 TYPE REF TO zcl_lnt_position.
      DATA t232 TYPE REF TO zcl_lnt_position.
      DATA(t233) = CAST zcl_lnt_abstract_token( t225 ).
      t232 = t233->start.
      t231 = t232.
      DATA t234 TYPE int8.
      DATA(t235) = CAST zcl_lnt_position( t231 ).
      t234 = t235->row.
      t230 = t234.
      DATA t236 TYPE int8.
      DATA t237 TYPE int8.
      DATA t238 TYPE REF TO zcl_lnt_position.
      DATA t239 TYPE REF TO zcl_lnt_position.
      DATA(t240) = CAST zcl_lnt_abstract_token( t225 ).
      t239 = t240->start.
      t238 = t239.
      DATA t241 TYPE int8.
      DATA(t242) = CAST zcl_lnt_position( t238 ).
      t241 = t242->col.
      t237 = t241.
      DATA t243 TYPE int8.
      DATA t244 TYPE i.
      DATA t245 TYPE string.
      DATA(t246) = CAST zcl_lnt_abstract_token( t225 ).
      t245 = t246->str.
      DATA(t247) = strlen( t245 ).
      t244 = t247.
      t243 = t244.
      t236 = t237 + t243.
      IF t236 < range_int8_bound_min OR t236 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t229 = NEW zcl_lnt_position( i_row = t230 i_col = t236 ).
      t224 = t229.
      t221 = t222->pop( i_end = t224 ).
      DATA t248 TYPE int8.
      DATA(t249) = t216.
      DATA(t250) = CONV int8( 1 ).
      t248 = t249 + t250.
      IF t248 < range_int8_bound_min OR t248 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t216 = t248.
    ENDDO.
    DATA t251 TYPE abap_bool.
    DATA(t252) = CAST zcl_lnt_abstract_type( t29 ).
    t251 = xsdbool( t252 IS BOUND ).
    IF t251 = abap_true.
      DATA t253 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t253.
      DATA(t254) = abap_true.
      IF t254 = abap_true.
        DATA t255 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t256) = CAST zcl_lnt_abstract_type( t29 ).
        t255 = t256.
        t253 = t255.
      ELSE.
        DATA t257 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t257.
        t253 = t257.
      ENDIF.
      result = t253.
      RETURN.
    ELSE.
      DATA t258 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t259) = |todo, ReduceBody|.
      DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t260.
      t258 = NEW zcl_lnt_unknown_type( i_error = t259 i_qualified_name = t260 ).
      result = t258.

    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d807_a029f4db49c7.
  ENDMETHOD.
ENDCLASS.
