* TS: src/abap/5_syntax/statements/update_database.ts:14:1 UpdateDatabase
CLASS zcl_lnt_sy_update_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_update_database IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t3 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_expression_node( t8 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t12 = xsdbool( t13 = abap_false ).
    t7 = t12.
    IF t7 = abap_true.
      DATA t15 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t16 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t18) = CAST zcl_lnt_expression_node( t3 ).
      t17 = t18.
      DATA(t19) = CAST zcl_lnt_syntax_input( t2 ).
      t16 = zcl_lnt_sy_database_table=>run_syntax( i_node = t17 i_input_967e = t19 ).
      t15 = t16.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t28) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d292_48e50b6486bc ).
      t27 = t28->find_all_expressions( i_type_9913 = t29 ).
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      LOOP AT t27->items INTO t31.
        t30 ?= t31.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t33) = CAST zcl_lnt_expression_node( t30 ).
        DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
        t32 = t33->find_direct_expressions( i_type_9913 = t34 ).
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        LOOP AT t32->items INTO t36.
          t35 ?= t36.
          DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
          DATA(t38) = CAST zcl_lnt_expression_node( t35 ).
          APPEND t38 TO t37->items.
        ENDLOOP.
      ENDLOOP.
      DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
      t24 = t39.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      LOOP AT t24->items INTO t41.
        t40 ?= t41.
        DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t22 ).
        DATA t43 TYPE string.
        DATA t44 TYPE string.
        DATA(t45) = CAST zcl_lnt_expression_node( t40 ).
        t44 = t45->concat_tokens(  ).
        DATA(t46) = strlen( t44 ).
        t43 = t44.
        IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t43 TO UPPER CASE.
        ELSE.
          t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
        ENDIF.
        APPEND t43 TO t42->items.
      ENDLOOP.
      DATA(t47) = CAST zlnt_runtime_arra_8ecd6afe19e0( t22 ).
      t21 = t47.
      t20 = t21.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t51 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t51.
      t50 = t51.
      DATA t52 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t54 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t54.
      t53 = t54.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t56) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463 ).
      t55 = t56->find_all_expressions( i_type_9913 = t57 ).
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      LOOP AT t55->items INTO t59.
        t58 ?= t59.
        DATA(t60) = CAST zlnt_runtime_arra_a3200b8dc4ad( t53 ).
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        DATA(t66) = CAST zcl_lnt_expression_node( t58 ).
        DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
        t65 = t66->find_direct_expression( i_type_9913 = t67 ).
        t64 = t65.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = CAST zcl_lnt_expression_node( t64 ).
        IF t70 IS INITIAL.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t68 = t71.
        ELSE.
          DATA t72 TYPE string.
          DATA t73 TYPE REF TO zcl_lnt_expression_node.
          DATA(t74) = CAST zcl_lnt_expression_node( t64 ).
          t73 = t74.
          t72 = t73->concat_tokens(  ).
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t72.
          t68 = t75.
        ENDIF.
        t63 = t68.
        t62 = t63.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = CAST zlnt_runtime_opti_4ba3bdccd169( t62 ).
        IF t78 IS INITIAL.
          t77 = abap_true.
        ELSEIF t78->has = abap_false.
          t77 = abap_true.
        ENDIF.
        IF t77 = abap_true.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          t76 = t79.
        ELSE.
          DATA t80 TYPE string.
          DATA t81 TYPE string.
          DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t62 ).
          t81 = t82->value.
          DATA(t83) = strlen( t81 ).
          t80 = t81.
          IF t80 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t80 TO UPPER CASE.
          ELSE.
            t80 = zlnt_runtime_uppe_91169605024d=>full( t80 ).
          ENDIF.
          DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t84->has = abap_true.
          t84->value = t80.
          t76 = t84.
        ENDIF.
        t61 = t76.
        APPEND t61 TO t60->items.
      ENDLOOP.
      DATA(t85) = CAST zlnt_runtime_arra_a3200b8dc4ad( t53 ).
      t52 = t85.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      LOOP AT t52->items INTO t86.
        DATA(t87) = VALUE abap_bool( ).
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t89) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
        t88 = t89.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        t90 = t91.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = VALUE abap_bool( ).
        DATA(t94) = CAST zlnt_runtime_opti_4ba3bdccd169( t88 ).
        IF t94 IS INITIAL.
          t93 = abap_true.
        ELSEIF t94->has = abap_false.
          t93 = abap_true.
        ENDIF.
        t92 = xsdbool( t93 = abap_false ).
        t87 = t92.
        IF t87 = abap_true.
          DATA(t95) = CAST zlnt_runtime_arra_a3200b8dc4ad( t50 ).
          DATA(t96) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
          APPEND t96 TO t95->items.
        ENDIF.
      ENDLOOP.
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t98) = CAST zlnt_runtime_arra_a3200b8dc4ad( t50 ).
      CREATE OBJECT t97.
      LOOP AT t98->items INTO DATA(t99).
        IF t99 IS NOT BOUND OR t99->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t99->value TO t97->items.
      ENDLOOP.
      t49 = t97.
      DATA(t100) = VALUE string( ).
      LOOP AT t49->items INTO t100.
        DATA(t101) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
        DATA(t102) = t100.
        APPEND t102 TO t101->items.
      ENDLOOP.
      DATA t103 TYPE i.
      DATA(t104) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      t103 = lines( t104->items ).
      t48 = t103.
      DATA(t105) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA t106 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t107 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t108 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CREATE OBJECT t108.
      t107 = t108.
      DATA(t109) = CAST zlnt_runtime_arra_b72089862d0f( t107 ).
      DATA(t110) = CAST zif_lnt_union_c74a232f( t15 ).
      APPEND t110 TO t109->items.
      DATA(t111) = CAST zlnt_runtime_arra_b72089862d0f( t107 ).
      t106 = t111.
      DATA(t112) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t113 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t114) = CAST zcl_lnt_statement_node( t1 ).
      t113 = t114->get_first_token(  ).
      zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t105 i_db_sources = t106 i_input_967e = t112 i_token = t113 ).
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    DATA t116 TYPE REF TO zcl_lnt_expression_node.
    DATA(t117) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    t116 = t117->find_direct_expression( i_type_9913 = t118 ).
    t115 = t116.
    DATA t119 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t120.
    DATA t121 TYPE REF TO zcl_lnt_expression_node.
    DATA(t122) = CAST zcl_lnt_expression_node( t115 ).
    t121 = t122.
    DATA t123 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = CAST zcl_lnt_expression_node( t121 ).
    IF t125 IS INITIAL.
      t124 = abap_true.
    ENDIF.
    IF t124 = abap_true.
      DATA t126 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t126.
      t123 = t126.
    ELSE.
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      DATA t128 TYPE REF TO zcl_lnt_expression_node.
      DATA(t129) = CAST zcl_lnt_expression_node( t121 ).
      t128 = t129.
      t127 = t128->get_first_token(  ).
      t123 = t127.
    ENDIF.
    t120 = t123.
    t119 = t120.
    DATA t130 TYPE abap_bool.
    DATA t131 TYPE abap_bool.
    DATA(t132) = CAST zcl_lnt_expression_node( t115 ).
    t131 = xsdbool( t132 IS BOUND ).
    t130 = t131.
    IF t131 = abap_true.
      DATA t133 TYPE abap_bool.
      DATA(t134) = CAST zcl_lnt_abstract_token( t119 ).
      t133 = xsdbool( t134 IS BOUND ).
      t130 = t133.
    ENDIF.
    IF t130 = abap_true.
      DATA t135 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t135.
      DATA t136 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_ddic.
      DATA t138 TYPE REF TO zcl_lnt_current_scope.
      DATA t139 TYPE REF TO zcl_lnt_current_scope.
      DATA(t140) = CAST zcl_lnt_syntax_input( t2 ).
      t139 = t140->scope.
      t138 = t139.
      DATA t141 TYPE REF TO zcl_lnt_ddic.
      DATA t142 TYPE REF TO zif_lnt_registry.
      DATA(t143) = CAST zcl_lnt_current_scope( t138 ).
      t142 = t143->reg.
      t141 = NEW zcl_lnt_ddic( i_reg_f149 = t142 ).
      t137 = t141.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA t146 TYPE string.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t149) = CAST zcl_lnt_abstract_token( t119 ).
        t148 = t149.
        t147 = t148.
        DATA t150 TYPE string.
        DATA(t151) = CAST zcl_lnt_abstract_token( t147 ).
        t150 = t151->str.
        t146 = t150.
        DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t152->has = abap_true.
        t152->value = t146.
        t144 = t152.
      ELSE.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        t144 = t153.
      ENDIF.
      t136 = t137->lookup_table( i_name = t144 ).
      t135 = t136.
      DATA t154 TYPE abap_bool.
      DATA(t155) = CAST zcl_lnt_abstract_type( t135 ).
      t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t154 = abap_true.
        DATA t156 TYPE REF TO zcl_lnt_current_scope.
        DATA t157 TYPE REF TO zcl_lnt_current_scope.
        DATA(t158) = CAST zcl_lnt_syntax_input( t2 ).
        t157 = t158->scope.
        t156 = t157.
        DATA t159 TYPE REF TO zcl_lnt_position.
        DATA t160 TYPE REF TO zcl_lnt_position.
        DATA t161 TYPE REF TO zcl_lnt_abstract_token.
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t163) = CAST zcl_lnt_abstract_token( t119 ).
        t162 = t163.
        t161 = t162.
        DATA t164 TYPE REF TO zcl_lnt_position.
        DATA(t165) = CAST zcl_lnt_abstract_token( t161 ).
        t164 = t165->start.
        t160 = t164.
        t159 = t160.
        DATA t166 TYPE string.
        DATA t167 TYPE string.
        DATA(t168) = CAST zcl_lnt_syntax_input( t2 ).
        t167 = t168->filename.
        t166 = t167.
        DATA t169 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t170 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t171) = |open_sql|.
        DATA(t172) = |UPDATE|.
        DATA(t173) = t166.
        DATA(t174) = CAST zcl_lnt_position( t159 ).
        DATA t175 TYPE REF TO zcl_lnt_position.
        CLEAR t175.
        t170 = NEW zcl_lnt_iscope_identifier( i_stype = t171 i_sname = t172 i_filename = t173 i_start = t174 i_end = t175 ).
        t169 = t170.
        DATA(t176) = VALUE abap_bool( ).
        DATA t177 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t178 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t179) = CAST zcl_lnt_current_scope( t156 ).
        t178 = t179->current.
        t177 = t178.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        t180 = t181.
        DATA(t182) = VALUE abap_bool( ).
        DATA(t183) = CAST zcl_lnt_spaghetti_scope_node( t177 ).
        IF t183 IS INITIAL.
          t182 = abap_true.
        ENDIF.
        t176 = t182.
        IF t176 = abap_true.
          DATA(t184) = CAST zcl_lnt_current_scope( t156 ).
          DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t185.
          DATA(t186) = abap_true.
          IF t186 = abap_true.
            DATA t187 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t188) = CAST zcl_lnt_iscope_identifier( t169 ).
            DATA t189 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t189.
            t187 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t188 i_parent = t189 ).
            t185 = t187.
          ELSE.
            DATA t190 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t190.
            t185 = t190.
          ENDIF.
          t184->current = t185.
        ELSE.
          DATA t191 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t194) = CAST zcl_lnt_current_scope( t156 ).
          t193 = t194->current.
          t192 = t193.
          t191 = t192.
          DATA(t195) = CAST zcl_lnt_current_scope( t156 ).
          DATA t196 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t196.
          DATA(t197) = abap_true.
          IF t197 = abap_true.
            DATA t198 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t198.
            DATA(t199) = CAST zcl_lnt_iscope_identifier( t169 ).
            DATA t200 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t200.
            DATA(t201) = abap_true.
            IF t201 = abap_true.
              DATA(t202) = CAST zcl_lnt_spaghetti_scope_node( t191 ).
              t200 = t202.
            ELSE.
              DATA t203 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t203.
              t200 = t203.
            ENDIF.
            t198 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t199 i_parent = t200 ).
            t196 = t198.
          ELSE.
            DATA t204 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t204.
            t196 = t204.
          ENDIF.
          t195->current = t196.
          DATA(t205) = CAST zcl_lnt_spaghetti_scope_node( t191 ).
          DATA t206 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t207 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t208) = CAST zcl_lnt_current_scope( t156 ).
          t207 = t208->current.
          t206 = t207.
          t205->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t206 ).
        ENDIF.
        DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t210 TYPE REF TO zcl_lnt_structure_type.
        DATA t211 TYPE REF TO zcl_lnt_structure_type.
        DATA(t212) = CAST zcl_lnt_abstract_type( t135 ).
        t211 ?= t212.
        t210 = t211.
        DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t214) = CAST zcl_lnt_structure_type( t210 ).
        t213 = t214->components.
        t209 = t213.
        DATA t215 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t215.
        DATA t216 TYPE REF TO object.
        CLEAR t216.
        LOOP AT t209->items INTO t216.
          t215 ?= t216.
          DATA t217 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t218 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t219 TYPE REF TO zcl_lnt_position.
          DATA t220 TYPE REF TO zcl_lnt_abstract_token.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t222) = CAST zcl_lnt_statement_node( t1 ).
          t221 = t222->get_first_token(  ).
          t220 = t221.
          DATA t223 TYPE REF TO zcl_lnt_position.
          DATA(t224) = CAST zcl_lnt_abstract_token( t220 ).
          t223 = t224->start.
          t219 = t223.
          DATA t225 TYPE string.
          DATA(t226) = CAST zcl_lnt_istructure_component( t215 ).
          t225 = t226->name.
          t218 = NEW zcl_lnt_lx_identifier( i_start = t219 i_str = t225 ).
          t217 = t218.
          DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t229) = CAST zcl_lnt_lx_identifier( t217 ).
          DATA t230 TYPE string.
          DATA(t231) = CAST zcl_lnt_syntax_input( t2 ).
          t230 = t231->filename.
          DATA t232 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t233) = CAST zcl_lnt_istructure_component( t215 ).
          t232 = t233->type_cba0.
          DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t234.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          t228 = NEW zcl_lnt_typed_identifier( i_token = t229 i_filename = t230 i_type_9913 = t232 i_meta = t234 i_value = t235 ).
          t227 = t228.
          DATA t236 TYPE REF TO zcl_lnt_current_scope.
          DATA t237 TYPE REF TO zcl_lnt_current_scope.
          DATA(t238) = CAST zcl_lnt_syntax_input( t2 ).
          t237 = t238->scope.
          t236 = t237.
          DATA t239 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t239.
          DATA t240 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t240.
          DATA(t241) = abap_true.
          IF t241 = abap_true.
            DATA(t242) = CAST zcl_lnt_typed_identifier( t227 ).
            t240 = t242.
          ELSE.
            DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t243.
            t240 = t243.
          ENDIF.
          t239 = t240.
          DATA(t244) = VALUE abap_bool( ).
          DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t246) = CAST zcl_lnt_typed_identifier( t239 ).
          t245 = t246.
          DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          t247 = t248.
          DATA(t249) = VALUE abap_bool( ).
          DATA(t250) = CAST zcl_lnt_typed_identifier( t245 ).
          IF t250 IS INITIAL.
            t249 = abap_true.
          ENDIF.
          t244 = t249.
          IF t244 = abap_true.
          ELSE.
            DATA(t251) = CAST zcl_lnt_current_scope( t236 ).
            DATA(t252) = VALUE string( ).
            DATA t253 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t255) = CAST zcl_lnt_typed_identifier( t239 ).
            t254 = t255.
            t253 = t254.
            DATA(t256) = VALUE string( ).
            DATA t257 TYPE string.
            DATA t258 TYPE string.
            DATA t259 TYPE REF TO zcl_lnt_abstract_token.
            DATA t260 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t261) = CAST zcl_lnt_fi_identifier( t253 ).
            t260 = t261->token.
            t259 = t260.
            DATA t262 TYPE string.
            DATA(t263) = CAST zcl_lnt_abstract_token( t259 ).
            t262 = t263->str.
            t258 = t262.
            t257 = t258.
            DATA(t264) = VALUE abap_bool( ).
            DATA(t265) = VALUE string( ).
            DATA(t266) = t257.
            DATA(t267) = 0.
            DATA(t268) = 1.
            DATA(t269) = strlen( t266 ).
            IF t267 < 0.
              t267 = t267 + t269.
              IF t267 < 0.
                t267 = 0.
              ENDIF.
            ENDIF.
            IF t267 > t269 OR t268 <= 0.
              CLEAR t265.
            ELSE.
              IF t268 > t269 - t267.
                t268 = t269 - t267.
              ENDIF.
              t265 = t266+t267(t268).
            ENDIF.
            DATA(t270) = |!|.
            t264 = xsdbool( t265 = t270 ).
            IF t264 = abap_true.
              DATA(t271) = VALUE string( ).
              DATA t272 TYPE string.
              DATA(t273) = t257.
              t272 = t273.
              DATA(t274) = VALUE string( ).
              DATA(t275) = t272.
              DATA(t276) = 1.
              DATA t277 TYPE i.
              DATA(t278) = t272.
              DATA(t279) = strlen( t278 ).
              t277 = t279.
              DATA(t280) = strlen( t275 ).
              IF t276 < 0.
                t276 = t276 + t280.
                IF t276 < 0.
                  t276 = 0.
                ENDIF.
              ENDIF.
              IF t276 > t280 OR t277 <= 0.
                CLEAR t274.
              ELSE.
                IF t277 > t280 - t276.
                  t277 = t280 - t276.
                ENDIF.
                t274 = t275+t276(t277).
              ENDIF.
              t271 = t274.
              t257 = t271.
            ENDIF.
            DATA(t281) = t257.
            t256 = t281.
            t252 = t256.
            DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t283) = CAST zcl_lnt_typed_identifier( t239 ).
            t282 = t283.
            t251->add_named_identifier( i_name = t252 i_identifier = t282 ).
          ENDIF.
        ENDLOOP.
      ENDIF.
    ENDIF.
    DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t285) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t286) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t284 = t285->find_all_expressions( i_type_9913 = t286 ).
    DATA t287 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t287.
    DATA t288 TYPE REF TO object.
    CLEAR t288.
    LOOP AT t284->items INTO t288.
      t287 ?= t288.
      DATA t289 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t289.
      DATA t290 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t290.
      DATA(t291) = abap_true.
      IF t291 = abap_true.
        DATA(t292) = CAST zcl_lnt_expression_node( t287 ).
        t290 = t292.
      ELSE.
        DATA t293 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t293.
        t290 = t293.
      ENDIF.
      DATA(t294) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t295 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t295.
      DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t297.
      DATA t298 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t298.
      t289 = zcl_lnt_sy_source=>run_syntax( i_node = t290 i_input_967e = t294 i_target_type = t295 i_write_reference = t296 i_allow_generic_deference = t297 i_read_reference = t298 ).
    ENDLOOP.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t300) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t299 = t300->find_all_expressions( i_type_9913 = t301 ).
    DATA t302 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t302.
    DATA t303 TYPE REF TO object.
    CLEAR t303.
    LOOP AT t299->items INTO t303.
      t302 ?= t303.
      DATA t304 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t304.
      DATA t305 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t305.
      DATA(t306) = abap_true.
      IF t306 = abap_true.
        DATA(t307) = CAST zcl_lnt_expression_node( t302 ).
        t305 = t307.
      ELSE.
        DATA t308 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t308.
        t305 = t308.
      ENDIF.
      DATA(t309) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t310 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t310.
      DATA t311 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t311.
      DATA t312 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t312.
      DATA t313 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t313.
      t304 = zcl_lnt_sy_source=>run_syntax( i_node = t305 i_input_967e = t309 i_target_type = t310 i_write_reference = t311 i_allow_generic_deference = t312 i_read_reference = t313 ).
    ENDLOOP.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t315) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t316) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t314 = t315->find_all_expressions( i_type_9913 = t316 ).
    DATA t317 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t317.
    DATA t318 TYPE REF TO object.
    CLEAR t318.
    LOOP AT t314->items INTO t318.
      t317 ?= t318.
      DATA(t319) = CAST zcl_lnt_expression_node( t317 ).
      DATA(t320) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t319 i_input_967e = t320 ).
    ENDLOOP.
    DATA t321 TYPE abap_bool.
    DATA t322 TYPE string.
    DATA t323 TYPE REF TO zcl_lnt_current_scope.
    DATA(t324) = CAST zcl_lnt_syntax_input( t2 ).
    t323 = t324->scope.
    t322 = t323->get_type(  ).
    DATA(t325) = |open_sql|.
    t321 = xsdbool( t322 = t325 ).
    IF t321 = abap_true.
      DATA t326 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t326.
      DATA t327 TYPE REF TO zcl_lnt_current_scope.
      DATA(t328) = CAST zcl_lnt_syntax_input( t2 ).
      t327 = t328->scope.
      DATA t329 TYPE REF TO zcl_lnt_position.
      CLEAR t329.
      DATA t330 TYPE REF TO zcl_lnt_abstract_token.
      DATA t331 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t332) = CAST zcl_lnt_statement_node( t1 ).
      t331 = t332->get_last_token(  ).
      t330 = t331.
      DATA t333 TYPE REF TO zcl_lnt_position.
      CLEAR t333.
      DATA t334 TYPE int8.
      DATA t335 TYPE REF TO zcl_lnt_position.
      DATA t336 TYPE REF TO zcl_lnt_position.
      DATA(t337) = CAST zcl_lnt_abstract_token( t330 ).
      t336 = t337->start.
      t335 = t336.
      DATA t338 TYPE int8.
      DATA(t339) = CAST zcl_lnt_position( t335 ).
      t338 = t339->row.
      t334 = t338.
      DATA t340 TYPE int8.
      DATA t341 TYPE int8.
      DATA t342 TYPE REF TO zcl_lnt_position.
      DATA t343 TYPE REF TO zcl_lnt_position.
      DATA(t344) = CAST zcl_lnt_abstract_token( t330 ).
      t343 = t344->start.
      t342 = t343.
      DATA t345 TYPE int8.
      DATA(t346) = CAST zcl_lnt_position( t342 ).
      t345 = t346->col.
      t341 = t345.
      DATA t347 TYPE int8.
      DATA t348 TYPE i.
      DATA t349 TYPE string.
      DATA(t350) = CAST zcl_lnt_abstract_token( t330 ).
      t349 = t350->str.
      DATA(t351) = strlen( t349 ).
      t348 = t351.
      t347 = t348.
      t340 = t341 + t347.
      IF t340 < range_int8_bound_min OR t340 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t333 = NEW zcl_lnt_position( i_row = t334 i_col = t340 ).
      t329 = t333.
      t326 = t327->pop( i_end = t329 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d960_86c6c4bba2f7.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
