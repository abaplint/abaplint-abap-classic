* TS: src/abap/5_syntax/statements/tables.ts:9:1 Tables
CLASS zcl_lnt_sy_tables DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_tables IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_expression_node( t5 ).
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
      DATA(t15) = CAST zcl_lnt_expression_node( t5 ).
      t14 = t15.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_abstract_token( t3 ).
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = CAST zcl_lnt_abstract_token( t17 ).
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t27) = CAST zcl_lnt_abstract_token( t3 ).
    t26 = t27.
    t25 = t26.
    DATA t28 TYPE string.
    DATA(t29) = CAST zcl_lnt_abstract_token( t25 ).
    t28 = t29->str.
    t24 = t28.
    t23 = t24.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t23.
    DATA(t32) = |*|.
    DATA(t33) = strlen( t31 ).
    DATA t34 TYPE i.
    DATA(t35) = VALUE i( ).
    DATA(t36) = VALUE string( ).
    t34 = strlen( t32 ).
    IF t34 = 0.
      t30 = abap_true.
    ELSEIF t34 <= t33.
      t35 = 0.
      t36 = t31+t35(t34).
      IF t36 = t32.
        t30 = abap_true.
      ENDIF.
    ENDIF.
    IF t30 = abap_true.
      DATA(t37) = VALUE string( ).
      DATA t38 TYPE string.
      DATA(t39) = t23.
      t38 = t39.
      DATA(t40) = VALUE string( ).
      DATA(t41) = t38.
      DATA(t42) = 1.
      DATA t43 TYPE i.
      DATA(t44) = t38.
      DATA(t45) = strlen( t44 ).
      t43 = t45.
      DATA(t46) = strlen( t41 ).
      t42 = COND i( WHEN t42 < 0 THEN 0 WHEN t42 > t46 THEN t46 ELSE t42 ).
      t43 = COND i( WHEN t43 < 0 THEN 0 WHEN t43 > t46 THEN t46 ELSE t43 ).
      IF t42 > t43.
        t46 = t42.
        t42 = t43.
        t43 = t46.
      ENDIF.
      t46 = t43 - t42.
      t40 = t41+t42(t46).
      t37 = t40.
      t23 = t37.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_ddic.
    DATA t50 TYPE REF TO zcl_lnt_ddic.
    DATA t51 TYPE REF TO zcl_lnt_current_scope.
    DATA t52 TYPE REF TO zcl_lnt_current_scope.
    DATA(t53) = CAST zcl_lnt_syntax_input( t2 ).
    t52 = t53->scope.
    t51 = t52.
    DATA t54 TYPE REF TO zcl_lnt_ddic.
    DATA t55 TYPE REF TO zif_lnt_registry.
    DATA(t56) = CAST zcl_lnt_current_scope( t51 ).
    t55 = t56->reg.
    t54 = NEW zcl_lnt_ddic( i_reg_f149 = t55 ).
    t50 = t54.
    t49 = t50.
    DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = CAST zcl_lnt_ddic( t49 ).
    IF t59 IS INITIAL.
      t58 = abap_true.
    ENDIF.
    IF t58 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t60.
      t57 = t60.
    ELSE.
      DATA t61 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_ddic.
      DATA(t63) = CAST zcl_lnt_ddic( t49 ).
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA(t67) = t23.
        DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t68->has = abap_true.
        t68->value = t67.
        t65 = t68.
      ELSE.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t65 = t69.
      ENDIF.
      t64 = t65.
      DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t73) = CAST zlnt_runtime_opti_4ba3bdccd169( t64 ).
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = CAST zlnt_runtime_opti_4ba3bdccd169( t72 ).
      IF t77 IS INITIAL.
        t76 = abap_true.
      ELSEIF t77->has = abap_false.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      IF t71 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t79 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t80) = |undefined, lookupTableOrView|.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t79 = NEW zcl_lnt_unknown_type( i_error = t80 i_qualified_name = t81 ).
        DATA t82 TYPE REF TO zif_lnt_object.
        CLEAR t82.
        t78 = NEW zcl_lnt_ilookup_result( i_type_9913 = t79 i_object_19cd = t82 ).
        t70 = t78.
      ELSE.
        DATA t83 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_table.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_table.
        CLEAR t85.
        DATA t86 TYPE REF TO zif_lnt_object.
        CLEAR t86.
        DATA t87 TYPE REF TO zif_lnt_registry.
        DATA(t88) = CAST zcl_lnt_ddic( t62 ).
        t87 = t88->reg.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA(t90) = abap_true.
        IF t90 = abap_true.
          DATA(t91) = |TABL|.
          DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t92->has = abap_true.
          t92->value = t91.
          t89 = t92.
        ELSE.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t89 = t93.
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA t96 TYPE string.
          DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t64 ).
          t96 = t97->value.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t96.
          t94 = t98.
        ELSE.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          t94 = t99.
        ENDIF.
        t86 = t87->get_object( i_type_9913 = t89 i_name = t94 ).
        DATA t100 TYPE REF TO object.
        t100 = t86.
        t85 ?= t100.
        t84 = t85.
        DATA t101 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t101.
        DATA t102 TYPE abap_bool.
        DATA(t103) = CAST zcl_lnt_table( t84 ).
        t102 = xsdbool( t103 IS BOUND ).
        IF t102 = abap_true.
          DATA t104 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          DATA t106 TYPE REF TO zcl_lnt_table.
          DATA(t107) = CAST zcl_lnt_table( t84 ).
          t106 = t107.
          DATA t108 TYPE REF TO zif_lnt_registry.
          DATA(t109) = CAST zcl_lnt_ddic( t62 ).
          t108 = t109->reg.
          t105 = t106->parse_type( i_reg_f149 = t108 ).
          DATA t110 TYPE REF TO zcl_lnt_table.
          DATA(t111) = CAST zcl_lnt_table( t84 ).
          t110 = t111.
          t104 = NEW zcl_lnt_ilookup_result( i_type_9913 = t105 i_object_19cd = t110 ).
          t101 = t104.
        ELSE.
          DATA t112 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t112.
          DATA t113 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t113.
          DATA t114 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t114.
          DATA(t115) = CAST zcl_lnt_ddic( t62 ).
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA t118 TYPE string.
            DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t64 ).
            t118 = t119->value.
            DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t120->has = abap_true.
            t120->value = t118.
            t116 = t120.
          ELSE.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            t116 = t121.
          ENDIF.
          t114 = t115->lookup_ddls( i_name = t116 ).
          t113 = t114.
          DATA t122 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t122.
          DATA t123 TYPE abap_bool.
          DATA(t124) = CAST zcl_lnt_ilookup_result( t113 ).
          t123 = xsdbool( t124 IS BOUND ).
          IF t123 = abap_true.
            DATA t125 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t126) = CAST zcl_lnt_ilookup_result( t113 ).
            t125 = t126.
            t122 = t125.
          ELSE.
            DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t127.
            DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t128.
            DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t129.
            DATA(t130) = abap_true.
            IF t130 = abap_true.
              DATA t131 TYPE string.
              DATA(t132) = CAST zlnt_runtime_opti_4ba3bdccd169( t64 ).
              t131 = t132->value.
              DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t133->has = abap_true.
              t133->value = t131.
              t129 = t133.
            ELSE.
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t134.
              t129 = t134.
            ENDIF.
            t128 = t129.
            DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t135.
            DATA(t136) = VALUE abap_bool( ).
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t138) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
            t137 = t138.
            DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t140.
            t139 = t140.
            DATA(t141) = VALUE abap_bool( ).
            DATA(t142) = CAST zlnt_runtime_opti_4ba3bdccd169( t137 ).
            IF t142 IS INITIAL.
              t141 = abap_true.
            ELSEIF t142->has = abap_false.
              t141 = abap_true.
            ENDIF.
            t136 = t141.
            IF t136 = abap_true.
              DATA t143 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t144 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t145) = |undefined, lookupView|.
              DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t146.
              t144 = NEW zcl_lnt_unknown_type( i_error = t145 i_qualified_name = t146 ).
              DATA t147 TYPE REF TO zif_lnt_object.
              CLEAR t147.
              t143 = NEW zcl_lnt_ilookup_result( i_type_9913 = t144 i_object_19cd = t147 ).
              t135 = t143.
            ELSE.
              DATA t148 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t148.
              DATA t149 TYPE REF TO zcl_lnt_table.
              CLEAR t149.
              DATA t150 TYPE REF TO zcl_lnt_table.
              CLEAR t150.
              DATA t151 TYPE REF TO zif_lnt_object.
              CLEAR t151.
              DATA t152 TYPE REF TO zif_lnt_registry.
              DATA(t153) = CAST zcl_lnt_ddic( t62 ).
              t152 = t153->reg.
              DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t154.
              DATA(t155) = abap_true.
              IF t155 = abap_true.
                DATA(t156) = |VIEW|.
                DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t157->has = abap_true.
                t157->value = t156.
                t154 = t157.
              ELSE.
                DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t158.
                t154 = t158.
              ENDIF.
              DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t159.
              DATA(t160) = abap_true.
              IF t160 = abap_true.
                DATA t161 TYPE string.
                DATA(t162) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
                t161 = t162->value.
                DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t163->has = abap_true.
                t163->value = t161.
                t159 = t163.
              ELSE.
                DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t164.
                t159 = t164.
              ENDIF.
              t151 = t152->get_object( i_type_9913 = t154 i_name = t159 ).
              DATA t165 TYPE REF TO object.
              t165 = t151.
              t150 ?= t165.
              t149 = t150.
              DATA t166 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t166.
              DATA t167 TYPE abap_bool.
              DATA(t168) = CAST zcl_lnt_table( t149 ).
              t167 = xsdbool( t168 IS BOUND ).
              IF t167 = abap_true.
                DATA t169 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t170 TYPE REF TO zcl_lnt_abstract_type.
                DATA t171 TYPE REF TO zcl_lnt_table.
                DATA(t172) = CAST zcl_lnt_table( t149 ).
                t171 = t172.
                DATA t173 TYPE REF TO zif_lnt_registry.
                DATA(t174) = CAST zcl_lnt_ddic( t62 ).
                t173 = t174->reg.
                t170 = t171->parse_type( i_reg_f149 = t173 ).
                DATA t175 TYPE REF TO zcl_lnt_table.
                DATA(t176) = CAST zcl_lnt_table( t149 ).
                t175 = t176.
                t169 = NEW zcl_lnt_ilookup_result( i_type_9913 = t170 i_object_19cd = t175 ).
                t166 = t169.
              ELSE.
                DATA t177 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t177.
                DATA t178 TYPE abap_bool.
                DATA t179 TYPE REF TO zif_lnt_registry.
                DATA(t180) = CAST zcl_lnt_ddic( t62 ).
                t179 = t180->reg.
                DATA t181 TYPE string.
                DATA(t182) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
                t181 = t182->value.
                t178 = t179->in_error_namespace( i_name = t181 ).
                IF t178 = abap_true.
                  DATA t183 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t184 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t185 TYPE string.
                  DATA t186 TYPE string.
                  DATA(t187) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
                  t186 = t187->value.
                  DATA(t188) = | not found, lookupView|.
                  DATA(t189) = strlen( t186 ).
                  t185 = |{ t186 }{ t188 }|.
                  DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t190.
                  t184 = NEW zcl_lnt_unknown_type( i_error = t185 i_qualified_name = t190 ).
                  DATA t191 TYPE REF TO zif_lnt_object.
                  CLEAR t191.
                  t183 = NEW zcl_lnt_ilookup_result( i_type_9913 = t184 i_object_19cd = t191 ).
                  t177 = t183.
                ELSE.
                  DATA t192 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t192.
                  DATA t193 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t193.
                  DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t194.
                  DATA(t195) = abap_true.
                  IF t195 = abap_true.
                    DATA t196 TYPE string.
                    DATA(t197) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
                    t196 = t197->value.
                    DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t198->has = abap_true.
                    t198->value = t196.
                    t194 = t198.
                  ELSE.
                    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t199.
                    t194 = t199.
                  ENDIF.
                  DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t200.
                  t193 = zcl_lnt_void_type=>get_db65( i_voided = t194 i_qualified_name = t200 ).
                  DATA t201 TYPE REF TO zif_lnt_object.
                  CLEAR t201.
                  t192 = NEW zcl_lnt_ilookup_result( i_type_9913 = t193 i_object_19cd = t201 ).
                  t177 = t192.
                ENDIF.
                t166 = t177.
              ENDIF.
              t148 = t166.
              t135 = t148.
            ENDIF.
            t127 = t135.
            t122 = t127.
          ENDIF.
          t112 = t122.
          t101 = t112.
        ENDIF.
        t83 = t101.
        t70 = t83.
      ENDIF.
      t61 = t70.
      t57 = t61.
    ENDIF.
    t48 = t57.
    t47 = t48.
    DATA t202 TYPE abap_bool.
    DATA t203 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t204) = CAST zcl_lnt_ilookup_result( t47 ).
    t203 = t204.
    t202 = xsdbool( t203 IS BOUND ).
    IF t202 = abap_true.
      DATA t205 TYPE REF TO zif_lnt_ddic_references.
      DATA t206 TYPE REF TO zcl_lnt_current_scope.
      DATA t207 TYPE REF TO zcl_lnt_current_scope.
      DATA(t208) = CAST zcl_lnt_syntax_input( t2 ).
      t207 = t208->scope.
      t206 = t207.
      DATA t209 TYPE REF TO zif_lnt_ddic_references.
      DATA t210 TYPE REF TO zif_lnt_registry.
      DATA(t211) = CAST zcl_lnt_current_scope( t206 ).
      t210 = t211->reg.
      t209 = t210->get_ddic_references( ).
      t205 = t209.
      DATA t212 TYPE REF TO zif_lnt_object.
      DATA t213 TYPE REF TO zcl_lnt_current_scope.
      DATA t214 TYPE REF TO zcl_lnt_current_scope.
      DATA(t215) = CAST zcl_lnt_syntax_input( t2 ).
      t214 = t215->scope.
      t213 = t214.
      DATA t216 TYPE REF TO zif_lnt_object.
      DATA(t217) = CAST zcl_lnt_current_scope( t213 ).
      t216 = t217->parent_obj.
      t212 = t216.
      DATA t218 TYPE REF TO zcl_lnt_iobject_and_token.
      CLEAR t218.
      DATA(t219) = abap_true.
      IF t219 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t220.
        DATA t221 TYPE REF TO zif_lnt_object.
        DATA t222 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t223) = CAST zcl_lnt_ilookup_result( t47 ).
        t222 = t223.
        t221 = t222->object_a393.
        DATA t224 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t224.
        DATA(t225) = abap_true.
        IF t225 = abap_true.
          DATA t226 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t227) = CAST zcl_lnt_abstract_token( t3 ).
          t226 = t227.
          t224 = t226.
        ELSE.
          DATA t228 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t228.
          t224 = t228.
        ENDIF.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA(t230) = abap_true.
        IF t230 = abap_true.
          DATA t231 TYPE string.
          DATA(t232) = CAST zcl_lnt_syntax_input( t2 ).
          t231 = t232->filename.
          DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t233->has = abap_true.
          t233->value = t231.
          t229 = t233.
        ELSE.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          t229 = t234.
        ENDIF.
        t220 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t221 i_token = t224 i_filename = t229 ).
        t218 = t220.
      ELSE.
        DATA t235 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t235.
        t218 = t235.
      ENDIF.
      t205->add_using( i_obj_1ed0 = t212 i_using = t218 ).
      DATA t236 TYPE abap_bool.
      DATA t237 TYPE abap_bool.
      DATA t238 TYPE string.
      DATA t239 TYPE REF TO zcl_lnt_current_scope.
      DATA(t240) = CAST zcl_lnt_syntax_input( t2 ).
      t239 = t240->scope.
      t238 = t239->get_type( ).
      DATA(t241) = |form|.
      t237 = xsdbool( t238 = t241 ).
      t236 = t237.
      IF t237 = abap_false.
        DATA t242 TYPE abap_bool.
        DATA t243 TYPE string.
        DATA t244 TYPE REF TO zcl_lnt_current_scope.
        DATA(t245) = CAST zcl_lnt_syntax_input( t2 ).
        t244 = t245->scope.
        t243 = t244->get_type( ).
        DATA(t246) = |function|.
        t242 = xsdbool( t243 = t246 ).
        t236 = t242.
      ENDIF.
      IF t236 = abap_true.
        DATA t247 TYPE REF TO zcl_lnt_current_scope.
        DATA(t248) = CAST zcl_lnt_syntax_input( t2 ).
        t247 = t248->scope.
        DATA t249 TYPE string.
        DATA t250 TYPE REF TO zcl_lnt_abstract_token.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t252) = CAST zcl_lnt_abstract_token( t3 ).
        t251 = t252.
        t250 = t251.
        DATA t253 TYPE string.
        DATA(t254) = CAST zcl_lnt_abstract_token( t250 ).
        t253 = t254->str.
        t249 = t253.
        DATA t255 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t255.
        DATA t256 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t257) = CAST zcl_lnt_abstract_token( t3 ).
        t256 = t257.
        DATA t258 TYPE string.
        DATA(t259) = CAST zcl_lnt_syntax_input( t2 ).
        t258 = t259->filename.
        DATA t260 TYPE REF TO zcl_lnt_abstract_type.
        DATA t261 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t262) = CAST zcl_lnt_ilookup_result( t47 ).
        t261 = t262.
        t260 = t261->type_cba0.
        DATA t263 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t263.
        DATA(t264) = abap_true.
        IF t264 = abap_true.
          DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t267.
          t266 = t267.
          DATA(t268) = CAST zlnt_runtime_arra_8ecd6afe19e0( t266 ).
          DATA(t269) = |tables|.
          APPEND t269 TO t268->items.
          DATA(t270) = CAST zlnt_runtime_arra_8ecd6afe19e0( t266 ).
          t265 = t270.
          t263 = t265.
        ELSE.
          DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t271.
          t263 = t271.
        ENDIF.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        t255 = NEW zcl_lnt_typed_identifier( i_token = t256 i_filename = t258 i_type_9913 = t260 i_meta = t263 i_value = t272 ).
        t247->add_named_identifier_to_parent( i_name = t249 i_identifier = t255 ).
      ELSE.
        DATA t273 TYPE REF TO zcl_lnt_current_scope.
        DATA t274 TYPE REF TO zcl_lnt_current_scope.
        DATA(t275) = CAST zcl_lnt_syntax_input( t2 ).
        t274 = t275->scope.
        t273 = t274.
        DATA t276 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t276.
        DATA t277 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t277.
        DATA(t278) = abap_true.
        IF t278 = abap_true.
          DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t279.
          DATA t280 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t281) = CAST zcl_lnt_abstract_token( t3 ).
          t280 = t281.
          DATA t282 TYPE string.
          DATA(t283) = CAST zcl_lnt_syntax_input( t2 ).
          t282 = t283->filename.
          DATA t284 TYPE REF TO zcl_lnt_abstract_type.
          DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t286) = CAST zcl_lnt_ilookup_result( t47 ).
          t285 = t286.
          t284 = t285->type_cba0.
          DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t287.
          DATA(t288) = abap_true.
          IF t288 = abap_true.
            DATA t289 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t290 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t291.
            t290 = t291.
            DATA(t292) = CAST zlnt_runtime_arra_8ecd6afe19e0( t290 ).
            DATA(t293) = |tables|.
            APPEND t293 TO t292->items.
            DATA(t294) = CAST zlnt_runtime_arra_8ecd6afe19e0( t290 ).
            t289 = t294.
            t287 = t289.
          ELSE.
            DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t295.
            t287 = t295.
          ENDIF.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          t279 = NEW zcl_lnt_typed_identifier( i_token = t280 i_filename = t282 i_type_9913 = t284 i_meta = t287 i_value = t296 ).
          t277 = t279.
        ELSE.
          DATA t297 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t297.
          t277 = t297.
        ENDIF.
        t276 = t277.
        DATA(t298) = VALUE abap_bool( ).
        DATA t299 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t300) = CAST zcl_lnt_typed_identifier( t276 ).
        t299 = t300.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        t301 = t302.
        DATA(t303) = VALUE abap_bool( ).
        DATA(t304) = CAST zcl_lnt_typed_identifier( t299 ).
        IF t304 IS INITIAL.
          t303 = abap_true.
        ENDIF.
        t298 = t303.
        IF t298 = abap_true.
        ELSE.
          DATA(t305) = CAST zcl_lnt_current_scope( t273 ).
          DATA(t306) = VALUE string( ).
          DATA t307 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t309) = CAST zcl_lnt_typed_identifier( t276 ).
          t308 = t309.
          t307 = t308.
          DATA(t310) = VALUE string( ).
          DATA t311 TYPE string.
          DATA t312 TYPE string.
          DATA t313 TYPE REF TO zcl_lnt_abstract_token.
          DATA t314 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t315) = CAST zcl_lnt_fi_identifier( t307 ).
          t314 = t315->token.
          t313 = t314.
          DATA t316 TYPE string.
          DATA(t317) = CAST zcl_lnt_abstract_token( t313 ).
          t316 = t317->str.
          t312 = t316.
          t311 = t312.
          DATA(t318) = VALUE abap_bool( ).
          DATA(t319) = VALUE string( ).
          DATA(t320) = t311.
          DATA(t321) = 0.
          DATA(t322) = 1.
          DATA(t323) = strlen( t320 ).
          IF t321 < 0.
            t321 = t321 + t323.
            IF t321 < 0.
              t321 = 0.
            ENDIF.
          ENDIF.
          IF t321 > t323 OR t322 <= 0.
            CLEAR t319.
          ELSE.
            IF t322 > t323 - t321.
              t322 = t323 - t321.
            ENDIF.
            t319 = t320+t321(t322).
          ENDIF.
          DATA(t324) = |!|.
          t318 = xsdbool( t319 = t324 ).
          IF t318 = abap_true.
            DATA(t325) = VALUE string( ).
            DATA t326 TYPE string.
            DATA(t327) = t311.
            t326 = t327.
            DATA(t328) = VALUE string( ).
            DATA(t329) = t326.
            DATA(t330) = 1.
            DATA t331 TYPE i.
            DATA(t332) = t326.
            DATA(t333) = strlen( t332 ).
            t331 = t333.
            DATA(t334) = strlen( t329 ).
            IF t330 < 0.
              t330 = t330 + t334.
              IF t330 < 0.
                t330 = 0.
              ENDIF.
            ENDIF.
            IF t330 > t334 OR t331 <= 0.
              CLEAR t328.
            ELSE.
              IF t331 > t334 - t330.
                t331 = t334 - t330.
              ENDIF.
              t328 = t329+t330(t331).
            ENDIF.
            t325 = t328.
            t311 = t325.
          ENDIF.
          DATA(t335) = t311.
          t310 = t335.
          t306 = t310.
          DATA t336 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t337) = CAST zcl_lnt_typed_identifier( t276 ).
          t336 = t337.
          t305->add_named_identifier( i_name = t306 i_identifier = t336 ).
        ENDIF.
      ENDIF.
      RETURN.
    ENDIF.
    DATA t338 TYPE REF TO zcl_lnt_current_scope.
    DATA t339 TYPE REF TO zcl_lnt_current_scope.
    DATA(t340) = CAST zcl_lnt_syntax_input( t2 ).
    t339 = t340->scope.
    t338 = t339.
    DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t341.
    DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t342.
    DATA(t343) = abap_true.
    IF t343 = abap_true.
      DATA t344 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t345 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t346) = CAST zcl_lnt_abstract_token( t3 ).
      t345 = t346.
      DATA t347 TYPE string.
      DATA(t348) = CAST zcl_lnt_syntax_input( t2 ).
      t347 = t348->filename.
      DATA t349 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t350) = |Tables, fallback|.
      DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t351.
      t349 = NEW zcl_lnt_unknown_type( i_error = t350 i_qualified_name = t351 ).
      DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t352.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      t344 = NEW zcl_lnt_typed_identifier( i_token = t345 i_filename = t347 i_type_9913 = t349 i_meta = t352 i_value = t353 ).
      t342 = t344.
    ELSE.
      DATA t354 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t354.
      t342 = t354.
    ENDIF.
    t341 = t342.
    DATA(t355) = VALUE abap_bool( ).
    DATA t356 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t357) = CAST zcl_lnt_typed_identifier( t341 ).
    t356 = t357.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    t358 = t359.
    DATA(t360) = VALUE abap_bool( ).
    DATA(t361) = CAST zcl_lnt_typed_identifier( t356 ).
    IF t361 IS INITIAL.
      t360 = abap_true.
    ENDIF.
    t355 = t360.
    IF t355 = abap_true.
    ELSE.
      DATA(t362) = CAST zcl_lnt_current_scope( t338 ).
      DATA(t363) = VALUE string( ).
      DATA t364 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t365 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t366) = CAST zcl_lnt_typed_identifier( t341 ).
      t365 = t366.
      t364 = t365.
      DATA(t367) = VALUE string( ).
      DATA t368 TYPE string.
      DATA t369 TYPE string.
      DATA t370 TYPE REF TO zcl_lnt_abstract_token.
      DATA t371 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t372) = CAST zcl_lnt_fi_identifier( t364 ).
      t371 = t372->token.
      t370 = t371.
      DATA t373 TYPE string.
      DATA(t374) = CAST zcl_lnt_abstract_token( t370 ).
      t373 = t374->str.
      t369 = t373.
      t368 = t369.
      DATA(t375) = VALUE abap_bool( ).
      DATA(t376) = VALUE string( ).
      DATA(t377) = t368.
      DATA(t378) = 0.
      DATA(t379) = 1.
      DATA(t380) = strlen( t377 ).
      IF t378 < 0.
        t378 = t378 + t380.
        IF t378 < 0.
          t378 = 0.
        ENDIF.
      ENDIF.
      IF t378 > t380 OR t379 <= 0.
        CLEAR t376.
      ELSE.
        IF t379 > t380 - t378.
          t379 = t380 - t378.
        ENDIF.
        t376 = t377+t378(t379).
      ENDIF.
      DATA(t381) = |!|.
      t375 = xsdbool( t376 = t381 ).
      IF t375 = abap_true.
        DATA(t382) = VALUE string( ).
        DATA t383 TYPE string.
        DATA(t384) = t368.
        t383 = t384.
        DATA(t385) = VALUE string( ).
        DATA(t386) = t383.
        DATA(t387) = 1.
        DATA t388 TYPE i.
        DATA(t389) = t383.
        DATA(t390) = strlen( t389 ).
        t388 = t390.
        DATA(t391) = strlen( t386 ).
        IF t387 < 0.
          t387 = t387 + t391.
          IF t387 < 0.
            t387 = 0.
          ENDIF.
        ENDIF.
        IF t387 > t391 OR t388 <= 0.
          CLEAR t385.
        ELSE.
          IF t388 > t391 - t387.
            t388 = t391 - t387.
          ENDIF.
          t385 = t386+t387(t388).
        ENDIF.
        t382 = t385.
        t368 = t382.
      ENDIF.
      DATA(t392) = t368.
      t367 = t392.
      t363 = t367.
      DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t394) = CAST zcl_lnt_typed_identifier( t341 ).
      t393 = t394.
      t362->add_named_identifier( i_name = t363 i_identifier = t393 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d953_e9572af4f2dc.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
