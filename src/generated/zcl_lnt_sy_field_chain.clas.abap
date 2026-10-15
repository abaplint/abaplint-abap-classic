* TS: src/abap/5_syntax/expressions/field_chain.ts:20:1 FieldChain
CLASS zcl_lnt_sy_field_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_ref_type TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_allow_generic_deference TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_ref_type.
    DATA(t4) = i_allow_generic_deference.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = abap_false.
        DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t18.
    DATA(t19) = t1.
    t18 = t19.
    DATA t20 TYPE REF TO zif_lnt_node.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zif_lnt_node.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      DATA(t24) = t18.
      t23 = t24->children.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      t23->load( ).
      CLEAR t25.
      READ TABLE t23->items INDEX 1 INTO t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t22.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t25.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t27 = t26->as_ref( ).
        t22 ?= t27.
      ELSE.
        t22 ?= t25.
      ENDIF.
      t20 = t22.
    ELSE.
      DATA t28 TYPE REF TO zif_lnt_node.
      CLEAR t28.
      t20 = t28.
    ENDIF.
    t17 = t20.
    t16 ?= t17.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t29.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t15.
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t32.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      DATA t35 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t35.
      DATA(t36) = t15.
      t35 = t36.
      t34 = t35->get_db65( ).
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      t37 = t34.
      t33 ?= t37.
      t29 = t33.
    ENDIF.
    t14 = t29.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_source_field ).
    t12 = t13.
    IF t13 = abap_true.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = t1.
      DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
      t39 = t40->find_direct_expression( i_type_9913 = t41 ).
      t38 = xsdbool( t39 IS BOUND ).
      t12 = t38.
    ENDIF.
    IF t12 = abap_true.
      DATA(t42) = VALUE string( ).
      DATA(t43) = VALUE string( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = t1.
      t44 = t45->concat_tokens( ).
      DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t46.
      DATA(t47) = | |.
      DATA(t48) = |g|.
      CREATE OBJECT t46 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t47 flags = t48 checked = abap_true.
      DATA(t49) = ||.
      DATA(t50) = strlen( t44 ).
      t43 = t46->replace( p0 = t44 p1 = t49 ).
      t42 = t43.
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t58.
      DATA(t59) = t1.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
      t58 = t59->find_direct_expression( i_type_9913 = t60 ).
      t57 = t58.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t57.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ENDIF.
      IF t62 = abap_true.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t61 = t64.
      ELSE.
        DATA(t65) = VALUE string( ).
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t66.
        DATA(t67) = t57.
        t66 = t67.
        t65 = t66->concat_tokens( ).
        DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t68->has = abap_true.
        t68->value = t65.
        t61 = t68.
      ENDIF.
      t56 = t61.
      t55 = t56.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t55.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ELSEIF t71->has = abap_false.
        t70 = abap_true.
      ENDIF.
      IF t70 = abap_true.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t69 = t72.
      ELSE.
        DATA(t73) = VALUE string( ).
        DATA(t74) = VALUE string( ).
        DATA(t75) = t55.
        t74 = t75->value.
        DATA t76 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t76.
        DATA(t77) = | |.
        DATA(t78) = |g|.
        CREATE OBJECT t76 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t77 flags = t78 checked = abap_true.
        DATA(t79) = ||.
        DATA(t80) = strlen( t74 ).
        t73 = t76->replace( p0 = t74 p1 = t79 ).
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t73.
        t69 = t81.
      ENDIF.
      t54 = t69.
      t53 = t54.
      DATA(t82) = VALUE string( ).
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t53.
      IF t84 IS BOUND.
        IF t84->has = abap_true.
          t83 = xsdbool( strlen( t84->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t83 = abap_true.
        DATA(t85) = VALUE string( ).
        DATA(t86) = t53.
        t85 = t86->value.
        t82 = t85.
      ELSE.
        DATA(t87) = ||.
        t82 = t87.
      ENDIF.
      t52 = t82.
      t51 = t52.
      DATA(t88) = VALUE string( ).
      DATA(t89) = VALUE string( ).
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t94.
      DATA t95 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t95.
      DATA(t96) = t1.
      DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
      t95 = t96->find_direct_expression( i_type_9913 = t97 ).
      t94 = t95.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = t94.
      IF t100 IS INITIAL.
        t99 = abap_true.
      ENDIF.
      IF t99 = abap_true.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t98 = t101.
      ELSE.
        DATA(t102) = VALUE string( ).
        DATA t103 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t103.
        DATA(t104) = t94.
        t103 = t104.
        t102 = t103->concat_tokens( ).
        DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t105->has = abap_true.
        t105->value = t102.
        t98 = t105.
      ENDIF.
      t93 = t98.
      t92 = t93.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = t92.
      IF t108 IS INITIAL.
        t107 = abap_true.
      ELSEIF t108->has = abap_false.
        t107 = abap_true.
      ENDIF.
      IF t107 = abap_true.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t106 = t109.
      ELSE.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA(t112) = t92.
        t111 = t112->value.
        DATA t113 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t113.
        DATA(t114) = | |.
        DATA(t115) = |g|.
        CREATE OBJECT t113 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t114 flags = t115 checked = abap_true.
        DATA(t116) = ||.
        DATA(t117) = strlen( t111 ).
        t110 = t113->replace( p0 = t111 p1 = t116 ).
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = t110.
        t106 = t118.
      ENDIF.
      t91 = t106.
      t90 = t91.
      DATA(t119) = VALUE string( ).
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = t90.
      IF t121 IS BOUND.
        IF t121->has = abap_true.
          t120 = xsdbool( strlen( t121->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t120 = abap_true.
        DATA(t122) = VALUE string( ).
        DATA(t123) = t90.
        t122 = t123->value.
        t119 = t122.
      ELSE.
        DATA(t124) = ||.
        t119 = t124.
      ENDIF.
      t89 = t119.
      t88 = t89.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t125.
      DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t126.
      DATA t127 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t128.
      DATA(t129) = t2.
      t128 = t129->scope.
      t127 = t128.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t131.
      DATA(t132) = abap_true.
      IF t132 = abap_true.
        DATA(t133) = VALUE string( ).
        DATA(t134) = VALUE string( ).
        DATA(t135) = t42.
        DATA(t136) = t51.
        DATA(t137) = ||.
        DATA(t138) = strlen( t135 ).
        t134 = t135.
        IF t136 = ``.
          t134 = |{ t137 }{ t135 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t136 IN t134 WITH t137.
        ENDIF.
        DATA(t139) = t88.
        DATA(t140) = ||.
        DATA(t141) = strlen( t134 ).
        t133 = t134.
        IF t139 = ``.
          t133 = |{ t140 }{ t134 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t139 IN t133 WITH t140.
        ENDIF.
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t133.
        t131 = t142.
      ELSE.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        t131 = t143.
      ENDIF.
      t130 = t131.
      DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t144.
      DATA(t145) = VALUE abap_bool( ).
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      DATA(t147) = t130.
      t146 = t147.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      t148 = t149.
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = t146.
      IF t151 IS INITIAL.
        t150 = abap_true.
      ELSEIF t151->has = abap_false.
        t150 = abap_true.
      ENDIF.
      t145 = t150.
      IF t145 = abap_true.
        DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t152.
        t144 = t152.
      ELSE.
        DATA t153 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t154.
        DATA t155 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t155.
        DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t156.
        DATA t157 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t157.
        DATA(t158) = t127.
        t157 = t158->current.
        t156 = t157.
        DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t159.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = t156.
        IF t161 IS INITIAL.
          t160 = abap_true.
        ENDIF.
        IF t160 = abap_true.
          DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t162.
          t159 = t162.
        ELSE.
          DATA t163 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t163.
          DATA t164 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t164.
          DATA(t165) = t156.
          t164 = t165.
          DATA(t166) = VALUE string( ).
          DATA(t167) = t130.
          t166 = t167->value.
          t163 = t164->find_variable( i_name = t166 ).
          t159 = t163.
        ENDIF.
        t155 = t159.
        t154 = t155.
        DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t168.
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = t154.
        t169 = xsdbool( t170 IS BOUND ).
        IF t169 = abap_true.
          DATA t171 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t171.
          DATA(t172) = abap_true.
          IF t172 = abap_true.
            DATA t173 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t173.
            DATA(t174) = t154.
            t173 = t174.
            t171 = t173.
          ELSE.
            DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t175.
            t171 = t175.
          ENDIF.
          t168 = t171.
        ELSE.
          DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t176.
          DATA(t177) = t127.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          DATA(t179) = abap_true.
          IF t179 = abap_true.
            DATA(t180) = VALUE string( ).
            DATA(t181) = t130.
            t180 = t181->value.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t180.
            t178 = t182.
          ELSE.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t178 = t183.
          ENDIF.
          t176 = t177->find_type_pool_constant( i_name = t178 ).
          t168 = t176.
        ENDIF.
        t153 = t168.
        t144 = t153.
      ENDIF.
      t126 = t144.
      t125 = t126.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = t125.
      t184 = xsdbool( t185 IS BOUND ).
      IF t184 = abap_true.
        DATA(t186) = VALUE abap_bool( ).
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        DATA(t188) = t3.
        t187 = t188.
        IF t187 IS BOUND.
          t186 = t187->truth( ).
        ENDIF.
        IF t186 = abap_true.
          DATA t189 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t189.
          DATA(t190) = t2.
          t189 = t190->scope.
          DATA t191 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t191.
          DATA(t192) = abap_true.
          IF t192 = abap_true.
            DATA t193 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t193.
            DATA(t194) = t1.
            t193 = t194->get_first_token( ).
            t191 = t193.
          ELSE.
            DATA t195 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t195.
            t191 = t195.
          ENDIF.
          DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t196.
          DATA(t197) = t125.
          t196 = t197.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          DATA(t199) = t3.
          t198 = t199.
          DATA(t200) = VALUE string( ).
          DATA(t201) = t2.
          t200 = t201->filename.
          DATA t202 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t202.
          t189->add_reference( i_usage = t191 i_referencing = t196 i_type_9913 = t198 i_filename = t200 i_extra = t202 ).
        ENDIF.
        DATA t203 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t203.
        DATA(t204) = abap_true.
        IF t204 = abap_true.
          DATA t205 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t206.
          DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t207.
          DATA(t208) = t125.
          t207 = t208.
          t206 = t207.
          DATA t209 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t209.
          DATA(t210) = t206.
          t209 = t210->type_cba0.
          t205 = t209.
          t203 = t205.
        ELSE.
          DATA t211 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t211.
          t203 = t211.
        ENDIF.
        result = t203.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t212 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t212.
    DATA t213 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t213.
    t212 = t213.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t216.
    DATA t217 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t217.
    DATA(t218) = t1.
    t217 = t218.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA(t220) = t217.
    t219 = t220->children.
    t216 = t219.
    t215 ?= t216.
    t214 = t215.
    DATA t221 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t221.
    DATA t222 TYPE REF TO zif_lnt_node.
    CLEAR t222.
    DATA t223 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t223.
    DATA(t224) = t214.
    DATA t225 TYPE REF TO object.
    CLEAR t225.
    t224->load( ).
    CLEAR t225.
    READ TABLE t224->items INDEX 1 INTO t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    CLEAR t223.
    IF t225 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t226 ?= t225.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      t227 = t226->as_ref( ).
      t223 ?= t227.
    ELSE.
      t223 ?= t225.
    ENDIF.
    t222 ?= t223.
    DATA(t228) = t2.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = t3.
    t229 = t230.
    t221 = zcl_lnt_sy_field_chain=>find_top( i_node = t222 i_input_967e = t228 i_type_9913 = t229 ).
    t212 = t221.
    DATA(t231) = VALUE string( ).
    DATA(t232) = VALUE string( ).
    DATA t233 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t233.
    DATA(t234) = t214.
    DATA t235 TYPE REF TO object.
    CLEAR t235.
    t234->load( ).
    CLEAR t235.
    READ TABLE t234->items INDEX 1 INTO t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    CLEAR t233.
    IF t235 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t236 ?= t235.
      DATA t237 TYPE REF TO object.
      CLEAR t237.
      t237 = t236->as_ref( ).
      t233 ?= t237.
    ELSE.
      t233 ?= t235.
    ENDIF.
    t232 = t233->concat_tokens( ).
    t231 = t232.
    DATA(t238) = VALUE i( ).
    DATA(t239) = 1.
    t238 = t239.
    DO.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = t238.
      DATA(t242) = VALUE i( ).
      DATA(t243) = t214.
      t243->load( ).
      t242 = lines( t243->items ).
      t240 = xsdbool( t241 < t242 ).
      IF t240 = abap_false.
        EXIT.
      ENDIF.
      DATA t244 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t244.
      DATA t245 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t245.
      DATA(t246) = t214.
      DATA(t247) = t238.
      t247 = t247 + 1.
      DATA t248 TYPE REF TO object.
      CLEAR t248.
      t246->load( ).
      CLEAR t248.
      READ TABLE t246->items INDEX t247 INTO t248.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      CLEAR t245.
      IF t248 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t249 ?= t248.
        DATA t250 TYPE REF TO object.
        CLEAR t250.
        t250 = t249->as_ref( ).
        t245 ?= t250.
      ELSE.
        t245 ?= t248.
      ENDIF.
      t244 = t245.
      DATA(t251) = VALUE abap_bool( ).
      DATA t252 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t252.
      DATA(t253) = t244.
      t252 = t253.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t255.
      t254 = t255.
      DATA(t256) = VALUE abap_bool( ).
      DATA(t257) = t252.
      IF t257 IS INITIAL.
        t256 = abap_true.
      ENDIF.
      t251 = t256.
      IF t251 = abap_true.
        EXIT.
      ENDIF.
      DATA(t258) = VALUE abap_bool( ).
      DATA t259 TYPE REF TO object.
      CLEAR t259.
      DATA(t260) = t244.
      t259 = t260->get_db65( ).
      t258 = xsdbool( t259 IS BOUND AND t259 IS INSTANCE OF zcl_lnt_dash_w ).
      IF t258 = abap_true.
        DATA(t261) = VALUE string( ).
        DATA(t262) = |Ending with dash|.
        t261 = t262.
        DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t263.
        DATA(t264) = t2.
        t263 = t264->issues.
        DATA t265 TYPE REF TO zcl_lnt_issue.
        CLEAR t265.
        DATA(t266) = t2.
        DATA t267 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t267.
        DATA(t268) = t244.
        t267 = t268->get_first_token( ).
        DATA(t269) = t261.
        DATA t270 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t270.
        t265 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t266 i_token = t267 i_message_26cb = t269 i_fix = t270 ).
        t263->load( ).
        APPEND t265 TO t263->items.
        t263->save( ).
        DATA t271 TYPE REF TO zcl_lnt_void_type.
        CLEAR t271.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t273) = abap_true.
        IF t273 = abap_true.
          DATA(t274) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t275->has = abap_true.
          t275->value = t274.
          t272 = t275.
        ELSE.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          t272 = t276.
        ENDIF.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        t271 = zcl_lnt_void_type=>get_db65( i_voided = t272 i_qualified_name = t277 ).
        result = t271.
        RETURN.
      ELSE.
        DATA(t278) = VALUE abap_bool( ).
        DATA t279 TYPE REF TO object.
        CLEAR t279.
        DATA(t280) = t244.
        t279 = t280->get_db65( ).
        t278 = xsdbool( t279 IS BOUND AND t279 IS INSTANCE OF zcl_lnt_dash ).
        IF t278 = abap_true.
          DATA(t281) = VALUE abap_bool( ).
          DATA(t282) = t212.
          t281 = xsdbool( t282 IS BOUND AND t282 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t281 = abap_true.
            DATA t283 TYPE REF TO zcl_lnt_void_type.
            CLEAR t283.
            DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t284.
            DATA(t285) = abap_true.
            IF t285 = abap_true.
              DATA(t286) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t287->has = abap_true.
              t287->value = t286.
              t284 = t287.
            ELSE.
              DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t288.
              t284 = t288.
            ENDIF.
            DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t289.
            t283 = zcl_lnt_void_type=>get_db65( i_voided = t284 i_qualified_name = t289 ).
            result = t283.
            RETURN.
          ELSE.
            DATA(t290) = VALUE abap_bool( ).
            DATA(t291) = VALUE abap_bool( ).
            DATA(t292) = VALUE abap_bool( ).
            DATA(t293) = VALUE abap_bool( ).
            DATA(t294) = t212.
            t293 = xsdbool( t294 IS BOUND AND t294 IS INSTANCE OF zcl_lnt_structure_type ).
            t292 = xsdbool( t293 = abap_false ).
            t291 = t292.
            IF t292 = abap_true.
              DATA(t295) = VALUE abap_bool( ).
              DATA(t296) = VALUE abap_bool( ).
              DATA(t297) = VALUE abap_bool( ).
              DATA(t298) = t212.
              t297 = xsdbool( t298 IS BOUND AND t298 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t296 = t297.
              IF t297 = abap_true.
                DATA(t299) = VALUE abap_bool( ).
                DATA t300 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t300.
                DATA t301 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t301.
                DATA(t302) = t212.
                t301 ?= t302.
                t300 = t301.
                DATA(t303) = VALUE abap_bool( ).
                DATA t304 TYPE REF TO zcl_lnt_itable_options.
                CLEAR t304.
                DATA(t305) = t300.
                t304 = t305->options.
                t303 = t304->zlnt_view_read_sr_ec4602663c93( ).
                t299 = t303.
                t296 = t299.
              ENDIF.
              t295 = xsdbool( t296 = abap_false ).
              t291 = t295.
            ENDIF.
            t290 = t291.
            IF t291 = abap_true.
              DATA(t306) = VALUE abap_bool( ).
              DATA(t307) = VALUE abap_bool( ).
              DATA(t308) = t212.
              t307 = xsdbool( t308 IS BOUND AND t308 IS INSTANCE OF zcl_lnt_void_type ).
              t306 = xsdbool( t307 = abap_false ).
              t290 = t306.
            ENDIF.
            IF t290 = abap_true.
              DATA(t309) = VALUE abap_bool( ).
              DATA(t310) = VALUE abap_bool( ).
              DATA(t311) = t212.
              t310 = xsdbool( t311 IS BOUND AND t311 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t309 = t310.
              IF t310 = abap_true.
                DATA(t312) = VALUE abap_bool( ).
                DATA(t313) = VALUE abap_bool( ).
                DATA t314 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t314.
                DATA t315 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t315.
                DATA(t316) = t212.
                t315 ?= t316.
                t314 = t315.
                DATA(t317) = VALUE abap_bool( ).
                DATA t318 TYPE REF TO zcl_lnt_itable_options.
                CLEAR t318.
                DATA(t319) = t314.
                t318 = t319->options.
                t317 = t318->zlnt_view_read_sr_ec4602663c93( ).
                t313 = t317.
                DATA(t320) = abap_false.
                t312 = xsdbool( t313 = t320 ).
                t309 = t312.
              ENDIF.
              IF t309 = abap_true.
                DATA(t321) = VALUE string( ).
                DATA(t322) = ||.
                t321 = t322.
                DATA(t323) = VALUE i( ).
                DATA(t324) = 0.
                t323 = t324.
                DO.
                  DATA(t325) = VALUE abap_bool( ).
                  DATA(t326) = t323.
                  DATA(t327) = t238.
                  t325 = xsdbool( t326 < t327 ).
                  IF t325 = abap_false.
                    EXIT.
                  ENDIF.
                  DATA(t328) = VALUE string( ).
                  DATA(t329) = t321.
                  DATA(t330) = VALUE string( ).
                  DATA t331 TYPE REF TO zif_lnt_union_4cf1d054.
                  CLEAR t331.
                  DATA(t332) = t214.
                  DATA(t333) = t323.
                  t333 = t333 + 1.
                  DATA t334 TYPE REF TO object.
                  CLEAR t334.
                  t332->load( ).
                  CLEAR t334.
                  READ TABLE t332->items INDEX t333 INTO t334.
                  DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t335.
                  CLEAR t331.
                  IF t334 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t335 ?= t334.
                    DATA t336 TYPE REF TO object.
                    CLEAR t336.
                    t336 = t335->as_ref( ).
                    t331 ?= t336.
                  ELSE.
                    t331 ?= t334.
                  ENDIF.
                  t330 = t331->concat_tokens( ).
                  DATA(t337) = strlen( t329 ).
                  t328 = |{ t329 }{ t330 }|.
                  t321 = t328.
                  DATA(t338) = VALUE i( ).
                  DATA(t339) = t323.
                  DATA(t340) = 1.
                  t338 = t339 + t340.
                  t323 = t338.
                ENDDO.
                DATA(t341) = VALUE abap_bool( ).
                DATA t342 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t342.
                DATA t343 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t343.
                DATA(t344) = t2.
                t343 = t344->scope.
                t342 = t343.
                DATA(t345) = VALUE string( ).
                DATA(t346) = t321.
                t345 = t346.
                DATA(t347) = VALUE abap_bool( ).
                DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t348.
                DATA(t349) = abap_true.
                IF t349 = abap_true.
                  DATA(t350) = VALUE string( ).
                  DATA(t351) = t345.
                  DATA(t352) = strlen( t351 ).
                  t350 = t351.
                  IF t350 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t350 TO UPPER CASE.
                  ELSE.
                    t350 = zlnt_runtime_uppe_91169605024d=>full( t350 ).
                  ENDIF.
                  DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t353->has = abap_true.
                  t353->value = t350.
                  t348 = t353.
                ELSE.
                  DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t354.
                  t348 = t354.
                ENDIF.
                DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t355.
                DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t356.
                DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t357.
                DATA(t358) = t342.
                t357 = t358->allow_header_use.
                t356 = t357.
                DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t359.
                DATA(t360) = VALUE abap_bool( ).
                DATA(t361) = t356.
                IF t361 IS INITIAL.
                  t360 = abap_true.
                ELSEIF t361->has = abap_false.
                  t360 = abap_true.
                ENDIF.
                IF t360 = abap_true.
                  DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t362.
                  t359 = t362.
                ELSE.
                  DATA(t363) = VALUE string( ).
                  DATA(t364) = VALUE string( ).
                  DATA(t365) = t356.
                  t364 = t365->value.
                  DATA(t366) = strlen( t364 ).
                  t363 = t364.
                  IF t363 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t363 TO UPPER CASE.
                  ELSE.
                    t363 = zlnt_runtime_uppe_91169605024d=>full( t363 ).
                  ENDIF.
                  DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t367->has = abap_true.
                  t367->value = t363.
                  t359 = t367.
                ENDIF.
                t355 = t359.
                DATA(t368) = VALUE abap_bool( ).
                DATA(t369) = VALUE abap_bool( ).
                IF t348 IS BOUND.
                  t368 = t348->has.
                ENDIF.
                IF t355 IS BOUND.
                  t369 = t355->has.
                ENDIF.
                IF t368 = t369.
                  IF t368 = abap_false.
                    t347 = abap_true.
                  ELSEIF t348->value = t355->value.
                    t347 = abap_true.
                  ENDIF.
                ENDIF.
                t341 = t347.
                IF t341 = abap_true.
                  DATA t370 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t370.
                  DATA(t371) = abap_true.
                  IF t371 = abap_true.
                    DATA t372 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t372.
                    DATA t373 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t373.
                    DATA t374 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t374.
                    DATA(t375) = t212.
                    t374 ?= t375.
                    t373 = t374.
                    DATA t376 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t376.
                    DATA(t377) = t373.
                    t376 = t377->row_type.
                    t372 = t376.
                    t370 = t372.
                  ELSE.
                    DATA t378 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t378.
                    t370 = t378.
                  ENDIF.
                  t212 = t370.
                  DATA(t379) = VALUE abap_bool( ).
                  DATA(t380) = VALUE abap_bool( ).
                  DATA(t381) = VALUE abap_bool( ).
                  DATA(t382) = t212.
                  t381 = xsdbool( t382 IS BOUND AND t382 IS INSTANCE OF zcl_lnt_structure_type ).
                  t380 = xsdbool( t381 = abap_false ).
                  t379 = t380.
                  IF t380 = abap_true.
                    DATA(t383) = VALUE abap_bool( ).
                    DATA(t384) = VALUE abap_bool( ).
                    DATA(t385) = t212.
                    t384 = xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_void_type ).
                    t383 = xsdbool( t384 = abap_false ).
                    t379 = t383.
                  ENDIF.
                  IF t379 = abap_true.
                    DATA t386 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t386.
                    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t387.
                    DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t388.
                    DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t389.
                    CREATE OBJECT t389.
                    t388 = t389.
                    DATA(t390) = t388.
                    DATA t391 TYPE REF TO zcl_lnt_istructure_component.
                    CLEAR t391.
                    DATA(t392) = VALUE string( ).
                    DATA(t393) = |TABLE_LINE|.
                    t392 = t393.
                    DATA t394 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t394.
                    DATA t395 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t395.
                    DATA(t396) = t212.
                    t395 = t396.
                    t394 = t395.
                    DATA t397 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t397.
                    DATA t398 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t398.
                    t397 = t398.
                    DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t399.
                    DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t400.
                    t399 = t400.
                    t391 = NEW zcl_lnt_istructure_component( i_name = t392 i_type_9913 = t394 i_as_include = t397 i_suffix = t399 ).
                    CREATE OBJECT t391->zlnt_view_ownkeys_b0e8086400eb.
                    t391->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t401.
                    IF t391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t401 ).
                    ENDIF.
                    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t402.
                    IF t391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t402 ).
                    ENDIF.
                    CREATE OBJECT t391->zlnt_json_ownkeys_70e5fd461788.
                    t391->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t403) = |name|.
                    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t404.
                    IF t391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t403 p1 = t404 ).
                    ENDIF.
                    DATA(t405) = |type|.
                    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t406.
                    IF t391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t405 p1 = t406 ).
                    ENDIF.
                    t390->load( ).
                    APPEND t391 TO t390->items.
                    t390->save( ).
                    DATA(t407) = t388.
                    t387 = t407.
                    DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t408.
                    DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t409.
                    DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t410.
                    t386 = NEW zcl_lnt_structure_type( i_components = t387 i_qualified_name = t408 i_ddic_name = t409 i_description = t410 ).
                    t212 = t386.
                  ENDIF.
                ELSE.
                  DATA(t411) = VALUE string( ).
                  DATA(t412) = VALUE string( ).
                  DATA(t413) = |Table without header, cannot access fields, |.
                  DATA(t414) = t321.
                  DATA(t415) = strlen( t413 ).
                  t412 = |{ t413 }{ t414 }|.
                  t411 = t412.
                  DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t416.
                  DATA(t417) = t2.
                  t416 = t417->issues.
                  DATA t418 TYPE REF TO zcl_lnt_issue.
                  CLEAR t418.
                  DATA(t419) = t2.
                  DATA t420 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t420.
                  DATA(t421) = t244.
                  t420 = t421->get_first_token( ).
                  DATA(t422) = t411.
                  DATA t423 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t423.
                  t418 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t419 i_token = t420 i_message_26cb = t422 i_fix = t423 ).
                  t416->load( ).
                  APPEND t418 TO t416->items.
                  t416->save( ).
                  DATA t424 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t424.
                  DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t425.
                  DATA(t426) = abap_true.
                  IF t426 = abap_true.
                    DATA(t427) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t428->has = abap_true.
                    t428->value = t427.
                    t425 = t428.
                  ELSE.
                    DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t429.
                    t425 = t429.
                  ENDIF.
                  DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t430.
                  t424 = zcl_lnt_void_type=>get_db65( i_voided = t425 i_qualified_name = t430 ).
                  result = t424.
                  RETURN.
                ENDIF.
              ELSE.
                DATA(t431) = VALUE string( ).
                DATA(t432) = VALUE string( ).
                DATA(t433) = VALUE string( ).
                DATA(t434) = VALUE string( ).
                DATA(t435) = VALUE string( ).
                DATA(t436) = t231.
                DATA(t437) = strlen( t436 ).
                t435 = t436.
                IF t435 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t435 TO UPPER CASE.
                ELSE.
                  t435 = zlnt_runtime_uppe_91169605024d=>full( t435 ).
                ENDIF.
                DATA(t438) = | is not structured (|.
                DATA(t439) = strlen( t435 ).
                t434 = |{ t435 }{ t438 }|.
                DATA(t440) = VALUE string( ).
                DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t441.
                DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t442.
                DATA t443 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t443.
                DATA t444 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t444.
                DATA t445 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t445.
                DATA(t446) = t212.
                t445 = t446.
                DATA t447 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t447.
                DATA(t448) = VALUE abap_bool( ).
                DATA(t449) = t445.
                IF t449 IS INITIAL.
                  t448 = abap_true.
                ENDIF.
                IF t448 = abap_true.
                  DATA t450 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t450.
                  t447 = t450.
                ELSE.
                  DATA t451 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t451.
                  DATA t452 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t452.
                  DATA(t453) = t445.
                  t452 = t453.
                  t451 = t452->zlnt_builtin_clas_3f891b097658( ).
                  t447 = t451.
                ENDIF.
                t444 = t447.
                t443 = t444.
                DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t454.
                DATA(t455) = VALUE abap_bool( ).
                DATA(t456) = t443.
                IF t456 IS INITIAL.
                  t455 = abap_true.
                ENDIF.
                IF t455 = abap_true.
                  DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t457.
                  t454 = t457.
                ELSE.
                  DATA(t458) = VALUE string( ).
                  DATA t459 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t459.
                  DATA(t460) = t443.
                  t459 = t460.
                  t458 = t459->name.
                  DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t461->has = abap_true.
                  t461->value = t458.
                  t454 = t461.
                ENDIF.
                t442 = t454.
                t441 = t442.
                DATA(t462) = VALUE string( ).
                DATA(t463) = VALUE abap_bool( ).
                DATA(t464) = t441.
                IF t464 IS INITIAL.
                  t463 = abap_true.
                ELSEIF t464->has = abap_false.
                  t463 = abap_true.
                ENDIF.
                IF t463 = abap_true.
                  DATA(t465) = |undefined|.
                  t462 = t465.
                ELSE.
                  DATA(t466) = VALUE string( ).
                  DATA(t467) = t441.
                  t466 = t467->value.
                  t462 = t466.
                ENDIF.
                t440 = t462.
                DATA(t468) = strlen( t434 ).
                t433 = |{ t434 }{ t440 }|.
                DATA(t469) = |)|.
                DATA(t470) = strlen( t433 ).
                t432 = |{ t433 }{ t469 }|.
                t431 = t432.
                DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t471.
                DATA(t472) = t2.
                t471 = t472->issues.
                DATA t473 TYPE REF TO zcl_lnt_issue.
                CLEAR t473.
                DATA(t474) = t2.
                DATA t475 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t475.
                DATA(t476) = t244.
                t475 = t476->get_first_token( ).
                DATA(t477) = t431.
                DATA t478 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t478.
                t473 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t474 i_token = t475 i_message_26cb = t477 i_fix = t478 ).
                t471->load( ).
                APPEND t473 TO t471->items.
                t471->save( ).
                DATA t479 TYPE REF TO zcl_lnt_void_type.
                CLEAR t479.
                DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t480.
                DATA(t481) = abap_true.
                IF t481 = abap_true.
                  DATA(t482) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t483->has = abap_true.
                  t483->value = t482.
                  t480 = t483.
                ELSE.
                  DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t484.
                  t480 = t484.
                ENDIF.
                DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t485.
                t479 = zcl_lnt_void_type=>get_db65( i_voided = t480 i_qualified_name = t485 ).
                result = t479.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t486) = VALUE abap_bool( ).
          DATA t487 TYPE REF TO object.
          CLEAR t487.
          DATA(t488) = t244.
          t487 = t488->get_db65( ).
          t486 = xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_instance_arrow ).
          IF t486 = abap_true.
            DATA(t489) = VALUE abap_bool( ).
            DATA(t490) = VALUE abap_bool( ).
            DATA(t491) = VALUE abap_bool( ).
            DATA(t492) = VALUE abap_bool( ).
            DATA(t493) = t212.
            t492 = xsdbool( t493 IS BOUND AND t493 IS INSTANCE OF zcl_lnt_object_reference_type ).
            t491 = xsdbool( t492 = abap_false ).
            t490 = t491.
            IF t491 = abap_true.
              DATA(t494) = VALUE abap_bool( ).
              DATA(t495) = VALUE abap_bool( ).
              DATA(t496) = t212.
              t495 = xsdbool( t496 IS BOUND AND t496 IS INSTANCE OF zcl_lnt_data_reference ).
              t494 = xsdbool( t495 = abap_false ).
              t490 = t494.
            ENDIF.
            t489 = t490.
            IF t490 = abap_true.
              DATA(t497) = VALUE abap_bool( ).
              DATA(t498) = VALUE abap_bool( ).
              DATA(t499) = t212.
              t498 = xsdbool( t499 IS BOUND AND t499 IS INSTANCE OF zcl_lnt_void_type ).
              t497 = xsdbool( t498 = abap_false ).
              t489 = t497.
            ENDIF.
            IF t489 = abap_true.
              DATA(t500) = VALUE string( ).
              DATA(t501) = |Not an object reference, field chain|.
              t500 = t501.
              DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t502.
              DATA(t503) = t2.
              t502 = t503->issues.
              DATA t504 TYPE REF TO zcl_lnt_issue.
              CLEAR t504.
              DATA(t505) = t2.
              DATA t506 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t506.
              DATA(t507) = t244.
              t506 = t507->get_first_token( ).
              DATA(t508) = t500.
              DATA t509 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t509.
              t504 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t505 i_token = t506 i_message_26cb = t508 i_fix = t509 ).
              t502->load( ).
              APPEND t504 TO t502->items.
              t502->save( ).
              DATA t510 TYPE REF TO zcl_lnt_void_type.
              CLEAR t510.
              DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t511.
              DATA(t512) = abap_true.
              IF t512 = abap_true.
                DATA(t513) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t514->has = abap_true.
                t514->value = t513.
                t511 = t514.
              ELSE.
                DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t515.
                t511 = t515.
              ENDIF.
              DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t516.
              t510 = zcl_lnt_void_type=>get_db65( i_voided = t511 i_qualified_name = t516 ).
              result = t510.
              RETURN.
            ENDIF.
          ELSE.
            DATA(t517) = VALUE abap_bool( ).
            DATA t518 TYPE REF TO object.
            CLEAR t518.
            DATA(t519) = t244.
            t518 = t519->get_db65( ).
            t517 = xsdbool( t518 IS BOUND AND t518 IS INSTANCE OF zcl_lnt_st_dereference ).
            IF t517 = abap_true.
              DATA t520 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t520.
              DATA t521 TYPE REF TO zif_lnt_node.
              CLEAR t521.
              DATA(t522) = t244.
              t521 ?= t522.
              DATA(t523) = t212.
              DATA(t524) = t2.
              t520 = zcl_lnt_sy_dereference=>run_syntax( i_node = t521 i_type_9913 = t523 i_input_967e = t524 ).
              t212 = t520.
              DATA(t525) = VALUE abap_bool( ).
              DATA(t526) = VALUE abap_bool( ).
              DATA(t527) = VALUE abap_bool( ).
              DATA(t528) = VALUE abap_bool( ).
              DATA(t529) = VALUE abap_bool( ).
              DATA(t530) = VALUE abap_bool( ).
              DATA(t531) = t4.
              t530 = t531->value.
              DATA(t532) = abap_false.
              t529 = xsdbool( t530 = t532 ).
              t528 = t529.
              IF t529 = abap_true.
                DATA(t533) = VALUE abap_bool( ).
                DATA t534 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t534.
                DATA t535 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t535.
                DATA(t536) = t212.
                t535 = t536.
                DATA t537 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t537.
                DATA(t538) = VALUE abap_bool( ).
                DATA(t539) = t535.
                IF t539 IS INITIAL.
                  t538 = abap_true.
                ENDIF.
                IF t538 = abap_true.
                  DATA t540 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t540.
                  t537 = t540.
                ELSE.
                  DATA(t541) = VALUE abap_bool( ).
                  DATA t542 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t542.
                  DATA(t543) = t535.
                  t542 = t543.
                  t541 = t542->is_generic( ).
                  DATA(t544) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t544->has = abap_true.
                  t544->value = t541.
                  t537 = t544.
                ENDIF.
                t534 = t537.
                DATA t545 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t545.
                DATA(t546) = abap_true.
                IF t546 = abap_true.
                  DATA(t547) = abap_true.
                  DATA(t548) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t548->has = abap_true.
                  t548->value = t547.
                  t545 = t548.
                ELSE.
                  DATA t549 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t549.
                  t545 = t549.
                ENDIF.
                DATA(t550) = VALUE abap_bool( ).
                DATA(t551) = VALUE abap_bool( ).
                IF t534 IS BOUND.
                  t550 = t534->has.
                ENDIF.
                IF t545 IS BOUND.
                  t551 = t545->has.
                ENDIF.
                IF t550 = t551.
                  IF t550 = abap_false.
                    t533 = abap_true.
                  ELSEIF t534->value = t545->value.
                    t533 = abap_true.
                  ENDIF.
                ENDIF.
                t528 = t533.
              ENDIF.
              t527 = t528.
              IF t528 = abap_true.
                DATA(t552) = VALUE abap_bool( ).
                DATA(t553) = VALUE abap_bool( ).
                DATA t554 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t554.
                DATA t555 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t555.
                DATA t556 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t556.
                DATA(t557) = t2.
                t556 = t557->scope.
                t555 = t556.
                DATA t558 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t558.
                DATA t559 TYPE REF TO zif_lnt_configuration.
                CLEAR t559.
                DATA t560 TYPE REF TO zif_lnt_registry.
                CLEAR t560.
                DATA(t561) = t555.
                t560 = t561->reg.
                t559 = t560->get_config( ).
                t558 = t559->get_release( ).
                t554 = t558.
                DATA t562 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t562.
                DATA t563 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t563.
                DATA t564 TYPE REF TO zlnt_runtime_map__201f3699a39e.
                CLEAR t564.
                IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
                  zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
                ENDIF.
                t564 = zcl_lnt_version_module=>release_b8cd.
                DATA(t565) = |v756|.
                t563 = t564->get( p0 = t565 ).
                t562 = t563.
                t553 = zcl_lnt_version_module=>release_at_least( i_running = t554 i_required = t562 ).
                t552 = xsdbool( t553 = abap_false ).
                t527 = t552.
              ENDIF.
              t526 = t527.
              IF t527 = abap_true.
                DATA(t566) = VALUE abap_bool( ).
                DATA(t567) = VALUE string( ).
                DATA t568 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t568.
                DATA t569 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t569.
                DATA(t570) = t2.
                t569 = t570->scope.
                t568 = t569.
                DATA(t571) = VALUE string( ).
                DATA t572 TYPE REF TO zif_lnt_configuration.
                CLEAR t572.
                DATA t573 TYPE REF TO zif_lnt_registry.
                CLEAR t573.
                DATA(t574) = t568.
                t573 = t574->reg.
                t572 = t573->get_config( ).
                t571 = t572->get_language_version( ).
                t567 = t571.
                DATA(t575) = |Cloud|.
                t566 = xsdbool( t567 <> t575 ).
                t526 = t566.
              ENDIF.
              t525 = t526.
              IF t526 = abap_true.
                DATA(t576) = VALUE abap_bool( ).
                DATA(t577) = VALUE abap_bool( ).
                DATA t578 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t578.
                DATA t579 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t579.
                DATA(t580) = t2.
                t579 = t580->scope.
                t578 = t579.
                DATA(t581) = VALUE abap_bool( ).
                DATA t582 TYPE REF TO zif_lnt_configuration.
                CLEAR t582.
                DATA t583 TYPE REF TO zif_lnt_registry.
                CLEAR t583.
                DATA(t584) = t578.
                t583 = t584->reg.
                t582 = t583->get_config( ).
                t581 = t582->is_open_abap( ).
                t577 = t581.
                t576 = xsdbool( t577 = abap_false ).
                t525 = t576.
              ENDIF.
              IF t525 = abap_true.
                DATA t585 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                CLEAR t585.
                DATA t586 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                CLEAR t586.
                DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t587.
                DATA(t588) = abap_true.
                IF t588 = abap_true.
                  DATA(t589) = |A generic reference cannot be dereferenced|.
                  DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t590->has = abap_true.
                  t590->value = t589.
                  t587 = t590.
                ELSE.
                  DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t591.
                  t587 = t591.
                ENDIF.
                t586 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t587 ).
                t585 = NEW #( ).
                t585->payload = t586.
                CLEAR t585->source_value.
                IF t586 IS BOUND.
                  DATA t592 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t592.
                  DATA t593 TYPE REF TO object.
                  CLEAR t593.
                  CLEAR t592.
                  t593 = t586.
                  TRY.
                      t585->source_value ?= t593.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t585->source_value IS NOT BOUND.
                    TRY.
                        t592 ?= t586.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t592 IS BOUND.
                      t585->source_value = t592->source( ).
                    ENDIF.
                    IF t585->source_value IS NOT BOUND.
                      CREATE OBJECT t585->source_value.
                      t585->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t585->source_value->oval = t586.
                    ENDIF.
                  ENDIF.
                ENDIF.
                RAISE EXCEPTION t585.
              ENDIF.
            ELSE.
              DATA(t594) = VALUE abap_bool( ).
              DATA t595 TYPE REF TO object.
              CLEAR t595.
              DATA(t596) = t244.
              t595 = t596->get_db65( ).
              t594 = xsdbool( t595 IS BOUND AND t595 IS INSTANCE OF zcl_lnt_st_component_name ).
              IF t594 = abap_true.
                DATA(t597) = VALUE abap_bool( ).
                DATA(t598) = VALUE abap_bool( ).
                DATA(t599) = t212.
                t598 = xsdbool( t599 IS BOUND AND t599 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t597 = t598.
                IF t598 = abap_true.
                  DATA(t600) = VALUE abap_bool( ).
                  DATA t601 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t601.
                  DATA t602 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t602.
                  DATA(t603) = t212.
                  t602 ?= t603.
                  t601 = t602.
                  DATA(t604) = VALUE abap_bool( ).
                  DATA t605 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t605.
                  DATA(t606) = t601.
                  t605 = t606->options.
                  t604 = t605->zlnt_view_read_sr_ec4602663c93( ).
                  t600 = t604.
                  t597 = t600.
                ENDIF.
                IF t597 = abap_true.
                  DATA t607 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t607.
                  DATA(t608) = abap_true.
                  IF t608 = abap_true.
                    DATA t609 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t609.
                    DATA t610 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t610.
                    DATA t611 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t611.
                    DATA(t612) = t212.
                    t611 ?= t612.
                    t610 = t611.
                    DATA t613 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t613.
                    DATA(t614) = t610.
                    t613 = t614->row_type.
                    t609 = t613.
                    t607 = t609.
                  ELSE.
                    DATA t615 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t615.
                    t607 = t615.
                  ENDIF.
                  t212 = t607.
                ENDIF.
                DATA t616 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t616.
                DATA(t617) = t212.
                DATA t618 TYPE REF TO zif_lnt_node.
                CLEAR t618.
                DATA(t619) = t244.
                t618 ?= t619.
                DATA(t620) = t2.
                t616 = zcl_lnt_sy_component_name=>run_syntax( i_context = t617 i_node = t618 i_input_967e = t620 ).
                t212 = t616.
              ELSE.
                DATA(t621) = VALUE abap_bool( ).
                DATA(t622) = VALUE abap_bool( ).
                DATA(t623) = t244.
                t622 = xsdbool( t623 IS BOUND AND t623 IS INSTANCE OF zcl_lnt_expression_node ).
                t621 = t622.
                IF t622 = abap_true.
                  DATA(t624) = VALUE abap_bool( ).
                  DATA t625 TYPE REF TO zif_lnt_statement_runnable.
                  CLEAR t625.
                  DATA t626 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t626.
                  DATA(t627) = t244.
                  DATA t628 TYPE REF TO object.
                  CLEAR t628.
                  t628 = t627.
                  t626 ?= t628.
                  t625 = t626->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t624 = xsdbool( t625 IS BOUND AND t625 IS INSTANCE OF zcl_lnt_st_table_expression ).
                  t621 = t624.
                ENDIF.
                IF t621 = abap_true.
                  DATA(t629) = VALUE abap_bool( ).
                  DATA(t630) = VALUE abap_bool( ).
                  DATA(t631) = VALUE abap_bool( ).
                  DATA(t632) = VALUE abap_bool( ).
                  DATA(t633) = t212.
                  t632 = xsdbool( t633 IS BOUND AND t633 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t631 = xsdbool( t632 = abap_false ).
                  t630 = t631.
                  IF t631 = abap_true.
                    DATA(t634) = VALUE abap_bool( ).
                    DATA(t635) = VALUE abap_bool( ).
                    DATA(t636) = t212.
                    t635 = xsdbool( t636 IS BOUND AND t636 IS INSTANCE OF zcl_lnt_void_type ).
                    t634 = xsdbool( t635 = abap_false ).
                    t630 = t634.
                  ENDIF.
                  t629 = t630.
                  IF t630 = abap_true.
                    DATA(t637) = VALUE abap_bool( ).
                    DATA(t638) = VALUE abap_bool( ).
                    DATA(t639) = t212.
                    t638 = xsdbool( t639 IS BOUND AND t639 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t637 = xsdbool( t638 = abap_false ).
                    t629 = t637.
                  ENDIF.
                  IF t629 = abap_true.
                    DATA(t640) = VALUE string( ).
                    DATA(t641) = |Table expression, expected table|.
                    t640 = t641.
                    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t642.
                    DATA(t643) = t2.
                    t642 = t643->issues.
                    DATA t644 TYPE REF TO zcl_lnt_issue.
                    CLEAR t644.
                    DATA(t645) = t2.
                    DATA t646 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t646.
                    DATA t647 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t647.
                    DATA(t648) = t244.
                    DATA t649 TYPE REF TO object.
                    CLEAR t649.
                    t649 = t648.
                    t647 ?= t649.
                    t646 = t647->get_first_token( ).
                    DATA(t650) = t640.
                    DATA t651 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t651.
                    t644 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t645 i_token = t646 i_message_26cb = t650 i_fix = t651 ).
                    t642->load( ).
                    APPEND t644 TO t642->items.
                    t642->save( ).
                    DATA t652 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t652.
                    DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t653.
                    DATA(t654) = abap_true.
                    IF t654 = abap_true.
                      DATA(t655) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t656) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t656->has = abap_true.
                      t656->value = t655.
                      t653 = t656.
                    ELSE.
                      DATA t657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t657.
                      t653 = t657.
                    ENDIF.
                    DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t658.
                    t652 = zcl_lnt_void_type=>get_db65( i_voided = t653 i_qualified_name = t658 ).
                    result = t652.
                    RETURN.
                  ENDIF.
                  DATA t659 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t659.
                  DATA(t660) = abap_true.
                  IF t660 = abap_true.
                    DATA t661 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t661.
                    DATA(t662) = t244.
                    DATA t663 TYPE REF TO object.
                    CLEAR t663.
                    t663 = t662.
                    t661 ?= t663.
                    t659 = t661.
                  ELSE.
                    DATA t664 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t664.
                    t659 = t664.
                  ENDIF.
                  DATA(t665) = t2.
                  DATA t666 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t666.
                  DATA(t667) = abap_true.
                  IF t667 = abap_true.
                    DATA t668 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t668.
                    DATA t669 TYPE REF TO zif_lnt_union_297610d4.
                    CLEAR t669.
                    DATA t670 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t670.
                    DATA(t671) = t212.
                    t670 = t671.
                    t669 ?= t670.
                    t668 ?= t669.
                    t666 = t668.
                  ELSE.
                    DATA t672 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t672.
                    t666 = t672.
                  ENDIF.
                  zcl_lnt_sy_table_expression=>run_syntax( i_node = t659 i_input_967e = t665 i_row_type = t666 ).
                  DATA(t673) = VALUE abap_bool( ).
                  DATA(t674) = VALUE abap_bool( ).
                  DATA(t675) = VALUE abap_bool( ).
                  DATA(t676) = t212.
                  t675 = xsdbool( t676 IS BOUND AND t676 IS INSTANCE OF zcl_lnt_void_type ).
                  t674 = xsdbool( t675 = abap_false ).
                  t673 = t674.
                  IF t674 = abap_true.
                    DATA(t677) = VALUE abap_bool( ).
                    DATA(t678) = VALUE abap_bool( ).
                    DATA(t679) = t212.
                    t678 = xsdbool( t679 IS BOUND AND t679 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t677 = xsdbool( t678 = abap_false ).
                    t673 = t677.
                  ENDIF.
                  IF t673 = abap_true.
                    DATA t680 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t680.
                    DATA(t681) = abap_true.
                    IF t681 = abap_true.
                      DATA t682 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t682.
                      DATA t683 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t683.
                      DATA t684 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t684.
                      DATA(t685) = t212.
                      t684 ?= t685.
                      t683 = t684.
                      DATA t686 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t686.
                      DATA(t687) = t683.
                      t686 = t687->row_type.
                      t682 = t686.
                      t680 = t682.
                    ELSE.
                      DATA t688 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t688.
                      t680 = t688.
                    ENDIF.
                    t212 = t680.
                  ENDIF.
                ELSE.
                  DATA(t689) = VALUE abap_bool( ).
                  DATA t690 TYPE REF TO object.
                  CLEAR t690.
                  DATA(t691) = t244.
                  t690 = t691->get_db65( ).
                  t689 = xsdbool( t690 IS BOUND AND t690 IS INSTANCE OF zcl_lnt_st_attribute_name ).
                  IF t689 = abap_true.
                    DATA t692 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t692.
                    DATA(t693) = t212.
                    DATA t694 TYPE REF TO zif_lnt_node.
                    CLEAR t694.
                    DATA(t695) = t244.
                    t694 ?= t695.
                    DATA(t696) = t2.
                    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t697.
                    DATA(t698) = abap_true.
                    IF t698 = abap_true.
                      DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t699.
                      DATA(t700) = t3.
                      t699 = t700.
                      t697 = t699.
                    ELSE.
                      DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t701.
                      t697 = t701.
                    ENDIF.
                    DATA t702 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t702.
                    t692 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t693 i_node = t694 i_input_967e = t696 i_type_9913 = t697 i_error = t702 ).
                    t212 = t692.
                  ELSE.
                    DATA(t703) = VALUE abap_bool( ).
                    DATA(t704) = VALUE abap_bool( ).
                    DATA t705 TYPE REF TO object.
                    CLEAR t705.
                    DATA(t706) = t244.
                    t705 = t706->get_db65( ).
                    t704 = xsdbool( t705 IS BOUND AND t705 IS INSTANCE OF zcl_lnt_st_field_offset ).
                    t703 = t704.
                    IF t704 = abap_true.
                      DATA(t707) = VALUE abap_bool( ).
                      DATA(t708) = t244.
                      t707 = xsdbool( t708 IS BOUND AND t708 IS INSTANCE OF zcl_lnt_expression_node ).
                      t703 = t707.
                    ENDIF.
                    IF t703 = abap_true.
                      DATA t709 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                      CLEAR t709.
                      DATA t710 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                      CLEAR t710.
                      DATA t711 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t711.
                      DATA(t712) = t244.
                      DATA t713 TYPE REF TO object.
                      CLEAR t713.
                      t713 = t712.
                      t711 ?= t713.
                      DATA(t714) = t2.
                      t710 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t711 i_input_967e = t714 ).
                      t709 = t710.
                      DATA(t715) = VALUE abap_bool( ).
                      DATA(t716) = t709.
                      IF t716 IS BOUND.
                        IF t716->has = abap_true.
                          IF t716->number_special <> 0.
                            t715 = xsdbool( t716->number_special <> 1 ).
                          ELSE.
                            t715 = xsdbool( t716->value IS NOT INITIAL ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                      IF t715 = abap_true.
                        DATA(t717) = VALUE abap_bool( ).
                        DATA(t718) = t212.
                        t717 = xsdbool( t718 IS BOUND AND t718 IS INSTANCE OF zcl_lnt_character_type ).
                        IF t717 = abap_true.
                          DATA t719 TYPE REF TO zcl_lnt_character_type.
                          CLEAR t719.
                          DATA(t720) = VALUE f( ).
                          DATA(t721) = VALUE f( ).
                          DATA t722 TYPE REF TO zcl_lnt_character_type.
                          CLEAR t722.
                          DATA t723 TYPE REF TO zcl_lnt_character_type.
                          CLEAR t723.
                          DATA(t724) = t212.
                          t723 ?= t724.
                          t722 = t723.
                          DATA(t725) = VALUE f( ).
                          DATA(t726) = t722.
                          t725 = t726->length.
                          t721 = t725.
                          DATA(t727) = VALUE f( ).
                          DATA(t728) = t709.
                          IF t728->number_special <> 0.
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          t727 = t728->value.
                          t720 = t721 - t727.
                          DATA t729 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t729.
                          t719 = NEW zcl_lnt_character_type( i_length = t720 i_extra = t729 ).
                          t212 = t719.
                        ELSE.
                          DATA(t730) = VALUE abap_bool( ).
                          DATA(t731) = t212.
                          t730 = xsdbool( t731 IS BOUND AND t731 IS INSTANCE OF zcl_lnt_hex_type ).
                          IF t730 = abap_true.
                            DATA t732 TYPE REF TO zcl_lnt_hex_type.
                            CLEAR t732.
                            DATA(t733) = VALUE f( ).
                            DATA(t734) = VALUE f( ).
                            DATA t735 TYPE REF TO zcl_lnt_hex_type.
                            CLEAR t735.
                            DATA t736 TYPE REF TO zcl_lnt_hex_type.
                            CLEAR t736.
                            DATA(t737) = t212.
                            t736 ?= t737.
                            t735 = t736.
                            DATA(t738) = VALUE f( ).
                            DATA(t739) = t735.
                            t738 = t739->length.
                            t734 = t738.
                            DATA(t740) = VALUE f( ).
                            DATA(t741) = t709.
                            IF t741->number_special <> 0.
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            t740 = t741->value.
                            t733 = t734 - t740.
                            DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t742.
                            t732 = NEW zcl_lnt_hex_type( i_length = t733 i_qualified_name = t742 ).
                            t212 = t732.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ELSE.
                      DATA(t743) = VALUE abap_bool( ).
                      DATA(t744) = VALUE abap_bool( ).
                      DATA t745 TYPE REF TO object.
                      CLEAR t745.
                      DATA(t746) = t244.
                      t745 = t746->get_db65( ).
                      t744 = xsdbool( t745 IS BOUND AND t745 IS INSTANCE OF zcl_lnt_st_field_length ).
                      t743 = t744.
                      IF t744 = abap_true.
                        DATA(t747) = VALUE abap_bool( ).
                        DATA(t748) = t244.
                        t747 = xsdbool( t748 IS BOUND AND t748 IS INSTANCE OF zcl_lnt_expression_node ).
                        t743 = t747.
                      ENDIF.
                      IF t743 = abap_true.
                        DATA t749 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        CLEAR t749.
                        DATA t750 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        CLEAR t750.
                        DATA t751 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t751.
                        DATA(t752) = t244.
                        DATA t753 TYPE REF TO object.
                        CLEAR t753.
                        t753 = t752.
                        t751 ?= t753.
                        DATA(t754) = t2.
                        t750 = zcl_lnt_sy_field_length=>run_syntax( i_node = t751 i_input_967e = t754 ).
                        t749 = t750.
                        DATA(t755) = VALUE abap_bool( ).
                        DATA(t756) = t749.
                        IF t756 IS BOUND.
                          IF t756->has = abap_true.
                            IF t756->number_special <> 0.
                              t755 = xsdbool( t756->number_special <> 1 ).
                            ELSE.
                              t755 = xsdbool( t756->value IS NOT INITIAL ).
                            ENDIF.
                          ENDIF.
                        ENDIF.
                        IF t755 = abap_true.
                          DATA(t757) = VALUE abap_bool( ).
                          DATA(t758) = t212.
                          t757 = xsdbool( t758 IS BOUND AND t758 IS INSTANCE OF zcl_lnt_character_type ).
                          IF t757 = abap_true.
                            DATA t759 TYPE REF TO zcl_lnt_character_type.
                            CLEAR t759.
                            DATA(t760) = VALUE f( ).
                            DATA(t761) = t749.
                            IF t761->number_special <> 0.
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            t760 = t761->value.
                            DATA t762 TYPE REF TO zcl_lnt_abstract_type_data.
                            CLEAR t762.
                            t759 = NEW zcl_lnt_character_type( i_length = t760 i_extra = t762 ).
                            t212 = t759.
                          ELSE.
                            DATA(t763) = VALUE abap_bool( ).
                            DATA(t764) = t212.
                            t763 = xsdbool( t764 IS BOUND AND t764 IS INSTANCE OF zcl_lnt_hex_type ).
                            IF t763 = abap_true.
                              DATA t765 TYPE REF TO zcl_lnt_hex_type.
                              CLEAR t765.
                              DATA(t766) = VALUE f( ).
                              DATA(t767) = t749.
                              IF t767->number_special <> 0.
                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                              ENDIF.
                              t766 = t767->value.
                              DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t768.
                              t765 = NEW zcl_lnt_hex_type( i_length = t766 i_qualified_name = t768 ).
                              t212 = t765.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t769) = VALUE string( ).
      DATA(t770) = t244.
      t769 = t770->concat_tokens( ).
      t231 = t769.
      DATA(t771) = VALUE i( ).
      DATA(t772) = t238.
      DATA(t773) = 1.
      t771 = t772 + t773.
      t238 = t771.
    ENDDO.
    DATA(t774) = t212.
    result = t774.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_node.
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
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_expression_node ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement_runnable.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t18) = t1.
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      t16 = t17->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
      t12 = t15.
    ENDIF.
    IF t12 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = t1.
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        DATA(t26) = t2.
        t22 = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t23 i_input_967e = t26 ).
        t20 = t22.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        t20 = t27.
      ENDIF.
      result = t20.
      RETURN.
    ELSE.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA(t30) = t1.
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_expression_node ).
      t28 = t29.
      IF t29 = abap_true.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zif_lnt_statement_runnable.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        DATA(t34) = t1.
        DATA t35 TYPE REF TO object.
        t35 = t34.
        t33 ?= t35.
        t32 = t33->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_source_field ).
        t28 = t31.
      ENDIF.
      IF t28 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA(t38) = t1.
        DATA t39 TYPE REF TO object.
        t39 = t38.
        t37 ?= t39.
        DATA(t40) = t2.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = t3.
          t41 = t43.
        ELSE.
          DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t44.
          t41 = t44.
        ENDIF.
        DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t45.
        t36 = zcl_lnt_sy_source_field=>run_syntax( i_node = t37 i_input_967e = t40 i_type_9913 = t41 i_error = t45 ).
        result = t36.
        RETURN.
      ELSE.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        DATA(t48) = t1.
        t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_expression_node ).
        t46 = t47.
        IF t47 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE REF TO zif_lnt_statement_runnable.
          DATA t51 TYPE REF TO zcl_lnt_expression_node.
          DATA(t52) = t1.
          DATA t53 TYPE REF TO object.
          t53 = t52.
          t51 ?= t53.
          t50 = t51->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_st_expres_field ).
          t46 = t49.
        ENDIF.
        IF t46 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          DATA(t56) = t1.
          DATA t57 TYPE REF TO object.
          t57 = t56.
          t55 ?= t57.
          DATA(t58) = t2.
          DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t59.
          DATA(t60) = abap_true.
          IF t60 = abap_true.
            DATA(t61) = t3.
            t59 = t61.
          ELSE.
            DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t62.
            t59 = t62.
          ENDIF.
          DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t63.
          t54 = zcl_lnt_sy_source_field=>run_syntax( i_node = t55 i_input_967e = t58 i_type_9913 = t59 i_error = t63 ).
          result = t54.
          RETURN.
        ELSE.
          DATA t64 TYPE abap_bool.
          DATA t65 TYPE REF TO object.
          DATA t66 TYPE REF TO zif_lnt_node.
          DATA(t67) = t1.
          t66 = t67.
          t65 = t66->get_db65( ).
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_class_name ).
          IF t64 = abap_true.
            DATA t68 TYPE REF TO zcl_lnt_abstract_token.
            DATA t69 TYPE REF TO zcl_lnt_abstract_token.
            DATA t70 TYPE REF TO zif_lnt_node.
            DATA(t71) = t1.
            t70 = t71.
            t69 = t70->get_first_token( ).
            t68 = t69.
            DATA t72 TYPE string.
            DATA t73 TYPE string.
            DATA t74 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t75) = t68.
            t74 = t75.
            DATA t76 TYPE string.
            DATA(t77) = t74.
            t76 = t77->str.
            t73 = t76.
            t72 = t73.
            DATA(t78) = VALUE abap_bool( ).
            DATA t79 TYPE string.
            DATA(t80) = t72.
            DATA(t81) = strlen( t80 ).
            t79 = t80.
            IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t79 TO UPPER CASE.
            ELSE.
              t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
            ENDIF.
            DATA(t82) = |OBJECT|.
            t78 = xsdbool( t79 = t82 ).
            IF t78 = abap_true.
              DATA t83 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
              DATA t84 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t84.
              t83 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t84 ).
              result = t83.
              RETURN.
            ENDIF.
            DATA t85 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t85.
            DATA t86 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t86.
            DATA t87 TYPE REF TO zcl_lnt_current_scope.
            DATA(t88) = t2.
            t87 = t88->scope.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA(t91) = t72.
              DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t92->has = abap_true.
              t92->value = t91.
              t89 = t92.
            ELSE.
              DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t93.
              t89 = t93.
            ENDIF.
            t86 = t87->exists_object( i_name = t89 ).
            t85 = t86.
            DATA(t94) = VALUE abap_bool( ).
            DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_shape_59e28496.
            DATA(t97) = t85.
            t96 = t97.
            DATA t98 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t98.
            DATA(t99) = VALUE abap_bool( ).
            DATA(t100) = t96.
            IF t100 IS INITIAL.
              t99 = abap_true.
            ENDIF.
            IF t99 = abap_true.
              DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t101.
              t98 = t101.
            ELSE.
              DATA t102 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t103 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t104) = t96.
              t103 = t104.
              t102 = t103->id.
              t98 = t102.
            ENDIF.
            t95 = t98.
            t94 = xsdbool( t95 IS BOUND ).
            IF t94 = abap_true.
              DATA t105 TYPE REF TO zcl_lnt_current_scope.
              DATA(t106) = t2.
              t105 = t106->scope.
              DATA t107 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t107.
              DATA(t108) = abap_true.
              IF t108 = abap_true.
                DATA(t109) = t68.
                t107 = t109.
              ELSE.
                DATA t110 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t110.
                t107 = t110.
              ENDIF.
              DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t111.
              DATA(t112) = abap_true.
              IF t112 = abap_true.
                DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t114 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t115 TYPE REF TO zcl_lnt_shape_59e28496.
                DATA(t116) = t85.
                t115 = t116.
                t114 = t115->id.
                t113 = t114.
                t111 = t113.
              ELSE.
                DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t117.
                t111 = t117.
              ENDIF.
              DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t118.
              DATA(t119) = |Object|.
              CLEAR t118.
              CREATE OBJECT t118.
              t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t118->sval = t119.
              DATA t120 TYPE string.
              DATA(t121) = t2.
              t120 = t121->filename.
              DATA t122 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t122.
              t105->add_reference( i_usage = t107 i_referencing = t111 i_type_9913 = t118 i_filename = t120 i_extra = t122 ).
              DATA t123 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t126 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t127) = t85.
              t126 = t127.
              t125 = t126->id.
              t124 = t125.
              DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t128.
              t123 = NEW zcl_lnt_object_reference_type( i_id = t124 i_extra = t128 ).
              result = t123.
              RETURN.
            ELSE.
              DATA(t129) = VALUE abap_bool( ).
              DATA(t130) = VALUE abap_bool( ).
              DATA t131 TYPE REF TO zcl_lnt_ddic.
              DATA t132 TYPE REF TO zcl_lnt_ddic.
              DATA t133 TYPE REF TO zcl_lnt_current_scope.
              DATA t134 TYPE REF TO zcl_lnt_current_scope.
              DATA(t135) = t2.
              t134 = t135->scope.
              t133 = t134.
              DATA t136 TYPE REF TO zcl_lnt_ddic.
              DATA t137 TYPE REF TO zif_lnt_registry.
              DATA(t138) = t133.
              t137 = t138->reg.
              t136 = NEW zcl_lnt_ddic( i_reg_f149 = t137 ).
              t132 = t136.
              t131 = t132.
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t139.
              DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t140.
              DATA(t141) = abap_true.
              IF t141 = abap_true.
                DATA(t142) = t72.
                DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t143->has = abap_true.
                t143->value = t142.
                t140 = t143.
              ELSE.
                DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t144.
                t140 = t144.
              ENDIF.
              t139 = t140.
              DATA(t145) = VALUE abap_bool( ).
              DATA(t146) = VALUE abap_bool( ).
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t148) = t139.
              t147 = t148.
              DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t150.
              t149 = t150.
              DATA(t151) = VALUE abap_bool( ).
              DATA(t152) = t147.
              IF t152 IS INITIAL.
                t151 = abap_true.
              ELSEIF t152->has = abap_false.
                t151 = abap_true.
              ENDIF.
              t146 = t151.
              IF t146 = abap_true.
                DATA(t153) = abap_true.
                t145 = t153.
              ELSE.
                DATA t154 TYPE abap_bool.
                DATA t155 TYPE REF TO zif_lnt_registry.
                DATA(t156) = t131.
                t155 = t156->reg.
                DATA t157 TYPE string.
                DATA(t158) = t139.
                t157 = t158->value.
                t154 = t155->in_error_namespace( i_name = t157 ).
                t145 = t154.
              ENDIF.
              t130 = t145.
              DATA(t159) = abap_false.
              t129 = xsdbool( t130 = t159 ).
              IF t129 = abap_true.
                DATA t160 TYPE REF TO zcl_lnt_current_scope.
                DATA(t161) = t2.
                t160 = t161->scope.
                DATA t162 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t162.
                DATA(t163) = abap_true.
                IF t163 = abap_true.
                  DATA(t164) = t68.
                  t162 = t164.
                ELSE.
                  DATA t165 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t165.
                  t162 = t165.
                ENDIF.
                DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t166.
                DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t167.
                DATA(t168) = |Object (Void)|.
                CLEAR t167.
                CREATE OBJECT t167.
                t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t167->sval = t168.
                DATA t169 TYPE string.
                DATA(t170) = t2.
                t169 = t170->filename.
                DATA t171 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t171.
                DATA(t172) = abap_true.
                IF t172 = abap_true.
                  DATA t173 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t173.
                  DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t174.
                  DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t175.
                  DATA(t176) = abap_true.
                  IF t176 = abap_true.
                    DATA t177 TYPE string.
                    DATA(t178) = t72.
                    DATA(t179) = strlen( t178 ).
                    t177 = t178.
                    IF t177 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t177 TO UPPER CASE.
                    ELSE.
                      t177 = zlnt_runtime_uppe_91169605024d=>full( t177 ).
                    ENDIF.
                    DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t180->has = abap_true.
                    t180->value = t177.
                    t175 = t180.
                  ELSE.
                    DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t181.
                    t175 = t181.
                  ENDIF.
                  t174 = t175.
                  DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t183.
                  t182 = t183.
                  DATA t184 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t185 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t185.
                  t184 = t185.
                  t173 = NEW zcl_lnt_ireference_extras( i_oo_name = t174 i_oo_type = t182 i_found_qualified = t184 ).
                  CREATE OBJECT t173->zlnt_view_ownkeys_b0e8086400eb.
                  t173->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t186.
                  IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t186 ).
                  ENDIF.
                  CREATE OBJECT t173->zlnt_json_ownkeys_70e5fd461788.
                  t173->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t187) = |ooName|.
                  DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t188.
                  IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
                  ENDIF.
                  t171 = t173.
                ELSE.
                  DATA t189 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t189.
                  t171 = t189.
                ENDIF.
                t160->add_reference( i_usage = t162 i_referencing = t166 i_type_9913 = t167 i_filename = t169 i_extra = t171 ).
                DATA t190 TYPE REF TO zcl_lnt_void_type.
                CLEAR t190.
                DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t191.
                DATA(t192) = abap_true.
                IF t192 = abap_true.
                  DATA(t193) = t72.
                  DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t194->has = abap_true.
                  t194->value = t193.
                  t191 = t194.
                ELSE.
                  DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t195.
                  t191 = t195.
                ENDIF.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t196.
                t190 = zcl_lnt_void_type=>get_db65( i_voided = t191 i_qualified_name = t196 ).
                result = t190.
                RETURN.
              ELSE.
                DATA t197 TYPE string.
                DATA t198 TYPE string.
                DATA(t199) = |Unknown class |.
                DATA(t200) = t72.
                DATA(t201) = strlen( t199 ).
                t198 = |{ t199 }{ t200 }|.
                t197 = t198.
                DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t203) = t2.
                t202 = t203->issues.
                DATA t204 TYPE REF TO zcl_lnt_issue.
                DATA(t205) = t2.
                DATA t206 TYPE REF TO zcl_lnt_abstract_token.
                DATA t207 TYPE REF TO zif_lnt_node.
                DATA(t208) = t1.
                t207 = t208.
                t206 = t207->get_first_token( ).
                DATA(t209) = t197.
                DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t210.
                t204 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t205 i_token = t206 i_message_26cb = t209 i_fix = t210 ).
                t202->load( ).
                APPEND t204 TO t202->items.
                t202->save( ).
                DATA t211 TYPE REF TO zcl_lnt_void_type.
                CLEAR t211.
                DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t212.
                DATA(t213) = abap_true.
                IF t213 = abap_true.
                  DATA(t214) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t215->has = abap_true.
                  t215->value = t214.
                  t212 = t215.
                ELSE.
                  DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t216.
                  t212 = t216.
                ENDIF.
                DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t217.
                t211 = zcl_lnt_void_type=>get_db65( i_voided = t212 i_qualified_name = t217 ).
                result = t211.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t218 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t218.
    result = t218.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d803_3fbd8bf96170.
  ENDMETHOD.
ENDCLASS.
