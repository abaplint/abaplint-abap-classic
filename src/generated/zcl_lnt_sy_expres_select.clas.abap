* TS: src/abap/5_syntax/expressions/select.ts:26:1 Select
CLASS zcl_lnt_sy_expres_select DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_skip_implicit_into TYPE REF TO zlnt_runtime_opti_7f2541396f43 i_select_loop_6767 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLASS-METHODS up_to_uses_host_variable IMPORTING i_up TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS build_up_to_rows_fix IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_up TYPE REF TO zcl_lnt_expression_node i_into_expression TYPE REF TO zcl_lnt_expression_node
    RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS is_strict_mode IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS strict_mode_checks IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS handle_into IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_db_sources TYPE REF TO
    zlnt_runtime_arra_b72089862d0f i_from TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    CLASS-METHODS count_result_type IMPORTING i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS build_structure_type IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO
    zcl_lnt_abstract_type.
    CLASS-METHODS build_table_type IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope i_from TYPE REF TO
    zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zif_lnt_union_89dd54d5.
    CLASS-METHODS build_database_source_infos IMPORTING i_from TYPE REF TO zcl_lnt_expression_node i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS find_field_type IMPORTING i_code TYPE string i_source_infos TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_fields IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_expres_select IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_skip_implicit_into ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_select_loop_6767 ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
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
      t3 = t7.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ELSEIF t13->has = abap_false.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = abap_false.
        DATA(t17) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t17->has = abap_true.
        t17->value = t16.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t18.
        t14 = t18.
      ENDIF.
      t4 = t14.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t21) = CAST zcl_lnt_expression_node( t1 ).
    t20 = t21->get_first_token(  ).
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
    t23 = t24->find_direct_expression( i_type_9913 = t25 ).
    t22 = t23.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = CAST zcl_lnt_expression_node( t22 ).
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_expression_node( t27 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA(t34) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
      t33 = t34->find_first_expression( i_type_9913 = t35 ).
      t22 = t33.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLEAR t37.
    DATA t38 TYPE abap_bool.
    DATA(t39) = CAST zcl_lnt_expression_node( t22 ).
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA(t42) = CAST zcl_lnt_expression_node( t22 ).
      t41 = t42.
      DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
      t40 = zcl_lnt_sy_sql_from=>run_syntax( i_node = t41 i_input_967e = t43 ).
      t37 = t40.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CREATE OBJECT t44.
      t37 = t44.
    ENDIF.
    t36 = t37.
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t47) = CAST zcl_lnt_expression_node( t22 ).
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    t48 = t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = CAST zcl_lnt_expression_node( t46 ).
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    t45 = t50.
    IF t45 = abap_true.
      DATA t52 TYPE string.
      DATA(t53) = |Missing FROM|.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = CAST zcl_lnt_syntax_input( t2 ).
      t54 = t55->issues.
      DATA t56 TYPE REF TO zcl_lnt_issue.
      DATA(t57) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t58 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t59) = CAST zcl_lnt_expression_node( t1 ).
      t58 = t59->get_first_token(  ).
      DATA(t60) = t52.
      DATA t61 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t61.
      t56 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t57 i_token = t58 i_message_26cb = t60 i_fix = t61 ).
      APPEND t56 TO t54->items.
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t64) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t65) = CAST zcl_lnt_syntax_input( t2 ).
    t63 = zcl_lnt_sy_expres_select=>find_fields( i_node = t64 i_input_967e = t65 ).
    t62 = t63.
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE abap_bool.
    DATA t68 TYPE abap_bool.
    DATA t69 TYPE i.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t69 = lines( t70->items ).
    DATA(t71) = 0.
    t68 = xsdbool( t69 = t71 ).
    t67 = t68.
    IF t68 = abap_true.
      DATA(t72) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA(t75) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t76) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c ).
      t74 = t75->find_direct_expression( i_type_9913 = t76 ).
      t73 = t74.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t77 = t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = CAST zcl_lnt_expression_node( t73 ).
      IF t80 IS INITIAL.
        t79 = abap_true.
      ENDIF.
      t72 = t79.
      t67 = t72.
    ENDIF.
    t66 = t67.
    IF t67 = abap_true.
      DATA(t81) = VALUE abap_bool( ).
      DATA t82 TYPE REF TO zcl_lnt_expression_node.
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      DATA(t84) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t85) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
      t83 = t84->find_direct_expression( i_type_9913 = t85 ).
      t82 = t83.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t86 = t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = CAST zcl_lnt_expression_node( t82 ).
      IF t89 IS INITIAL.
        t88 = abap_true.
      ENDIF.
      t81 = t88.
      t66 = t81.
    ENDIF.
    IF t66 = abap_true.
      DATA t90 TYPE string.
      DATA(t91) = |SELECT: fields missing|.
      t90 = t91.
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t93) = CAST zcl_lnt_syntax_input( t2 ).
      t92 = t93->issues.
      DATA t94 TYPE REF TO zcl_lnt_issue.
      DATA(t95) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t96 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t97) = CAST zcl_lnt_expression_node( t1 ).
      t96 = t97->get_first_token(  ).
      DATA(t98) = t90.
      DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t99.
      t94 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t95 i_token = t96 i_message_26cb = t98 i_fix = t99 ).
      APPEND t94 TO t92->items.
      RETURN.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    t101 = t102.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    DATA t104 TYPE REF TO zcl_lnt_shape_14fea903.
    CLEAR t104.
    DATA t105 TYPE REF TO object.
    CLEAR t105.
    LOOP AT t103->items INTO t105.
      t104 ?= t105.
      DATA(t106) = CAST zlnt_runtime_arra_8ecd6afe19e0( t101 ).
      DATA t107 TYPE string.
      DATA(t108) = CAST zcl_lnt_shape_14fea903( t104 ).
      t107 = t108->code.
      APPEND t107 TO t106->items.
    ENDLOOP.
    DATA(t109) = CAST zlnt_runtime_arra_8ecd6afe19e0( t101 ).
    t100 = t109.
    DATA(t110) = CAST zlnt_runtime_arra_b72089862d0f( t36 ).
    DATA(t111) = CAST zcl_lnt_syntax_input( t2 ).
    DATA t112 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t113) = CAST zcl_lnt_expression_node( t1 ).
    t112 = t113->get_first_token(  ).
    zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t100 i_db_sources = t110 i_input_967e = t111 i_token = t112 ).
    DATA t114 TYPE REF TO zcl_lnt_expression_node.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    DATA(t116) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t117) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    DATA(t119) = CAST zlnt_runtime_arra_b72089862d0f( t36 ).
    DATA t120 TYPE REF TO zcl_lnt_expression_node.
    DATA(t121) = CAST zcl_lnt_expression_node( t22 ).
    t120 = t121.
    t115 = zcl_lnt_sy_expres_select=>handle_into( i_node = t116 i_input_967e = t117 i_fields_62af = t118 i_db_sources = t119 i_from = t120 ).
    t114 = t115.
    DATA t122 TYPE REF TO zcl_lnt_expression_node.
    DATA t123 TYPE REF TO zcl_lnt_expression_node.
    DATA(t124) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t125) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d296_6b49712a4964 ).
    t123 = t124->find_direct_expression( i_type_9913 = t125 ).
    t122 = t123.
    DATA t126 TYPE abap_bool.
    DATA(t127) = CAST zcl_lnt_expression_node( t122 ).
    t126 = xsdbool( t127 IS BOUND ).
    IF t126 = abap_true.
      DATA t128 TYPE REF TO zcl_lnt_current_scope.
      DATA t129 TYPE REF TO zcl_lnt_current_scope.
      DATA(t130) = CAST zcl_lnt_syntax_input( t2 ).
      t129 = t130->scope.
      t128 = t129.
      DATA t131 TYPE REF TO zcl_lnt_position.
      DATA t132 TYPE REF TO zcl_lnt_position.
      DATA t133 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t134) = CAST zcl_lnt_abstract_token( t19 ).
      t133 = t134.
      DATA t135 TYPE REF TO zcl_lnt_position.
      DATA(t136) = CAST zcl_lnt_abstract_token( t133 ).
      t135 = t136->start.
      t132 = t135.
      t131 = t132.
      DATA t137 TYPE string.
      DATA t138 TYPE string.
      DATA(t139) = CAST zcl_lnt_syntax_input( t2 ).
      t138 = t139->filename.
      t137 = t138.
      DATA t140 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t141 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t142) = |open_sql|.
      DATA(t143) = |SELECT|.
      DATA(t144) = t137.
      DATA(t145) = CAST zcl_lnt_position( t131 ).
      DATA t146 TYPE REF TO zcl_lnt_position.
      CLEAR t146.
      t141 = NEW zcl_lnt_iscope_identifier( i_stype = t142 i_sname = t143 i_filename = t144 i_start = t145 i_end = t146 ).
      t140 = t141.
      DATA(t147) = VALUE abap_bool( ).
      DATA t148 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t149 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t150) = CAST zcl_lnt_current_scope( t128 ).
      t149 = t150->current.
      t148 = t149.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      t151 = t152.
      DATA(t153) = VALUE abap_bool( ).
      DATA(t154) = CAST zcl_lnt_spaghetti_scope_node( t148 ).
      IF t154 IS INITIAL.
        t153 = abap_true.
      ENDIF.
      t147 = t153.
      IF t147 = abap_true.
        DATA(t155) = CAST zcl_lnt_current_scope( t128 ).
        DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t156.
        DATA(t157) = abap_true.
        IF t157 = abap_true.
          DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t159) = CAST zcl_lnt_iscope_identifier( t140 ).
          DATA t160 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t160.
          t158 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t159 i_parent = t160 ).
          t156 = t158.
        ELSE.
          DATA t161 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t161.
          t156 = t161.
        ENDIF.
        t155->current = t156.
      ELSE.
        DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t164 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t165) = CAST zcl_lnt_current_scope( t128 ).
        t164 = t165->current.
        t163 = t164.
        t162 = t163.
        DATA(t166) = CAST zcl_lnt_current_scope( t128 ).
        DATA t167 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t167.
        DATA(t168) = abap_true.
        IF t168 = abap_true.
          DATA t169 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t169.
          DATA(t170) = CAST zcl_lnt_iscope_identifier( t140 ).
          DATA t171 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t171.
          DATA(t172) = abap_true.
          IF t172 = abap_true.
            DATA(t173) = CAST zcl_lnt_spaghetti_scope_node( t162 ).
            t171 = t173.
          ELSE.
            DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t174.
            t171 = t174.
          ENDIF.
          t169 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t170 i_parent = t171 ).
          t167 = t169.
        ELSE.
          DATA t175 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t175.
          t167 = t175.
        ENDIF.
        t166->current = t167.
        DATA(t176) = CAST zcl_lnt_spaghetti_scope_node( t162 ).
        DATA t177 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t178 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t179) = CAST zcl_lnt_current_scope( t128 ).
        t178 = t179->current.
        t177 = t178.
        t176->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t177 ).
      ENDIF.
      DATA t180 TYPE REF TO zcl_lnt_expression_node.
      DATA(t181) = CAST zcl_lnt_expression_node( t122 ).
      t180 = t181.
      DATA(t182) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_sql_for_all_entries=>run_syntax( i_node = t180 i_input_967e = t182 ).
    ENDIF.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t184) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t183 = t184->find_all_expressions( i_type_9913 = t185 ).
    DATA t186 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t186.
    DATA t187 TYPE REF TO object.
    CLEAR t187.
    LOOP AT t183->items INTO t187.
      t186 ?= t187.
      DATA t188 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t189) = CAST zcl_lnt_expression_node( t186 ).
      DATA(t190) = CAST zcl_lnt_syntax_input( t2 ).
      t188 = zcl_lnt_sy_target=>run_syntax( i_node = t189 i_input_967e = t190 ).
    ENDLOOP.
    DATA(t191) = VALUE abap_bool( ).
    DATA(t192) = VALUE abap_bool( ).
    DATA t193 TYPE abap_bool.
    DATA t194 TYPE abap_bool.
    DATA t195 TYPE abap_bool.
    DATA(t196) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    t195 = t196->value.
    DATA(t197) = abap_false.
    t194 = xsdbool( t195 = t197 ).
    t193 = t194.
    IF t194 = abap_true.
      DATA(t198) = VALUE abap_bool( ).
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      DATA t200 TYPE REF TO zcl_lnt_expression_node.
      DATA(t201) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t202) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
      t200 = t201->find_direct_expression( i_type_9913 = t202 ).
      t199 = t200.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      t203 = t204.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = CAST zcl_lnt_expression_node( t199 ).
      IF t206 IS INITIAL.
        t205 = abap_true.
      ENDIF.
      t198 = t205.
      t193 = t198.
    ENDIF.
    t192 = t193.
    IF t193 = abap_true.
      DATA(t207) = VALUE abap_bool( ).
      DATA t208 TYPE REF TO zcl_lnt_expression_node.
      DATA t209 TYPE REF TO zcl_lnt_expression_node.
      DATA(t210) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t211) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
      t209 = t210->find_direct_expression( i_type_9913 = t211 ).
      t208 = t209.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      t212 = t213.
      DATA(t214) = VALUE abap_bool( ).
      DATA(t215) = CAST zcl_lnt_expression_node( t208 ).
      IF t215 IS INITIAL.
        t214 = abap_true.
      ENDIF.
      t207 = t214.
      t192 = t207.
    ENDIF.
    t191 = t192.
    IF t192 = abap_true.
      DATA(t216) = VALUE abap_bool( ).
      DATA t217 TYPE REF TO zcl_lnt_expression_node.
      DATA t218 TYPE REF TO zcl_lnt_expression_node.
      DATA(t219) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t220) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
      t218 = t219->find_direct_expression( i_type_9913 = t220 ).
      t217 = t218.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t222.
      t221 = t222.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = CAST zcl_lnt_expression_node( t217 ).
      IF t224 IS INITIAL.
        t223 = abap_true.
      ENDIF.
      t216 = t223.
      t191 = t216.
    ENDIF.
    IF t191 = abap_true.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t226.
      DATA t227 TYPE REF TO zcl_lnt_expression_node.
      DATA t228 TYPE REF TO zcl_lnt_expression_node.
      DATA(t229) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t230) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
      t228 = t229->find_first_expression( i_type_9913 = t230 ).
      t227 = t228.
      DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA(t233) = CAST zcl_lnt_expression_node( t227 ).
      IF t233 IS INITIAL.
        t232 = abap_true.
      ENDIF.
      IF t232 = abap_true.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        t231 = t234.
      ELSE.
        DATA t235 TYPE string.
        DATA t236 TYPE REF TO zcl_lnt_expression_node.
        DATA(t237) = CAST zcl_lnt_expression_node( t227 ).
        t236 = t237.
        t235 = t236->concat_tokens(  ).
        DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t238->has = abap_true.
        t238->value = t235.
        t231 = t238.
      ENDIF.
      t226 = t231.
      t225 = t226.
      DATA t239 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t240 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t240.
      DATA(t241) = `^count\(\s*\*\s*\)$`.
      DATA(t242) = |i|.
      CREATE OBJECT t240 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t241 flags = t242.
      t239 = t240.
      DATA(t243) = VALUE abap_bool( ).
      DATA(t244) = VALUE abap_bool( ).
      DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t246) = CAST zlnt_runtime_opti_4ba3bdccd169( t225 ).
      t245 = t246.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      t247 = t248.
      DATA(t249) = VALUE abap_bool( ).
      DATA(t250) = CAST zlnt_runtime_opti_4ba3bdccd169( t245 ).
      IF t250 IS INITIAL.
        t249 = abap_true.
      ELSEIF t250->has = abap_false.
        t249 = abap_true.
      ENDIF.
      t244 = t249.
      t243 = t244.
      IF t244 = abap_false.
        DATA t251 TYPE abap_bool.
        DATA t252 TYPE abap_bool.
        DATA(t253) = CAST zlnt_runtime_rege_5a210f82384e( t239 ).
        DATA t254 TYPE string.
        DATA(t255) = CAST zlnt_runtime_opti_4ba3bdccd169( t225 ).
        t254 = t255->value.
        t252 = t253->test( p0 = t254 ).
        DATA(t256) = abap_false.
        t251 = xsdbool( t252 = t256 ).
        t243 = t251.
      ENDIF.
      IF t243 = abap_true.
        DATA t257 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t257.
        DATA t258 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t258.
        DATA t259 TYPE REF TO zcl_lnt_expression_node.
        DATA t260 TYPE REF TO zcl_lnt_expression_node.
        DATA(t261) = CAST zcl_lnt_expression_node( t22 ).
        t260 = t261.
        t259 = t260.
        DATA t262 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t262.
        DATA(t263) = VALUE abap_bool( ).
        DATA(t264) = CAST zcl_lnt_expression_node( t259 ).
        IF t264 IS INITIAL.
          t263 = abap_true.
        ENDIF.
        IF t263 = abap_true.
          DATA t265 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t265.
          t262 = t265.
        ELSE.
          DATA t266 TYPE REF TO zcl_lnt_expression_node.
          DATA(t267) = CAST zcl_lnt_expression_node( t259 ).
          DATA(t268) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d300_344d539249f5 ).
          t266 = t267->find_direct_expression( i_type_9913 = t268 ).
          t262 = t266.
        ENDIF.
        t258 = t262.
        t257 = t258.
        DO.
          DATA t269 TYPE abap_bool.
          DATA(t270) = CAST zcl_lnt_expression_node( t257 ).
          t269 = xsdbool( t270 IS BOUND ).
          IF t269 = abap_false.
            EXIT.
          ENDIF.
          DATA t271 TYPE REF TO zcl_lnt_expression_node.
          DATA t272 TYPE REF TO zcl_lnt_expression_node.
          DATA t273 TYPE REF TO zcl_lnt_expression_node.
          DATA(t274) = CAST zcl_lnt_expression_node( t257 ).
          t273 = t274.
          DATA(t275) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d300_344d539249f5 ).
          t272 = t273->find_direct_expression( i_type_9913 = t275 ).
          t271 = t272.
          DATA(t276) = VALUE abap_bool( ).
          DATA t277 TYPE REF TO zcl_lnt_expression_node.
          DATA(t278) = CAST zcl_lnt_expression_node( t271 ).
          t277 = t278.
          DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t280.
          t279 = t280.
          DATA(t281) = VALUE abap_bool( ).
          DATA(t282) = CAST zcl_lnt_expression_node( t277 ).
          IF t282 IS INITIAL.
            t281 = abap_true.
          ENDIF.
          t276 = t281.
          IF t276 = abap_true.
            EXIT.
          ENDIF.
          DATA t283 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t283.
          DATA(t284) = abap_true.
          IF t284 = abap_true.
            DATA t285 TYPE REF TO zcl_lnt_expression_node.
            DATA(t286) = CAST zcl_lnt_expression_node( t271 ).
            t285 = t286.
            t283 = t285.
          ELSE.
            DATA t287 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t287.
            t283 = t287.
          ENDIF.
          t257 = t283.
        ENDDO.
        DATA t288 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t288.
        DATA t289 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t289.
        DATA t290 TYPE REF TO zcl_lnt_expression_node.
        DATA(t291) = CAST zcl_lnt_expression_node( t257 ).
        t290 = t291.
        DATA t292 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t292.
        DATA(t293) = VALUE abap_bool( ).
        DATA(t294) = CAST zcl_lnt_expression_node( t290 ).
        IF t294 IS INITIAL.
          t293 = abap_true.
        ENDIF.
        IF t293 = abap_true.
          DATA t295 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t295.
          t292 = t295.
        ELSE.
          DATA t296 TYPE REF TO zcl_lnt_expression_node.
          DATA t297 TYPE REF TO zcl_lnt_expression_node.
          DATA(t298) = CAST zcl_lnt_expression_node( t290 ).
          t297 = t298.
          DATA(t299) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d ).
          t296 = t297->find_direct_expression( i_type_9913 = t299 ).
          t292 = t296.
        ENDIF.
        t289 = t292.
        t288 = t289.
        DATA t300 TYPE abap_bool.
        DATA(t301) = CAST zcl_lnt_expression_node( t288 ).
        t300 = xsdbool( t301 IS BOUND ).
        IF t300 = abap_true.
          DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t302.
          DATA t303 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t303.
          DATA t304 TYPE REF TO zcl_lnt_current_scope.
          DATA t305 TYPE REF TO zcl_lnt_current_scope.
          DATA(t306) = CAST zcl_lnt_syntax_input( t2 ).
          t305 = t306->scope.
          t304 = t305.
          DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t307.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA t310 TYPE string.
            DATA t311 TYPE REF TO zcl_lnt_expression_node.
            DATA(t312) = CAST zcl_lnt_expression_node( t288 ).
            t311 = t312.
            t310 = t311->concat_tokens(  ).
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t310.
            t308 = t313.
          ELSE.
            DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t314.
            t308 = t314.
          ENDIF.
          t307 = t308.
          DATA t315 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t315.
          DATA(t316) = VALUE abap_bool( ).
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t318) = CAST zlnt_runtime_opti_4ba3bdccd169( t307 ).
          t317 = t318.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          t319 = t320.
          DATA(t321) = VALUE abap_bool( ).
          DATA(t322) = CAST zlnt_runtime_opti_4ba3bdccd169( t317 ).
          IF t322 IS INITIAL.
            t321 = abap_true.
          ELSEIF t322->has = abap_false.
            t321 = abap_true.
          ENDIF.
          t316 = t321.
          IF t316 = abap_true.
            DATA t323 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t323.
            t315 = t323.
          ELSE.
            DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t324.
            DATA t325 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t325.
            DATA t326 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t326.
            DATA t327 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t328 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t329) = CAST zcl_lnt_current_scope( t304 ).
            t328 = t329->current.
            t327 = t328.
            DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t330.
            DATA(t331) = VALUE abap_bool( ).
            DATA(t332) = CAST zcl_lnt_spaghetti_scope_node( t327 ).
            IF t332 IS INITIAL.
              t331 = abap_true.
            ENDIF.
            IF t331 = abap_true.
              DATA t333 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t333.
              t330 = t333.
            ELSE.
              DATA t334 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t335 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t336) = CAST zcl_lnt_spaghetti_scope_node( t327 ).
              t335 = t336.
              DATA t337 TYPE string.
              DATA(t338) = CAST zlnt_runtime_opti_4ba3bdccd169( t307 ).
              t337 = t338->value.
              t334 = t335->find_variable( i_name = t337 ).
              t330 = t334.
            ENDIF.
            t326 = t330.
            t325 = t326.
            DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t339.
            DATA t340 TYPE abap_bool.
            DATA(t341) = CAST zcl_lnt_typed_identifier( t325 ).
            t340 = xsdbool( t341 IS BOUND ).
            IF t340 = abap_true.
              DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t342.
              DATA(t343) = abap_true.
              IF t343 = abap_true.
                DATA t344 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t345) = CAST zcl_lnt_typed_identifier( t325 ).
                t344 = t345.
                t342 = t344.
              ELSE.
                DATA t346 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t346.
                t342 = t346.
              ENDIF.
              t339 = t342.
            ELSE.
              DATA t347 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t347.
              DATA(t348) = CAST zcl_lnt_current_scope( t304 ).
              DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t349.
              DATA(t350) = abap_true.
              IF t350 = abap_true.
                DATA t351 TYPE string.
                DATA(t352) = CAST zlnt_runtime_opti_4ba3bdccd169( t307 ).
                t351 = t352->value.
                DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t353->has = abap_true.
                t353->value = t351.
                t349 = t353.
              ELSE.
                DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t354.
                t349 = t354.
              ENDIF.
              t347 = t348->find_type_pool_constant( i_name = t349 ).
              t339 = t347.
            ENDIF.
            t324 = t339.
            t315 = t324.
          ENDIF.
          t303 = t315.
          t302 = t303.
          DATA t355 TYPE abap_bool.
          DATA(t356) = CAST zcl_lnt_typed_identifier( t302 ).
          t355 = xsdbool( t356 IS BOUND ).
          IF t355 = abap_true.
            DATA t357 TYPE REF TO zcl_lnt_current_scope.
            DATA(t358) = CAST zcl_lnt_syntax_input( t2 ).
            t357 = t358->scope.
            DATA t359 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t359.
            DATA(t360) = abap_true.
            IF t360 = abap_true.
              DATA t361 TYPE REF TO zcl_lnt_abstract_token.
              DATA t362 TYPE REF TO zcl_lnt_expression_node.
              DATA(t363) = CAST zcl_lnt_expression_node( t288 ).
              t362 = t363.
              t361 = t362->get_first_token(  ).
              t359 = t361.
            ELSE.
              DATA t364 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t364.
              t359 = t364.
            ENDIF.
            DATA t365 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t366) = CAST zcl_lnt_typed_identifier( t302 ).
            t365 = t366.
            DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t368) = |Write To|.
            CREATE OBJECT t367.
            t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t367->sval = t368.
            DATA t369 TYPE string.
            DATA(t370) = CAST zcl_lnt_syntax_input( t2 ).
            t369 = t370->filename.
            DATA t371 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t371.
            t357->add_reference( i_usage = t359 i_referencing = t365 i_type_9913 = t367 i_filename = t369 i_extra = t371 ).
          ELSE.
            DATA t372 TYPE string.
            DATA t373 TYPE string.
            DATA t374 TYPE string.
            DATA(t375) = |Target variable |.
            DATA t376 TYPE string.
            DATA t377 TYPE REF TO zcl_lnt_expression_node.
            DATA(t378) = CAST zcl_lnt_expression_node( t288 ).
            t377 = t378.
            t376 = t377->concat_tokens(  ).
            DATA(t379) = strlen( t375 ).
            t374 = |{ t375 }{ t376 }|.
            DATA(t380) = | not found in scope|.
            DATA(t381) = strlen( t374 ).
            t373 = |{ t374 }{ t380 }|.
            t372 = t373.
            DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t383) = CAST zcl_lnt_syntax_input( t2 ).
            t382 = t383->issues.
            DATA t384 TYPE REF TO zcl_lnt_issue.
            DATA(t385) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t386 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t387) = CAST zcl_lnt_expression_node( t1 ).
            t386 = t387->get_first_token(  ).
            DATA(t388) = t372.
            DATA t389 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t389.
            t384 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t385 i_token = t386 i_message_26cb = t388 i_fix = t389 ).
            APPEND t384 TO t382->items.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t390 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t391) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t392) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    t390 = t391->find_direct_expressions( i_type_9913 = t392 ).
    DATA t393 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t393.
    DATA t394 TYPE REF TO object.
    CLEAR t394.
    LOOP AT t390->items INTO t394.
      t393 ?= t394.
      DATA t395 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t396) = CAST zcl_lnt_expression_node( t393 ).
      DATA(t397) = CAST zcl_lnt_syntax_input( t2 ).
      t395 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t396 i_input_967e = t397 ).
    ENDLOOP.
    DATA t398 TYPE REF TO zcl_lnt_expression_node.
    DATA t399 TYPE REF TO zcl_lnt_expression_node.
    DATA(t400) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t401) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    t399 = t400->find_direct_expression( i_type_9913 = t401 ).
    t398 = t399.
    DATA t402 TYPE abap_bool.
    DATA t403 TYPE abap_bool.
    DATA t404 TYPE string.
    DATA t405 TYPE REF TO zcl_lnt_current_scope.
    DATA t406 TYPE REF TO zcl_lnt_current_scope.
    DATA(t407) = CAST zcl_lnt_syntax_input( t2 ).
    t406 = t407->scope.
    t405 = t406.
    DATA t408 TYPE string.
    DATA t409 TYPE REF TO zif_lnt_configuration.
    DATA t410 TYPE REF TO zif_lnt_registry.
    DATA(t411) = CAST zcl_lnt_current_scope( t405 ).
    t410 = t411->reg.
    t409 = t410->get_config(  ).
    t408 = t409->get_language_version(  ).
    t404 = t408.
    DATA(t412) = |Cloud|.
    t403 = xsdbool( t404 = t412 ).
    t402 = t403.
    DATA t413 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t414) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t415) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    t413 = t414->find_direct_expressions( i_type_9913 = t415 ).
    DATA t416 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t416.
    DATA t417 TYPE REF TO object.
    CLEAR t417.
    LOOP AT t413->items INTO t417.
      t416 ?= t417.
      DATA(t418) = VALUE abap_bool( ).
      DATA(t419) = VALUE abap_bool( ).
      DATA(t420) = VALUE abap_bool( ).
      DATA(t421) = VALUE abap_bool( ).
      DATA t422 TYPE REF TO zcl_lnt_expression_node.
      DATA(t423) = CAST zcl_lnt_expression_node( t398 ).
      t422 = t423.
      DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t425.
      t424 = t425.
      DATA(t426) = VALUE abap_bool( ).
      DATA(t427) = VALUE abap_bool( ).
      DATA(t428) = CAST zcl_lnt_expression_node( t422 ).
      IF t428 IS INITIAL.
        t427 = abap_true.
      ENDIF.
      t426 = xsdbool( t427 = abap_false ).
      t421 = t426.
      t420 = t421.
      IF t421 = abap_true.
        DATA(t429) = VALUE abap_bool( ).
        DATA t430 TYPE REF TO zcl_lnt_expression_node.
        DATA(t431) = CAST zcl_lnt_expression_node( t114 ).
        t430 = t431.
        DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t433.
        t432 = t433.
        DATA(t434) = VALUE abap_bool( ).
        DATA(t435) = VALUE abap_bool( ).
        DATA(t436) = CAST zcl_lnt_expression_node( t430 ).
        IF t436 IS INITIAL.
          t435 = abap_true.
        ENDIF.
        t434 = xsdbool( t435 = abap_false ).
        t429 = t434.
        t420 = t429.
      ENDIF.
      t419 = t420.
      IF t420 = abap_true.
        DATA t437 TYPE abap_bool.
        DATA t438 TYPE REF TO zcl_lnt_position.
        DATA t439 TYPE REF TO zcl_lnt_abstract_token.
        DATA t440 TYPE REF TO zcl_lnt_abstract_token.
        DATA t441 TYPE REF TO zcl_lnt_expression_node.
        DATA(t442) = CAST zcl_lnt_expression_node( t114 ).
        t441 = t442.
        t440 = t441->get_first_token(  ).
        t439 = t440.
        DATA t443 TYPE REF TO zcl_lnt_position.
        DATA(t444) = CAST zcl_lnt_abstract_token( t439 ).
        t443 = t444->start.
        t438 = t443.
        DATA t445 TYPE REF TO zcl_lnt_position.
        DATA t446 TYPE REF TO zcl_lnt_abstract_token.
        DATA t447 TYPE REF TO zcl_lnt_abstract_token.
        DATA t448 TYPE REF TO zcl_lnt_expression_node.
        DATA(t449) = CAST zcl_lnt_expression_node( t398 ).
        t448 = t449.
        t447 = t448->get_first_token(  ).
        t446 = t447.
        DATA t450 TYPE REF TO zcl_lnt_position.
        DATA(t451) = CAST zcl_lnt_abstract_token( t446 ).
        t450 = t451->start.
        t445 = t450.
        t437 = t438->is_after( i_p = t445 ).
        t419 = t437.
      ENDIF.
      t418 = t419.
      DATA(t452) = VALUE abap_bool( ).
      DATA(t453) = VALUE abap_bool( ).
      DATA(t454) = VALUE abap_bool( ).
      DATA(t455) = VALUE abap_bool( ).
      DATA t456 TYPE abap_bool.
      DATA t457 TYPE abap_bool.
      DATA(t458) = CAST zcl_lnt_expression_node( t114 ).
      t457 = xsdbool( t458 IS BOUND ).
      t456 = t457.
      IF t457 = abap_true.
        DATA t459 TYPE abap_bool.
        DATA(t460) = CAST zcl_lnt_expression_node( t1 ).
        DATA(t461) = CAST zcl_lnt_syntax_input( t2 ).
        t459 = zcl_lnt_sy_expres_select=>is_strict_mode( i_node = t460 i_input_967e = t461 ).
        t456 = t459.
      ENDIF.
      t455 = t456.
      IF t456 = abap_true.
        DATA t462 TYPE abap_bool.
        DATA(t463) = t402.
        t462 = t463.
        IF t463 = abap_false.
          DATA t464 TYPE abap_bool.
          DATA t465 TYPE abap_bool.
          DATA(t466) = CAST zcl_lnt_expression_node( t416 ).
          t465 = zcl_lnt_sy_expres_select=>up_to_uses_host_variable( i_up = t466 ).
          t464 = t465.
          IF t465 = abap_true.
            DATA(t467) = t418.
            t464 = t467.
          ENDIF.
          t462 = t464.
        ENDIF.
        t455 = t462.
      ENDIF.
      t454 = t455.
      IF t455 = abap_true.
        DATA t468 TYPE abap_bool.
        DATA t469 TYPE abap_bool.
        DATA t470 TYPE abap_bool.
        DATA(t471) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
        t470 = t471->value.
        DATA(t472) = abap_false.
        t469 = xsdbool( t470 = t472 ).
        t468 = t469.
        IF t469 = abap_false.
          DATA(t473) = t402.
          t468 = t473.
        ENDIF.
        t454 = t468.
      ENDIF.
      t453 = t454.
      IF t454 = abap_true.
        DATA(t474) = VALUE abap_bool( ).
        DATA t475 TYPE REF TO zcl_lnt_position.
        DATA t476 TYPE REF TO zcl_lnt_position.
        DATA t477 TYPE REF TO zcl_lnt_abstract_token.
        DATA t478 TYPE REF TO zcl_lnt_abstract_token.
        DATA t479 TYPE REF TO zcl_lnt_expression_node.
        DATA(t480) = CAST zcl_lnt_expression_node( t22 ).
        t479 = t480.
        t478 = t479->get_first_token(  ).
        t477 = t478.
        DATA t481 TYPE REF TO zcl_lnt_position.
        DATA(t482) = CAST zcl_lnt_abstract_token( t477 ).
        t481 = t482->start.
        t476 = t481.
        t475 = t476.
        DATA t483 TYPE REF TO zcl_lnt_position.
        DATA t484 TYPE REF TO zcl_lnt_position.
        DATA t485 TYPE REF TO zcl_lnt_abstract_token.
        DATA t486 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t487) = CAST zcl_lnt_expression_node( t416 ).
        t486 = t487->get_first_token(  ).
        t485 = t486.
        DATA t488 TYPE REF TO zcl_lnt_position.
        DATA(t489) = CAST zcl_lnt_abstract_token( t485 ).
        t488 = t489->start.
        t484 = t488.
        t483 = t484.
        DATA t490 TYPE abap_bool.
        DATA t491 TYPE abap_bool.
        DATA t492 TYPE int8.
        DATA(t493) = CAST zcl_lnt_position( t475 ).
        t492 = t493->row.
        DATA t494 TYPE int8.
        DATA(t495) = CAST zcl_lnt_position( t483 ).
        t494 = t495->row.
        t491 = xsdbool( t492 < t494 ).
        t490 = t491.
        IF t491 = abap_false.
          DATA t496 TYPE abap_bool.
          DATA t497 TYPE abap_bool.
          DATA t498 TYPE int8.
          DATA(t499) = CAST zcl_lnt_position( t475 ).
          t498 = t499->row.
          DATA t500 TYPE int8.
          DATA(t501) = CAST zcl_lnt_position( t483 ).
          t500 = t501->row.
          t497 = xsdbool( t498 = t500 ).
          t496 = t497.
          IF t497 = abap_true.
            DATA t502 TYPE abap_bool.
            DATA t503 TYPE int8.
            DATA(t504) = CAST zcl_lnt_position( t475 ).
            t503 = t504->col.
            DATA t505 TYPE int8.
            DATA(t506) = CAST zcl_lnt_position( t483 ).
            t505 = t506->col.
            t502 = xsdbool( t503 < t505 ).
            t496 = t502.
          ENDIF.
          t490 = t496.
        ENDIF.
        t474 = t490.
        t453 = t474.
      ENDIF.
      t452 = t453.
      IF t453 = abap_true.
        DATA(t507) = VALUE abap_bool( ).
        DATA t508 TYPE REF TO zcl_lnt_position.
        DATA t509 TYPE REF TO zcl_lnt_position.
        DATA t510 TYPE REF TO zcl_lnt_abstract_token.
        DATA t511 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t512) = CAST zcl_lnt_expression_node( t416 ).
        t511 = t512->get_first_token(  ).
        t510 = t511.
        DATA t513 TYPE REF TO zcl_lnt_position.
        DATA(t514) = CAST zcl_lnt_abstract_token( t510 ).
        t513 = t514->start.
        t509 = t513.
        t508 = t509.
        DATA t515 TYPE REF TO zcl_lnt_position.
        DATA t516 TYPE REF TO zcl_lnt_position.
        DATA t517 TYPE REF TO zcl_lnt_abstract_token.
        DATA t518 TYPE REF TO zcl_lnt_abstract_token.
        DATA t519 TYPE REF TO zcl_lnt_expression_node.
        DATA(t520) = CAST zcl_lnt_expression_node( t114 ).
        t519 = t520.
        t518 = t519->get_first_token(  ).
        t517 = t518.
        DATA t521 TYPE REF TO zcl_lnt_position.
        DATA(t522) = CAST zcl_lnt_abstract_token( t517 ).
        t521 = t522->start.
        t516 = t521.
        t515 = t516.
        DATA t523 TYPE abap_bool.
        DATA t524 TYPE abap_bool.
        DATA t525 TYPE int8.
        DATA(t526) = CAST zcl_lnt_position( t508 ).
        t525 = t526->row.
        DATA t527 TYPE int8.
        DATA(t528) = CAST zcl_lnt_position( t515 ).
        t527 = t528->row.
        t524 = xsdbool( t525 < t527 ).
        t523 = t524.
        IF t524 = abap_false.
          DATA t529 TYPE abap_bool.
          DATA t530 TYPE abap_bool.
          DATA t531 TYPE int8.
          DATA(t532) = CAST zcl_lnt_position( t508 ).
          t531 = t532->row.
          DATA t533 TYPE int8.
          DATA(t534) = CAST zcl_lnt_position( t515 ).
          t533 = t534->row.
          t530 = xsdbool( t531 = t533 ).
          t529 = t530.
          IF t530 = abap_true.
            DATA t535 TYPE abap_bool.
            DATA t536 TYPE int8.
            DATA(t537) = CAST zcl_lnt_position( t508 ).
            t536 = t537->col.
            DATA t538 TYPE int8.
            DATA(t539) = CAST zcl_lnt_position( t515 ).
            t538 = t539->col.
            t535 = xsdbool( t536 < t538 ).
            t529 = t535.
          ENDIF.
          t523 = t529.
        ENDIF.
        t507 = t523.
        t452 = t507.
      ENDIF.
      IF t452 = abap_true.
        DATA t540 TYPE string.
        DATA(t541) = |The addition "UP TO n ROWS" must only be placed after the IN|.
        t541 = t541 && |TO/APPENDING clause.|.
        t540 = t541.
        DATA t542 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t543) = CAST zcl_lnt_syntax_input( t2 ).
        t542 = t543->issues.
        DATA t544 TYPE REF TO zcl_lnt_issue.
        CLEAR t544.
        DATA(t545) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t546 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t547) = CAST zcl_lnt_expression_node( t416 ).
        t546 = t547->get_first_token(  ).
        DATA(t548) = t540.
        DATA t549 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t549.
        DATA(t550) = abap_true.
        IF t550 = abap_true.
          DATA t551 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t552) = CAST zcl_lnt_expression_node( t1 ).
          DATA(t553) = CAST zcl_lnt_syntax_input( t2 ).
          DATA(t554) = CAST zcl_lnt_expression_node( t416 ).
          DATA t555 TYPE REF TO zcl_lnt_expression_node.
          DATA(t556) = CAST zcl_lnt_expression_node( t114 ).
          t555 = t556.
          t551 = zcl_lnt_sy_expres_select=>build_up_to_rows_fix( i_node = t552 i_input_967e = t553 i_up = t554 i_into_expression = t555 ).
          t549 = t551.
        ELSE.
          DATA t557 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t557.
          t549 = t557.
        ENDIF.
        t544 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t545 i_token = t546 i_message_26cb = t548 i_fix = t549 ).
        APPEND t544 TO t542->items.
      ENDIF.
      DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t559) = CAST zcl_lnt_expression_node( t416 ).
      DATA(t560) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
      t558 = t559->find_direct_expressions( i_type_9913 = t560 ).
      DATA t561 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t561.
      DATA t562 TYPE REF TO object.
      CLEAR t562.
      LOOP AT t558->items INTO t562.
        t561 ?= t562.
        DATA t563 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t564) = CAST zcl_lnt_expression_node( t561 ).
        DATA(t565) = CAST zcl_lnt_syntax_input( t2 ).
        t563 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t564 i_input_967e = t565 ).
      ENDLOOP.
    ENDLOOP.
    DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t567) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t568) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d296_6b49712a4964 ).
    t566 = t567->find_direct_expressions( i_type_9913 = t568 ).
    DATA t569 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t569.
    DATA t570 TYPE REF TO object.
    CLEAR t570.
    LOOP AT t566->items INTO t570.
      t569 ?= t570.
      DATA t571 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t572) = CAST zcl_lnt_expression_node( t569 ).
      DATA(t573) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
      t571 = t572->find_direct_expressions( i_type_9913 = t573 ).
      DATA t574 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t574.
      DATA t575 TYPE REF TO object.
      CLEAR t575.
      LOOP AT t571->items INTO t575.
        t574 ?= t575.
        DATA t576 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t577) = CAST zcl_lnt_expression_node( t574 ).
        DATA(t578) = CAST zcl_lnt_syntax_input( t2 ).
        t576 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t577 i_input_967e = t578 ).
      ENDLOOP.
    ENDLOOP.
    DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t580) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t581) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463 ).
    t579 = t580->find_all_expressions( i_type_9913 = t581 ).
    DATA t582 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t582.
    DATA t583 TYPE REF TO object.
    CLEAR t583.
    LOOP AT t579->items INTO t583.
      t582 ?= t583.
      DATA(t584) = CAST zcl_lnt_expression_node( t582 ).
      DATA(t585) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t586) = CAST zlnt_runtime_arra_b72089862d0f( t36 ).
      zcl_lnt_sy_sql_compare=>run_syntax( i_node = t584 i_input_967e = t585 i_tables_8d5a = t586 ).
    ENDLOOP.
    DATA t587 TYPE REF TO zcl_lnt_expression_node.
    DATA t588 TYPE REF TO zcl_lnt_expression_node.
    DATA(t589) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t590) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
    t588 = t589->find_direct_expression( i_type_9913 = t590 ).
    t587 = t588.
    DATA t591 TYPE abap_bool.
    DATA(t592) = CAST zcl_lnt_expression_node( t587 ).
    t591 = xsdbool( t592 IS BOUND ).
    IF t591 = abap_true.
      DATA t593 TYPE REF TO zcl_lnt_expression_node.
      DATA(t594) = CAST zcl_lnt_expression_node( t587 ).
      t593 = t594.
      DATA(t595) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_sql_order_by=>run_syntax( i_node = t593 i_input_967e = t595 ).
      DATA t596 TYPE REF TO zcl_lnt_expression_node.
      DATA t597 TYPE REF TO zcl_lnt_expression_node.
      DATA(t598) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t599) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
      t597 = t598->find_direct_expression( i_type_9913 = t599 ).
      t596 = t597.
      DATA(t600) = VALUE abap_bool( ).
      DATA(t601) = VALUE abap_bool( ).
      DATA(t602) = VALUE abap_bool( ).
      DATA t603 TYPE abap_bool.
      DATA t604 TYPE abap_bool.
      DATA(t605) = CAST zcl_lnt_expression_node( t114 ).
      t604 = xsdbool( t605 IS BOUND ).
      t603 = t604.
      IF t604 = abap_true.
        DATA t606 TYPE abap_bool.
        DATA(t607) = CAST zcl_lnt_expression_node( t596 ).
        t606 = xsdbool( t607 IS BOUND ).
        t603 = t606.
      ENDIF.
      t602 = t603.
      IF t603 = abap_true.
        DATA(t608) = VALUE abap_bool( ).
        DATA t609 TYPE REF TO zcl_lnt_position.
        DATA t610 TYPE REF TO zcl_lnt_position.
        DATA t611 TYPE REF TO zcl_lnt_abstract_token.
        DATA t612 TYPE REF TO zcl_lnt_abstract_token.
        DATA t613 TYPE REF TO zcl_lnt_expression_node.
        DATA(t614) = CAST zcl_lnt_expression_node( t114 ).
        t613 = t614.
        t612 = t613->get_first_token(  ).
        t611 = t612.
        DATA t615 TYPE REF TO zcl_lnt_position.
        DATA(t616) = CAST zcl_lnt_abstract_token( t611 ).
        t615 = t616->start.
        t610 = t615.
        t609 = t610.
        DATA t617 TYPE REF TO zcl_lnt_position.
        DATA t618 TYPE REF TO zcl_lnt_position.
        DATA t619 TYPE REF TO zcl_lnt_abstract_token.
        DATA t620 TYPE REF TO zcl_lnt_abstract_token.
        DATA t621 TYPE REF TO zcl_lnt_expression_node.
        DATA(t622) = CAST zcl_lnt_expression_node( t587 ).
        t621 = t622.
        t620 = t621->get_first_token(  ).
        t619 = t620.
        DATA t623 TYPE REF TO zcl_lnt_position.
        DATA(t624) = CAST zcl_lnt_abstract_token( t619 ).
        t623 = t624->start.
        t618 = t623.
        t617 = t618.
        DATA t625 TYPE abap_bool.
        DATA t626 TYPE abap_bool.
        DATA t627 TYPE int8.
        DATA(t628) = CAST zcl_lnt_position( t609 ).
        t627 = t628->row.
        DATA t629 TYPE int8.
        DATA(t630) = CAST zcl_lnt_position( t617 ).
        t629 = t630->row.
        t626 = xsdbool( t627 < t629 ).
        t625 = t626.
        IF t626 = abap_false.
          DATA t631 TYPE abap_bool.
          DATA t632 TYPE abap_bool.
          DATA t633 TYPE int8.
          DATA(t634) = CAST zcl_lnt_position( t609 ).
          t633 = t634->row.
          DATA t635 TYPE int8.
          DATA(t636) = CAST zcl_lnt_position( t617 ).
          t635 = t636->row.
          t632 = xsdbool( t633 = t635 ).
          t631 = t632.
          IF t632 = abap_true.
            DATA t637 TYPE abap_bool.
            DATA t638 TYPE int8.
            DATA(t639) = CAST zcl_lnt_position( t609 ).
            t638 = t639->col.
            DATA t640 TYPE int8.
            DATA(t641) = CAST zcl_lnt_position( t617 ).
            t640 = t641->col.
            t637 = xsdbool( t638 < t640 ).
            t631 = t637.
          ENDIF.
          t625 = t631.
        ENDIF.
        t608 = t625.
        t602 = t608.
      ENDIF.
      t601 = t602.
      IF t602 = abap_true.
        DATA(t642) = VALUE abap_bool( ).
        DATA t643 TYPE REF TO zcl_lnt_position.
        DATA t644 TYPE REF TO zcl_lnt_position.
        DATA t645 TYPE REF TO zcl_lnt_abstract_token.
        DATA t646 TYPE REF TO zcl_lnt_abstract_token.
        DATA t647 TYPE REF TO zcl_lnt_expression_node.
        DATA(t648) = CAST zcl_lnt_expression_node( t596 ).
        t647 = t648.
        t646 = t647->get_first_token(  ).
        t645 = t646.
        DATA t649 TYPE REF TO zcl_lnt_position.
        DATA(t650) = CAST zcl_lnt_abstract_token( t645 ).
        t649 = t650->start.
        t644 = t649.
        t643 = t644.
        DATA t651 TYPE REF TO zcl_lnt_position.
        DATA t652 TYPE REF TO zcl_lnt_position.
        DATA t653 TYPE REF TO zcl_lnt_abstract_token.
        DATA t654 TYPE REF TO zcl_lnt_abstract_token.
        DATA t655 TYPE REF TO zcl_lnt_expression_node.
        DATA(t656) = CAST zcl_lnt_expression_node( t587 ).
        t655 = t656.
        t654 = t655->get_first_token(  ).
        t653 = t654.
        DATA t657 TYPE REF TO zcl_lnt_position.
        DATA(t658) = CAST zcl_lnt_abstract_token( t653 ).
        t657 = t658->start.
        t652 = t657.
        t651 = t652.
        DATA t659 TYPE abap_bool.
        DATA t660 TYPE abap_bool.
        DATA t661 TYPE int8.
        DATA(t662) = CAST zcl_lnt_position( t643 ).
        t661 = t662->row.
        DATA t663 TYPE int8.
        DATA(t664) = CAST zcl_lnt_position( t651 ).
        t663 = t664->row.
        t660 = xsdbool( t661 < t663 ).
        t659 = t660.
        IF t660 = abap_false.
          DATA t665 TYPE abap_bool.
          DATA t666 TYPE abap_bool.
          DATA t667 TYPE int8.
          DATA(t668) = CAST zcl_lnt_position( t643 ).
          t667 = t668->row.
          DATA t669 TYPE int8.
          DATA(t670) = CAST zcl_lnt_position( t651 ).
          t669 = t670->row.
          t666 = xsdbool( t667 = t669 ).
          t665 = t666.
          IF t666 = abap_true.
            DATA t671 TYPE abap_bool.
            DATA t672 TYPE int8.
            DATA(t673) = CAST zcl_lnt_position( t643 ).
            t672 = t673->col.
            DATA t674 TYPE int8.
            DATA(t675) = CAST zcl_lnt_position( t651 ).
            t674 = t675->col.
            t671 = xsdbool( t672 < t674 ).
            t665 = t671.
          ENDIF.
          t659 = t665.
        ENDIF.
        t642 = t659.
        t601 = t642.
      ENDIF.
      t600 = t601.
      IF t601 = abap_true.
        DATA(t676) = VALUE abap_bool( ).
        DATA t677 TYPE REF TO zcl_lnt_position.
        DATA t678 TYPE REF TO zcl_lnt_position.
        DATA t679 TYPE REF TO zcl_lnt_abstract_token.
        DATA t680 TYPE REF TO zcl_lnt_abstract_token.
        DATA t681 TYPE REF TO zcl_lnt_expression_node.
        DATA(t682) = CAST zcl_lnt_expression_node( t596 ).
        t681 = t682.
        t680 = t681->get_first_token(  ).
        t679 = t680.
        DATA t683 TYPE REF TO zcl_lnt_position.
        DATA(t684) = CAST zcl_lnt_abstract_token( t679 ).
        t683 = t684->start.
        t678 = t683.
        t677 = t678.
        DATA t685 TYPE REF TO zcl_lnt_position.
        DATA t686 TYPE REF TO zcl_lnt_position.
        DATA t687 TYPE REF TO zcl_lnt_abstract_token.
        DATA t688 TYPE REF TO zcl_lnt_abstract_token.
        DATA t689 TYPE REF TO zcl_lnt_expression_node.
        DATA(t690) = CAST zcl_lnt_expression_node( t114 ).
        t689 = t690.
        t688 = t689->get_first_token(  ).
        t687 = t688.
        DATA t691 TYPE REF TO zcl_lnt_position.
        DATA(t692) = CAST zcl_lnt_abstract_token( t687 ).
        t691 = t692->start.
        t686 = t691.
        t685 = t686.
        DATA t693 TYPE abap_bool.
        DATA t694 TYPE abap_bool.
        DATA t695 TYPE int8.
        DATA(t696) = CAST zcl_lnt_position( t677 ).
        t695 = t696->row.
        DATA t697 TYPE int8.
        DATA(t698) = CAST zcl_lnt_position( t685 ).
        t697 = t698->row.
        t694 = xsdbool( t695 < t697 ).
        t693 = t694.
        IF t694 = abap_false.
          DATA t699 TYPE abap_bool.
          DATA t700 TYPE abap_bool.
          DATA t701 TYPE int8.
          DATA(t702) = CAST zcl_lnt_position( t677 ).
          t701 = t702->row.
          DATA t703 TYPE int8.
          DATA(t704) = CAST zcl_lnt_position( t685 ).
          t703 = t704->row.
          t700 = xsdbool( t701 = t703 ).
          t699 = t700.
          IF t700 = abap_true.
            DATA t705 TYPE abap_bool.
            DATA t706 TYPE int8.
            DATA(t707) = CAST zcl_lnt_position( t677 ).
            t706 = t707->col.
            DATA t708 TYPE int8.
            DATA(t709) = CAST zcl_lnt_position( t685 ).
            t708 = t709->col.
            t705 = xsdbool( t706 < t708 ).
            t699 = t705.
          ENDIF.
          t693 = t699.
        ENDIF.
        t676 = t693.
        t600 = t676.
      ENDIF.
      IF t600 = abap_true.
        DATA t710 TYPE string.
        DATA(t711) = |ORDER BY must be before INTO, after WHERE|.
        t710 = t711.
        DATA t712 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t713) = CAST zcl_lnt_syntax_input( t2 ).
        t712 = t713->issues.
        DATA t714 TYPE REF TO zcl_lnt_issue.
        DATA(t715) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t716 TYPE REF TO zcl_lnt_abstract_token.
        DATA t717 TYPE REF TO zcl_lnt_expression_node.
        DATA(t718) = CAST zcl_lnt_expression_node( t587 ).
        t717 = t718.
        t716 = t717->get_first_token(  ).
        DATA(t719) = t710.
        DATA t720 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t720.
        t714 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t715 i_token = t716 i_message_26cb = t719 i_fix = t720 ).
        APPEND t714 TO t712->items.
      ENDIF.
    ENDIF.
    DATA t721 TYPE abap_bool.
    DATA(t722) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t723) = CAST zcl_lnt_syntax_input( t2 ).
    t721 = zcl_lnt_sy_expres_select=>is_strict_mode( i_node = t722 i_input_967e = t723 ).
    IF t721 = abap_true.
      DATA(t724) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t725) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_expres_select=>strict_mode_checks( i_node = t724 i_input_967e = t725 ).
    ENDIF.
    DATA t726 TYPE abap_bool.
    DATA t727 TYPE string.
    DATA t728 TYPE REF TO zcl_lnt_current_scope.
    DATA(t729) = CAST zcl_lnt_syntax_input( t2 ).
    t728 = t729->scope.
    t727 = t728->get_type(  ).
    DATA(t730) = |open_sql|.
    t726 = xsdbool( t727 = t730 ).
    IF t726 = abap_true.
      DATA t731 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t731.
      DATA t732 TYPE REF TO zcl_lnt_current_scope.
      DATA(t733) = CAST zcl_lnt_syntax_input( t2 ).
      t732 = t733->scope.
      DATA t734 TYPE REF TO zcl_lnt_position.
      CLEAR t734.
      DATA t735 TYPE REF TO zcl_lnt_abstract_token.
      DATA t736 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t737) = CAST zcl_lnt_expression_node( t1 ).
      t736 = t737->get_last_token(  ).
      t735 = t736.
      DATA t738 TYPE REF TO zcl_lnt_position.
      CLEAR t738.
      DATA t739 TYPE int8.
      DATA t740 TYPE REF TO zcl_lnt_position.
      DATA t741 TYPE REF TO zcl_lnt_position.
      DATA(t742) = CAST zcl_lnt_abstract_token( t735 ).
      t741 = t742->start.
      t740 = t741.
      DATA t743 TYPE int8.
      DATA(t744) = CAST zcl_lnt_position( t740 ).
      t743 = t744->row.
      t739 = t743.
      DATA t745 TYPE int8.
      DATA t746 TYPE int8.
      DATA t747 TYPE REF TO zcl_lnt_position.
      DATA t748 TYPE REF TO zcl_lnt_position.
      DATA(t749) = CAST zcl_lnt_abstract_token( t735 ).
      t748 = t749->start.
      t747 = t748.
      DATA t750 TYPE int8.
      DATA(t751) = CAST zcl_lnt_position( t747 ).
      t750 = t751->col.
      t746 = t750.
      DATA t752 TYPE int8.
      DATA t753 TYPE i.
      DATA t754 TYPE string.
      DATA(t755) = CAST zcl_lnt_abstract_token( t735 ).
      t754 = t755->str.
      DATA(t756) = strlen( t754 ).
      t753 = t756.
      t752 = t753.
      t745 = t746 + t752.
      IF t745 < range_int8_bound_min OR t745 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t738 = NEW zcl_lnt_position( i_row = t739 i_col = t745 ).
      t734 = t738.
      t731 = t732->pop( i_end = t734 ).
    ENDIF.
  ENDMETHOD.
  METHOD up_to_uses_host_variable.
    DATA(t1) = CAST zcl_lnt_expression_node( i_up ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_expression_node( t6 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = CAST zcl_lnt_expression_node( t6 ).
      t15 = t16.
      t14 = t15->get_first_token(  ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = CAST zcl_lnt_abstract_token( t4 ).
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t17 = t20.
    ELSE.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = CAST zcl_lnt_abstract_token( t4 ).
      t23 = t24.
      t22 = t23.
      DATA t25 TYPE string.
      DATA(t26) = CAST zcl_lnt_abstract_token( t22 ).
      t25 = t26->str.
      t21 = t25.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t21.
      t17 = t27.
    ENDIF.
    t3 = t17.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = |@|.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t30.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      t28 = t32.
    ENDIF.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      t33 = t3->has.
    ENDIF.
    IF t28 IS BOUND.
      t34 = t28->has.
    ENDIF.
    IF t33 = t34.
      IF t33 = abap_false.
        t2 = abap_true.
      ELSEIF t3->value = t28->value.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    result = t2.
    
  ENDMETHOD.
  METHOD build_up_to_rows_fix.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_expression_node( i_up ).
    DATA(t4) = CAST zcl_lnt_expression_node( i_into_expression ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_expression_node( t1 ).
    t6 = t7->get_tokens(  ).
    t5 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
    t9 = t10->get_last_token(  ).
    t8 = t9.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA(t14) = VALUE i( ).
    DATA(t15) = VALUE int8( ).
    DATA(t16) = VALUE int8( ).
    DATA t17 TYPE int8.
    DATA(t18) = CONV int8( -1 ).
    t17 = t18.
    DATA t19 TYPE int8.
    DATA(t20) = CONV int8( -1 ).
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    LOOP AT t21->items INTO t23.
      t22 ?= t23.
      DATA t24 TYPE int8.
      DATA(t25) = t17.
      DATA(t26) = CONV int8( 1 ).
      t24 = t25 + t26.
      IF t24 < range_int8_bound_min OR t24 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t17 = t24.
      DATA t27 TYPE abap_bool.
      DATA(t28) = CAST zcl_lnt_abstract_token( t22 ).
      DATA(t29) = CAST zcl_lnt_abstract_token( t8 ).
      t27 = xsdbool( t28 = t29 ).
      IF t27 = abap_true.
        DATA(t30) = t17.
        t19 = t30.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA(t31) = t19.
    t16 = t31.
    DATA(t32) = CONV int8( 1 ).
    t15 = t16 + t32.
    IF t15 < range_int8_bound_min OR t15 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    IF t15 < range_int_check_lo_nzik0zk OR t15 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t14 = t15.
    t14 = t14 + 1.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    READ TABLE t13->items INDEX t14 INTO t33.
    t12 ?= t33.
    t11 = t12.
    DATA t34 TYPE REF TO zcl_lnt_position.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_position.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_position.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_position.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t39) = CAST zcl_lnt_abstract_token( t11 ).
    t38 = t39.
    DATA t40 TYPE REF TO zcl_lnt_position.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = CAST zcl_lnt_abstract_token( t38 ).
    IF t42 IS INITIAL.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_position.
      CLEAR t43.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zcl_lnt_position.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = CAST zcl_lnt_abstract_token( t38 ).
      t45 = t46.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = CAST zcl_lnt_abstract_token( t45 ).
      t47 = t48->start.
      t44 = t47.
      t40 = t44.
    ENDIF.
    t37 = t40.
    t36 = t37.
    DATA t49 TYPE REF TO zcl_lnt_position.
    CLEAR t49.
    DATA t50 TYPE abap_bool.
    DATA(t51) = CAST zcl_lnt_position( t36 ).
    t50 = xsdbool( t51 IS BOUND ).
    IF t50 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA(t53) = CAST zcl_lnt_position( t36 ).
      t52 = t53.
      t49 = t52.
    ELSE.
      DATA t54 TYPE REF TO zcl_lnt_position.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = CAST zcl_lnt_abstract_token( t8 ).
      t55 = t56.
      DATA t57 TYPE REF TO zcl_lnt_position.
      CLEAR t57.
      DATA t58 TYPE int8.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA(t61) = CAST zcl_lnt_abstract_token( t55 ).
      t60 = t61->start.
      t59 = t60.
      DATA t62 TYPE int8.
      DATA(t63) = CAST zcl_lnt_position( t59 ).
      t62 = t63->row.
      t58 = t62.
      DATA t64 TYPE int8.
      DATA t65 TYPE int8.
      DATA t66 TYPE REF TO zcl_lnt_position.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA(t68) = CAST zcl_lnt_abstract_token( t55 ).
      t67 = t68->start.
      t66 = t67.
      DATA t69 TYPE int8.
      DATA(t70) = CAST zcl_lnt_position( t66 ).
      t69 = t70->col.
      t65 = t69.
      DATA t71 TYPE int8.
      DATA t72 TYPE i.
      DATA t73 TYPE string.
      DATA(t74) = CAST zcl_lnt_abstract_token( t55 ).
      t73 = t74->str.
      DATA(t75) = strlen( t73 ).
      t72 = t75.
      t71 = t72.
      t64 = t65 + t71.
      IF t64 < range_int8_bound_min OR t64 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t57 = NEW zcl_lnt_position( i_row = t58 i_col = t64 ).
      t54 = t57.
      t49 = t54.
    ENDIF.
    t35 = t49.
    t34 = t35.
    DATA t76 TYPE REF TO zcl_lnt_irange.
    DATA t77 TYPE REF TO zcl_lnt_irange.
    DATA t78 TYPE REF TO zcl_lnt_position.
    DATA t79 TYPE REF TO zcl_lnt_abstract_token.
    DATA t80 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t81) = CAST zcl_lnt_expression_node( t3 ).
    t80 = t81->get_first_token(  ).
    t79 = t80.
    DATA t82 TYPE REF TO zcl_lnt_position.
    DATA(t83) = CAST zcl_lnt_abstract_token( t79 ).
    t82 = t83->start.
    t78 = t82.
    DATA(t84) = CAST zcl_lnt_position( t34 ).
    t77 = NEW zcl_lnt_irange( i_start = t78 i_end = t84 ).
    t76 = t77.
    DATA t85 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t87) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t86 = t87.
    DATA t88 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t88.
    DATA(t89) = CAST zlnt_runtime_map__4fdf767b61ba( t86 ).
    DATA t90 TYPE string.
    DATA(t91) = CAST zcl_lnt_syntax_input( t2 ).
    t90 = t91->filename.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    DATA t96 TYPE REF TO zcl_lnt_itext_edit.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_irange.
    CLEAR t97.
    DATA t98 TYPE REF TO zcl_lnt_position.
    CLEAR t98.
    DATA t99 TYPE REF TO zcl_lnt_abstract_token.
    DATA t100 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t101) = CAST zcl_lnt_expression_node( t4 ).
    t100 = t101->get_last_token(  ).
    t99 = t100.
    DATA t102 TYPE REF TO zcl_lnt_position.
    CLEAR t102.
    DATA t103 TYPE int8.
    DATA t104 TYPE REF TO zcl_lnt_position.
    DATA t105 TYPE REF TO zcl_lnt_position.
    DATA(t106) = CAST zcl_lnt_abstract_token( t99 ).
    t105 = t106->start.
    t104 = t105.
    DATA t107 TYPE int8.
    DATA(t108) = CAST zcl_lnt_position( t104 ).
    t107 = t108->row.
    t103 = t107.
    DATA t109 TYPE int8.
    DATA t110 TYPE int8.
    DATA t111 TYPE REF TO zcl_lnt_position.
    DATA t112 TYPE REF TO zcl_lnt_position.
    DATA(t113) = CAST zcl_lnt_abstract_token( t99 ).
    t112 = t113->start.
    t111 = t112.
    DATA t114 TYPE int8.
    DATA(t115) = CAST zcl_lnt_position( t111 ).
    t114 = t115->col.
    t110 = t114.
    DATA t116 TYPE int8.
    DATA t117 TYPE i.
    DATA t118 TYPE string.
    DATA(t119) = CAST zcl_lnt_abstract_token( t99 ).
    t118 = t119->str.
    DATA(t120) = strlen( t118 ).
    t117 = t120.
    t116 = t117.
    t109 = t110 + t116.
    IF t109 < range_int8_bound_min OR t109 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t102 = NEW zcl_lnt_position( i_row = t103 i_col = t109 ).
    t98 = t102.
    DATA t121 TYPE REF TO zcl_lnt_position.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_abstract_token.
    DATA t123 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t124) = CAST zcl_lnt_expression_node( t4 ).
    t123 = t124->get_last_token(  ).
    t122 = t123.
    DATA t125 TYPE REF TO zcl_lnt_position.
    CLEAR t125.
    DATA t126 TYPE int8.
    DATA t127 TYPE REF TO zcl_lnt_position.
    DATA t128 TYPE REF TO zcl_lnt_position.
    DATA(t129) = CAST zcl_lnt_abstract_token( t122 ).
    t128 = t129->start.
    t127 = t128.
    DATA t130 TYPE int8.
    DATA(t131) = CAST zcl_lnt_position( t127 ).
    t130 = t131->row.
    t126 = t130.
    DATA t132 TYPE int8.
    DATA t133 TYPE int8.
    DATA t134 TYPE REF TO zcl_lnt_position.
    DATA t135 TYPE REF TO zcl_lnt_position.
    DATA(t136) = CAST zcl_lnt_abstract_token( t122 ).
    t135 = t136->start.
    t134 = t135.
    DATA t137 TYPE int8.
    DATA(t138) = CAST zcl_lnt_position( t134 ).
    t137 = t138->col.
    t133 = t137.
    DATA t139 TYPE int8.
    DATA t140 TYPE i.
    DATA t141 TYPE string.
    DATA(t142) = CAST zcl_lnt_abstract_token( t122 ).
    t141 = t142->str.
    DATA(t143) = strlen( t141 ).
    t140 = t143.
    t139 = t140.
    t132 = t133 + t139.
    IF t132 < range_int8_bound_min OR t132 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t125 = NEW zcl_lnt_position( i_row = t126 i_col = t132 ).
    t121 = t125.
    t97 = NEW zcl_lnt_irange( i_start = t98 i_end = t121 ).
    DATA t144 TYPE string.
    DATA(t145) = | |.
    DATA t146 TYPE string.
    DATA(t147) = CAST zcl_lnt_expression_node( t3 ).
    t146 = t147->concat_tokens(  ).
    DATA(t148) = strlen( t145 ).
    t144 = |{ t145 }{ t146 }|.
    t96 = NEW zcl_lnt_itext_edit( i_range = t97 i_new_text = t144 ).
    APPEND t96 TO t95->items.
    DATA(t149) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    DATA t150 TYPE REF TO zcl_lnt_itext_edit.
    DATA(t151) = CAST zcl_lnt_irange( t76 ).
    DATA(t152) = ||.
    t150 = NEW zcl_lnt_itext_edit( i_range = t151 i_new_text = t152 ).
    APPEND t150 TO t149->items.
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    t92 = t153.
    t88 = t89->set( p0 = t90 p1 = t92 ).
    DATA(t154) = CAST zlnt_runtime_map__4fdf767b61ba( t86 ).
    t85 = t154.
    result = t85.
    
  ENDMETHOD.
  METHOD is_strict_mode.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    DATA(t7) = CAST zcl_lnt_syntax_input( t2 ).
    t6 = t7->scope.
    t5 = t6.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zif_lnt_configuration.
    DATA t10 TYPE REF TO zif_lnt_registry.
    DATA(t11) = CAST zcl_lnt_current_scope( t5 ).
    t10 = t11->reg.
    t9 = t10->get_config(  ).
    t8 = t9->get_language_version(  ).
    t4 = t8.
    DATA(t12) = |Cloud|.
    t3 = xsdbool( t4 = t12 ).
    IF t3 = abap_true.
      DATA(t13) = abap_true.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = CAST zcl_lnt_expression_node( t1 ).
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
    APPEND t22 TO t21->items.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
    APPEND t24 TO t23->items.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
    APPEND t26 TO t25->items.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t18 = t27.
    t16 = t17->find_direct_expressions_multi( i_type_9913 = t18 ).
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    READ TABLE t16->items INDEX 1 INTO t28.
    t15 ?= t28.
    t14 = t15.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    t30 = t31->find_direct_expression( i_type_9913 = t32 ).
    t29 = t30.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE abap_bool.
    DATA(t36) = CAST zcl_lnt_expression_node( t14 ).
    t35 = xsdbool( t36 IS BOUND ).
    t34 = t35.
    IF t35 = abap_true.
      DATA t37 TYPE abap_bool.
      DATA(t38) = CAST zcl_lnt_expression_node( t29 ).
      t37 = xsdbool( t38 IS BOUND ).
      t34 = t37.
    ENDIF.
    t33 = t34.
    IF t34 = abap_true.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t43) = CAST zcl_lnt_expression_node( t14 ).
      t42 = t43->get_first_token(  ).
      t41 = t42.
      DATA t44 TYPE REF TO zcl_lnt_position.
      DATA(t45) = CAST zcl_lnt_abstract_token( t41 ).
      t44 = t45->start.
      t40 = t44.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA(t50) = CAST zcl_lnt_expression_node( t29 ).
      t49 = t50.
      t48 = t49->get_first_token(  ).
      t47 = t48.
      DATA t51 TYPE REF TO zcl_lnt_position.
      DATA(t52) = CAST zcl_lnt_abstract_token( t47 ).
      t51 = t52->start.
      t46 = t51.
      t39 = t40->is_after( i_p = t46 ).
      t33 = t39.
    ENDIF.
    IF t33 = abap_true.
      DATA(t53) = abap_true.
      result = t53.
      RETURN.
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE REF TO zcl_lnt_expression_node.
    DATA(t56) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a ).
    t55 = t56->find_first_expression( i_type_9913 = t57 ).
    t54 = xsdbool( t55 IS BOUND ).
    IF t54 = abap_true.
      DATA(t58) = abap_true.
      result = t58.
      RETURN.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t60) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    t59 = t60->find_all_expressions( i_type_9913 = t61 ).
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    DATA t63 TYPE REF TO object.
    CLEAR t63.
    LOOP AT t59->items INTO t63.
      t62 ?= t63.
      DATA t64 TYPE abap_bool.
      DATA t65 TYPE string.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t68) = CAST zcl_lnt_expression_node( t62 ).
      t67 = t68->get_first_token(  ).
      t66 = t67.
      DATA t69 TYPE string.
      DATA(t70) = CAST zcl_lnt_abstract_token( t66 ).
      t69 = t70->str.
      t65 = t69.
      DATA(t71) = |@|.
      t64 = xsdbool( t65 = t71 ).
      IF t64 = abap_true.
        DATA(t72) = abap_true.
        result = t72.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t73 TYPE REF TO zcl_lnt_expression_node.
    DATA t74 TYPE REF TO zcl_lnt_expression_node.
    DATA(t75) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t76) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d293_8f762dd42d06 ).
    t74 = t75->find_first_expression( i_type_9913 = t76 ).
    t73 = t74.
    DATA t77 TYPE abap_bool.
    DATA t78 TYPE abap_bool.
    DATA(t79) = CAST zcl_lnt_expression_node( t73 ).
    t78 = xsdbool( t79 IS BOUND ).
    t77 = t78.
    IF t78 = abap_true.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE REF TO zcl_lnt_abstract_token.
      DATA t82 TYPE REF TO zcl_lnt_expression_node.
      DATA(t83) = CAST zcl_lnt_expression_node( t73 ).
      t82 = t83.
      DATA(t84) = |,|.
      t81 = t82->find_direct_token_by_text( i_text = t84 ).
      t80 = xsdbool( t81 IS BOUND ).
      t77 = t80.
    ENDIF.
    IF t77 = abap_true.
      DATA(t85) = abap_true.
      result = t85.
      RETURN.
    ENDIF.
    DATA(t86) = abap_false.
    result = t86.
    
  ENDMETHOD.
  METHOD strict_mode_checks.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    t4 = t5->find_all_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t7->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t10.
      DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t11.
      DATA t12 TYPE REF TO zif_lnt_node.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t14) = CAST zcl_lnt_expression_node( t8 ).
      t13 = t14.
      DATA t15 TYPE REF TO zif_lnt_node.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA t17 TYPE REF TO zif_lnt_node.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t19) = CAST zcl_lnt_abstract_node( t13 ).
        t18 = t19->children.
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        READ TABLE t18->items INDEX 1 INTO t20.
        t17 ?= t20.
        t15 = t17.
      ELSE.
        DATA t21 TYPE REF TO zif_lnt_node.
        CLEAR t21.
        t15 = t21.
      ENDIF.
      t12 = t15.
      t11 ?= t12.
      t10 = t11.
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t25) = CAST zif_lnt_union_4cf1d054( t10 ).
      t24 = t25.
      DATA t26 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = CAST zif_lnt_union_4cf1d054( t24 ).
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      IF t27 = abap_true.
        DATA t29 TYPE REF TO zif_lnt_union_daf022d4.
        CLEAR t29.
        t26 = t29.
      ELSE.
        DATA t30 TYPE REF TO zif_lnt_union_daf022d4.
        DATA t31 TYPE REF TO object.
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t33) = CAST zif_lnt_union_4cf1d054( t24 ).
        t32 = t33.
        t31 = t32->get_db65(  ).
        DATA t34 TYPE REF TO object.
        t34 = t31.
        t30 ?= t34.
        t26 = t30.
      ENDIF.
      t23 = t26.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sql_alias_field ).
      IF t22 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t38.
        DATA t39 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t40) = CAST zif_lnt_union_4cf1d054( t10 ).
        t39 = t40.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = CAST zif_lnt_union_4cf1d054( t39 ).
        IF t43 IS INITIAL.
          t42 = abap_true.
        ENDIF.
        IF t42 = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t44.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zcl_lnt_abstract_token.
          DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t47) = CAST zif_lnt_union_4cf1d054( t39 ).
          t46 = t47.
          t45 = t46->get_first_token(  ).
          t41 = t45.
        ENDIF.
        t38 = t41.
        t37 = t38.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = CAST zcl_lnt_abstract_token( t37 ).
        IF t50 IS INITIAL.
          t49 = abap_true.
        ENDIF.
        IF t49 = abap_true.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t48 = t51.
        ELSE.
          DATA t52 TYPE string.
          DATA t53 TYPE REF TO zcl_lnt_abstract_token.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t55) = CAST zcl_lnt_abstract_token( t37 ).
          t54 = t55.
          t53 = t54.
          DATA t56 TYPE string.
          DATA(t57) = CAST zcl_lnt_abstract_token( t53 ).
          t56 = t57->str.
          t52 = t56.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t52.
          t48 = t58.
        ENDIF.
        t36 = t48.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA(t61) = |@|.
          DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t62->has = abap_true.
          t62->value = t61.
          t59 = t62.
        ELSE.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t59 = t63.
        ENDIF.
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = VALUE abap_bool( ).
        IF t36 IS BOUND.
          t64 = t36->has.
        ENDIF.
        IF t59 IS BOUND.
          t65 = t59->has.
        ENDIF.
        IF t64 = t65.
          IF t64 = abap_false.
            t35 = abap_true.
          ELSEIF t36->value = t59->value.
            t35 = abap_true.
          ENDIF.
        ENDIF.
        IF t35 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t66) = VALUE abap_bool( ).
          DATA t67 TYPE REF TO object.
          CLEAR t67.
          DATA t68 TYPE REF TO zif_lnt_node.
          CLEAR t68.
          DATA t69 TYPE REF TO zif_lnt_node.
          CLEAR t69.
          DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t70.
          DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t71.
          DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t73) = CAST zif_lnt_union_4cf1d054( t10 ).
          t72 = t73.
          DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t74.
          DATA(t75) = VALUE abap_bool( ).
          DATA(t76) = CAST zif_lnt_union_4cf1d054( t72 ).
          IF t76 IS INITIAL.
            t75 = abap_true.
          ENDIF.
          IF t75 = abap_true.
            DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t77.
            t74 = t77.
          ELSE.
            DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t80) = CAST zif_lnt_union_4cf1d054( t72 ).
            t79 = t80.
            t78 = t79->get_children(  ).
            t74 = t78.
          ENDIF.
          t71 = t74.
          t70 = t71.
          DATA t81 TYPE REF TO zif_lnt_node.
          CLEAR t81.
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
          IF t83 IS INITIAL.
            t82 = abap_true.
          ENDIF.
          IF t82 = abap_true.
            DATA t84 TYPE REF TO zif_lnt_node.
            CLEAR t84.
            t81 = t84.
          ELSE.
            DATA t85 TYPE REF TO zif_lnt_node.
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
            t86 = t87.
            DATA t88 TYPE REF TO object.
            CLEAR t88.
            READ TABLE t86->items INDEX 1 INTO t88.
            t85 ?= t88.
            t81 = t85.
          ENDIF.
          t69 = t81.
          t68 = t69.
          DATA t89 TYPE REF TO object.
          CLEAR t89.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = CAST zif_lnt_node( t68 ).
          IF t91 IS INITIAL.
            t90 = abap_true.
          ENDIF.
          IF t90 = abap_true.
            DATA t92 TYPE REF TO object.
            CLEAR t92.
            t89 = t92.
          ELSE.
            DATA t93 TYPE REF TO object.
            DATA t94 TYPE REF TO zif_lnt_node.
            DATA(t95) = CAST zif_lnt_node( t68 ).
            t94 = t95.
            t93 = t94->get_db65(  ).
            t89 = t93.
          ENDIF.
          t67 = t89.
          t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_st_expres_constant ).
          IF t66 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t96 TYPE string.
      DATA t97 TYPE string.
      DATA t98 TYPE string.
      DATA(t99) = |SELECT: "|.
      DATA t100 TYPE string.
      DATA(t101) = CAST zcl_lnt_expression_node( t8 ).
      t100 = t101->concat_tokens(  ).
      DATA(t102) = strlen( t99 ).
      t98 = |{ t99 }{ t100 }|.
      DATA(t103) = |" must be escaped with @ in strict mode|.
      DATA(t104) = strlen( t98 ).
      t97 = |{ t98 }{ t103 }|.
      t96 = t97.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t106) = CAST zcl_lnt_syntax_input( t2 ).
      t105 = t106->issues.
      DATA t107 TYPE REF TO zcl_lnt_issue.
      DATA(t108) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t110) = CAST zcl_lnt_expression_node( t1 ).
      t109 = t110->get_first_token(  ).
      DATA(t111) = t96.
      DATA t112 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t112.
      t107 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t108 i_token = t109 i_message_26cb = t111 i_fix = t112 ).
      APPEND t107 TO t105->items.
    ENDLOOP.
  ENDMETHOD.
  METHOD handle_into.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t4) = CAST zlnt_runtime_arra_b72089862d0f( i_db_sources ).
    DATA(t5) = CAST zcl_lnt_expression_node( i_from ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
    t7 = t8->find_direct_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zcl_lnt_expression_node( t6 ).
      t14 = t15.
      DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t13 = t14->find_first_expression( i_type_9913 = t16 ).
      t12 = t13.
      DATA t17 TYPE abap_bool.
      DATA(t18) = CAST zcl_lnt_expression_node( t12 ).
      t17 = xsdbool( t18 IS BOUND ).
      IF t17 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = CAST zcl_lnt_expression_node( t12 ).
        t19 = t20.
        DATA(t21) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA t24 TYPE REF TO zcl_lnt_abstract_type.
          DATA t25 TYPE REF TO zif_lnt_union_89dd54d5.
          DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA(t27) = CAST zlnt_runtime_arra_b72089862d0f( t4 ).
          DATA t28 TYPE REF TO zcl_lnt_current_scope.
          DATA(t29) = CAST zcl_lnt_syntax_input( t2 ).
          t28 = t29->scope.
          DATA(t30) = CAST zcl_lnt_expression_node( t5 ).
          t25 = zcl_lnt_sy_expres_select=>build_table_type( i_fields_62af = t26 i_db_sources = t27 i_scope = t28 i_from = t30 ).
          t24 ?= t25.
          t22 = t24.
        ELSE.
          DATA t31 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t31.
          t22 = t31.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t19 i_input_967e = t21 i_type_9913 = t22 ).
      ENDIF.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        DATA(t35) = CAST zcl_lnt_expression_node( t6 ).
        t34 = t35.
        t32 = t34.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t36.
        t32 = t36.
      ENDIF.
      result = t32.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
    t38 = t39->find_direct_expression( i_type_9913 = t40 ).
    t37 = t38.
    DATA t41 TYPE abap_bool.
    DATA(t42) = CAST zcl_lnt_expression_node( t37 ).
    t41 = xsdbool( t42 IS BOUND ).
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA(t46) = CAST zcl_lnt_expression_node( t37 ).
      t45 = t46.
      DATA(t47) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t44 = t45->find_all_expressions( i_type_9913 = t47 ).
      t43 = t44.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE i.
      DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
      t49 = lines( t50->items ).
      DATA(t51) = 1.
      t48 = xsdbool( t49 = t51 ).
      IF t48 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        READ TABLE t53->items INDEX 1 INTO t54.
        t52 ?= t54.
        DATA(t55) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t58) = CAST zlnt_runtime_arra_b72089862d0f( t4 ).
        DATA t59 TYPE REF TO zcl_lnt_current_scope.
        DATA(t60) = CAST zcl_lnt_syntax_input( t2 ).
        t59 = t60->scope.
        t56 = zcl_lnt_sy_expres_select=>build_structure_type( i_fields_62af = t57 i_db_sources = t58 i_scope = t59 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t52 i_input_967e = t55 i_type_9913 = t56 ).
      ELSE.
        DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
        DATA t62 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t62.
        DATA t63 TYPE REF TO object.
        CLEAR t63.
        LOOP AT t61->items INTO t63.
          t62 ?= t63.
          DATA(t64) = CAST zcl_lnt_expression_node( t62 ).
          DATA(t65) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t66 TYPE REF TO zcl_lnt_void_type.
          CLEAR t66.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = |SELECT_todo1|.
            DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t70->has = abap_true.
            t70->value = t69.
            t67 = t70.
          ELSE.
            DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t71.
            t67 = t71.
          ENDIF.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          t66 = zcl_lnt_void_type=>get_db65( i_voided = t67 i_qualified_name = t72 ).
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t64 i_input_967e = t65 i_type_9913 = t66 ).
        ENDLOOP.
      ENDIF.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        DATA(t76) = CAST zcl_lnt_expression_node( t37 ).
        t75 = t76.
        t73 = t75.
      ELSE.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        t73 = t77.
      ENDIF.
      result = t73.
      RETURN.
    ENDIF.
    DATA t78 TYPE REF TO zcl_lnt_expression_node.
    DATA t79 TYPE REF TO zcl_lnt_expression_node.
    DATA(t80) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t81) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
    t79 = t80->find_direct_expression( i_type_9913 = t81 ).
    t78 = t79.
    DATA t82 TYPE abap_bool.
    DATA(t83) = CAST zcl_lnt_expression_node( t78 ).
    t82 = xsdbool( t83 IS BOUND ).
    IF t82 = abap_true.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE abap_bool.
      DATA t87 TYPE i.
      DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t87 = lines( t88->items ).
      DATA(t89) = 1.
      t86 = xsdbool( t87 = t89 ).
      t85 = t86.
      IF t86 = abap_true.
        DATA(t90) = VALUE abap_bool( ).
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        DATA t92 TYPE REF TO zcl_lnt_expression_node.
        DATA t93 TYPE REF TO zcl_lnt_expression_node.
        DATA t94 TYPE REF TO zcl_lnt_shape_14fea903.
        DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA t96 TYPE REF TO object.
        CLEAR t96.
        READ TABLE t95->items INDEX 1 INTO t96.
        t94 ?= t96.
        t93 = t94->expression.
        DATA(t97) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
        t92 = t93->find_direct_expression( i_type_9913 = t97 ).
        t91 = t92.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        t98 = t99.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = VALUE abap_bool( ).
        DATA(t102) = CAST zcl_lnt_expression_node( t91 ).
        IF t102 IS INITIAL.
          t101 = abap_true.
        ENDIF.
        t100 = xsdbool( t101 = abap_false ).
        t90 = t100.
        t85 = t90.
      ENDIF.
      t84 = t85.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      DATA(t106) = CAST zcl_lnt_expression_node( t78 ).
      t105 = t106.
      DATA(t107) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc ).
      t104 = t105->find_direct_expressions( i_type_9913 = t107 ).
      t103 = t104.
      DATA t108 TYPE abap_bool.
      DATA t109 TYPE abap_bool.
      DATA t110 TYPE i.
      DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
      t110 = lines( t111->items ).
      DATA t112 TYPE i.
      DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t112 = lines( t113->items ).
      t109 = xsdbool( t110 <> t112 ).
      t108 = t109.
      IF t109 = abap_true.
        DATA t114 TYPE abap_bool.
        DATA(t115) = t84.
        DATA(t116) = abap_true.
        t114 = xsdbool( t115 <> t116 ).
        t108 = t114.
      ENDIF.
      IF t108 = abap_true.
        DATA t117 TYPE string.
        DATA(t118) = |number of fields selected vs list does not match|.
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t120) = CAST zcl_lnt_syntax_input( t2 ).
        t119 = t120->issues.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        DATA(t122) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t124) = CAST zcl_lnt_expression_node( t1 ).
        t123 = t124->get_first_token(  ).
        DATA(t125) = t117.
        DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t126.
        t121 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t122 i_token = t123 i_message_26cb = t125 i_fix = t126 ).
        APPEND t121 TO t119->items.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        result = t127.
        RETURN.
      ENDIF.
      DATA t128 TYPE i.
      DATA(t129) = 0.
      t128 = t129.
      DO.
        DATA t130 TYPE abap_bool.
        DATA(t131) = t128.
        DATA t132 TYPE i.
        DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
        t132 = lines( t133->items ).
        t130 = xsdbool( t131 < t132 ).
        IF t130 = abap_false.
          EXIT.
        ENDIF.
        DATA t134 TYPE REF TO zcl_lnt_expression_node.
        DATA t135 TYPE REF TO zcl_lnt_expression_node.
        DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
        DATA(t137) = t128.
        t137 = t137 + 1.
        DATA t138 TYPE REF TO object.
        CLEAR t138.
        READ TABLE t136->items INDEX t137 INTO t138.
        t135 ?= t138.
        t134 = t135.
        DATA t139 TYPE REF TO zcl_lnt_shape_14fea903.
        DATA t140 TYPE REF TO zcl_lnt_shape_14fea903.
        DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t142) = t128.
        t142 = t142 + 1.
        DATA t143 TYPE REF TO object.
        CLEAR t143.
        READ TABLE t141->items INDEX t142 INTO t143.
        t140 ?= t143.
        t139 = t140.
        DATA t144 TYPE REF TO zcl_lnt_expression_node.
        DATA t145 TYPE REF TO zcl_lnt_expression_node.
        DATA(t146) = CAST zcl_lnt_expression_node( t134 ).
        DATA(t147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
        t145 = t146->find_first_expression( i_type_9913 = t147 ).
        t144 = t145.
        DATA t148 TYPE abap_bool.
        DATA(t149) = CAST zcl_lnt_expression_node( t144 ).
        t148 = xsdbool( t149 IS BOUND ).
        IF t148 = abap_true.
          DATA(t150) = t84.
          IF t150 = abap_true.
            DATA t151 TYPE string.
            DATA(t152) = |dynamic field list, inlining not possible|.
            t151 = t152.
            DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t154) = CAST zcl_lnt_syntax_input( t2 ).
            t153 = t154->issues.
            DATA t155 TYPE REF TO zcl_lnt_issue.
            DATA(t156) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t157 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t158) = CAST zcl_lnt_expression_node( t1 ).
            t157 = t158->get_first_token(  ).
            DATA(t159) = t151.
            DATA t160 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t160.
            t155 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t156 i_token = t157 i_message_26cb = t159 i_fix = t160 ).
            APPEND t155 TO t153->items.
            DATA t161 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t161.
            result = t161.
            RETURN.
          ENDIF.
          DATA t162 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t162.
          DATA t163 TYPE REF TO zcl_lnt_void_type.
          CLEAR t163.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA(t165) = abap_true.
          IF t165 = abap_true.
            DATA(t166) = |SELECT_todo2|.
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
          DATA(t170) = VALUE abap_bool( ).
          DATA t171 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t171.
          IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
            zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
          ENDIF.
          t171 = zcl_lnt_select_module=>is_simple.
          DATA t172 TYPE string.
          DATA(t173) = CAST zcl_lnt_shape_14fea903( t139 ).
          t172 = t173->code.
          t170 = t171->test( p0 = t172 ).
          IF t170 = abap_true.
            DATA(t174) = CAST zlnt_runtime_arra_b72089862d0f( t4 ).
            DATA t175 TYPE REF TO zif_lnt_union_c74a232f.
            CLEAR t175.
            LOOP AT t174->items INTO t175.
              DATA(t176) = VALUE abap_bool( ).
              DATA t177 TYPE REF TO zif_lnt_union_c74a232f.
              DATA(t178) = CAST zif_lnt_union_c74a232f( t175 ).
              t177 = t178.
              DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t180.
              t179 = t180.
              DATA(t181) = VALUE abap_bool( ).
              DATA(t182) = CAST zif_lnt_union_c74a232f( t177 ).
              IF t182 IS INITIAL.
                t181 = abap_true.
              ENDIF.
              t176 = t181.
              IF t176 = abap_true.
                CONTINUE.
              ENDIF.
              DATA t183 TYPE REF TO zcl_lnt_abstract_type.
              DATA t184 TYPE REF TO zcl_lnt_abstract_type.
              DATA t185 TYPE REF TO zif_lnt_union_c74a232f.
              DATA(t186) = CAST zif_lnt_union_c74a232f( t175 ).
              t185 = t186.
              DATA t187 TYPE REF TO zif_lnt_registry.
              DATA t188 TYPE REF TO zcl_lnt_current_scope.
              DATA t189 TYPE REF TO zcl_lnt_current_scope.
              DATA(t190) = CAST zcl_lnt_syntax_input( t2 ).
              t189 = t190->scope.
              t188 = t189.
              DATA t191 TYPE REF TO zif_lnt_registry.
              DATA(t192) = CAST zcl_lnt_current_scope( t188 ).
              t191 = t192->reg.
              t187 = t191.
              t184 = t185->parse_type( i_reg_f149 = t187 ).
              t183 = t184.
              DATA t193 TYPE abap_bool.
              DATA(t194) = CAST zcl_lnt_abstract_type( t183 ).
              t193 = xsdbool( t194 IS BOUND AND t194 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t193 = abap_true.
                DATA t195 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t195.
                DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t196.
                DATA t197 TYPE REF TO zcl_lnt_structure_type.
                DATA t198 TYPE REF TO zcl_lnt_structure_type.
                DATA(t199) = CAST zcl_lnt_abstract_type( t183 ).
                t198 ?= t199.
                t197 = t198.
                DATA t200 TYPE string.
                DATA t201 TYPE string.
                DATA(t202) = CAST zcl_lnt_shape_14fea903( t139 ).
                t201 = t202->code.
                t200 = t201.
                DATA t203 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t203.
                DATA t204 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                DATA(t205) = CAST zcl_lnt_structure_type( t197 ).
                t204 = t205->indexed.
                DATA t206 TYPE string.
                DATA(t207) = t200.
                DATA(t208) = strlen( t207 ).
                t206 = t207.
                IF t206 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t206 TO UPPER CASE.
                ELSE.
                  t206 = zlnt_runtime_uppe_91169605024d=>full( t206 ).
                ENDIF.
                t203 = t204->get( p0 = t206 ).
                t196 = t203.
                t195 = t196.
                DATA t209 TYPE abap_bool.
                DATA(t210) = CAST zcl_lnt_abstract_type( t195 ).
                t209 = xsdbool( t210 IS BOUND ).
                IF t209 = abap_true.
                  DATA t211 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t212) = CAST zcl_lnt_abstract_type( t195 ).
                  t211 = t212.
                  t162 = t211.
                  EXIT.
                ENDIF.
              ENDIF.
            ENDLOOP.
          ENDIF.
          DATA t213 TYPE REF TO zcl_lnt_expression_node.
          DATA(t214) = CAST zcl_lnt_expression_node( t144 ).
          t213 = t214.
          DATA(t215) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t216 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t216.
          DATA(t217) = abap_true.
          IF t217 = abap_true.
            DATA(t218) = CAST zcl_lnt_abstract_type( t162 ).
            t216 = t218.
          ELSE.
            DATA t219 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t219.
            t216 = t219.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t213 i_input_967e = t215 i_type_9913 = t216 ).
        ENDIF.
        DATA t220 TYPE i.
        DATA(t221) = t128.
        DATA(t222) = 1.
        t220 = t221 + t222.
        t128 = t220.
      ENDDO.
      DATA t223 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t223.
      DATA(t224) = abap_true.
      IF t224 = abap_true.
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        DATA(t226) = CAST zcl_lnt_expression_node( t78 ).
        t225 = t226.
        t223 = t225.
      ELSE.
        DATA t227 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t227.
        t223 = t227.
      ENDIF.
      result = t223.
      RETURN.
    ENDIF.
    DATA t228 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t228.
    result = t228.
    
  ENDMETHOD.
  METHOD count_result_type.
    DATA(t1) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    DATA(t7) = CAST zcl_lnt_current_scope( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    DATA t9 TYPE REF TO zif_lnt_configuration.
    DATA t10 TYPE REF TO zif_lnt_registry.
    DATA(t11) = CAST zcl_lnt_current_scope( t6 ).
    t10 = t11->reg.
    t9 = t10->get_config(  ).
    t8 = t9->get_release(  ).
    t5 = t8.
    DATA t12 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t14.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t14 = zcl_lnt_version_module=>release_b8cd.
    DATA(t15) = |v750|.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    t4 = zcl_lnt_version_module=>release_at_least( i_running = t5 i_required = t12 ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE REF TO zcl_lnt_current_scope.
      DATA(t18) = CAST zcl_lnt_current_scope( t1 ).
      t17 = t18.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE REF TO zif_lnt_configuration.
      DATA t21 TYPE REF TO zif_lnt_registry.
      DATA(t22) = CAST zcl_lnt_current_scope( t17 ).
      t21 = t22->reg.
      t20 = t21->get_config(  ).
      t19 = t20->is_open_abap(  ).
      t16 = t19.
      t3 = t16.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_current_scope.
      DATA(t26) = CAST zcl_lnt_current_scope( t1 ).
      t25 = t26.
      DATA t27 TYPE string.
      DATA t28 TYPE REF TO zif_lnt_configuration.
      DATA t29 TYPE REF TO zif_lnt_registry.
      DATA(t30) = CAST zcl_lnt_current_scope( t25 ).
      t29 = t30->reg.
      t28 = t29->get_config(  ).
      t27 = t28->get_language_version(  ).
      t24 = t27.
      DATA(t31) = |Cloud|.
      t23 = xsdbool( t24 = t31 ).
      t2 = t23.
    ENDIF.
    IF t2 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_integer8_type.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t33.
      t32 = NEW zcl_lnt_integer8_type( i_input_967e = t33 ).
      result = t32.
      RETURN.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_integer_type.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t35.
      t34 = zcl_lnt_integer_type=>get_db65( i_input_967e = t35 ).
      result = t34.
      
    ENDIF.
  ENDMETHOD.
  METHOD build_structure_type.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t2) = CAST zlnt_runtime_arra_b72089862d0f( i_db_sources ).
    DATA(t3) = CAST zcl_lnt_current_scope( i_scope ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t6 = lines( t7->items ).
    DATA(t8) = 1.
    t5 = xsdbool( t6 = t8 ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE i.
      DATA(t11) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
      t10 = lines( t11->items ).
      DATA(t12) = 1.
      t9 = xsdbool( t10 = t12 ).
      t4 = t9.
    ENDIF.
    IF t4 = abap_true.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t14.
      DATA(t15) = `^count\(\s*\*\s*\)$`.
      DATA(t16) = |i|.
      CREATE OBJECT t14 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t15 flags = t16.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      READ TABLE t19->items INDEX 1 INTO t20.
      t18 ?= t20.
      t17 = t18->code.
      t13 = t14->test( p0 = t17 ).
      IF t13 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t21.
        DATA(t22) = abap_true.
        IF t22 = abap_true.
          DATA t23 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t24) = CAST zcl_lnt_current_scope( t3 ).
          t23 = zcl_lnt_sy_expres_select=>count_result_type( i_scope = t24 ).
          t21 = t23.
        ELSE.
          DATA t25 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t25.
          t21 = t25.
        ENDIF.
        result = t21.
        RETURN.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t29 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t30) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
      DATA(t31) = 0.
      DATA t32 TYPE REF TO object.
      t32 = t30->get( p0 = t31 ).
      t29 ?= t32.
      t28 = t29.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = CAST zif_lnt_union_c74a232f( t28 ).
      IF t35 IS INITIAL.
        t34 = abap_true.
      ENDIF.
      IF t34 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t36.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_abstract_type.
        DATA t38 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t39) = CAST zif_lnt_union_c74a232f( t28 ).
        t38 = t39.
        DATA t40 TYPE REF TO zif_lnt_registry.
        DATA t41 TYPE REF TO zcl_lnt_current_scope.
        DATA(t42) = CAST zcl_lnt_current_scope( t3 ).
        t41 = t42.
        DATA t43 TYPE REF TO zif_lnt_registry.
        DATA(t44) = CAST zcl_lnt_current_scope( t41 ).
        t43 = t44->reg.
        t40 = t43.
        t37 = t38->parse_type( i_reg_f149 = t40 ).
        t33 = t37.
      ENDIF.
      t27 = t33.
      t26 = t27.
      DATA(t45) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t47) = CAST zcl_lnt_abstract_type( t26 ).
      t46 = t47.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t48 = t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = CAST zcl_lnt_abstract_type( t46 ).
      IF t51 IS INITIAL.
        t50 = abap_true.
      ENDIF.
      t45 = t50.
      IF t45 = abap_true.
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA t56 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t57 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t58) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
        DATA(t59) = 0.
        DATA t60 TYPE REF TO object.
        t60 = t58->get( p0 = t59 ).
        t57 ?= t60.
        t56 = t57.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = CAST zif_lnt_union_c74a232f( t56 ).
        IF t63 IS INITIAL.
          t62 = abap_true.
        ENDIF.
        IF t62 = abap_true.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t61 = t64.
        ELSE.
          DATA t65 TYPE string.
          DATA t66 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t67) = CAST zif_lnt_union_c74a232f( t56 ).
          t66 = t67.
          t65 = t66->get_name(  ).
          DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t68->has = abap_true.
          t68->value = t65.
          t61 = t68.
        ENDIF.
        t55 = t61.
        t54 = t55.
        DATA(t69) = VALUE string( ).
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = CAST zlnt_runtime_opti_4ba3bdccd169( t54 ).
        IF t71 IS BOUND.
          IF t71->has = abap_true.
            t70 = xsdbool( strlen( t71->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t70 = abap_true.
          DATA t72 TYPE string.
          DATA(t73) = CAST zlnt_runtime_opti_4ba3bdccd169( t54 ).
          t72 = t73->value.
          t69 = t72.
        ELSE.
          DATA(t74) = |buildStructureTypeError|.
          t69 = t74.
        ENDIF.
        t53 = t69.
        t52 = t53.
        DATA t75 TYPE abap_bool.
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE REF TO zif_lnt_registry.
        DATA t78 TYPE REF TO zcl_lnt_current_scope.
        DATA(t79) = CAST zcl_lnt_current_scope( t3 ).
        t78 = t79.
        DATA t80 TYPE REF TO zif_lnt_registry.
        DATA(t81) = CAST zcl_lnt_current_scope( t78 ).
        t80 = t81->reg.
        t77 = t80.
        DATA(t82) = t52.
        t76 = t77->in_error_namespace( i_name = t82 ).
        DATA(t83) = abap_true.
        t75 = xsdbool( t76 = t83 ).
        IF t75 = abap_true.
          DATA t84 TYPE REF TO zcl_lnt_unknown_type.
          DATA t85 TYPE string.
          DATA t86 TYPE string.
          DATA(t87) = |Select, |.
          DATA(t88) = t52.
          DATA(t89) = strlen( t87 ).
          t86 = |{ t87 }{ t88 }|.
          DATA(t90) = | not found|.
          DATA(t91) = strlen( t86 ).
          t85 = |{ t86 }{ t90 }|.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t84 = NEW zcl_lnt_unknown_type( i_error = t85 i_qualified_name = t92 ).
          result = t84.
          RETURN.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_void_type.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA t95 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t96 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t97) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
          DATA(t98) = 0.
          DATA t99 TYPE REF TO object.
          t99 = t97->get( p0 = t98 ).
          t96 ?= t99.
          t95 = t96.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t101) = VALUE abap_bool( ).
          DATA(t102) = CAST zif_lnt_union_c74a232f( t95 ).
          IF t102 IS INITIAL.
            t101 = abap_true.
          ENDIF.
          IF t101 = abap_true.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            t100 = t103.
          ELSE.
            DATA t104 TYPE string.
            DATA t105 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t106) = CAST zif_lnt_union_c74a232f( t95 ).
            t105 = t106.
            t104 = t105->get_name(  ).
            DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t107->has = abap_true.
            t107->value = t104.
            t100 = t107.
          ENDIF.
          t94 = t100.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          t93 = zcl_lnt_void_type=>get_db65( i_voided = t94 i_qualified_name = t108 ).
          result = t93.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t109 TYPE abap_bool.
      DATA t110 TYPE string.
      DATA t111 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t113 TYPE REF TO object.
      CLEAR t113.
      READ TABLE t112->items INDEX 1 INTO t113.
      t111 ?= t113.
      t110 = t111->code.
      DATA(t114) = |*|.
      t109 = xsdbool( t110 = t114 ).
      IF t109 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA t117 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t118) = CAST zcl_lnt_abstract_type( t26 ).
          t117 = t118.
          t115 = t117.
        ELSE.
          DATA t119 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t119.
          t115 = t119.
        ENDIF.
        result = t115.
        RETURN.
      ELSE.
        DATA t120 TYPE abap_bool.
        DATA(t121) = CAST zcl_lnt_abstract_type( t26 ).
        t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t120 = abap_true.
          DATA t122 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t123.
          DATA t124 TYPE REF TO zcl_lnt_structure_type.
          DATA t125 TYPE REF TO zcl_lnt_structure_type.
          DATA(t126) = CAST zcl_lnt_abstract_type( t26 ).
          t125 ?= t126.
          t124 = t125.
          DATA t127 TYPE string.
          DATA t128 TYPE string.
          DATA t129 TYPE REF TO zcl_lnt_shape_14fea903.
          DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          DATA t131 TYPE REF TO object.
          CLEAR t131.
          READ TABLE t130->items INDEX 1 INTO t131.
          t129 ?= t131.
          t128 = t129->code.
          t127 = t128.
          DATA t132 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t132.
          DATA t133 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          DATA(t134) = CAST zcl_lnt_structure_type( t124 ).
          t133 = t134->indexed.
          DATA t135 TYPE string.
          DATA(t136) = t127.
          DATA(t137) = strlen( t136 ).
          t135 = t136.
          IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t135 TO UPPER CASE.
          ELSE.
            t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
          ENDIF.
          t132 = t133->get( p0 = t135 ).
          t123 = t132.
          t122 = t123.
          DATA t138 TYPE abap_bool.
          DATA(t139) = CAST zcl_lnt_abstract_type( t122 ).
          t138 = xsdbool( t139 IS BOUND ).
          IF t138 = abap_true.
            DATA t140 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t140.
            DATA(t141) = abap_true.
            IF t141 = abap_true.
              DATA t142 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t143) = CAST zcl_lnt_abstract_type( t122 ).
              t142 = t143.
              t140 = t142.
            ELSE.
              DATA t144 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t144.
              t140 = t144.
            ENDIF.
            result = t140.
            RETURN.
          ELSE.
            DATA t145 TYPE abap_bool.
            DATA t146 TYPE string.
            DATA t147 TYPE REF TO zcl_lnt_shape_14fea903.
            DATA(t148) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
            DATA t149 TYPE REF TO object.
            CLEAR t149.
            READ TABLE t148->items INDEX 1 INTO t149.
            t147 ?= t149.
            t146 = t147->code.
            DATA(t150) = |COUNT(*)|.
            t145 = xsdbool( t146 = t150 ).
            IF t145 = abap_true.
              DATA(t151) = VALUE abap_bool( ).
              DATA(t152) = VALUE abap_bool( ).
              DATA(t153) = VALUE abap_bool( ).
              DATA t154 TYPE REF TO zcl_lnt_abap_release.
              DATA t155 TYPE REF TO zcl_lnt_current_scope.
              DATA(t156) = CAST zcl_lnt_current_scope( t3 ).
              t155 = t156.
              DATA t157 TYPE REF TO zcl_lnt_abap_release.
              DATA t158 TYPE REF TO zif_lnt_configuration.
              DATA t159 TYPE REF TO zif_lnt_registry.
              DATA(t160) = CAST zcl_lnt_current_scope( t155 ).
              t159 = t160->reg.
              t158 = t159->get_config(  ).
              t157 = t158->get_release(  ).
              t154 = t157.
              DATA t161 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t161.
              DATA t162 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t162.
              DATA t163 TYPE REF TO zlnt_runtime_map__201f3699a39e.
              CLEAR t163.
              IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
                zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
              ENDIF.
              t163 = zcl_lnt_version_module=>release_b8cd.
              DATA(t164) = |v750|.
              t162 = t163->get( p0 = t164 ).
              t161 = t162.
              t153 = zcl_lnt_version_module=>release_at_least( i_running = t154 i_required = t161 ).
              t152 = t153.
              IF t153 = abap_false.
                DATA t165 TYPE abap_bool.
                DATA t166 TYPE REF TO zcl_lnt_current_scope.
                DATA(t167) = CAST zcl_lnt_current_scope( t3 ).
                t166 = t167.
                DATA t168 TYPE abap_bool.
                DATA t169 TYPE REF TO zif_lnt_configuration.
                DATA t170 TYPE REF TO zif_lnt_registry.
                DATA(t171) = CAST zcl_lnt_current_scope( t166 ).
                t170 = t171->reg.
                t169 = t170->get_config(  ).
                t168 = t169->is_open_abap(  ).
                t165 = t168.
                t152 = t165.
              ENDIF.
              t151 = t152.
              IF t152 = abap_false.
                DATA t172 TYPE abap_bool.
                DATA t173 TYPE string.
                DATA t174 TYPE REF TO zcl_lnt_current_scope.
                DATA(t175) = CAST zcl_lnt_current_scope( t3 ).
                t174 = t175.
                DATA t176 TYPE string.
                DATA t177 TYPE REF TO zif_lnt_configuration.
                DATA t178 TYPE REF TO zif_lnt_registry.
                DATA(t179) = CAST zcl_lnt_current_scope( t174 ).
                t178 = t179->reg.
                t177 = t178->get_config(  ).
                t176 = t177->get_language_version(  ).
                t173 = t176.
                DATA(t180) = |Cloud|.
                t172 = xsdbool( t173 = t180 ).
                t151 = t172.
              ENDIF.
              IF t151 = abap_true.
                DATA t181 TYPE REF TO zcl_lnt_integer8_type.
                DATA t182 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t182.
                t181 = NEW zcl_lnt_integer8_type( i_input_967e = t182 ).
                result = t181.
                RETURN.
              ELSE.
                DATA t183 TYPE REF TO zcl_lnt_integer_type.
                DATA t184 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t184.
                t183 = zcl_lnt_integer_type=>get_db65( i_input_967e = t184 ).
                result = t183.
                RETURN.
              ENDIF.
            ELSE.
              DATA t185 TYPE REF TO zcl_lnt_void_type.
              CLEAR t185.
              DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t186.
              DATA(t187) = abap_true.
              IF t187 = abap_true.
                DATA(t188) = |SELECT_todo11|.
                DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t189->has = abap_true.
                t189->value = t188.
                t186 = t189.
              ELSE.
                DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t190.
                t186 = t190.
              ENDIF.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              t185 = zcl_lnt_void_type=>get_db65( i_voided = t186 i_qualified_name = t191 ).
              result = t185.
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t192 TYPE REF TO zcl_lnt_void_type.
          CLEAR t192.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          DATA(t194) = abap_true.
          IF t194 = abap_true.
            DATA(t195) = |SELECT_todo10|.
            DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t196->has = abap_true.
            t196->value = t195.
            t193 = t196.
          ELSE.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            t193 = t197.
          ENDIF.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          t192 = zcl_lnt_void_type=>get_db65( i_voided = t193 i_qualified_name = t198 ).
          result = t192.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t199 TYPE abap_bool.
      DATA t200 TYPE i.
      DATA(t201) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
      t200 = lines( t201->items ).
      DATA(t202) = 1.
      t199 = xsdbool( t200 = t202 ).
      IF t199 = abap_true.
        DATA t203 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t203.
        DATA t204 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t204.
        DATA t205 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t206 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t207) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
        DATA(t208) = 0.
        DATA t209 TYPE REF TO object.
        t209 = t207->get( p0 = t208 ).
        t206 ?= t209.
        t205 = t206.
        DATA t210 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t210.
        DATA(t211) = VALUE abap_bool( ).
        DATA(t212) = CAST zif_lnt_union_c74a232f( t205 ).
        IF t212 IS INITIAL.
          t211 = abap_true.
        ENDIF.
        IF t211 = abap_true.
          DATA t213 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t213.
          t210 = t213.
        ELSE.
          DATA t214 TYPE REF TO zcl_lnt_abstract_type.
          DATA t215 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t216) = CAST zif_lnt_union_c74a232f( t205 ).
          t215 = t216.
          DATA t217 TYPE REF TO zif_lnt_registry.
          DATA t218 TYPE REF TO zcl_lnt_current_scope.
          DATA(t219) = CAST zcl_lnt_current_scope( t3 ).
          t218 = t219.
          DATA t220 TYPE REF TO zif_lnt_registry.
          DATA(t221) = CAST zcl_lnt_current_scope( t218 ).
          t220 = t221->reg.
          t217 = t220.
          t214 = t215->parse_type( i_reg_f149 = t217 ).
          t210 = t214.
        ENDIF.
        t204 = t210.
        t203 = t204.
        DATA(t222) = VALUE abap_bool( ).
        DATA t223 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t224) = CAST zcl_lnt_abstract_type( t203 ).
        t223 = t224.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t226.
        t225 = t226.
        DATA(t227) = VALUE abap_bool( ).
        DATA(t228) = CAST zcl_lnt_abstract_type( t223 ).
        IF t228 IS INITIAL.
          t227 = abap_true.
        ENDIF.
        t222 = t227.
        IF t222 = abap_true.
          DATA(t229) = VALUE string( ).
          DATA(t230) = VALUE string( ).
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t232.
          DATA t233 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t234 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t235) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
          DATA(t236) = 0.
          DATA t237 TYPE REF TO object.
          t237 = t235->get( p0 = t236 ).
          t234 ?= t237.
          t233 = t234.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t238.
          DATA(t239) = VALUE abap_bool( ).
          DATA(t240) = CAST zif_lnt_union_c74a232f( t233 ).
          IF t240 IS INITIAL.
            t239 = abap_true.
          ENDIF.
          IF t239 = abap_true.
            DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t241.
            t238 = t241.
          ELSE.
            DATA t242 TYPE string.
            DATA t243 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t244) = CAST zif_lnt_union_c74a232f( t233 ).
            t243 = t244.
            t242 = t243->get_name(  ).
            DATA(t245) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t245->has = abap_true.
            t245->value = t242.
            t238 = t245.
          ENDIF.
          t232 = t238.
          t231 = t232.
          DATA(t246) = VALUE string( ).
          DATA(t247) = VALUE abap_bool( ).
          DATA(t248) = CAST zlnt_runtime_opti_4ba3bdccd169( t231 ).
          IF t248 IS BOUND.
            IF t248->has = abap_true.
              t247 = xsdbool( strlen( t248->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t247 = abap_true.
            DATA t249 TYPE string.
            DATA(t250) = CAST zlnt_runtime_opti_4ba3bdccd169( t231 ).
            t249 = t250->value.
            t246 = t249.
          ELSE.
            DATA(t251) = |buildStructureTypeError|.
            t246 = t251.
          ENDIF.
          t230 = t246.
          t229 = t230.
          DATA t252 TYPE abap_bool.
          DATA t253 TYPE abap_bool.
          DATA t254 TYPE REF TO zif_lnt_registry.
          DATA t255 TYPE REF TO zcl_lnt_current_scope.
          DATA(t256) = CAST zcl_lnt_current_scope( t3 ).
          t255 = t256.
          DATA t257 TYPE REF TO zif_lnt_registry.
          DATA(t258) = CAST zcl_lnt_current_scope( t255 ).
          t257 = t258->reg.
          t254 = t257.
          DATA(t259) = t229.
          t253 = t254->in_error_namespace( i_name = t259 ).
          DATA(t260) = abap_true.
          t252 = xsdbool( t253 = t260 ).
          IF t252 = abap_true.
            DATA t261 TYPE REF TO zcl_lnt_unknown_type.
            DATA t262 TYPE string.
            DATA t263 TYPE string.
            DATA(t264) = |Select, |.
            DATA(t265) = t229.
            DATA(t266) = strlen( t264 ).
            t263 = |{ t264 }{ t265 }|.
            DATA(t267) = | not found|.
            DATA(t268) = strlen( t263 ).
            t262 = |{ t263 }{ t267 }|.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t269.
            t261 = NEW zcl_lnt_unknown_type( i_error = t262 i_qualified_name = t269 ).
            result = t261.
            RETURN.
          ELSE.
            DATA t270 TYPE REF TO zcl_lnt_void_type.
            CLEAR t270.
            DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t271.
            DATA t272 TYPE REF TO zif_lnt_union_c74a232f.
            DATA t273 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t274) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
            DATA(t275) = 0.
            DATA t276 TYPE REF TO object.
            t276 = t274->get( p0 = t275 ).
            t273 ?= t276.
            t272 = t273.
            DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t277.
            DATA(t278) = VALUE abap_bool( ).
            DATA(t279) = CAST zif_lnt_union_c74a232f( t272 ).
            IF t279 IS INITIAL.
              t278 = abap_true.
            ENDIF.
            IF t278 = abap_true.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              t277 = t280.
            ELSE.
              DATA t281 TYPE string.
              DATA t282 TYPE REF TO zif_lnt_union_c74a232f.
              DATA(t283) = CAST zif_lnt_union_c74a232f( t272 ).
              t282 = t283.
              t281 = t282->get_name(  ).
              DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t284->has = abap_true.
              t284->value = t281.
              t277 = t284.
            ENDIF.
            t271 = t277.
            DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t285.
            t270 = zcl_lnt_void_type=>get_db65( i_voided = t271 i_qualified_name = t285 ).
            result = t270.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t286 TYPE abap_bool.
        DATA t287 TYPE abap_bool.
        DATA(t288) = CAST zcl_lnt_abstract_type( t203 ).
        t287 = xsdbool( t288 IS BOUND AND t288 IS INSTANCE OF zcl_lnt_structure_type ).
        t286 = xsdbool( t287 = abap_false ).
        IF t286 = abap_true.
          DATA t289 TYPE REF TO zcl_lnt_void_type.
          CLEAR t289.
          DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t290.
          DATA(t291) = abap_true.
          IF t291 = abap_true.
            DATA(t292) = |SELECT_todo14|.
            DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t293->has = abap_true.
            t293->value = t292.
            t290 = t293.
          ELSE.
            DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t294.
            t290 = t294.
          ENDIF.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          t289 = zcl_lnt_void_type=>get_db65( i_voided = t290 i_qualified_name = t295 ).
          result = t289.
          RETURN.
        ENDIF.
        DATA(t296) = VALUE abap_bool( ).
        DATA(t297) = VALUE abap_bool( ).
        DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t299) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        t298 = t299.
        DATA t300 TYPE i.
        DATA t301 TYPE i.
        DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t298 ).
        t301 = lines( t302->items ).
        t300 = t301.
        DATA t303 TYPE i.
        DATA(t304) = 0.
        t303 = t304.
        DATA t305 TYPE abap_bool.
        DATA(t306) = abap_true.
        t305 = t306.
        DO.
          DATA t307 TYPE abap_bool.
          DATA(t308) = t303.
          DATA(t309) = t300.
          t307 = xsdbool( t308 < t309 ).
          IF t307 = abap_false.
            EXIT.
          ENDIF.
          DATA t310 TYPE REF TO zcl_lnt_shape_14fea903.
          DATA t311 TYPE REF TO zcl_lnt_shape_14fea903.
          DATA t312 TYPE REF TO zcl_lnt_shape_14fea903.
          DATA(t313) = CAST zlnt_runtime_arra_c22708faf2e3( t298 ).
          DATA(t314) = t303.
          DATA t315 TYPE REF TO object.
          t315 = t313->get( p0 = t314 ).
          t312 ?= t315.
          t311 = t312.
          t310 = t311.
          DATA(t316) = VALUE abap_bool( ).
          DATA(t317) = VALUE abap_bool( ).
          DATA t318 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t318.
          IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
            zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
          ENDIF.
          t318 = zcl_lnt_select_module=>is_simple.
          DATA t319 TYPE string.
          DATA(t320) = CAST zcl_lnt_shape_14fea903( t310 ).
          t319 = t320->code.
          t317 = t318->test( p0 = t319 ).
          t316 = xsdbool( t317 = abap_false ).
          IF t316 = abap_true.
            DATA(t321) = abap_false.
            t305 = t321.
            EXIT.
          ENDIF.
          DATA t322 TYPE i.
          DATA(t323) = t303.
          DATA(t324) = 1.
          t322 = t323 + t324.
          t303 = t322.
        ENDDO.
        DATA(t325) = t305.
        t297 = t325.
        t296 = t297.
        DATA t326 TYPE abap_bool.
        DATA(t327) = t296.
        DATA(t328) = abap_true.
        t326 = xsdbool( t327 = t328 ).
        IF t326 = abap_true.
          DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t330.
          t329 = t330.
          DATA(t331) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          DATA t332 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t332.
          DATA t333 TYPE REF TO object.
          CLEAR t333.
          LOOP AT t331->items INTO t333.
            t332 ?= t333.
            DATA t334 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t334.
            DATA t335 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t335.
            DATA t336 TYPE REF TO zcl_lnt_structure_type.
            DATA t337 TYPE REF TO zcl_lnt_structure_type.
            DATA(t338) = CAST zcl_lnt_abstract_type( t203 ).
            t337 ?= t338.
            t336 = t337.
            DATA t339 TYPE string.
            DATA t340 TYPE string.
            DATA(t341) = CAST zcl_lnt_shape_14fea903( t332 ).
            t340 = t341->code.
            t339 = t340.
            DATA t342 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t342.
            DATA t343 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t344) = CAST zcl_lnt_structure_type( t336 ).
            t343 = t344->indexed.
            DATA t345 TYPE string.
            DATA(t346) = t339.
            DATA(t347) = strlen( t346 ).
            t345 = t346.
            IF t345 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t345 TO UPPER CASE.
            ELSE.
              t345 = zlnt_runtime_uppe_91169605024d=>full( t345 ).
            ENDIF.
            t342 = t343->get( p0 = t345 ).
            t335 = t342.
            t334 = t335.
            DATA(t348) = VALUE abap_bool( ).
            DATA t349 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t350) = CAST zcl_lnt_abstract_type( t334 ).
            t349 = t350.
            DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t352.
            t351 = t352.
            DATA(t353) = VALUE abap_bool( ).
            DATA(t354) = CAST zcl_lnt_abstract_type( t349 ).
            IF t354 IS INITIAL.
              t353 = abap_true.
            ENDIF.
            t348 = t353.
            IF t348 = abap_true.
              DATA t355 TYPE REF TO zcl_lnt_void_type.
              CLEAR t355.
              DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t356.
              DATA(t357) = abap_true.
              IF t357 = abap_true.
                DATA(t358) = |SELECT_todo9|.
                DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t359->has = abap_true.
                t359->value = t358.
                t356 = t359.
              ELSE.
                DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t360.
                t356 = t360.
              ENDIF.
              DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t361.
              t355 = zcl_lnt_void_type=>get_db65( i_voided = t356 i_qualified_name = t361 ).
              result = t355.
              RETURN.
            ENDIF.
            DATA(t362) = CAST zlnt_runtime_arra_c22708faf2e3( t329 ).
            DATA t363 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t363.
            DATA(t364) = VALUE string( ).
            DATA t365 TYPE string.
            DATA t366 TYPE string.
            DATA(t367) = CAST zcl_lnt_shape_14fea903( t332 ).
            t366 = t367->as.
            t365 = t366.
            DATA(t368) = VALUE string( ).
            DATA t369 TYPE abap_bool.
            DATA(t370) = t365.
            t369 = xsdbool( strlen( t370 ) > 0 ).
            IF t369 = abap_true.
              DATA(t371) = t365.
              t368 = t371.
            ELSE.
              DATA t372 TYPE string.
              DATA(t373) = CAST zcl_lnt_shape_14fea903( t332 ).
              t372 = t373->code.
              t368 = t372.
            ENDIF.
            t364 = t368.
            DATA t374 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t375) = CAST zcl_lnt_abstract_type( t334 ).
            t374 = t375.
            DATA t376 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t376.
            DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t377.
            t363 = NEW zcl_lnt_istructure_component( i_name = t364 i_type_9913 = t374 i_as_include = t376 i_suffix = t377 ).
            APPEND t363 TO t362->items.
          ENDLOOP.
          DATA t378 TYPE REF TO zcl_lnt_structure_type.
          DATA(t379) = CAST zlnt_runtime_arra_c22708faf2e3( t329 ).
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t380.
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t381.
          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t382.
          t378 = NEW zcl_lnt_structure_type( i_components = t379 i_qualified_name = t380 i_ddic_name = t381 i_description = t382 ).
          result = t378.
          RETURN.
        ENDIF.
        DATA t383 TYPE REF TO zcl_lnt_void_type.
        CLEAR t383.
        DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t384.
        DATA(t385) = abap_true.
        IF t385 = abap_true.
          DATA(t386) = |SELECT_todo12|.
          DATA(t387) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t387->has = abap_true.
          t387->value = t386.
          t384 = t387.
        ELSE.
          DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t388.
          t384 = t388.
        ENDIF.
        DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t389.
        t383 = zcl_lnt_void_type=>get_db65( i_voided = t384 i_qualified_name = t389 ).
        result = t383.
        RETURN.
      ELSE.
        DATA t390 TYPE REF TO zcl_lnt_void_type.
        CLEAR t390.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        DATA(t392) = abap_true.
        IF t392 = abap_true.
          DATA(t393) = |SELECT_todo13|.
          DATA(t394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t394->has = abap_true.
          t394->value = t393.
          t391 = t394.
        ELSE.
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          t391 = t395.
        ENDIF.
        DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t396.
        t390 = zcl_lnt_void_type=>get_db65( i_voided = t391 i_qualified_name = t396 ).
        result = t390.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD build_table_type.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t2) = CAST zlnt_runtime_arra_b72089862d0f( i_db_sources ).
    DATA(t3) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t4) = CAST zcl_lnt_expression_node( i_from ).
    DATA t5 TYPE REF TO zcl_lnt_itable_options.
    DATA t6 TYPE REF TO zcl_lnt_itable_options.
    DATA(t7) = abap_false.
    DATA(t8) = |EMPTY|.
    DATA t9 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    t6 = NEW zcl_lnt_itable_options( i_with_header = t7 i_key_type = t8 i_primary_key = t9 i_secondary = t10 ).
    t5 = t6.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    DATA(t13) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    t12 = lines( t13->items ).
    DATA(t14) = 1.
    t11 = xsdbool( t12 > t14 ).
    IF t11 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = CAST zcl_lnt_expression_node( t4 ).
      DATA(t18) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
      t16 = zcl_lnt_sy_expres_select=>build_database_source_infos( i_from = t17 i_db_sources = t18 ).
      t15 = t16.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE i.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t21 = lines( t22->items ).
      DATA(t23) = 1.
      t20 = xsdbool( t21 = t23 ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE string.
        DATA t26 TYPE REF TO zcl_lnt_shape_14fea903.
        DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        READ TABLE t27->items INDEX 1 INTO t28.
        t26 ?= t28.
        t25 = t26->code.
        DATA(t29) = |*|.
        t24 = xsdbool( t25 = t29 ).
        t19 = t24.
      ENDIF.
      IF t19 = abap_true.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t31.
        t30 = t31.
        DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
        DATA t33 TYPE REF TO zcl_lnt_database_source_info.
        CLEAR t33.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        LOOP AT t32->items INTO t34.
          t33 ?= t34.
          DATA t35 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t35.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t36.
          DATA t37 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t38 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t39) = CAST zcl_lnt_database_source_info( t33 ).
          t38 = t39->source.
          t37 = t38.
          DATA t40 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t40.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = CAST zif_lnt_union_c74a232f( t37 ).
          IF t42 IS INITIAL.
            t41 = abap_true.
          ENDIF.
          IF t41 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t43.
            t40 = t43.
          ELSE.
            DATA t44 TYPE REF TO zcl_lnt_abstract_type.
            DATA t45 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t46) = CAST zif_lnt_union_c74a232f( t37 ).
            t45 = t46.
            DATA t47 TYPE REF TO zif_lnt_registry.
            DATA t48 TYPE REF TO zcl_lnt_current_scope.
            DATA(t49) = CAST zcl_lnt_current_scope( t3 ).
            t48 = t49.
            DATA t50 TYPE REF TO zif_lnt_registry.
            DATA(t51) = CAST zcl_lnt_current_scope( t48 ).
            t50 = t51->reg.
            t47 = t50.
            t44 = t45->parse_type( i_reg_f149 = t47 ).
            t40 = t44.
          ENDIF.
          t36 = t40.
          t35 = t36.
          DATA t52 TYPE abap_bool.
          DATA t53 TYPE abap_bool.
          DATA(t54) = CAST zcl_lnt_abstract_type( t35 ).
          t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_structure_type ).
          t52 = xsdbool( t53 = abap_false ).
          IF t52 = abap_true.
            DATA t55 TYPE REF TO zcl_lnt_void_type.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t56.
            DATA(t57) = abap_true.
            IF t57 = abap_true.
              DATA(t58) = |SELECT_todo3|.
              DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t59->has = abap_true.
              t59->value = t58.
              t56 = t59.
            ELSE.
              DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t60.
              t56 = t60.
            ENDIF.
            DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t61.
            t55 = zcl_lnt_void_type=>get_db65( i_voided = t56 i_qualified_name = t61 ).
            result = t55.
            RETURN.
          ENDIF.
          DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
          DATA t63 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t63.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE string.
          DATA t66 TYPE string.
          DATA(t67) = CAST zcl_lnt_database_source_info( t33 ).
          t66 = t67->alias.
          t65 = t66.
          DATA(t68) = VALUE string( ).
          DATA t69 TYPE abap_bool.
          DATA(t70) = t65.
          t69 = xsdbool( strlen( t70 ) > 0 ).
          IF t69 = abap_true.
            DATA(t71) = t65.
            t68 = t71.
          ELSE.
            DATA t72 TYPE string.
            DATA(t73) = CAST zcl_lnt_database_source_info( t33 ).
            t72 = t73->name.
            t68 = t72.
          ENDIF.
          t64 = t68.
          DATA t74 TYPE REF TO zcl_lnt_structure_type.
          DATA(t75) = CAST zcl_lnt_abstract_type( t35 ).
          t74 ?= t75.
          DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t63 = NEW zcl_lnt_istructure_component( i_name = t64 i_type_9913 = t74 i_as_include = t76 i_suffix = t77 ).
          APPEND t63 TO t62->items.
        ENDLOOP.
        DATA t78 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t79 TYPE REF TO zcl_lnt_structure_type.
        DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t79 = NEW zcl_lnt_structure_type( i_components = t80 i_qualified_name = t81 i_ddic_name = t82 i_description = t83 ).
        DATA(t84) = CAST zcl_lnt_itable_options( t5 ).
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        t78 = NEW zcl_lnt_ty_table_type( i_row_type = t79 i_options = t84 i_qualified_name = t85 i_description = t86 ).
        result = t78.
        RETURN.
      ENDIF.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t88.
      t87 = t88.
      DATA(t89) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t90 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      LOOP AT t89->items INTO t91.
        t90 ?= t91.
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        DATA t94 TYPE string.
        DATA(t95) = CAST zcl_lnt_shape_14fea903( t90 ).
        t94 = t95->code.
        DATA(t96) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
        DATA(t97) = CAST zcl_lnt_current_scope( t3 ).
        t93 = zcl_lnt_sy_expres_select=>find_field_type( i_code = t94 i_source_infos = t96 i_scope = t97 ).
        t92 = t93.
        DATA(t98) = VALUE abap_bool( ).
        DATA t99 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t100) = CAST zcl_lnt_abstract_type( t92 ).
        t99 = t100.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        t101 = t102.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = CAST zcl_lnt_abstract_type( t99 ).
        IF t104 IS INITIAL.
          t103 = abap_true.
        ENDIF.
        t98 = t103.
        IF t98 = abap_true.
          DATA t105 TYPE REF TO zcl_lnt_void_type.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA(t108) = |SELECT_todo3|.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t108.
            t106 = t109.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t106 = t110.
          ENDIF.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t105 = zcl_lnt_void_type=>get_db65( i_voided = t106 i_qualified_name = t111 ).
          result = t105.
          RETURN.
        ENDIF.
        DATA(t112) = VALUE string( ).
        DATA(t113) = VALUE string( ).
        DATA t114 TYPE string.
        DATA t115 TYPE string.
        DATA(t116) = CAST zcl_lnt_shape_14fea903( t90 ).
        t115 = t116->as.
        t114 = t115.
        DATA(t117) = VALUE string( ).
        DATA t118 TYPE abap_bool.
        DATA(t119) = t114.
        t118 = xsdbool( strlen( t119 ) > 0 ).
        IF t118 = abap_true.
          DATA(t120) = t114.
          t117 = t120.
        ELSE.
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t124 TYPE string.
          DATA(t125) = CAST zcl_lnt_shape_14fea903( t90 ).
          t124 = t125->code.
          DATA(t126) = |~|.
          DATA(t127) = strlen( t124 ).
          DATA t128 TYPE i.
          DATA(t129) = VALUE i( ).
          DATA(t130) = VALUE i( ).
          DATA t131 TYPE i.
          DATA(t132) = VALUE string( ).
          CREATE OBJECT t123.
          t131 = strlen( t126 ).
          t128 = 0.
          IF t131 = 0.
            WHILE t128 < t127.
              t132 = t124+t128(1).
              APPEND t132 TO t123->items.
              t128 = t128 + 1.
            ENDWHILE.
          ELSE.
            WHILE t128 <= t127.
              FIND FIRST OCCURRENCE OF t126 IN SECTION OFFSET t128 OF t124 MATCH OFFSET t129.
              IF sy-subrc = 0.
                t130 = t129 - t128.
              ELSE.
                t129 = -1.
                t130 = t127 - t128.
              ENDIF.
              CLEAR t132.
              IF t130 > 0.
                t132 = t124+t128(t130).
              ENDIF.
              APPEND t132 TO t123->items.
              IF t129 < 0.
                EXIT.
              ENDIF.
              t128 = t129 + t131.
            ENDWHILE.
          ENDIF.
          t122 = t123->pop(  ).
          t121 = t122->value.
          t117 = t121.
        ENDIF.
        t113 = t117.
        t112 = t113.
        DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
        DATA t134 TYPE REF TO zcl_lnt_istructure_component.
        DATA(t135) = t112.
        DATA t136 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t137) = CAST zcl_lnt_abstract_type( t92 ).
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t134 = NEW zcl_lnt_istructure_component( i_name = t135 i_type_9913 = t136 i_as_include = t138 i_suffix = t139 ).
        APPEND t134 TO t133->items.
      ENDLOOP.
      DATA t140 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t141 TYPE REF TO zcl_lnt_structure_type.
      DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      t141 = NEW zcl_lnt_structure_type( i_components = t142 i_qualified_name = t143 i_ddic_name = t144 i_description = t145 ).
      DATA(t146) = CAST zcl_lnt_itable_options( t5 ).
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t147.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      t140 = NEW zcl_lnt_ty_table_type( i_row_type = t141 i_options = t146 i_qualified_name = t147 i_description = t148 ).
      result = t140.
      RETURN.
    ELSE.
      DATA t149 TYPE abap_bool.
      DATA t150 TYPE i.
      DATA(t151) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
      t150 = lines( t151->items ).
      DATA(t152) = 1.
      t149 = xsdbool( t150 <> t152 ).
      IF t149 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_void_type.
        CLEAR t153.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        DATA(t155) = abap_true.
        IF t155 = abap_true.
          DATA(t156) = |SELECT_todo3|.
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
        t153 = zcl_lnt_void_type=>get_db65( i_voided = t154 i_qualified_name = t159 ).
        result = t153.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t160) = VALUE abap_bool( ).
    DATA t161 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t162 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t162.
    DATA(t163) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    READ TABLE t163->items INDEX 1 INTO t162.
    t161 = t162.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    t164 = t165.
    DATA(t166) = VALUE abap_bool( ).
    DATA(t167) = CAST zif_lnt_union_c74a232f( t161 ).
    IF t167 IS INITIAL.
      t166 = abap_true.
    ENDIF.
    t160 = t166.
    IF t160 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_void_type.
      CLEAR t169.
      DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t170.
      DATA(t171) = abap_true.
      IF t171 = abap_true.
        DATA(t172) = |SELECT_todo4|.
        DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t173->has = abap_true.
        t173->value = t172.
        t170 = t173.
      ELSE.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t174.
        t170 = t174.
      ENDIF.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t175.
      t169 = zcl_lnt_void_type=>get_db65( i_voided = t170 i_qualified_name = t175 ).
      DATA(t176) = CAST zcl_lnt_itable_options( t5 ).
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t178.
      t168 = NEW zcl_lnt_ty_table_type( i_row_type = t169 i_options = t176 i_qualified_name = t177 i_description = t178 ).
      result = t168.
      RETURN.
    ENDIF.
    DATA t179 TYPE REF TO zcl_lnt_abstract_type.
    DATA t180 TYPE REF TO zcl_lnt_abstract_type.
    DATA t181 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t182 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t182.
    DATA(t183) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    READ TABLE t183->items INDEX 1 INTO t182.
    t181 = t182.
    DATA t184 TYPE REF TO zif_lnt_registry.
    DATA t185 TYPE REF TO zcl_lnt_current_scope.
    DATA(t186) = CAST zcl_lnt_current_scope( t3 ).
    t185 = t186.
    DATA t187 TYPE REF TO zif_lnt_registry.
    DATA(t188) = CAST zcl_lnt_current_scope( t185 ).
    t187 = t188->reg.
    t184 = t187.
    t180 = t181->parse_type( i_reg_f149 = t184 ).
    t179 = t180.
    DATA t189 TYPE abap_bool.
    DATA t190 TYPE abap_bool.
    DATA(t191) = CAST zcl_lnt_abstract_type( t179 ).
    t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_structure_type ).
    t189 = xsdbool( t190 = abap_false ).
    IF t189 = abap_true.
      DATA t192 TYPE REF TO zcl_lnt_void_type.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      DATA(t194) = abap_true.
      IF t194 = abap_true.
        DATA(t195) = |SELECT_todo5|.
        DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t196->has = abap_true.
        t196->value = t195.
        t193 = t196.
      ELSE.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        t193 = t197.
      ENDIF.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      t192 = zcl_lnt_void_type=>get_db65( i_voided = t193 i_qualified_name = t198 ).
      result = t192.
      RETURN.
    ENDIF.
    DATA t199 TYPE abap_bool.
    DATA t200 TYPE abap_bool.
    DATA t201 TYPE i.
    DATA(t202) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t201 = lines( t202->items ).
    DATA(t203) = 1.
    t200 = xsdbool( t201 = t203 ).
    t199 = t200.
    IF t200 = abap_true.
      DATA t204 TYPE abap_bool.
      DATA t205 TYPE string.
      DATA t206 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA(t207) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      READ TABLE t207->items INDEX 1 INTO t208.
      t206 ?= t208.
      t205 = t206->code.
      DATA(t209) = |*|.
      t204 = xsdbool( t205 = t209 ).
      t199 = t204.
    ENDIF.
    IF t199 = abap_true.
      DATA t210 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t211 TYPE REF TO zcl_lnt_structure_type.
      DATA(t212) = CAST zcl_lnt_abstract_type( t179 ).
      t211 ?= t212.
      DATA(t213) = CAST zcl_lnt_itable_options( t5 ).
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t214.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      t210 = NEW zcl_lnt_ty_table_type( i_row_type = t211 i_options = t213 i_qualified_name = t214 i_description = t215 ).
      result = t210.
      RETURN.
    ENDIF.
    DATA(t216) = VALUE abap_bool( ).
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t218 = t219.
    DATA t220 TYPE i.
    DATA t221 TYPE i.
    DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t218 ).
    t221 = lines( t222->items ).
    t220 = t221.
    DATA t223 TYPE i.
    DATA(t224) = 0.
    t223 = t224.
    DATA t225 TYPE abap_bool.
    DATA(t226) = abap_true.
    t225 = t226.
    DO.
      DATA t227 TYPE abap_bool.
      DATA(t228) = t223.
      DATA(t229) = t220.
      t227 = xsdbool( t228 < t229 ).
      IF t227 = abap_false.
        EXIT.
      ENDIF.
      DATA t230 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t231 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t232 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t218 ).
      DATA(t234) = t223.
      DATA t235 TYPE REF TO object.
      t235 = t233->get( p0 = t234 ).
      t232 ?= t235.
      t231 = t232.
      t230 = t231.
      DATA(t236) = VALUE abap_bool( ).
      DATA(t237) = VALUE abap_bool( ).
      DATA t238 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t238.
      IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
        zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
      ENDIF.
      t238 = zcl_lnt_select_module=>is_simple.
      DATA t239 TYPE string.
      DATA(t240) = CAST zcl_lnt_shape_14fea903( t230 ).
      t239 = t240->code.
      t237 = t238->test( p0 = t239 ).
      t236 = xsdbool( t237 = abap_false ).
      IF t236 = abap_true.
        DATA(t241) = abap_false.
        t225 = t241.
        EXIT.
      ENDIF.
      DATA t242 TYPE i.
      DATA(t243) = t223.
      DATA(t244) = 1.
      t242 = t243 + t244.
      t223 = t242.
    ENDDO.
    DATA(t245) = t225.
    t217 = t245.
    t216 = t217.
    DATA t246 TYPE abap_bool.
    DATA(t247) = t216.
    DATA(t248) = abap_true.
    t246 = xsdbool( t247 = t248 ).
    IF t246 = abap_true.
      DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t250.
      t249 = t250.
      DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t252 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t252.
      DATA t253 TYPE REF TO object.
      CLEAR t253.
      LOOP AT t251->items INTO t253.
        t252 ?= t253.
        DATA t254 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t254.
        DATA t255 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t255.
        DATA t256 TYPE REF TO zcl_lnt_structure_type.
        DATA t257 TYPE REF TO zcl_lnt_structure_type.
        DATA(t258) = CAST zcl_lnt_abstract_type( t179 ).
        t257 ?= t258.
        t256 = t257.
        DATA t259 TYPE string.
        DATA t260 TYPE string.
        DATA(t261) = CAST zcl_lnt_shape_14fea903( t252 ).
        t260 = t261->code.
        t259 = t260.
        DATA t262 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t262.
        DATA t263 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t264) = CAST zcl_lnt_structure_type( t256 ).
        t263 = t264->indexed.
        DATA t265 TYPE string.
        DATA(t266) = t259.
        DATA(t267) = strlen( t266 ).
        t265 = t266.
        IF t265 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t265 TO UPPER CASE.
        ELSE.
          t265 = zlnt_runtime_uppe_91169605024d=>full( t265 ).
        ENDIF.
        t262 = t263->get( p0 = t265 ).
        t255 = t262.
        t254 = t255.
        DATA(t268) = VALUE abap_bool( ).
        DATA t269 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t270) = CAST zcl_lnt_abstract_type( t254 ).
        t269 = t270.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        t271 = t272.
        DATA(t273) = VALUE abap_bool( ).
        DATA(t274) = CAST zcl_lnt_abstract_type( t269 ).
        IF t274 IS INITIAL.
          t273 = abap_true.
        ENDIF.
        t268 = t273.
        IF t268 = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_void_type.
          CLEAR t275.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA(t277) = abap_true.
          IF t277 = abap_true.
            DATA(t278) = |SELECT_todo6|.
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t278.
            t276 = t279.
          ELSE.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            t276 = t280.
          ENDIF.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          t275 = zcl_lnt_void_type=>get_db65( i_voided = t276 i_qualified_name = t281 ).
          result = t275.
          RETURN.
        ENDIF.
        DATA(t282) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
        DATA t283 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t283.
        DATA(t284) = VALUE string( ).
        DATA t285 TYPE string.
        DATA t286 TYPE string.
        DATA(t287) = CAST zcl_lnt_shape_14fea903( t252 ).
        t286 = t287->as.
        t285 = t286.
        DATA(t288) = VALUE string( ).
        DATA t289 TYPE abap_bool.
        DATA(t290) = t285.
        t289 = xsdbool( strlen( t290 ) > 0 ).
        IF t289 = abap_true.
          DATA(t291) = t285.
          t288 = t291.
        ELSE.
          DATA t292 TYPE string.
          DATA(t293) = CAST zcl_lnt_shape_14fea903( t252 ).
          t292 = t293->code.
          t288 = t292.
        ENDIF.
        t284 = t288.
        DATA t294 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t295) = CAST zcl_lnt_abstract_type( t254 ).
        t294 = t295.
        DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t296.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        t283 = NEW zcl_lnt_istructure_component( i_name = t284 i_type_9913 = t294 i_as_include = t296 i_suffix = t297 ).
        APPEND t283 TO t282->items.
      ENDLOOP.
      DATA t298 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t299 TYPE REF TO zcl_lnt_structure_type.
      DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
      DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t301.
      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t302.
      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t303.
      t299 = NEW zcl_lnt_structure_type( i_components = t300 i_qualified_name = t301 i_ddic_name = t302 i_description = t303 ).
      DATA(t304) = CAST zcl_lnt_itable_options( t5 ).
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t305.
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t306.
      t298 = NEW zcl_lnt_ty_table_type( i_row_type = t299 i_options = t304 i_qualified_name = t305 i_description = t306 ).
      result = t298.
      RETURN.
    ENDIF.
    DATA t307 TYPE REF TO zcl_lnt_void_type.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t308.
    DATA(t309) = abap_true.
    IF t309 = abap_true.
      DATA(t310) = |SELECT_todo7|.
      DATA(t311) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t311->has = abap_true.
      t311->value = t310.
      t308 = t311.
    ELSE.
      DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t312.
      t308 = t312.
    ENDIF.
    DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t313.
    t307 = zcl_lnt_void_type=>get_db65( i_voided = t308 i_qualified_name = t313 ).
    result = t307.
    
  ENDMETHOD.
  METHOD build_database_source_infos.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_from ).
    DATA(t2) = CAST zlnt_runtime_arra_b72089862d0f( i_db_sources ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d ).
    t4 = t5->find_all_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE int8.
    DATA(t9) = CONV int8( -1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    DATA t13 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t13.
    LOOP AT t12->items INTO t13.
      DATA t14 TYPE int8.
      DATA(t15) = t8.
      DATA(t16) = CONV int8( 1 ).
      t14 = t15 + t16.
      IF t14 < range_int8_bound_min OR t14 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t8 = t14.
      DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
      DATA t18 TYPE REF TO zcl_lnt_database_source_info.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA(t22) = VALUE i( ).
      DATA(t23) = t8.
      IF t23 < range_int_check_lo_nzik0zk OR t23 > range_int_check_hi_zik0zj.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t22 = t23.
      t22 = t22 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      READ TABLE t21->items INDEX t22 INTO t24.
      t20 ?= t24.
      t19 = t20.
      DATA(t25) = VALUE string( ).
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = CAST zcl_lnt_expression_node( t19 ).
      t37 = t38.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = CAST zcl_lnt_expression_node( t37 ).
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      IF t40 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t42.
        t39 = t42.
      ELSE.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA(t44) = CAST zcl_lnt_expression_node( t37 ).
        DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
        t43 = t44->find_first_expression( i_type_9913 = t45 ).
        t39 = t43.
      ENDIF.
      t36 = t39.
      t35 = t36.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = CAST zcl_lnt_expression_node( t35 ).
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA(t52) = CAST zcl_lnt_expression_node( t35 ).
        t51 = t52.
        t50 = t51->get_first_token(  ).
        t46 = t50.
      ENDIF.
      t34 = t46.
      t33 = t34.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = CAST zcl_lnt_abstract_token( t33 ).
      IF t55 IS INITIAL.
        t54 = abap_true.
      ENDIF.
      IF t54 = abap_true.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t53 = t56.
      ELSE.
        DATA t57 TYPE string.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t60) = CAST zcl_lnt_abstract_token( t33 ).
        t59 = t60.
        t58 = t59.
        DATA t61 TYPE string.
        DATA(t62) = CAST zcl_lnt_abstract_token( t58 ).
        t61 = t62->str.
        t57 = t61.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t57.
        t53 = t63.
      ENDIF.
      t32 = t53.
      t31 = t32.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t31 ).
      IF t66 IS INITIAL.
        t65 = abap_true.
      ELSEIF t66->has = abap_false.
        t65 = abap_true.
      ENDIF.
      IF t65 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        t64 = t67.
      ELSE.
        DATA t68 TYPE string.
        DATA t69 TYPE string.
        DATA(t70) = CAST zlnt_runtime_opti_4ba3bdccd169( t31 ).
        t69 = t70->value.
        DATA t71 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t71.
        DATA(t72) = `^\*`.
        DATA(t73) = ||.
        CREATE OBJECT t71 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t72 flags = t73.
        DATA(t74) = ||.
        DATA(t75) = strlen( t69 ).
        t68 = t71->replace( p0 = t69 p1 = t74 ).
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t68.
        t64 = t76.
      ENDIF.
      t30 = t64.
      t29 = t30.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = CAST zlnt_runtime_opti_4ba3bdccd169( t29 ).
      IF t79 IS INITIAL.
        t78 = abap_true.
      ELSEIF t79->has = abap_false.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t77 = t80.
      ELSE.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA(t83) = CAST zlnt_runtime_opti_4ba3bdccd169( t29 ).
        t82 = t83->value.
        DATA(t84) = strlen( t82 ).
        t81 = t82.
        IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t81 TO UPPER CASE.
        ELSE.
          t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
        ENDIF.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t81.
        t77 = t85.
      ENDIF.
      t28 = t77.
      t27 = t28.
      DATA(t86) = VALUE string( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = CAST zlnt_runtime_opti_4ba3bdccd169( t27 ).
      IF t88 IS BOUND.
        IF t88->has = abap_true.
          t87 = xsdbool( strlen( t88->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t87 = abap_true.
        DATA t89 TYPE string.
        DATA(t90) = CAST zlnt_runtime_opti_4ba3bdccd169( t27 ).
        t89 = t90->value.
        t86 = t89.
      ELSE.
        DATA(t91) = ||.
        t86 = t91.
      ENDIF.
      t26 = t86.
      t25 = t26.
      DATA(t92) = VALUE string( ).
      DATA(t93) = VALUE string( ).
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t99.
      DATA t100 TYPE REF TO zcl_lnt_expression_node.
      DATA(t101) = CAST zcl_lnt_expression_node( t19 ).
      t100 = t101.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = CAST zcl_lnt_expression_node( t100 ).
      IF t104 IS INITIAL.
        t103 = abap_true.
      ENDIF.
      IF t103 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        t102 = t105.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        DATA(t107) = CAST zcl_lnt_expression_node( t100 ).
        DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
        t106 = t107->find_direct_expression( i_type_9913 = t108 ).
        t102 = t106.
      ENDIF.
      t99 = t102.
      t98 = t99.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t109.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = CAST zcl_lnt_expression_node( t98 ).
      IF t111 IS INITIAL.
        t110 = abap_true.
      ENDIF.
      IF t110 = abap_true.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        t109 = t112.
      ELSE.
        DATA t113 TYPE string.
        DATA t114 TYPE REF TO zcl_lnt_expression_node.
        DATA(t115) = CAST zcl_lnt_expression_node( t98 ).
        t114 = t115.
        t113 = t114->concat_tokens(  ).
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t113.
        t109 = t116.
      ENDIF.
      t97 = t109.
      t96 = t97.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t96 ).
      IF t119 IS INITIAL.
        t118 = abap_true.
      ELSEIF t119->has = abap_false.
        t118 = abap_true.
      ENDIF.
      IF t118 = abap_true.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        t117 = t120.
      ELSE.
        DATA t121 TYPE string.
        DATA t122 TYPE string.
        DATA(t123) = CAST zlnt_runtime_opti_4ba3bdccd169( t96 ).
        t122 = t123->value.
        DATA(t124) = strlen( t122 ).
        t121 = t122.
        IF t121 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t121 TO UPPER CASE.
        ELSE.
          t121 = zlnt_runtime_uppe_91169605024d=>full( t121 ).
        ENDIF.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t121.
        t117 = t125.
      ENDIF.
      t95 = t117.
      t94 = t95.
      DATA(t126) = VALUE string( ).
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = CAST zlnt_runtime_opti_4ba3bdccd169( t94 ).
      IF t128 IS BOUND.
        IF t128->has = abap_true.
          t127 = xsdbool( strlen( t128->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t127 = abap_true.
        DATA t129 TYPE string.
        DATA(t130) = CAST zlnt_runtime_opti_4ba3bdccd169( t94 ).
        t129 = t130->value.
        t126 = t129.
      ELSE.
        DATA(t131) = ||.
        t126 = t131.
      ENDIF.
      t93 = t126.
      t92 = t93.
      DATA t132 TYPE REF TO zcl_lnt_database_source_info.
      DATA(t133) = CAST zif_lnt_union_c74a232f( t13 ).
      DATA(t134) = t25.
      DATA(t135) = t92.
      t132 = NEW zcl_lnt_database_source_info( i_source_75cf = t133 i_name = t134 i_alias = t135 ).
      t18 = t132.
      APPEND t18 TO t17->items.
    ENDLOOP.
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t7 = t136.
    result = t7.
    
  ENDMETHOD.
  METHOD find_field_type.
    DATA(t1) = i_code.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_source_infos ).
    DATA(t3) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t4) = VALUE i( ).
    DATA(t5) = VALUE i( ).
    DATA(t6) = t1.
    DATA(t7) = |~|.
    DATA(t8) = strlen( t6 ).
    IF t7 IS INITIAL.
      t5 = 0.
    ELSE.
      FIND t7 IN t6 MATCH OFFSET t5.
      IF sy-subrc <> 0.
        t5 = -1.
      ENDIF.
    ENDIF.
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t4.
    DATA(t13) = 0.
    t11 = xsdbool( t12 >= t13 ).
    IF t11 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = VALUE string( ).
        DATA(t17) = t1.
        DATA(t18) = 0.
        DATA(t19) = t4.
        DATA(t20) = strlen( t17 ).
        t18 = COND i( WHEN t18 < 0 THEN 0 WHEN t18 > t20 THEN t20 ELSE t18 ).
        t19 = COND i( WHEN t19 < 0 THEN 0 WHEN t19 > t20 THEN t20 ELSE t19 ).
        IF t18 > t19.
          t20 = t18.
          t18 = t19.
          t19 = t20.
        ENDIF.
        t20 = t19 - t18.
        t16 = t17+t18(t20).
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t16.
        t14 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t14 = t22.
      ENDIF.
      t10 = t14.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t10 = t23.
    ENDIF.
    t9 = t10.
    DATA(t24) = VALUE string( ).
    DATA(t25) = VALUE string( ).
    DATA t26 TYPE abap_bool.
    DATA(t27) = t4.
    DATA(t28) = 0.
    t26 = xsdbool( t27 >= t28 ).
    IF t26 = abap_true.
      DATA(t29) = VALUE string( ).
      DATA t30 TYPE string.
      DATA(t31) = t1.
      t30 = t31.
      DATA(t32) = VALUE string( ).
      DATA(t33) = t30.
      DATA t34 TYPE i.
      DATA(t35) = t4.
      DATA(t36) = 1.
      t34 = t35 + t36.
      DATA t37 TYPE i.
      DATA(t38) = t30.
      DATA(t39) = strlen( t38 ).
      t37 = t39.
      DATA(t40) = strlen( t33 ).
      t34 = COND i( WHEN t34 < 0 THEN 0 WHEN t34 > t40 THEN t40 ELSE t34 ).
      t37 = COND i( WHEN t37 < 0 THEN 0 WHEN t37 > t40 THEN t40 ELSE t37 ).
      IF t34 > t37.
        t40 = t34.
        t34 = t37.
        t37 = t40.
      ENDIF.
      t40 = t37 - t34.
      t32 = t33+t34(t40).
      t29 = t32.
      t25 = t29.
    ELSE.
      DATA(t41) = t1.
      t25 = t41.
    ENDIF.
    t24 = t25.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t46) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    t47 = t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = CAST zlnt_runtime_opti_4ba3bdccd169( t45 ).
    IF t50 IS INITIAL.
      t49 = abap_true.
    ELSEIF t50->has = abap_false.
      t49 = abap_true.
    ENDIF.
    t44 = t49.
    IF t44 = abap_true.
      DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t43 = t51.
    ELSE.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t54.
      t53 = t54.
      DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t56 TYPE REF TO zcl_lnt_database_source_info.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      LOOP AT t55->items INTO t57.
        t56 ?= t57.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE abap_bool.
        DATA t60 TYPE string.
        DATA(t61) = CAST zcl_lnt_database_source_info( t56 ).
        t60 = t61->alias.
        DATA t62 TYPE string.
        DATA(t63) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
        t62 = t63->value.
        t59 = xsdbool( t60 = t62 ).
        t58 = t59.
        IF t59 = abap_false.
          DATA t64 TYPE abap_bool.
          DATA t65 TYPE string.
          DATA(t66) = CAST zcl_lnt_database_source_info( t56 ).
          t65 = t66->name.
          DATA t67 TYPE string.
          DATA(t68) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
          t67 = t68->value.
          t64 = xsdbool( t65 = t67 ).
          t58 = t64.
        ENDIF.
        IF t58 = abap_true.
          DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
          DATA(t70) = CAST zcl_lnt_database_source_info( t56 ).
          APPEND t70 TO t69->items.
        ENDIF.
      ENDLOOP.
      DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
      t52 = t71.
      t43 = t52.
    ENDIF.
    t42 = t43.
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    DATA t73 TYPE REF TO zcl_lnt_database_source_info.
    CLEAR t73.
    DATA t74 TYPE REF TO object.
    CLEAR t74.
    LOOP AT t72->items INTO t74.
      t73 ?= t74.
      DATA t75 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t76.
      DATA t77 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t78 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t79) = CAST zcl_lnt_database_source_info( t73 ).
      t78 = t79->source.
      t77 = t78.
      DATA t80 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = CAST zif_lnt_union_c74a232f( t77 ).
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type.
        DATA t85 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t86) = CAST zif_lnt_union_c74a232f( t77 ).
        t85 = t86.
        DATA t87 TYPE REF TO zif_lnt_registry.
        DATA t88 TYPE REF TO zcl_lnt_current_scope.
        DATA(t89) = CAST zcl_lnt_current_scope( t3 ).
        t88 = t89.
        DATA t90 TYPE REF TO zif_lnt_registry.
        DATA(t91) = CAST zcl_lnt_current_scope( t88 ).
        t90 = t91->reg.
        t87 = t90.
        t84 = t85->parse_type( i_reg_f149 = t87 ).
        t80 = t84.
      ENDIF.
      t76 = t80.
      t75 = t76.
      DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t93) = t24.
      DATA(t94) = |-|.
      DATA(t95) = strlen( t93 ).
      DATA t96 TYPE i.
      DATA(t97) = VALUE i( ).
      DATA(t98) = VALUE i( ).
      DATA t99 TYPE i.
      DATA(t100) = VALUE string( ).
      CREATE OBJECT t92.
      t99 = strlen( t94 ).
      t96 = 0.
      IF t99 = 0.
        WHILE t96 < t95.
          t100 = t93+t96(1).
          APPEND t100 TO t92->items.
          t96 = t96 + 1.
        ENDWHILE.
      ELSE.
        WHILE t96 <= t95.
          FIND FIRST OCCURRENCE OF t94 IN SECTION OFFSET t96 OF t93 MATCH OFFSET t97.
          IF sy-subrc = 0.
            t98 = t97 - t96.
          ELSE.
            t97 = -1.
            t98 = t95 - t96.
          ENDIF.
          CLEAR t100.
          IF t98 > 0.
            t100 = t93+t96(t98).
          ENDIF.
          APPEND t100 TO t92->items.
          IF t97 < 0.
            EXIT.
          ENDIF.
          t96 = t97 + t99.
        ENDWHILE.
      ENDIF.
      DATA(t101) = VALUE string( ).
      LOOP AT t92->items INTO t101.
        DATA t102 TYPE abap_bool.
        DATA t103 TYPE abap_bool.
        DATA(t104) = CAST zcl_lnt_abstract_type( t75 ).
        t103 = xsdbool( t104 IS BOUND AND t104 IS INSTANCE OF zcl_lnt_structure_type ).
        t102 = xsdbool( t103 = abap_false ).
        IF t102 = abap_true.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t105.
          t75 = t105.
          EXIT.
        ENDIF.
        DATA t106 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_structure_type.
        DATA t108 TYPE REF TO zcl_lnt_structure_type.
        DATA(t109) = CAST zcl_lnt_abstract_type( t75 ).
        t108 ?= t109.
        t107 = t108.
        DATA t110 TYPE string.
        DATA(t111) = t101.
        t110 = t111.
        DATA t112 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t112.
        DATA t113 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t114) = CAST zcl_lnt_structure_type( t107 ).
        t113 = t114->indexed.
        DATA t115 TYPE string.
        DATA(t116) = t110.
        DATA(t117) = strlen( t116 ).
        t115 = t116.
        IF t115 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t115 TO UPPER CASE.
        ELSE.
          t115 = zlnt_runtime_uppe_91169605024d=>full( t115 ).
        ENDIF.
        t112 = t113->get( p0 = t115 ).
        t106 = t112.
        t75 = t106.
      ENDLOOP.
      DATA t118 TYPE abap_bool.
      DATA(t119) = CAST zcl_lnt_abstract_type( t75 ).
      t118 = xsdbool( t119 IS BOUND ).
      IF t118 = abap_true.
        DATA t120 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA t122 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t123) = CAST zcl_lnt_abstract_type( t75 ).
          t122 = t123.
          t120 = t122.
        ELSE.
          DATA t124 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t124.
          t120 = t124.
        ENDIF.
        result = t120.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t125 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t125.
    result = t125.
    
  ENDMETHOD.
  METHOD find_fields.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d293_8f762dd42d06 ).
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t3 = t7.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zif_lnt_union_daf022d4.
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
    DATA t32 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zif_lnt_union_4cf1d054( t12 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t37 TYPE REF TO object.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t39) = CAST zif_lnt_union_4cf1d054( t12 ).
      t38 = t39.
      t37 = t38->get_db65(  ).
      DATA t40 TYPE REF TO object.
      t40 = t37.
      t36 ?= t40.
      t32 = t36.
    ENDIF.
    t11 = t32.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_st_dynamic ).
    IF t10 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t42.
      DATA t43 TYPE REF TO zif_lnt_node.
      CLEAR t43.
      DATA t44 TYPE REF TO zcl_lnt_abstract_node.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA(t46) = CAST zcl_lnt_expression_node( t3 ).
      t45 = t46.
      t44 = t45.
      DATA t47 TYPE REF TO zif_lnt_node.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA t49 TYPE REF TO zif_lnt_node.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t51) = CAST zcl_lnt_abstract_node( t44 ).
        t50 = t51->children.
        DATA t52 TYPE REF TO object.
        CLEAR t52.
        READ TABLE t50->items INDEX 1 INTO t52.
        t49 ?= t52.
        t47 = t49.
      ELSE.
        DATA t53 TYPE REF TO zif_lnt_node.
        CLEAR t53.
        t47 = t53.
      ENDIF.
      t43 = t47.
      t42 ?= t43.
      t41 ?= t42.
      DATA(t54) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t41 i_input_967e = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA(t59) = CAST zcl_lnt_expression_node( t3 ).
    t58 = t59.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = CAST zcl_lnt_expression_node( t58 ).
    IF t62 IS INITIAL.
      t61 = abap_true.
    ENDIF.
    IF t61 = abap_true.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t63.
      t60 = t63.
    ELSE.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t65 TYPE REF TO zcl_lnt_expression_node.
      DATA(t66) = CAST zcl_lnt_expression_node( t58 ).
      t65 = t66.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t69.
      t68 = t69.
      DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
      DATA(t71) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76 ).
      APPEND t71 TO t70->items.
      DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
      DATA(t73) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
      APPEND t73 TO t72->items.
      DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
      DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
      APPEND t75 TO t74->items.
      DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
      t67 = t76.
      t64 = t65->find_direct_expressions_multi( i_type_9913 = t67 ).
      t60 = t64.
    ENDIF.
    t57 = t60.
    t56 = t57.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE abap_bool.
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
    t78 = xsdbool( t79 IS BOUND ).
    IF t78 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
      t80 = t81.
      t77 = t80.
    ELSE.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t82.
      t77 = t82.
    ENDIF.
    t55 = t77.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t83.
    DATA t84 TYPE REF TO object.
    CLEAR t84.
    LOOP AT t55->items INTO t84.
      t83 ?= t84.
      DATA(t85) = VALUE string( ).
      DATA t86 TYPE string.
      DATA t87 TYPE string.
      DATA(t88) = CAST zcl_lnt_expression_node( t83 ).
      t87 = t88->concat_tokens(  ).
      DATA(t89) = strlen( t87 ).
      t86 = t87.
      IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t86 TO UPPER CASE.
      ELSE.
        t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
      ENDIF.
      t85 = t86.
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      DATA t95 TYPE REF TO zcl_lnt_expression_node.
      DATA(t96) = CAST zcl_lnt_expression_node( t83 ).
      DATA(t97) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
      t95 = t96->find_direct_expression( i_type_9913 = t97 ).
      t94 = t95.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = CAST zcl_lnt_expression_node( t94 ).
      IF t100 IS INITIAL.
        t99 = abap_true.
      ENDIF.
      IF t99 = abap_true.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t98 = t101.
      ELSE.
        DATA t102 TYPE string.
        DATA t103 TYPE REF TO zcl_lnt_expression_node.
        DATA(t104) = CAST zcl_lnt_expression_node( t94 ).
        t103 = t104.
        t102 = t103->concat_tokens(  ).
        DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t105->has = abap_true.
        t105->value = t102.
        t98 = t105.
      ENDIF.
      t93 = t98.
      t92 = t93.
      DATA(t106) = VALUE string( ).
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = CAST zlnt_runtime_opti_4ba3bdccd169( t92 ).
      IF t108 IS BOUND.
        IF t108->has = abap_true.
          t107 = xsdbool( strlen( t108->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t107 = abap_true.
        DATA t109 TYPE string.
        DATA(t110) = CAST zlnt_runtime_opti_4ba3bdccd169( t92 ).
        t109 = t110->value.
        t106 = t109.
      ELSE.
        DATA(t111) = ||.
        t106 = t111.
      ENDIF.
      t91 = t106.
      t90 = t91.
      DATA t112 TYPE abap_bool.
      DATA(t113) = t90.
      DATA(t114) = ||.
      t112 = xsdbool( t113 <> t114 ).
      IF t112 = abap_true.
        DATA(t115) = VALUE string( ).
        DATA(t116) = t85.
        DATA(t117) = VALUE string( ).
        DATA(t118) = | AS |.
        DATA t119 TYPE string.
        DATA(t120) = t90.
        DATA(t121) = strlen( t120 ).
        t119 = t120.
        IF t119 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t119 TO UPPER CASE.
        ELSE.
          t119 = zlnt_runtime_uppe_91169605024d=>full( t119 ).
        ENDIF.
        DATA(t122) = strlen( t118 ).
        t117 = |{ t118 }{ t119 }|.
        DATA(t123) = ||.
        DATA(t124) = strlen( t116 ).
        t115 = t116.
        IF t117 = ``.
          t115 = |{ t123 }{ t116 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t117 IN t115 WITH t123.
        ENDIF.
        t85 = t115.
      ENDIF.
      DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
      DATA t126 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t126.
      DATA(t127) = t85.
      DATA(t128) = t90.
      DATA t129 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t129.
      DATA(t130) = abap_true.
      IF t130 = abap_true.
        DATA(t131) = CAST zcl_lnt_expression_node( t83 ).
        t129 = t131.
      ELSE.
        DATA t132 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t132.
        t129 = t132.
      ENDIF.
      t126 = NEW zcl_lnt_shape_14fea903( i_code = t127 i_as = t128 i_expression = t129 ).
      APPEND t126 TO t125->items.
    ENDLOOP.
    DATA t133 TYPE abap_bool.
    DATA t134 TYPE abap_bool.
    DATA t135 TYPE i.
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    t135 = lines( t136->items ).
    DATA(t137) = 0.
    t134 = xsdbool( t135 = t137 ).
    t133 = t134.
    IF t134 = abap_true.
      DATA t138 TYPE abap_bool.
      DATA(t139) = CAST zcl_lnt_expression_node( t3 ).
      t138 = xsdbool( t139 IS BOUND ).
      t133 = t138.
    ENDIF.
    IF t133 = abap_true.
      DATA(t140) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
      DATA t141 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t141.
      DATA t142 TYPE string.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      DATA(t144) = CAST zcl_lnt_expression_node( t3 ).
      t143 = t144.
      t142 = t143->concat_tokens(  ).
      DATA(t145) = ||.
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t146.
      DATA(t147) = abap_true.
      IF t147 = abap_true.
        DATA t148 TYPE REF TO zcl_lnt_expression_node.
        DATA(t149) = CAST zcl_lnt_expression_node( t3 ).
        t148 = t149.
        t146 = t148.
      ELSE.
        DATA t150 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t150.
        t146 = t150.
      ENDIF.
      t141 = NEW zcl_lnt_shape_14fea903( i_code = t142 i_as = t145 i_expression = t146 ).
      APPEND t141 TO t140->items.
    ENDIF.
    DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    result = t151.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d809_d949ed5547d5.
  ENDMETHOD.
ENDCLASS.
