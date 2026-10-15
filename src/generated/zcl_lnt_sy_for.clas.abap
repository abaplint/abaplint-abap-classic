* TS: src/abap/5_syntax/expressions/for.ts:15:1 For
CLASS zcl_lnt_sy_for DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_for IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA(t4) = abap_false.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d177_c99f21007fa4.
    t6 = t7->find_direct_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t10 = t11->find_direct_expressions( i_type_9913 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    DATA(t18) = |GROUPS|.
    t16 = t17->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t15.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = t15.
      t24 = t25.
      t23 = t24->get_first_token( ).
      t19 = t23.
    ENDIF.
    t14 = t19.
    t13 = t14.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = t1.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t27 = t28->find_direct_expression( i_type_9913 = t29 ).
    t26 = t27.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE i.
    DATA(t36) = t5.
    t36->load( ).
    t35 = lines( t36->items ).
    DATA(t37) = 0.
    t34 = xsdbool( t35 > t37 ).
    t33 = t34.
    IF t34 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE i.
      DATA(t40) = t9.
      t40->load( ).
      t39 = lines( t40->items ).
      DATA(t41) = 0.
      t38 = xsdbool( t39 > t41 ).
      t33 = t38.
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t26.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t45 = t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t43.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      t47 = xsdbool( t48 = abap_false ).
      t42 = t47.
      t32 = t42.
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t52) = t13.
      t51 = t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      t53 = t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t51.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      t55 = xsdbool( t56 = abap_false ).
      t50 = t55.
      t31 = t50.
    ENDIF.
    t30 = t31.
    DATA(t58) = t30.
    IF t58 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_current_scope.
      DATA t60 TYPE REF TO zcl_lnt_current_scope.
      DATA(t61) = t2.
      t60 = t61->scope.
      t59 = t60.
      DATA t62 TYPE REF TO zcl_lnt_position.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t66) = t1.
      t65 = t66->get_first_token( ).
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA(t68) = t64.
      t67 = t68->start.
      t63 = t67.
      t62 = t63.
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      DATA(t71) = t2.
      t70 = t71->filename.
      t69 = t70.
      DATA t72 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t74 TYPE string.
      DATA(t75) = |for|.
      t74 = t75.
      DATA t76 TYPE string.
      DATA(t77) = |FOR|.
      t76 = t77.
      DATA t78 TYPE REF TO zcl_lnt_position.
      DATA(t79) = t62.
      t78 = t79.
      DATA t80 TYPE string.
      DATA(t81) = t69.
      t80 = t81.
      DATA t82 TYPE REF TO zcl_lnt_position.
      DATA t83 TYPE REF TO zcl_lnt_position.
      CLEAR t83.
      t82 = t83.
      t73 = NEW zcl_lnt_iscope_identifier( i_stype = t74 i_sname = t76 i_filename = t80 i_start = t78 i_end = t82 ).
      CREATE OBJECT t73->zlnt_view_ownkeys_b0e8086400eb.
      t73->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t86 ).
      ENDIF.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t87 ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t73->zlnt_json_ownkeys_70e5fd461788.
      t73->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t89) = |stype|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      DATA(t91) = |sname|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      DATA(t93) = |start|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |filename|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      DATA(t97) = |end|.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
      ENDIF.
      t72 = t73.
      DATA(t99) = VALUE abap_bool( ).
      DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t102) = t59.
      t101 = t102->current.
      t100 = t101.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      t103 = t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = t100.
      IF t106 IS INITIAL.
        t105 = abap_true.
      ENDIF.
      t99 = t105.
      IF t99 = abap_true.
        DATA(t107) = t59.
        DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t111) = t72.
          DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t112.
          t110 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t111 i_parent = t112 ).
          t108 = t110.
        ELSE.
          DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t113.
          t108 = t113.
        ENDIF.
        t107->current = t108.
        DELETE t107->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t116 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t117) = t59.
        t116 = t117->current.
        t115 = t116.
        t114 = t115.
        DATA(t118) = t59.
        DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t119.
        DATA(t120) = abap_true.
        IF t120 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t121.
          DATA(t122) = t72.
          DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t123.
          DATA(t124) = abap_true.
          IF t124 = abap_true.
            DATA(t125) = t114.
            t123 = t125.
          ELSE.
            DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t126.
            t123 = t126.
          ENDIF.
          t121 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t122 i_parent = t123 ).
          t119 = t121.
        ELSE.
          DATA t127 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t127.
          t119 = t127.
        ENDIF.
        t118->current = t119.
        DELETE t118->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA(t128) = t114.
        DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t131) = t59.
        t130 = t131->current.
        t129 = t130.
        t128->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t129 ).
      ENDIF.
      DATA(t132) = abap_true.
      t3 = t132.
    ENDIF.
    DATA(t133) = t5.
    DATA t134 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t134.
    DATA t135 TYPE REF TO object.
    CLEAR t135.
    DATA(t136) = VALUE i( ).
    DO.
      t133->load( ).
      IF t136 >= lines( t133->items ).
        EXIT.
      ENDIF.
      CLEAR t135.
      READ TABLE t133->items INDEX t136 + 1 INTO t135.
      t136 = t136 + 1.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      CLEAR t134.
      IF t135 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t137 ?= t135.
        DATA t138 TYPE REF TO object.
        t138 = t137->as_ref( ).
        t134 ?= t138.
      ELSE.
        t134 ?= t135.
      ENDIF.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t139.
      DATA(t140) = abap_true.
      IF t140 = abap_true.
        DATA(t141) = t134.
        t139 = t141.
      ELSE.
        DATA t142 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t142.
        t139 = t142.
      ENDIF.
      DATA(t143) = t2.
      zcl_lnt_sy_inln_lp_dfntn=>run_syntax( i_node = t139 i_input_967e = t143 ).
    ENDDO.
    DATA(t144) = t9.
    DATA t145 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t145.
    DATA t146 TYPE REF TO object.
    CLEAR t146.
    DATA(t147) = VALUE i( ).
    DO.
      t144->load( ).
      IF t147 >= lines( t144->items ).
        EXIT.
      ENDIF.
      CLEAR t146.
      READ TABLE t144->items INDEX t147 + 1 INTO t146.
      t147 = t147 + 1.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      CLEAR t145.
      IF t146 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t148 ?= t146.
        DATA t149 TYPE REF TO object.
        t149 = t148->as_ref( ).
        t145 ?= t149.
      ELSE.
        t145 ?= t146.
      ENDIF.
      DATA t150 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t151) = t145.
      DATA(t152) = t2.
      DATA t153 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t153.
      t150 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t151 i_input_967e = t152 i_target_type = t153 ).
    ENDDO.
    DATA(t154) = VALUE abap_bool( ).
    DATA t155 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t156) = t13.
    t155 = t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    t157 = t158.
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = VALUE abap_bool( ).
    DATA(t161) = t155.
    IF t161 IS INITIAL.
      t160 = abap_true.
    ENDIF.
    t159 = xsdbool( t160 = abap_false ).
    t154 = t159.
    IF t154 = abap_true.
      DATA t162 TYPE REF TO zcl_lnt_void_type.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_void_type.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      DATA(t165) = abap_true.
      IF t165 = abap_true.
        DATA(t166) = |todoGroupBy|.
        DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t167->has = abap_true.
        t167->value = t166.
        t164 = t167.
      ELSE.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        t164 = t168.
      ENDIF.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t169.
      t163 = zcl_lnt_void_type=>get_db65( i_voided = t164 i_qualified_name = t169 ).
      t162 = t163.
      DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t170.
      DATA t171 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t171.
      DATA t172 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t173) = t13.
      t172 = t173.
      DATA t174 TYPE string.
      DATA(t175) = t2.
      t174 = t175->filename.
      DATA(t176) = t162.
      DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t177.
      DATA(t178) = abap_true.
      IF t178 = abap_true.
        DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t181.
        t180 = t181.
        DATA(t182) = t180.
        DATA(t183) = |inline|.
        t182->load( ).
        APPEND t183 TO t182->items.
        t182->save( ).
        DATA(t184) = t180.
        t179 = t184.
        t177 = t179.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t185.
        t177 = t185.
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      t171 = NEW zcl_lnt_typed_identifier( i_token = t172 i_filename = t174 i_type_9913 = t176 i_meta = t177 i_value = t186 ).
      t170 = t171.
      DATA t187 TYPE REF TO zcl_lnt_current_scope.
      DATA t188 TYPE REF TO zcl_lnt_current_scope.
      DATA(t189) = t2.
      t188 = t189->scope.
      t187 = t188.
      DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t190.
      DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t191.
      DATA(t192) = abap_true.
      IF t192 = abap_true.
        DATA(t193) = t170.
        t191 = t193.
      ELSE.
        DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t194.
        t191 = t194.
      ENDIF.
      t190 = t191.
      DATA(t195) = VALUE abap_bool( ).
      DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t197) = t190.
      t196 = t197.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      t198 = t199.
      DATA(t200) = VALUE abap_bool( ).
      DATA(t201) = t196.
      IF t201 IS INITIAL.
        t200 = abap_true.
      ENDIF.
      t195 = t200.
      IF t195 = abap_true.
      ELSE.
        DATA(t202) = t187.
        DATA(t203) = VALUE string( ).
        DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t206) = t190.
        t205 = t206.
        t204 = t205.
        DATA(t207) = VALUE string( ).
        DATA t208 TYPE string.
        DATA t209 TYPE string.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        DATA t211 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t212) = t204.
        t211 = t212->token.
        t210 = t211.
        DATA t213 TYPE string.
        DATA(t214) = t210.
        t213 = t214->str.
        t209 = t213.
        t208 = t209.
        DATA(t215) = VALUE abap_bool( ).
        DATA(t216) = VALUE string( ).
        DATA(t217) = t208.
        DATA(t218) = 0.
        DATA(t219) = 1.
        DATA(t220) = strlen( t217 ).
        IF t218 < 0.
          t218 = t218 + t220.
          IF t218 < 0.
            t218 = 0.
          ENDIF.
        ENDIF.
        IF t218 > t220 OR t219 <= 0.
          CLEAR t216.
        ELSE.
          IF t219 > t220 - t218.
            t219 = t220 - t218.
          ENDIF.
          t216 = t217+t218(t219).
        ENDIF.
        DATA(t221) = |!|.
        t215 = xsdbool( t216 = t221 ).
        IF t215 = abap_true.
          DATA(t222) = VALUE string( ).
          DATA t223 TYPE string.
          DATA(t224) = t208.
          t223 = t224.
          DATA(t225) = VALUE string( ).
          DATA(t226) = t223.
          DATA(t227) = 1.
          DATA t228 TYPE i.
          DATA(t229) = t223.
          DATA(t230) = strlen( t229 ).
          t228 = t230.
          DATA(t231) = strlen( t226 ).
          IF t227 < 0.
            t227 = t227 + t231.
            IF t227 < 0.
              t227 = 0.
            ENDIF.
          ENDIF.
          IF t227 > t231 OR t228 <= 0.
            CLEAR t225.
          ELSE.
            IF t228 > t231 - t227.
              t228 = t231 - t227.
            ENDIF.
            t225 = t226+t227(t228).
          ENDIF.
          t222 = t225.
          t208 = t222.
        ENDIF.
        DATA(t232) = t208.
        t207 = t232.
        t203 = t207.
        DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t234) = t190.
        t233 = t234.
        t202->add_named_identifier( i_name = t203 i_identifier = t233 ).
      ENDIF.
      DATA t235 TYPE REF TO zcl_lnt_current_scope.
      DATA(t236) = t2.
      t235 = t236->scope.
      DATA t237 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t237.
      DATA(t238) = abap_true.
      IF t238 = abap_true.
        DATA t239 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t240) = t13.
        t239 = t240.
        t237 = t239.
      ELSE.
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t241.
        t237 = t241.
      ENDIF.
      DATA(t242) = t170.
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t243.
      DATA(t244) = |Write To|.
      CLEAR t243.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t243->sval = t244.
      DATA t245 TYPE string.
      DATA(t246) = t2.
      t245 = t246->filename.
      DATA t247 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t247.
      t235->add_reference( i_usage = t237 i_referencing = t242 i_type_9913 = t243 i_filename = t245 i_extra = t247 ).
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t249) = t1.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t248 = t249->find_direct_expressions( i_type_9913 = t250 ).
    DATA t251 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t251.
    DATA t252 TYPE REF TO object.
    CLEAR t252.
    DATA(t253) = VALUE i( ).
    DO.
      t248->load( ).
      IF t253 >= lines( t248->items ).
        EXIT.
      ENDIF.
      CLEAR t252.
      READ TABLE t248->items INDEX t253 + 1 INTO t252.
      t253 = t253 + 1.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      CLEAR t251.
      IF t252 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t254 ?= t252.
        DATA t255 TYPE REF TO object.
        t255 = t254->as_ref( ).
        t251 ?= t255.
      ELSE.
        t251 ?= t252.
      ENDIF.
      DATA t256 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t256.
      DATA t257 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t257.
      DATA(t258) = abap_true.
      IF t258 = abap_true.
        DATA(t259) = t251.
        t257 = t259.
      ELSE.
        DATA t260 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t260.
        t257 = t260.
      ENDIF.
      DATA(t261) = t2.
      DATA t262 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t262.
      DATA t263 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t264.
      DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t265.
      t256 = zcl_lnt_sy_source=>run_syntax( i_node = t257 i_input_967e = t261 i_target_type = t262 i_write_reference = t263 i_allow_generic_deference = t264 i_read_reference = t265 ).
    ENDDO.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t267) = t1.
    DATA(t268) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t266 = t267->find_direct_expressions( i_type_9913 = t268 ).
    DATA t269 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t269.
    DATA t270 TYPE REF TO object.
    CLEAR t270.
    DATA(t271) = VALUE i( ).
    DO.
      t266->load( ).
      IF t271 >= lines( t266->items ).
        EXIT.
      ENDIF.
      CLEAR t270.
      READ TABLE t266->items INDEX t271 + 1 INTO t270.
      t271 = t271 + 1.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      CLEAR t269.
      IF t270 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t272 ?= t270.
        DATA t273 TYPE REF TO object.
        t273 = t272->as_ref( ).
        t269 ?= t273.
      ELSE.
        t269 ?= t270.
      ENDIF.
      DATA(t274) = t269.
      DATA(t275) = t2.
      DATA t276 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t276.
      DATA t277 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t277.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t274 i_input_967e = t275 i_left_type = t276 i_right_type = t277 ).
    ENDDO.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t279) = t1.
    DATA(t280) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t278 = t279->find_direct_expressions( i_type_9913 = t280 ).
    DATA t281 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t281.
    DATA t282 TYPE REF TO object.
    CLEAR t282.
    DATA(t283) = VALUE i( ).
    DO.
      t278->load( ).
      IF t283 >= lines( t278->items ).
        EXIT.
      ENDIF.
      CLEAR t282.
      READ TABLE t278->items INDEX t283 + 1 INTO t282.
      t283 = t283 + 1.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t284.
      CLEAR t281.
      IF t282 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t284 ?= t282.
        DATA t285 TYPE REF TO object.
        t285 = t284->as_ref( ).
        t281 ?= t285.
      ELSE.
        t281 ?= t282.
      ENDIF.
      DATA(t286) = t281.
      DATA(t287) = t2.
      zcl_lnt_sy_cond=>run_syntax( i_node = t286 i_input_967e = t287 ).
    ENDDO.
    DATA t288 TYPE abap_bool.
    DATA(t289) = t26.
    t288 = xsdbool( t289 IS BOUND ).
    IF t288 = abap_true.
      DATA(t290) = VALUE abap_bool( ).
      DATA t291 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t291.
      DATA(t292) = abap_true.
      IF t292 = abap_true.
        DATA t293 TYPE REF TO zcl_lnt_expression_node.
        DATA(t294) = t26.
        t293 = t294.
        t291 = t293.
      ELSE.
        DATA t295 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t295.
        t291 = t295.
      ENDIF.
      DATA(t296) = t2.
      DATA t297 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t297.
      DATA(t298) = abap_true.
      IF t298 = abap_true.
        DATA(t299) = abap_true.
        DATA(t300) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t300->has = abap_true.
        t300->value = t299.
        t297 = t300.
      ELSE.
        DATA t301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t301.
        t297 = t301.
      ENDIF.
      t290 = zcl_lnt_sy_let=>run_syntax( i_node = t291 i_input_967e = t296 i_skip_scope = t297 ).
    ENDIF.
    DATA(t302) = t3.
    result = t302.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d807_a029f4db49c7.
  ENDMETHOD.
ENDCLASS.
