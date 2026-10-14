* TS: src/abap/5_syntax/statements/export.ts:8:1 Export
CLASS zcl_lnt_sy_export DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_export IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t18 = t19->find_direct_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t18->items INTO t22.
      t21 ?= t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t24) = CAST zcl_lnt_expression_node( t21 ).
      DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
      t23 = zcl_lnt_sy_target=>run_syntax( i_node = t24 i_input_967e = t25 ).
    ENDLOOP.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t29) = |DATABASE|.
    t27 = t28->find_expression_after_token( i_text = t29 ).
    t26 = t27.
    DATA t30 TYPE abap_bool.
    DATA(t31) = CAST zcl_lnt_expression_node( t26 ).
    t30 = xsdbool( t31 IS BOUND ).
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_ddic.
      DATA t35 TYPE REF TO zcl_lnt_ddic.
      DATA t36 TYPE REF TO zcl_lnt_current_scope.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      DATA(t38) = CAST zcl_lnt_syntax_input( t2 ).
      t37 = t38->scope.
      t36 = t37.
      DATA t39 TYPE REF TO zcl_lnt_ddic.
      DATA t40 TYPE REF TO zif_lnt_registry.
      DATA(t41) = CAST zcl_lnt_current_scope( t36 ).
      t40 = t41->reg.
      t39 = NEW zcl_lnt_ddic( i_reg_f149 = t40 ).
      t35 = t39.
      t34 = t35.
      DATA t42 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = CAST zcl_lnt_ddic( t34 ).
      IF t44 IS INITIAL.
        t43 = abap_true.
      ENDIF.
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t45.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_ddic.
        DATA(t48) = CAST zcl_lnt_ddic( t34 ).
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE string.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          DATA(t54) = CAST zcl_lnt_expression_node( t26 ).
          t53 = t54.
          t52 = t53->concat_tokens( ).
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t52.
          t50 = t55.
        ELSE.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t50 = t56.
        ENDIF.
        t49 = t50.
        DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
        t59 = t60.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        t61 = t62.
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
        IF t64 IS INITIAL.
          t63 = abap_true.
        ELSEIF t64->has = abap_false.
          t63 = abap_true.
        ENDIF.
        t58 = t63.
        IF t58 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t66 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t67) = |undefined, lookupTableOrView|.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t66 = NEW zcl_lnt_unknown_type( i_error = t67 i_qualified_name = t68 ).
          DATA t69 TYPE REF TO zif_lnt_object.
          CLEAR t69.
          t65 = NEW zcl_lnt_ilookup_result( i_type_9913 = t66 i_object_19cd = t69 ).
          t57 = t65.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_table.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_table.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_object.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_registry.
          DATA(t75) = CAST zcl_lnt_ddic( t47 ).
          t74 = t75->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA(t78) = |TABL|.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t78.
            t76 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t76 = t80.
          ENDIF.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA t83 TYPE string.
            DATA(t84) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
            t83 = t84->value.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t83.
            t81 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t81 = t86.
          ENDIF.
          t73 = t74->get_object( i_type_9913 = t76 i_name = t81 ).
          DATA t87 TYPE REF TO object.
          t87 = t73.
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t88.
          DATA t89 TYPE abap_bool.
          DATA(t90) = CAST zcl_lnt_table( t71 ).
          t89 = xsdbool( t90 IS BOUND ).
          IF t89 = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t92 TYPE REF TO zcl_lnt_abstract_type.
            DATA t93 TYPE REF TO zcl_lnt_table.
            DATA(t94) = CAST zcl_lnt_table( t71 ).
            t93 = t94.
            DATA t95 TYPE REF TO zif_lnt_registry.
            DATA(t96) = CAST zcl_lnt_ddic( t47 ).
            t95 = t96->reg.
            t92 = t93->parse_type( i_reg_f149 = t95 ).
            DATA t97 TYPE REF TO zcl_lnt_table.
            DATA(t98) = CAST zcl_lnt_table( t71 ).
            t97 = t98.
            t91 = NEW zcl_lnt_ilookup_result( i_type_9913 = t92 i_object_19cd = t97 ).
            t88 = t91.
          ELSE.
            DATA t99 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t99.
            DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t100.
            DATA t101 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t101.
            DATA(t102) = CAST zcl_lnt_ddic( t47 ).
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA(t104) = abap_true.
            IF t104 = abap_true.
              DATA t105 TYPE string.
              DATA(t106) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
              t105 = t106->value.
              DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t107->has = abap_true.
              t107->value = t105.
              t103 = t107.
            ELSE.
              DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t108.
              t103 = t108.
            ENDIF.
            t101 = t102->lookup_ddls( i_name = t103 ).
            t100 = t101.
            DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t109.
            DATA t110 TYPE abap_bool.
            DATA(t111) = CAST zcl_lnt_ilookup_result( t100 ).
            t110 = xsdbool( t111 IS BOUND ).
            IF t110 = abap_true.
              DATA t112 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t113) = CAST zcl_lnt_ilookup_result( t100 ).
              t112 = t113.
              t109 = t112.
            ELSE.
              DATA t114 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t114.
              DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t115.
              DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t116.
              DATA(t117) = abap_true.
              IF t117 = abap_true.
                DATA t118 TYPE string.
                DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
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
              t115 = t116.
              DATA t122 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t122.
              DATA(t123) = VALUE abap_bool( ).
              DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t125) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
              t124 = t125.
              DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t127.
              t126 = t127.
              DATA(t128) = VALUE abap_bool( ).
              DATA(t129) = CAST zlnt_runtime_opti_4ba3bdccd169( t124 ).
              IF t129 IS INITIAL.
                t128 = abap_true.
              ELSEIF t129->has = abap_false.
                t128 = abap_true.
              ENDIF.
              t123 = t128.
              IF t123 = abap_true.
                DATA t130 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t131 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t132) = |undefined, lookupView|.
                DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t133.
                t131 = NEW zcl_lnt_unknown_type( i_error = t132 i_qualified_name = t133 ).
                DATA t134 TYPE REF TO zif_lnt_object.
                CLEAR t134.
                t130 = NEW zcl_lnt_ilookup_result( i_type_9913 = t131 i_object_19cd = t134 ).
                t122 = t130.
              ELSE.
                DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t135.
                DATA t136 TYPE REF TO zcl_lnt_table.
                CLEAR t136.
                DATA t137 TYPE REF TO zcl_lnt_table.
                CLEAR t137.
                DATA t138 TYPE REF TO zif_lnt_object.
                CLEAR t138.
                DATA t139 TYPE REF TO zif_lnt_registry.
                DATA(t140) = CAST zcl_lnt_ddic( t47 ).
                t139 = t140->reg.
                DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t141.
                DATA(t142) = abap_true.
                IF t142 = abap_true.
                  DATA(t143) = |VIEW|.
                  DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t144->has = abap_true.
                  t144->value = t143.
                  t141 = t144.
                ELSE.
                  DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t145.
                  t141 = t145.
                ENDIF.
                DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t146.
                DATA(t147) = abap_true.
                IF t147 = abap_true.
                  DATA t148 TYPE string.
                  DATA(t149) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
                  t148 = t149->value.
                  DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t150->has = abap_true.
                  t150->value = t148.
                  t146 = t150.
                ELSE.
                  DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t151.
                  t146 = t151.
                ENDIF.
                t138 = t139->get_object( i_type_9913 = t141 i_name = t146 ).
                DATA t152 TYPE REF TO object.
                t152 = t138.
                t137 ?= t152.
                t136 = t137.
                DATA t153 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t153.
                DATA t154 TYPE abap_bool.
                DATA(t155) = CAST zcl_lnt_table( t136 ).
                t154 = xsdbool( t155 IS BOUND ).
                IF t154 = abap_true.
                  DATA t156 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t157 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t158 TYPE REF TO zcl_lnt_table.
                  DATA(t159) = CAST zcl_lnt_table( t136 ).
                  t158 = t159.
                  DATA t160 TYPE REF TO zif_lnt_registry.
                  DATA(t161) = CAST zcl_lnt_ddic( t47 ).
                  t160 = t161->reg.
                  t157 = t158->parse_type( i_reg_f149 = t160 ).
                  DATA t162 TYPE REF TO zcl_lnt_table.
                  DATA(t163) = CAST zcl_lnt_table( t136 ).
                  t162 = t163.
                  t156 = NEW zcl_lnt_ilookup_result( i_type_9913 = t157 i_object_19cd = t162 ).
                  t153 = t156.
                ELSE.
                  DATA t164 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t164.
                  DATA t165 TYPE abap_bool.
                  DATA t166 TYPE REF TO zif_lnt_registry.
                  DATA(t167) = CAST zcl_lnt_ddic( t47 ).
                  t166 = t167->reg.
                  DATA t168 TYPE string.
                  DATA(t169) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
                  t168 = t169->value.
                  t165 = t166->in_error_namespace( i_name = t168 ).
                  IF t165 = abap_true.
                    DATA t170 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t171 TYPE REF TO zcl_lnt_unknown_type.
                    DATA t172 TYPE string.
                    DATA t173 TYPE string.
                    DATA(t174) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
                    t173 = t174->value.
                    DATA(t175) = | not found, lookupView|.
                    DATA(t176) = strlen( t173 ).
                    t172 = |{ t173 }{ t175 }|.
                    DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t177.
                    t171 = NEW zcl_lnt_unknown_type( i_error = t172 i_qualified_name = t177 ).
                    DATA t178 TYPE REF TO zif_lnt_object.
                    CLEAR t178.
                    t170 = NEW zcl_lnt_ilookup_result( i_type_9913 = t171 i_object_19cd = t178 ).
                    t164 = t170.
                  ELSE.
                    DATA t179 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t179.
                    DATA t180 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t180.
                    DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t181.
                    DATA(t182) = abap_true.
                    IF t182 = abap_true.
                      DATA t183 TYPE string.
                      DATA(t184) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
                      t183 = t184->value.
                      DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t185->has = abap_true.
                      t185->value = t183.
                      t181 = t185.
                    ELSE.
                      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t186.
                      t181 = t186.
                    ENDIF.
                    DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t187.
                    t180 = zcl_lnt_void_type=>get_db65( i_voided = t181 i_qualified_name = t187 ).
                    DATA t188 TYPE REF TO zif_lnt_object.
                    CLEAR t188.
                    t179 = NEW zcl_lnt_ilookup_result( i_type_9913 = t180 i_object_19cd = t188 ).
                    t164 = t179.
                  ENDIF.
                  t153 = t164.
                ENDIF.
                t135 = t153.
                t122 = t135.
              ENDIF.
              t114 = t122.
              t109 = t114.
            ENDIF.
            t99 = t109.
            t88 = t99.
          ENDIF.
          t70 = t88.
          t57 = t70.
        ENDIF.
        t46 = t57.
        t42 = t46.
      ENDIF.
      t33 = t42.
      t32 = t33.
      DATA t189 TYPE abap_bool.
      DATA t190 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t191) = CAST zcl_lnt_ilookup_result( t32 ).
      t190 = t191.
      t189 = xsdbool( t190 IS BOUND ).
      IF t189 = abap_true.
        DATA t192 TYPE REF TO zif_lnt_ddic_references.
        DATA t193 TYPE REF TO zcl_lnt_current_scope.
        DATA t194 TYPE REF TO zcl_lnt_current_scope.
        DATA(t195) = CAST zcl_lnt_syntax_input( t2 ).
        t194 = t195->scope.
        t193 = t194.
        DATA t196 TYPE REF TO zif_lnt_ddic_references.
        DATA t197 TYPE REF TO zif_lnt_registry.
        DATA(t198) = CAST zcl_lnt_current_scope( t193 ).
        t197 = t198->reg.
        t196 = t197->get_ddic_references( ).
        t192 = t196.
        DATA t199 TYPE REF TO zif_lnt_object.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        DATA t201 TYPE REF TO zcl_lnt_current_scope.
        DATA(t202) = CAST zcl_lnt_syntax_input( t2 ).
        t201 = t202->scope.
        t200 = t201.
        DATA t203 TYPE REF TO zif_lnt_object.
        DATA(t204) = CAST zcl_lnt_current_scope( t200 ).
        t203 = t204->parent_obj.
        t199 = t203.
        DATA t205 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t205.
        DATA(t206) = abap_true.
        IF t206 = abap_true.
          DATA t207 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t208 TYPE REF TO zif_lnt_object.
          DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t210) = CAST zcl_lnt_ilookup_result( t32 ).
          t209 = t210.
          t208 = t209->object_a393.
          DATA t211 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t211.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          t207 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t208 i_token = t211 i_filename = t212 ).
          t205 = t207.
        ELSE.
          DATA t213 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t213.
          t205 = t213.
        ENDIF.
        t192->add_using( i_obj_1ed0 = t199 i_using = t205 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d875_b2cb8ea7b7ad.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
