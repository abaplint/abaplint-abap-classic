* TS: src/abap/5_syntax/expressions/reduce_body.ts:13:1 ReduceBody
CLASS zcl_lnt_sy_reduce_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_reduce_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
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
    DATA(t17) = t1.
    t16 = t17.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t14.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = t14.
        t24 = t25.
        t22 = t24.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA(t27) = t2.
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
    DATA(t33) = t1.
    t32 = t33.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t31 = t32->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = VALUE i( ).
    DO.
      t31->load( ).
      IF t37 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t31->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA t40 TYPE abap_bool.
      DATA(t41) = t12.
      DATA(t42) = abap_false.
      t40 = xsdbool( t41 = t42 ).
      IF t40 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_current_scope.
        DATA t44 TYPE REF TO zcl_lnt_current_scope.
        DATA(t45) = t2.
        t44 = t45->scope.
        t43 = t44.
        DATA t46 TYPE REF TO zcl_lnt_position.
        DATA t47 TYPE REF TO zcl_lnt_position.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        DATA(t51) = t1.
        t50 = t51.
        t49 = t50->get_first_token( ).
        t48 = t49.
        DATA t52 TYPE REF TO zcl_lnt_position.
        DATA(t53) = t48.
        t52 = t53->start.
        t47 = t52.
        t46 = t47.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA(t56) = t2.
        t55 = t56->filename.
        t54 = t55.
        DATA t57 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t59 TYPE string.
        DATA(t60) = |let|.
        t59 = t60.
        DATA t61 TYPE string.
        DATA(t62) = |LET|.
        t61 = t62.
        DATA t63 TYPE REF TO zcl_lnt_position.
        DATA(t64) = t46.
        t63 = t64.
        DATA t65 TYPE string.
        DATA(t66) = t54.
        t65 = t66.
        DATA t67 TYPE REF TO zcl_lnt_position.
        DATA t68 TYPE REF TO zcl_lnt_position.
        CLEAR t68.
        t67 = t68.
        t58 = NEW zcl_lnt_iscope_identifier( i_stype = t59 i_sname = t61 i_filename = t65 i_start = t63 i_end = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t69 ).
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t70 ).
        ENDIF.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t71 ).
        ENDIF.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t72 ).
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t73 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t74) = |stype|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
        ENDIF.
        DATA(t76) = |sname|.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
        ENDIF.
        DATA(t78) = |start|.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
        ENDIF.
        DATA(t80) = |filename|.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
        ENDIF.
        DATA(t82) = |end|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        t57 = t58.
        DATA(t84) = VALUE abap_bool( ).
        DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t87) = t43.
        t86 = t87->current.
        t85 = t86.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        t88 = t89.
        DATA(t90) = VALUE abap_bool( ).
        DATA(t91) = t85.
        IF t91 IS INITIAL.
          t90 = abap_true.
        ENDIF.
        t84 = t90.
        IF t84 = abap_true.
          DATA(t92) = t43.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t93.
          DATA(t94) = abap_true.
          IF t94 = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t96) = t57.
            DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t97.
            t95 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t96 i_parent = t97 ).
            t93 = t95.
          ELSE.
            DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t98.
            t93 = t98.
          ENDIF.
          t92->current = t93.
          DELETE t92->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t102) = t43.
          t101 = t102->current.
          t100 = t101.
          t99 = t100.
          DATA(t103) = t43.
          DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t104.
          DATA(t105) = abap_true.
          IF t105 = abap_true.
            DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t106.
            DATA(t107) = t57.
            DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t108.
            DATA(t109) = abap_true.
            IF t109 = abap_true.
              DATA(t110) = t99.
              t108 = t110.
            ELSE.
              DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t111.
              t108 = t111.
            ENDIF.
            t106 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t107 i_parent = t108 ).
            t104 = t106.
          ELSE.
            DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t112.
            t104 = t112.
          ENDIF.
          t103->current = t104.
          DELETE t103->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA(t113) = t99.
          DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t116) = t43.
          t115 = t116->current.
          t114 = t115.
          t113->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t114 ).
        ENDIF.
        DATA(t117) = abap_true.
        t12 = t117.
      ENDIF.
      DATA t118 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t119) = t3.
      t118 = t119.
      DATA t120 TYPE REF TO zcl_lnt_expression_node.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      DATA(t122) = t35.
      DATA(t123) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t121 = t122->find_direct_expression( i_type_9913 = t123 ).
      t120 = t121.
      DATA t124 TYPE abap_bool.
      DATA(t125) = t120.
      t124 = xsdbool( t125 IS BOUND ).
      IF t124 = abap_true.
        DATA t126 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA t129 TYPE REF TO zcl_lnt_expression_node.
          DATA(t130) = t120.
          t129 = t130.
          t127 = t129.
        ELSE.
          DATA t131 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t131.
          t127 = t131.
        ENDIF.
        DATA(t132) = t2.
        DATA(t133) = t3.
        DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t136.
        t126 = zcl_lnt_sy_source=>run_syntax( i_node = t127 i_input_967e = t132 i_target_type = t133 i_write_reference = t134 i_allow_generic_deference = t135 i_read_reference = t136 ).
        t118 = t126.
      ENDIF.
      DATA t137 TYPE REF TO zcl_lnt_abstract_type.
      DATA t138 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t139) = t35.
      DATA(t140) = t2.
      DATA(t141) = t118.
      t138 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t139 i_input_967e = t140 i_target_type = t141 ).
      t137 = t138.
      DATA t142 TYPE abap_bool.
      DATA t143 TYPE abap_bool.
      DATA(t144) = t137.
      t143 = xsdbool( t144 IS BOUND ).
      t142 = t143.
      IF t143 = abap_true.
        DATA(t145) = VALUE abap_bool( ).
        DATA t146 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t147) = t29.
        t146 = t147.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        t148 = t149.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = t146.
        IF t151 IS INITIAL.
          t150 = abap_true.
        ENDIF.
        t145 = t150.
        t142 = t145.
      ENDIF.
      IF t142 = abap_true.
        DATA t152 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA t154 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t155) = t137.
          t154 = t155.
          t152 = t154.
        ELSE.
          DATA t156 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t156.
          t152 = t156.
        ENDIF.
        t29 = t152.
      ENDIF.
    ENDDO.
    DATA t157 TYPE f.
    DATA(t158) = CONV f( 0 ).
    t157 = t158.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t162 TYPE REF TO zcl_lnt_expression_node.
    DATA(t163) = t1.
    t162 = t163.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    t161 = t162->find_direct_expressions( i_type_9913 = t164 ).
    t160 = t161.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t165.
    DATA t166 TYPE abap_bool.
    DATA(t167) = t160.
    t166 = xsdbool( t167 IS BOUND ).
    IF t166 = abap_true.
      DATA(t168) = t160.
      t165 = t168.
    ELSE.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t169.
      t165 = t169.
    ENDIF.
    t159 = t165.
    DATA t170 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t170.
    DATA t171 TYPE REF TO object.
    CLEAR t171.
    DATA(t172) = VALUE i( ).
    DO.
      t159->load( ).
      IF t172 >= lines( t159->items ).
        EXIT.
      ENDIF.
      CLEAR t171.
      READ TABLE t159->items INDEX t172 + 1 INTO t171.
      t172 = t172 + 1.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      CLEAR t170.
      IF t171 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t173 ?= t171.
        DATA t174 TYPE REF TO object.
        t174 = t173->as_ref( ).
        t170 ?= t174.
      ELSE.
        t170 ?= t171.
      ENDIF.
      DATA t175 TYPE abap_bool.
      DATA t176 TYPE abap_bool.
      DATA(t177) = t170.
      DATA(t178) = t2.
      t176 = zcl_lnt_sy_for=>run_syntax( i_node = t177 i_input_967e = t178 ).
      t175 = t176.
      DATA t179 TYPE abap_bool.
      DATA(t180) = t175.
      DATA(t181) = abap_true.
      t179 = xsdbool( t180 = t181 ).
      IF t179 = abap_true.
        DATA t182 TYPE f.
        DATA(t183) = t157.
        DATA(t184) = CONV f( 1 ).
        t182 = t183 + t184.
        t157 = t182.
      ENDIF.
    ENDDO.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t186 TYPE REF TO zcl_lnt_expression_node.
    DATA(t187) = t1.
    t186 = t187.
    DATA(t188) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t185 = t186->find_direct_expressions( i_type_9913 = t188 ).
    DATA t189 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t189.
    DATA t190 TYPE REF TO object.
    CLEAR t190.
    DATA(t191) = VALUE i( ).
    DO.
      t185->load( ).
      IF t191 >= lines( t185->items ).
        EXIT.
      ENDIF.
      CLEAR t190.
      READ TABLE t185->items INDEX t191 + 1 INTO t190.
      t191 = t191 + 1.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      CLEAR t189.
      IF t190 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t192 ?= t190.
        DATA t193 TYPE REF TO object.
        t193 = t192->as_ref( ).
        t189 ?= t193.
      ELSE.
        t189 ?= t190.
      ENDIF.
      DATA t194 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t194.
      DATA t195 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t195.
      DATA(t196) = abap_true.
      IF t196 = abap_true.
        DATA(t197) = t189.
        t195 = t197.
      ELSE.
        DATA t198 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t198.
        t195 = t198.
      ENDIF.
      DATA(t199) = t2.
      DATA t200 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t200.
      DATA t201 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t201.
      DATA t202 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t202.
      DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t203.
      t194 = zcl_lnt_sy_source=>run_syntax( i_node = t195 i_input_967e = t199 i_target_type = t200 i_write_reference = t201 i_allow_generic_deference = t202 i_read_reference = t203 ).
    ENDDO.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t205 TYPE REF TO zcl_lnt_expression_node.
    DATA(t206) = t1.
    t205 = t206.
    DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814.
    t204 = t205->find_direct_expressions( i_type_9913 = t207 ).
    DATA t208 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t208.
    DATA t209 TYPE REF TO object.
    CLEAR t209.
    DATA(t210) = VALUE i( ).
    DO.
      t204->load( ).
      IF t210 >= lines( t204->items ).
        EXIT.
      ENDIF.
      CLEAR t209.
      READ TABLE t204->items INDEX t210 + 1 INTO t209.
      t210 = t210 + 1.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      CLEAR t208.
      IF t209 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t211 ?= t209.
        DATA t212 TYPE REF TO object.
        t212 = t211->as_ref( ).
        t208 ?= t212.
      ELSE.
        t208 ?= t209.
      ENDIF.
      DATA t213 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t213.
      DATA(t214) = abap_true.
      IF t214 = abap_true.
        DATA(t215) = t208.
        t213 = t215.
      ELSE.
        DATA t216 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t216.
        t213 = t216.
      ENDIF.
      DATA(t217) = t2.
      zcl_lnt_sy_reduce_next=>run_syntax( i_node = t213 i_input_967e = t217 ).
    ENDDO.
    DATA t218 TYPE abap_bool.
    DATA(t219) = t12.
    DATA(t220) = abap_true.
    t218 = xsdbool( t219 = t220 ).
    IF t218 = abap_true.
      DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      DATA(t223) = t2.
      t222 = t223->scope.
      DATA t224 TYPE REF TO zcl_lnt_position.
      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
      DATA t226 TYPE REF TO zcl_lnt_abstract_token.
      DATA t227 TYPE REF TO zcl_lnt_expression_node.
      DATA(t228) = t1.
      t227 = t228.
      t226 = t227->get_last_token( ).
      t225 = t226.
      DATA t229 TYPE REF TO zcl_lnt_position.
      DATA t230 TYPE f.
      DATA t231 TYPE REF TO zcl_lnt_position.
      DATA t232 TYPE REF TO zcl_lnt_position.
      DATA(t233) = t225.
      t232 = t233->start.
      t231 = t232.
      DATA t234 TYPE f.
      DATA(t235) = t231.
      t234 = t235->row.
      t230 = t234.
      DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t238 TYPE REF TO zcl_lnt_position.
      DATA t239 TYPE REF TO zcl_lnt_position.
      DATA(t240) = t225.
      t239 = t240->start.
      t238 = t239.
      DATA t241 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t242) = t238.
      t241 = t242->col.
      t237 = t241.
      DATA t243 TYPE f.
      DATA t244 TYPE i.
      DATA t245 TYPE string.
      DATA(t246) = t225.
      t245 = t246->str.
      DATA(t247) = strlen( t245 ).
      t244 = t247.
      t243 = t244.
      DATA(t248) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t248->has = abap_true.
      t248->value = t243.
      t236 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t237 right = t248 op = `+` ).
      t229 = NEW zcl_lnt_position( i_row = t230 i_col = t236 ).
      t224 = t229.
      t221 = t222->pop( i_end = t224 ).
    ENDIF.
    DATA t249 TYPE f.
    DATA(t250) = CONV f( 0 ).
    t249 = t250.
    DO.
      DATA t251 TYPE abap_bool.
      DATA(t252) = t249.
      DATA(t253) = t157.
      t251 = xsdbool( t252 < t253 ).
      IF t251 = abap_false.
        EXIT.
      ENDIF.
      DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t255 TYPE REF TO zcl_lnt_current_scope.
      DATA(t256) = t2.
      t255 = t256->scope.
      DATA t257 TYPE REF TO zcl_lnt_position.
      DATA t258 TYPE REF TO zcl_lnt_abstract_token.
      DATA t259 TYPE REF TO zcl_lnt_abstract_token.
      DATA t260 TYPE REF TO zcl_lnt_expression_node.
      DATA(t261) = t1.
      t260 = t261.
      t259 = t260->get_last_token( ).
      t258 = t259.
      DATA t262 TYPE REF TO zcl_lnt_position.
      DATA t263 TYPE f.
      DATA t264 TYPE REF TO zcl_lnt_position.
      DATA t265 TYPE REF TO zcl_lnt_position.
      DATA(t266) = t258.
      t265 = t266->start.
      t264 = t265.
      DATA t267 TYPE f.
      DATA(t268) = t264.
      t267 = t268->row.
      t263 = t267.
      DATA t269 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t271 TYPE REF TO zcl_lnt_position.
      DATA t272 TYPE REF TO zcl_lnt_position.
      DATA(t273) = t258.
      t272 = t273->start.
      t271 = t272.
      DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t275) = t271.
      t274 = t275->col.
      t270 = t274.
      DATA t276 TYPE f.
      DATA t277 TYPE i.
      DATA t278 TYPE string.
      DATA(t279) = t258.
      t278 = t279->str.
      DATA(t280) = strlen( t278 ).
      t277 = t280.
      t276 = t277.
      DATA(t281) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t281->has = abap_true.
      t281->value = t276.
      t269 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t270 right = t281 op = `+` ).
      t262 = NEW zcl_lnt_position( i_row = t263 i_col = t269 ).
      t257 = t262.
      t254 = t255->pop( i_end = t257 ).
      DATA t282 TYPE f.
      DATA(t283) = t249.
      DATA(t284) = CONV f( 1 ).
      t282 = t283 + t284.
      t249 = t282.
    ENDDO.
    DATA t285 TYPE abap_bool.
    DATA(t286) = t29.
    t285 = xsdbool( t286 IS BOUND ).
    IF t285 = abap_true.
      DATA t287 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t287.
      DATA(t288) = abap_true.
      IF t288 = abap_true.
        DATA t289 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t290) = t29.
        t289 = t290.
        t287 = t289.
      ELSE.
        DATA t291 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t291.
        t287 = t291.
      ENDIF.
      result = t287.
      RETURN.
    ELSE.
      DATA t292 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t293) = |todo, ReduceBody|.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      t292 = NEW zcl_lnt_unknown_type( i_error = t293 i_qualified_name = t294 ).
      result = t292.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d829_3c9ea8646df0.
  ENDMETHOD.
ENDCLASS.
