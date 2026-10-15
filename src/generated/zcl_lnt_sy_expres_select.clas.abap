* TS: src/abap/5_syntax/expressions/select.ts:26:1 Select
CLASS zcl_lnt_sy_expres_select DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_expres_select IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_skip_implicit_into.
    DATA(t4) = i_select_loop_6767.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t3.
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
    DATA(t13) = t4.
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
    DATA(t21) = t1.
    t20 = t21->get_first_token( ).
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = t1.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    t23 = t24->find_direct_expression( i_type_9913 = t25 ).
    t22 = t23.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = t22.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA(t34) = t1.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
      t33 = t34->find_first_expression( i_type_9913 = t35 ).
      t22 = t33.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLEAR t37.
    DATA t38 TYPE abap_bool.
    DATA(t39) = t22.
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA(t42) = t22.
      t41 = t42.
      DATA(t43) = t2.
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
    DATA(t47) = t22.
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    t48 = t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = t46.
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    t45 = t50.
    IF t45 = abap_true.
      DATA t52 TYPE string.
      DATA(t53) = |Missing FROM|.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = t2.
      t54 = t55->issues.
      DATA t56 TYPE REF TO zcl_lnt_issue.
      DATA(t57) = t2.
      DATA t58 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t59) = t1.
      t58 = t59->get_first_token( ).
      DATA(t60) = t52.
      DATA t61 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t61.
      t56 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t57 i_token = t58 i_message_26cb = t60 i_fix = t61 ).
      t54->load( ).
      APPEND t56 TO t54->items.
      t54->save( ).
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t64) = t1.
    DATA(t65) = t2.
    t63 = zcl_lnt_sy_expres_select=>find_fields( i_node = t64 i_input_967e = t65 ).
    t62 = t63.
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE abap_bool.
    DATA t68 TYPE abap_bool.
    DATA t69 TYPE i.
    DATA(t70) = t62.
    t70->load( ).
    t69 = lines( t70->items ).
    DATA(t71) = 0.
    t68 = xsdbool( t69 = t71 ).
    t67 = t68.
    IF t68 = abap_true.
      DATA(t72) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA(t75) = t1.
      DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d318_e4aedf15dc12.
      t74 = t75->find_direct_expression( i_type_9913 = t76 ).
      t73 = t74.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t77 = t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t73.
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
      DATA(t84) = t1.
      DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
      t83 = t84->find_direct_expression( i_type_9913 = t85 ).
      t82 = t83.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t86 = t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t82.
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
      DATA(t93) = t2.
      t92 = t93->issues.
      DATA t94 TYPE REF TO zcl_lnt_issue.
      DATA(t95) = t2.
      DATA t96 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t97) = t1.
      t96 = t97->get_first_token( ).
      DATA(t98) = t90.
      DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t99.
      t94 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t95 i_token = t96 i_message_26cb = t98 i_fix = t99 ).
      t92->load( ).
      APPEND t94 TO t92->items.
      t92->save( ).
      RETURN.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    t101 = t102.
    DATA(t103) = t62.
    DATA t104 TYPE REF TO zcl_lnt_shape_14fea903.
    CLEAR t104.
    DATA t105 TYPE REF TO object.
    CLEAR t105.
    DATA(t106) = VALUE i( ).
    DO.
      t103->load( ).
      IF t106 >= lines( t103->items ).
        EXIT.
      ENDIF.
      CLEAR t105.
      READ TABLE t103->items INDEX t106 + 1 INTO t105.
      t106 = t106 + 1.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      CLEAR t104.
      IF t105 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t107 ?= t105.
        DATA t108 TYPE REF TO object.
        t108 = t107->as_ref( ).
        t104 ?= t108.
      ELSE.
        t104 ?= t105.
      ENDIF.
      DATA(t109) = t101.
      DATA t110 TYPE string.
      DATA(t111) = t104.
      t110 = t111->code.
      t109->load( ).
      APPEND t110 TO t109->items.
      t109->save( ).
    ENDDO.
    DATA(t112) = t101.
    t100 = t112.
    DATA(t113) = t36.
    DATA(t114) = t2.
    DATA t115 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t116) = t1.
    t115 = t116->get_first_token( ).
    zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t100 i_db_sources = t113 i_input_967e = t114 i_token = t115 ).
    DATA t117 TYPE REF TO zcl_lnt_expression_node.
    DATA t118 TYPE REF TO zcl_lnt_expression_node.
    DATA(t119) = t1.
    DATA(t120) = t2.
    DATA(t121) = t62.
    DATA(t122) = t36.
    DATA t123 TYPE REF TO zcl_lnt_expression_node.
    DATA(t124) = t22.
    t123 = t124.
    t118 = zcl_lnt_sy_expres_select=>handle_into( i_node = t119 i_input_967e = t120 i_fields_62af = t121 i_db_sources = t122 i_from = t123 ).
    t117 = t118.
    DATA t125 TYPE REF TO zcl_lnt_expression_node.
    DATA t126 TYPE REF TO zcl_lnt_expression_node.
    DATA(t127) = t1.
    DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    t126 = t127->find_direct_expression( i_type_9913 = t128 ).
    t125 = t126.
    DATA t129 TYPE abap_bool.
    DATA(t130) = t125.
    t129 = xsdbool( t130 IS BOUND ).
    IF t129 = abap_true.
      DATA t131 TYPE REF TO zcl_lnt_current_scope.
      DATA t132 TYPE REF TO zcl_lnt_current_scope.
      DATA(t133) = t2.
      t132 = t133->scope.
      t131 = t132.
      DATA t134 TYPE REF TO zcl_lnt_position.
      DATA t135 TYPE REF TO zcl_lnt_position.
      DATA t136 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t137) = t19.
      t136 = t137.
      DATA t138 TYPE REF TO zcl_lnt_position.
      DATA(t139) = t136.
      t138 = t139->start.
      t135 = t138.
      t134 = t135.
      DATA t140 TYPE string.
      DATA t141 TYPE string.
      DATA(t142) = t2.
      t141 = t142->filename.
      t140 = t141.
      DATA t143 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t145 TYPE string.
      DATA(t146) = |open_sql|.
      t145 = t146.
      DATA t147 TYPE string.
      DATA(t148) = |SELECT|.
      t147 = t148.
      DATA t149 TYPE REF TO zcl_lnt_position.
      DATA(t150) = t134.
      t149 = t150.
      DATA t151 TYPE string.
      DATA(t152) = t140.
      t151 = t152.
      DATA t153 TYPE REF TO zcl_lnt_position.
      DATA t154 TYPE REF TO zcl_lnt_position.
      CLEAR t154.
      t153 = t154.
      t144 = NEW zcl_lnt_iscope_identifier( i_stype = t145 i_sname = t147 i_filename = t151 i_start = t149 i_end = t153 ).
      CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
      t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t155 ).
      ENDIF.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t156 ).
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t158 ).
      ENDIF.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t159 ).
      ENDIF.
      CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
      t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t160) = |stype|.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
      ENDIF.
      DATA(t162) = |sname|.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
      ENDIF.
      DATA(t164) = |start|.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
      ENDIF.
      DATA(t166) = |filename|.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
      ENDIF.
      DATA(t168) = |end|.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
      ENDIF.
      t143 = t144.
      DATA(t170) = VALUE abap_bool( ).
      DATA t171 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t172 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t173) = t131.
      t172 = t173->current.
      t171 = t172.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      t174 = t175.
      DATA(t176) = VALUE abap_bool( ).
      DATA(t177) = t171.
      IF t177 IS INITIAL.
        t176 = abap_true.
      ENDIF.
      t170 = t176.
      IF t170 = abap_true.
        DATA(t178) = t131.
        DATA t179 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t179.
        DATA(t180) = abap_true.
        IF t180 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t182) = t143.
          DATA t183 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t183.
          t181 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t182 i_parent = t183 ).
          t179 = t181.
        ELSE.
          DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t184.
          t179 = t184.
        ENDIF.
        t178->current = t179.
        DELETE t178->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t186 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t187 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t188) = t131.
        t187 = t188->current.
        t186 = t187.
        t185 = t186.
        DATA(t189) = t131.
        DATA t190 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t190.
        DATA(t191) = abap_true.
        IF t191 = abap_true.
          DATA t192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t192.
          DATA(t193) = t143.
          DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t194.
          DATA(t195) = abap_true.
          IF t195 = abap_true.
            DATA(t196) = t185.
            t194 = t196.
          ELSE.
            DATA t197 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t197.
            t194 = t197.
          ENDIF.
          t192 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t193 i_parent = t194 ).
          t190 = t192.
        ELSE.
          DATA t198 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t198.
          t190 = t198.
        ENDIF.
        t189->current = t190.
        DELETE t189->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA(t199) = t185.
        DATA t200 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t202) = t131.
        t201 = t202->current.
        t200 = t201.
        t199->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t200 ).
      ENDIF.
      DATA t203 TYPE REF TO zcl_lnt_expression_node.
      DATA(t204) = t125.
      t203 = t204.
      DATA(t205) = t2.
      zcl_lnt_sy_sql_for_all_entries=>run_syntax( i_node = t203 i_input_967e = t205 ).
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t207) = t1.
    DATA(t208) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t206 = t207->find_all_expressions( i_type_9913 = t208 ).
    DATA t209 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t209.
    DATA t210 TYPE REF TO object.
    CLEAR t210.
    DATA(t211) = VALUE i( ).
    DO.
      t206->load( ).
      IF t211 >= lines( t206->items ).
        EXIT.
      ENDIF.
      CLEAR t210.
      READ TABLE t206->items INDEX t211 + 1 INTO t210.
      t211 = t211 + 1.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      CLEAR t209.
      IF t210 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t212 ?= t210.
        DATA t213 TYPE REF TO object.
        t213 = t212->as_ref( ).
        t209 ?= t213.
      ELSE.
        t209 ?= t210.
      ENDIF.
      DATA t214 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t215) = t209.
      DATA(t216) = t2.
      t214 = zcl_lnt_sy_target=>run_syntax( i_node = t215 i_input_967e = t216 ).
    ENDDO.
    DATA(t217) = VALUE abap_bool( ).
    DATA(t218) = VALUE abap_bool( ).
    DATA t219 TYPE abap_bool.
    DATA t220 TYPE abap_bool.
    DATA t221 TYPE abap_bool.
    DATA(t222) = t3.
    t221 = t222->value.
    DATA(t223) = abap_false.
    t220 = xsdbool( t221 = t223 ).
    t219 = t220.
    IF t220 = abap_true.
      DATA(t224) = VALUE abap_bool( ).
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      DATA t226 TYPE REF TO zcl_lnt_expression_node.
      DATA(t227) = t1.
      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
      t226 = t227->find_direct_expression( i_type_9913 = t228 ).
      t225 = t226.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t230.
      t229 = t230.
      DATA(t231) = VALUE abap_bool( ).
      DATA(t232) = t225.
      IF t232 IS INITIAL.
        t231 = abap_true.
      ENDIF.
      t224 = t231.
      t219 = t224.
    ENDIF.
    t218 = t219.
    IF t219 = abap_true.
      DATA(t233) = VALUE abap_bool( ).
      DATA t234 TYPE REF TO zcl_lnt_expression_node.
      DATA t235 TYPE REF TO zcl_lnt_expression_node.
      DATA(t236) = t1.
      DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
      t235 = t236->find_direct_expression( i_type_9913 = t237 ).
      t234 = t235.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t239.
      t238 = t239.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = t234.
      IF t241 IS INITIAL.
        t240 = abap_true.
      ENDIF.
      t233 = t240.
      t218 = t233.
    ENDIF.
    t217 = t218.
    IF t218 = abap_true.
      DATA(t242) = VALUE abap_bool( ).
      DATA t243 TYPE REF TO zcl_lnt_expression_node.
      DATA t244 TYPE REF TO zcl_lnt_expression_node.
      DATA(t245) = t1.
      DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
      t244 = t245->find_direct_expression( i_type_9913 = t246 ).
      t243 = t244.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      t247 = t248.
      DATA(t249) = VALUE abap_bool( ).
      DATA(t250) = t243.
      IF t250 IS INITIAL.
        t249 = abap_true.
      ENDIF.
      t242 = t249.
      t217 = t242.
    ENDIF.
    IF t217 = abap_true.
      DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t251.
      DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t252.
      DATA t253 TYPE REF TO zcl_lnt_expression_node.
      DATA t254 TYPE REF TO zcl_lnt_expression_node.
      DATA(t255) = t1.
      DATA(t256) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
      t254 = t255->find_first_expression( i_type_9913 = t256 ).
      t253 = t254.
      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t257.
      DATA(t258) = VALUE abap_bool( ).
      DATA(t259) = t253.
      IF t259 IS INITIAL.
        t258 = abap_true.
      ENDIF.
      IF t258 = abap_true.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        t257 = t260.
      ELSE.
        DATA t261 TYPE string.
        DATA t262 TYPE REF TO zcl_lnt_expression_node.
        DATA(t263) = t253.
        t262 = t263.
        t261 = t262->concat_tokens( ).
        DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t264->has = abap_true.
        t264->value = t261.
        t257 = t264.
      ENDIF.
      t252 = t257.
      t251 = t252.
      DATA t265 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t266 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t266.
      DATA(t267) = `^count\(\s*\*\s*\)$`.
      DATA(t268) = `^count\([`.
      t268 = t268 && |\t\n|.
      DATA t269 TYPE c LENGTH 1.
      CLEAR t269.
      t269 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t268 t269 INTO t268 RESPECTING BLANKS.
      DATA t270 TYPE c LENGTH 1.
      CLEAR t270.
      t270 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t268 t270 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |\r    - |.
      DATA t271 TYPE c LENGTH 1.
      CLEAR t271.
      t271 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t268 t271 INTO t268 RESPECTING BLANKS.
      DATA t272 TYPE c LENGTH 1.
      CLEAR t272.
      t272 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t268 t272 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |  　|.
      DATA t273 TYPE c LENGTH 1.
      CLEAR t273.
      t273 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t268 t273 INTO t268 RESPECTING BLANKS.
      t268 = t268 && `]*\*[`.
      t268 = t268 && |\t\n|.
      DATA t274 TYPE c LENGTH 1.
      CLEAR t274.
      t274 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t268 t274 INTO t268 RESPECTING BLANKS.
      DATA t275 TYPE c LENGTH 1.
      CLEAR t275.
      t275 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t268 t275 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |\r    - |.
      DATA t276 TYPE c LENGTH 1.
      CLEAR t276.
      t276 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t268 t276 INTO t268 RESPECTING BLANKS.
      DATA t277 TYPE c LENGTH 1.
      CLEAR t277.
      t277 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t268 t277 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |  　|.
      DATA t278 TYPE c LENGTH 1.
      CLEAR t278.
      t278 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t268 t278 INTO t268 RESPECTING BLANKS.
      t268 = t268 && `]*\)$`.
      DATA(t279) = |i|.
      CREATE OBJECT t266 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t268 flags = t279.
      t266->source = t267.
      t265 = t266.
      DATA(t280) = VALUE abap_bool( ).
      DATA(t281) = VALUE abap_bool( ).
      DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t283) = t251.
      t282 = t283.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t285.
      t284 = t285.
      DATA(t286) = VALUE abap_bool( ).
      DATA(t287) = t282.
      IF t287 IS INITIAL.
        t286 = abap_true.
      ELSEIF t287->has = abap_false.
        t286 = abap_true.
      ENDIF.
      t281 = t286.
      t280 = t281.
      IF t281 = abap_false.
        DATA t288 TYPE abap_bool.
        DATA t289 TYPE abap_bool.
        DATA(t290) = t265.
        DATA t291 TYPE string.
        DATA(t292) = t251.
        t291 = t292->value.
        t289 = t290->test( p0 = t291 ).
        DATA(t293) = abap_false.
        t288 = xsdbool( t289 = t293 ).
        t280 = t288.
      ENDIF.
      IF t280 = abap_true.
        DATA t294 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t294.
        DATA t295 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t295.
        DATA t296 TYPE REF TO zcl_lnt_expression_node.
        DATA t297 TYPE REF TO zcl_lnt_expression_node.
        DATA(t298) = t22.
        t297 = t298.
        t296 = t297.
        DATA t299 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t299.
        DATA(t300) = VALUE abap_bool( ).
        DATA(t301) = t296.
        IF t301 IS INITIAL.
          t300 = abap_true.
        ENDIF.
        IF t300 = abap_true.
          DATA t302 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t302.
          t299 = t302.
        ELSE.
          DATA t303 TYPE REF TO zcl_lnt_expression_node.
          DATA(t304) = t296.
          DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc.
          t303 = t304->find_direct_expression( i_type_9913 = t305 ).
          t299 = t303.
        ENDIF.
        t295 = t299.
        t294 = t295.
        DO.
          DATA t306 TYPE abap_bool.
          DATA(t307) = t294.
          t306 = xsdbool( t307 IS BOUND ).
          IF t306 = abap_false.
            EXIT.
          ENDIF.
          DATA t308 TYPE REF TO zcl_lnt_expression_node.
          DATA t309 TYPE REF TO zcl_lnt_expression_node.
          DATA t310 TYPE REF TO zcl_lnt_expression_node.
          DATA(t311) = t294.
          t310 = t311.
          DATA(t312) = zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc.
          t309 = t310->find_direct_expression( i_type_9913 = t312 ).
          t308 = t309.
          DATA(t313) = VALUE abap_bool( ).
          DATA t314 TYPE REF TO zcl_lnt_expression_node.
          DATA(t315) = t308.
          t314 = t315.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          t316 = t317.
          DATA(t318) = VALUE abap_bool( ).
          DATA(t319) = t314.
          IF t319 IS INITIAL.
            t318 = abap_true.
          ENDIF.
          t313 = t318.
          IF t313 = abap_true.
            EXIT.
          ENDIF.
          DATA t320 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t320.
          DATA(t321) = abap_true.
          IF t321 = abap_true.
            DATA t322 TYPE REF TO zcl_lnt_expression_node.
            DATA(t323) = t308.
            t322 = t323.
            t320 = t322.
          ELSE.
            DATA t324 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t324.
            t320 = t324.
          ENDIF.
          t294 = t320.
        ENDDO.
        DATA t325 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t325.
        DATA t326 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t326.
        DATA t327 TYPE REF TO zcl_lnt_expression_node.
        DATA(t328) = t294.
        t327 = t328.
        DATA t329 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t329.
        DATA(t330) = VALUE abap_bool( ).
        DATA(t331) = t327.
        IF t331 IS INITIAL.
          t330 = abap_true.
        ENDIF.
        IF t330 = abap_true.
          DATA t332 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t332.
          t329 = t332.
        ELSE.
          DATA t333 TYPE REF TO zcl_lnt_expression_node.
          DATA t334 TYPE REF TO zcl_lnt_expression_node.
          DATA(t335) = t327.
          t334 = t335.
          DATA(t336) = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
          t333 = t334->find_direct_expression( i_type_9913 = t336 ).
          t329 = t333.
        ENDIF.
        t326 = t329.
        t325 = t326.
        DATA t337 TYPE abap_bool.
        DATA(t338) = t325.
        t337 = xsdbool( t338 IS BOUND ).
        IF t337 = abap_true.
          DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t339.
          DATA t340 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t340.
          DATA t341 TYPE REF TO zcl_lnt_current_scope.
          DATA t342 TYPE REF TO zcl_lnt_current_scope.
          DATA(t343) = t2.
          t342 = t343->scope.
          t341 = t342.
          DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t344.
          DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t345.
          DATA(t346) = abap_true.
          IF t346 = abap_true.
            DATA t347 TYPE string.
            DATA t348 TYPE REF TO zcl_lnt_expression_node.
            DATA(t349) = t325.
            t348 = t349.
            t347 = t348->concat_tokens( ).
            DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t350->has = abap_true.
            t350->value = t347.
            t345 = t350.
          ELSE.
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            t345 = t351.
          ENDIF.
          t344 = t345.
          DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t352.
          DATA(t353) = VALUE abap_bool( ).
          DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t355) = t344.
          t354 = t355.
          DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          t356 = t357.
          DATA(t358) = VALUE abap_bool( ).
          DATA(t359) = t354.
          IF t359 IS INITIAL.
            t358 = abap_true.
          ELSEIF t359->has = abap_false.
            t358 = abap_true.
          ENDIF.
          t353 = t358.
          IF t353 = abap_true.
            DATA t360 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t360.
            t352 = t360.
          ELSE.
            DATA t361 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t361.
            DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t362.
            DATA t363 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t363.
            DATA t364 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t365 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t366) = t341.
            t365 = t366->current.
            t364 = t365.
            DATA t367 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t367.
            DATA(t368) = VALUE abap_bool( ).
            DATA(t369) = t364.
            IF t369 IS INITIAL.
              t368 = abap_true.
            ENDIF.
            IF t368 = abap_true.
              DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t370.
              t367 = t370.
            ELSE.
              DATA t371 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t373) = t364.
              t372 = t373.
              DATA t374 TYPE string.
              DATA(t375) = t344.
              t374 = t375->value.
              t371 = t372->find_variable( i_name = t374 ).
              t367 = t371.
            ENDIF.
            t363 = t367.
            t362 = t363.
            DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t376.
            DATA t377 TYPE abap_bool.
            DATA(t378) = t362.
            t377 = xsdbool( t378 IS BOUND ).
            IF t377 = abap_true.
              DATA t379 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t379.
              DATA(t380) = abap_true.
              IF t380 = abap_true.
                DATA t381 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t382) = t362.
                t381 = t382.
                t379 = t381.
              ELSE.
                DATA t383 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t383.
                t379 = t383.
              ENDIF.
              t376 = t379.
            ELSE.
              DATA t384 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t384.
              DATA(t385) = t341.
              DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t386.
              DATA(t387) = abap_true.
              IF t387 = abap_true.
                DATA t388 TYPE string.
                DATA(t389) = t344.
                t388 = t389->value.
                DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t390->has = abap_true.
                t390->value = t388.
                t386 = t390.
              ELSE.
                DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t391.
                t386 = t391.
              ENDIF.
              t384 = t385->find_type_pool_constant( i_name = t386 ).
              t376 = t384.
            ENDIF.
            t361 = t376.
            t352 = t361.
          ENDIF.
          t340 = t352.
          t339 = t340.
          DATA t392 TYPE abap_bool.
          DATA(t393) = t339.
          t392 = xsdbool( t393 IS BOUND ).
          IF t392 = abap_true.
            DATA t394 TYPE REF TO zcl_lnt_current_scope.
            DATA(t395) = t2.
            t394 = t395->scope.
            DATA t396 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t396.
            DATA(t397) = abap_true.
            IF t397 = abap_true.
              DATA t398 TYPE REF TO zcl_lnt_abstract_token.
              DATA t399 TYPE REF TO zcl_lnt_expression_node.
              DATA(t400) = t325.
              t399 = t400.
              t398 = t399->get_first_token( ).
              t396 = t398.
            ELSE.
              DATA t401 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t401.
              t396 = t401.
            ENDIF.
            DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t403) = t339.
            t402 = t403.
            DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t404.
            DATA(t405) = |Write To|.
            CLEAR t404.
            CREATE OBJECT t404.
            t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t404->sval = t405.
            DATA t406 TYPE string.
            DATA(t407) = t2.
            t406 = t407->filename.
            DATA t408 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t408.
            t394->add_reference( i_usage = t396 i_referencing = t402 i_type_9913 = t404 i_filename = t406 i_extra = t408 ).
          ELSE.
            DATA t409 TYPE string.
            DATA t410 TYPE string.
            DATA t411 TYPE string.
            DATA(t412) = |Target variable |.
            DATA t413 TYPE string.
            DATA t414 TYPE REF TO zcl_lnt_expression_node.
            DATA(t415) = t325.
            t414 = t415.
            t413 = t414->concat_tokens( ).
            DATA(t416) = strlen( t412 ).
            t411 = |{ t412 }{ t413 }|.
            DATA(t417) = | not found in scope|.
            DATA(t418) = strlen( t411 ).
            t410 = |{ t411 }{ t417 }|.
            t409 = t410.
            DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t420) = t2.
            t419 = t420->issues.
            DATA t421 TYPE REF TO zcl_lnt_issue.
            DATA(t422) = t2.
            DATA t423 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t424) = t1.
            t423 = t424->get_first_token( ).
            DATA(t425) = t409.
            DATA t426 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t426.
            t421 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t422 i_token = t423 i_message_26cb = t425 i_fix = t426 ).
            t419->load( ).
            APPEND t421 TO t419->items.
            t419->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t428) = t1.
    DATA(t429) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t427 = t428->find_direct_expressions( i_type_9913 = t429 ).
    DATA t430 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t430.
    DATA t431 TYPE REF TO object.
    CLEAR t431.
    DATA(t432) = VALUE i( ).
    DO.
      t427->load( ).
      IF t432 >= lines( t427->items ).
        EXIT.
      ENDIF.
      CLEAR t431.
      READ TABLE t427->items INDEX t432 + 1 INTO t431.
      t432 = t432 + 1.
      DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t433.
      CLEAR t430.
      IF t431 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t433 ?= t431.
        DATA t434 TYPE REF TO object.
        t434 = t433->as_ref( ).
        t430 ?= t434.
      ELSE.
        t430 ?= t431.
      ENDIF.
      DATA t435 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t436) = t430.
      DATA(t437) = t2.
      t435 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t436 i_input_967e = t437 ).
    ENDDO.
    DATA t438 TYPE REF TO zcl_lnt_expression_node.
    DATA t439 TYPE REF TO zcl_lnt_expression_node.
    DATA(t440) = t1.
    DATA(t441) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t439 = t440->find_direct_expression( i_type_9913 = t441 ).
    t438 = t439.
    DATA t442 TYPE abap_bool.
    DATA t443 TYPE abap_bool.
    DATA t444 TYPE string.
    DATA t445 TYPE REF TO zcl_lnt_current_scope.
    DATA t446 TYPE REF TO zcl_lnt_current_scope.
    DATA(t447) = t2.
    t446 = t447->scope.
    t445 = t446.
    DATA t448 TYPE string.
    DATA t449 TYPE REF TO zif_lnt_configuration.
    DATA t450 TYPE REF TO zif_lnt_registry.
    DATA(t451) = t445.
    t450 = t451->reg.
    t449 = t450->get_config( ).
    t448 = t449->get_language_version( ).
    t444 = t448.
    DATA(t452) = |Cloud|.
    t443 = xsdbool( t444 = t452 ).
    t442 = t443.
    DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t454) = t1.
    DATA(t455) = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
    t453 = t454->find_direct_expressions( i_type_9913 = t455 ).
    DATA t456 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t456.
    DATA t457 TYPE REF TO object.
    CLEAR t457.
    DATA(t458) = VALUE i( ).
    DO.
      t453->load( ).
      IF t458 >= lines( t453->items ).
        EXIT.
      ENDIF.
      CLEAR t457.
      READ TABLE t453->items INDEX t458 + 1 INTO t457.
      t458 = t458 + 1.
      DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t459.
      CLEAR t456.
      IF t457 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t459 ?= t457.
        DATA t460 TYPE REF TO object.
        t460 = t459->as_ref( ).
        t456 ?= t460.
      ELSE.
        t456 ?= t457.
      ENDIF.
      DATA(t461) = VALUE abap_bool( ).
      DATA(t462) = VALUE abap_bool( ).
      DATA(t463) = VALUE abap_bool( ).
      DATA(t464) = VALUE abap_bool( ).
      DATA t465 TYPE REF TO zcl_lnt_expression_node.
      DATA(t466) = t438.
      t465 = t466.
      DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t468.
      t467 = t468.
      DATA(t469) = VALUE abap_bool( ).
      DATA(t470) = VALUE abap_bool( ).
      DATA(t471) = t465.
      IF t471 IS INITIAL.
        t470 = abap_true.
      ENDIF.
      t469 = xsdbool( t470 = abap_false ).
      t464 = t469.
      t463 = t464.
      IF t464 = abap_true.
        DATA(t472) = VALUE abap_bool( ).
        DATA t473 TYPE REF TO zcl_lnt_expression_node.
        DATA(t474) = t117.
        t473 = t474.
        DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t476.
        t475 = t476.
        DATA(t477) = VALUE abap_bool( ).
        DATA(t478) = VALUE abap_bool( ).
        DATA(t479) = t473.
        IF t479 IS INITIAL.
          t478 = abap_true.
        ENDIF.
        t477 = xsdbool( t478 = abap_false ).
        t472 = t477.
        t463 = t472.
      ENDIF.
      t462 = t463.
      IF t463 = abap_true.
        DATA t480 TYPE abap_bool.
        DATA t481 TYPE REF TO zcl_lnt_position.
        DATA t482 TYPE REF TO zcl_lnt_abstract_token.
        DATA t483 TYPE REF TO zcl_lnt_abstract_token.
        DATA t484 TYPE REF TO zcl_lnt_expression_node.
        DATA(t485) = t117.
        t484 = t485.
        t483 = t484->get_first_token( ).
        t482 = t483.
        DATA t486 TYPE REF TO zcl_lnt_position.
        DATA(t487) = t482.
        t486 = t487->start.
        t481 = t486.
        DATA t488 TYPE REF TO zcl_lnt_position.
        DATA t489 TYPE REF TO zcl_lnt_abstract_token.
        DATA t490 TYPE REF TO zcl_lnt_abstract_token.
        DATA t491 TYPE REF TO zcl_lnt_expression_node.
        DATA(t492) = t438.
        t491 = t492.
        t490 = t491->get_first_token( ).
        t489 = t490.
        DATA t493 TYPE REF TO zcl_lnt_position.
        DATA(t494) = t489.
        t493 = t494->start.
        t488 = t493.
        t480 = t481->is_after( i_p = t488 ).
        t462 = t480.
      ENDIF.
      t461 = t462.
      DATA(t495) = VALUE abap_bool( ).
      DATA(t496) = VALUE abap_bool( ).
      DATA(t497) = VALUE abap_bool( ).
      DATA(t498) = VALUE abap_bool( ).
      DATA t499 TYPE abap_bool.
      DATA t500 TYPE abap_bool.
      DATA(t501) = t117.
      t500 = xsdbool( t501 IS BOUND ).
      t499 = t500.
      IF t500 = abap_true.
        DATA t502 TYPE abap_bool.
        DATA(t503) = t1.
        DATA(t504) = t2.
        t502 = zcl_lnt_sy_expres_select=>is_strict_mode( i_node = t503 i_input_967e = t504 ).
        t499 = t502.
      ENDIF.
      t498 = t499.
      IF t499 = abap_true.
        DATA t505 TYPE abap_bool.
        DATA(t506) = t442.
        t505 = t506.
        IF t506 = abap_false.
          DATA t507 TYPE abap_bool.
          DATA t508 TYPE abap_bool.
          DATA(t509) = t456.
          t508 = zcl_lnt_sy_expres_select=>up_to_uses_host_variable( i_up = t509 ).
          t507 = t508.
          IF t508 = abap_true.
            DATA(t510) = t461.
            t507 = t510.
          ENDIF.
          t505 = t507.
        ENDIF.
        t498 = t505.
      ENDIF.
      t497 = t498.
      IF t498 = abap_true.
        DATA t511 TYPE abap_bool.
        DATA t512 TYPE abap_bool.
        DATA t513 TYPE abap_bool.
        DATA(t514) = t4.
        t513 = t514->value.
        DATA(t515) = abap_false.
        t512 = xsdbool( t513 = t515 ).
        t511 = t512.
        IF t512 = abap_false.
          DATA(t516) = t442.
          t511 = t516.
        ENDIF.
        t497 = t511.
      ENDIF.
      t496 = t497.
      IF t497 = abap_true.
        DATA(t517) = VALUE abap_bool( ).
        DATA t518 TYPE REF TO zcl_lnt_position.
        DATA t519 TYPE REF TO zcl_lnt_position.
        DATA t520 TYPE REF TO zcl_lnt_abstract_token.
        DATA t521 TYPE REF TO zcl_lnt_abstract_token.
        DATA t522 TYPE REF TO zcl_lnt_expression_node.
        DATA(t523) = t22.
        t522 = t523.
        t521 = t522->get_first_token( ).
        t520 = t521.
        DATA t524 TYPE REF TO zcl_lnt_position.
        DATA(t525) = t520.
        t524 = t525->start.
        t519 = t524.
        t518 = t519.
        DATA t526 TYPE REF TO zcl_lnt_position.
        DATA t527 TYPE REF TO zcl_lnt_position.
        DATA t528 TYPE REF TO zcl_lnt_abstract_token.
        DATA t529 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t530) = t456.
        t529 = t530->get_first_token( ).
        t528 = t529.
        DATA t531 TYPE REF TO zcl_lnt_position.
        DATA(t532) = t528.
        t531 = t532->start.
        t527 = t531.
        t526 = t527.
        DATA t533 TYPE abap_bool.
        DATA t534 TYPE abap_bool.
        DATA t535 TYPE f.
        DATA(t536) = t518.
        t535 = t536->row.
        DATA t537 TYPE f.
        DATA(t538) = t526.
        t537 = t538->row.
        t534 = xsdbool( t535 < t537 ).
        t533 = t534.
        IF t534 = abap_false.
          DATA t539 TYPE abap_bool.
          DATA t540 TYPE abap_bool.
          DATA t541 TYPE f.
          DATA(t542) = t518.
          t541 = t542->row.
          DATA t543 TYPE f.
          DATA(t544) = t526.
          t543 = t544->row.
          t540 = xsdbool( t541 = t543 ).
          t539 = t540.
          IF t540 = abap_true.
            DATA t545 TYPE abap_bool.
            DATA t546 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t547) = t518.
            t546 = t547->col.
            DATA t548 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t549) = t526.
            t548 = t549->col.
            t545 = zlnt_runtime_numb_290eb04a9758=>compare( left = t546 right = t548 op = `<` ).
            t539 = t545.
          ENDIF.
          t533 = t539.
        ENDIF.
        t517 = t533.
        t496 = t517.
      ENDIF.
      t495 = t496.
      IF t496 = abap_true.
        DATA(t550) = VALUE abap_bool( ).
        DATA t551 TYPE REF TO zcl_lnt_position.
        DATA t552 TYPE REF TO zcl_lnt_position.
        DATA t553 TYPE REF TO zcl_lnt_abstract_token.
        DATA t554 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t555) = t456.
        t554 = t555->get_first_token( ).
        t553 = t554.
        DATA t556 TYPE REF TO zcl_lnt_position.
        DATA(t557) = t553.
        t556 = t557->start.
        t552 = t556.
        t551 = t552.
        DATA t558 TYPE REF TO zcl_lnt_position.
        DATA t559 TYPE REF TO zcl_lnt_position.
        DATA t560 TYPE REF TO zcl_lnt_abstract_token.
        DATA t561 TYPE REF TO zcl_lnt_abstract_token.
        DATA t562 TYPE REF TO zcl_lnt_expression_node.
        DATA(t563) = t117.
        t562 = t563.
        t561 = t562->get_first_token( ).
        t560 = t561.
        DATA t564 TYPE REF TO zcl_lnt_position.
        DATA(t565) = t560.
        t564 = t565->start.
        t559 = t564.
        t558 = t559.
        DATA t566 TYPE abap_bool.
        DATA t567 TYPE abap_bool.
        DATA t568 TYPE f.
        DATA(t569) = t551.
        t568 = t569->row.
        DATA t570 TYPE f.
        DATA(t571) = t558.
        t570 = t571->row.
        t567 = xsdbool( t568 < t570 ).
        t566 = t567.
        IF t567 = abap_false.
          DATA t572 TYPE abap_bool.
          DATA t573 TYPE abap_bool.
          DATA t574 TYPE f.
          DATA(t575) = t551.
          t574 = t575->row.
          DATA t576 TYPE f.
          DATA(t577) = t558.
          t576 = t577->row.
          t573 = xsdbool( t574 = t576 ).
          t572 = t573.
          IF t573 = abap_true.
            DATA t578 TYPE abap_bool.
            DATA t579 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t580) = t551.
            t579 = t580->col.
            DATA t581 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t582) = t558.
            t581 = t582->col.
            t578 = zlnt_runtime_numb_290eb04a9758=>compare( left = t579 right = t581 op = `<` ).
            t572 = t578.
          ENDIF.
          t566 = t572.
        ENDIF.
        t550 = t566.
        t495 = t550.
      ENDIF.
      IF t495 = abap_true.
        DATA t583 TYPE string.
        DATA(t584) = |The addition "UP TO n ROWS" must only be placed after the IN|.
        t584 = t584 && |TO/APPENDING clause.|.
        t583 = t584.
        DATA t585 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t586) = t2.
        t585 = t586->issues.
        DATA t587 TYPE REF TO zcl_lnt_issue.
        CLEAR t587.
        DATA(t588) = t2.
        DATA t589 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t590) = t456.
        t589 = t590->get_first_token( ).
        DATA(t591) = t583.
        DATA t592 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t592.
        DATA(t593) = abap_true.
        IF t593 = abap_true.
          DATA t594 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t595) = t1.
          DATA(t596) = t2.
          DATA(t597) = t456.
          DATA t598 TYPE REF TO zcl_lnt_expression_node.
          DATA(t599) = t117.
          t598 = t599.
          t594 = zcl_lnt_sy_expres_select=>build_up_to_rows_fix( i_node = t595 i_input_967e = t596 i_up = t597 i_into_expression = t598 ).
          t592 = t594.
        ELSE.
          DATA t600 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t600.
          t592 = t600.
        ENDIF.
        t587 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t588 i_token = t589 i_message_26cb = t591 i_fix = t592 ).
        t585->load( ).
        APPEND t587 TO t585->items.
        t585->save( ).
      ENDIF.
      DATA t601 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t602) = t456.
      DATA(t603) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
      t601 = t602->find_direct_expressions( i_type_9913 = t603 ).
      DATA t604 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t604.
      DATA t605 TYPE REF TO object.
      CLEAR t605.
      DATA(t606) = VALUE i( ).
      DO.
        t601->load( ).
        IF t606 >= lines( t601->items ).
          EXIT.
        ENDIF.
        CLEAR t605.
        READ TABLE t601->items INDEX t606 + 1 INTO t605.
        t606 = t606 + 1.
        DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t607.
        CLEAR t604.
        IF t605 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t607 ?= t605.
          DATA t608 TYPE REF TO object.
          t608 = t607->as_ref( ).
          t604 ?= t608.
        ELSE.
          t604 ?= t605.
        ENDIF.
        DATA t609 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t610) = t604.
        DATA(t611) = t2.
        t609 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t610 i_input_967e = t611 ).
      ENDDO.
    ENDDO.
    DATA t612 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t613) = t1.
    DATA(t614) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    t612 = t613->find_direct_expressions( i_type_9913 = t614 ).
    DATA t615 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t615.
    DATA t616 TYPE REF TO object.
    CLEAR t616.
    DATA(t617) = VALUE i( ).
    DO.
      t612->load( ).
      IF t617 >= lines( t612->items ).
        EXIT.
      ENDIF.
      CLEAR t616.
      READ TABLE t612->items INDEX t617 + 1 INTO t616.
      t617 = t617 + 1.
      DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t618.
      CLEAR t615.
      IF t616 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t618 ?= t616.
        DATA t619 TYPE REF TO object.
        t619 = t618->as_ref( ).
        t615 ?= t619.
      ELSE.
        t615 ?= t616.
      ENDIF.
      DATA t620 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t621) = t615.
      DATA(t622) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
      t620 = t621->find_direct_expressions( i_type_9913 = t622 ).
      DATA t623 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t623.
      DATA t624 TYPE REF TO object.
      CLEAR t624.
      DATA(t625) = VALUE i( ).
      DO.
        t620->load( ).
        IF t625 >= lines( t620->items ).
          EXIT.
        ENDIF.
        CLEAR t624.
        READ TABLE t620->items INDEX t625 + 1 INTO t624.
        t625 = t625 + 1.
        DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t626.
        CLEAR t623.
        IF t624 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t626 ?= t624.
          DATA t627 TYPE REF TO object.
          t627 = t626->as_ref( ).
          t623 ?= t627.
        ELSE.
          t623 ?= t624.
        ENDIF.
        DATA t628 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t629) = t623.
        DATA(t630) = t2.
        t628 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t629 i_input_967e = t630 ).
      ENDDO.
    ENDDO.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t632) = t1.
    DATA(t633) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
    t631 = t632->find_all_expressions( i_type_9913 = t633 ).
    DATA t634 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t634.
    DATA t635 TYPE REF TO object.
    CLEAR t635.
    DATA(t636) = VALUE i( ).
    DO.
      t631->load( ).
      IF t636 >= lines( t631->items ).
        EXIT.
      ENDIF.
      CLEAR t635.
      READ TABLE t631->items INDEX t636 + 1 INTO t635.
      t636 = t636 + 1.
      DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t637.
      CLEAR t634.
      IF t635 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t637 ?= t635.
        DATA t638 TYPE REF TO object.
        t638 = t637->as_ref( ).
        t634 ?= t638.
      ELSE.
        t634 ?= t635.
      ENDIF.
      DATA(t639) = t634.
      DATA(t640) = t2.
      DATA(t641) = t36.
      zcl_lnt_sy_sql_compare=>run_syntax( i_node = t639 i_input_967e = t640 i_tables_8d5a = t641 ).
    ENDDO.
    DATA t642 TYPE REF TO zcl_lnt_expression_node.
    DATA t643 TYPE REF TO zcl_lnt_expression_node.
    DATA(t644) = t1.
    DATA(t645) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    t643 = t644->find_direct_expression( i_type_9913 = t645 ).
    t642 = t643.
    DATA t646 TYPE abap_bool.
    DATA(t647) = t642.
    t646 = xsdbool( t647 IS BOUND ).
    IF t646 = abap_true.
      DATA t648 TYPE REF TO zcl_lnt_expression_node.
      DATA(t649) = t642.
      t648 = t649.
      DATA(t650) = t2.
      zcl_lnt_sy_sql_order_by=>run_syntax( i_node = t648 i_input_967e = t650 ).
      DATA t651 TYPE REF TO zcl_lnt_expression_node.
      DATA t652 TYPE REF TO zcl_lnt_expression_node.
      DATA(t653) = t1.
      DATA(t654) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
      t652 = t653->find_direct_expression( i_type_9913 = t654 ).
      t651 = t652.
      DATA(t655) = VALUE abap_bool( ).
      DATA(t656) = VALUE abap_bool( ).
      DATA(t657) = VALUE abap_bool( ).
      DATA t658 TYPE abap_bool.
      DATA t659 TYPE abap_bool.
      DATA(t660) = t117.
      t659 = xsdbool( t660 IS BOUND ).
      t658 = t659.
      IF t659 = abap_true.
        DATA t661 TYPE abap_bool.
        DATA(t662) = t651.
        t661 = xsdbool( t662 IS BOUND ).
        t658 = t661.
      ENDIF.
      t657 = t658.
      IF t658 = abap_true.
        DATA(t663) = VALUE abap_bool( ).
        DATA t664 TYPE REF TO zcl_lnt_position.
        DATA t665 TYPE REF TO zcl_lnt_position.
        DATA t666 TYPE REF TO zcl_lnt_abstract_token.
        DATA t667 TYPE REF TO zcl_lnt_abstract_token.
        DATA t668 TYPE REF TO zcl_lnt_expression_node.
        DATA(t669) = t117.
        t668 = t669.
        t667 = t668->get_first_token( ).
        t666 = t667.
        DATA t670 TYPE REF TO zcl_lnt_position.
        DATA(t671) = t666.
        t670 = t671->start.
        t665 = t670.
        t664 = t665.
        DATA t672 TYPE REF TO zcl_lnt_position.
        DATA t673 TYPE REF TO zcl_lnt_position.
        DATA t674 TYPE REF TO zcl_lnt_abstract_token.
        DATA t675 TYPE REF TO zcl_lnt_abstract_token.
        DATA t676 TYPE REF TO zcl_lnt_expression_node.
        DATA(t677) = t642.
        t676 = t677.
        t675 = t676->get_first_token( ).
        t674 = t675.
        DATA t678 TYPE REF TO zcl_lnt_position.
        DATA(t679) = t674.
        t678 = t679->start.
        t673 = t678.
        t672 = t673.
        DATA t680 TYPE abap_bool.
        DATA t681 TYPE abap_bool.
        DATA t682 TYPE f.
        DATA(t683) = t664.
        t682 = t683->row.
        DATA t684 TYPE f.
        DATA(t685) = t672.
        t684 = t685->row.
        t681 = xsdbool( t682 < t684 ).
        t680 = t681.
        IF t681 = abap_false.
          DATA t686 TYPE abap_bool.
          DATA t687 TYPE abap_bool.
          DATA t688 TYPE f.
          DATA(t689) = t664.
          t688 = t689->row.
          DATA t690 TYPE f.
          DATA(t691) = t672.
          t690 = t691->row.
          t687 = xsdbool( t688 = t690 ).
          t686 = t687.
          IF t687 = abap_true.
            DATA t692 TYPE abap_bool.
            DATA t693 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t694) = t664.
            t693 = t694->col.
            DATA t695 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t696) = t672.
            t695 = t696->col.
            t692 = zlnt_runtime_numb_290eb04a9758=>compare( left = t693 right = t695 op = `<` ).
            t686 = t692.
          ENDIF.
          t680 = t686.
        ENDIF.
        t663 = t680.
        t657 = t663.
      ENDIF.
      t656 = t657.
      IF t657 = abap_true.
        DATA(t697) = VALUE abap_bool( ).
        DATA t698 TYPE REF TO zcl_lnt_position.
        DATA t699 TYPE REF TO zcl_lnt_position.
        DATA t700 TYPE REF TO zcl_lnt_abstract_token.
        DATA t701 TYPE REF TO zcl_lnt_abstract_token.
        DATA t702 TYPE REF TO zcl_lnt_expression_node.
        DATA(t703) = t651.
        t702 = t703.
        t701 = t702->get_first_token( ).
        t700 = t701.
        DATA t704 TYPE REF TO zcl_lnt_position.
        DATA(t705) = t700.
        t704 = t705->start.
        t699 = t704.
        t698 = t699.
        DATA t706 TYPE REF TO zcl_lnt_position.
        DATA t707 TYPE REF TO zcl_lnt_position.
        DATA t708 TYPE REF TO zcl_lnt_abstract_token.
        DATA t709 TYPE REF TO zcl_lnt_abstract_token.
        DATA t710 TYPE REF TO zcl_lnt_expression_node.
        DATA(t711) = t642.
        t710 = t711.
        t709 = t710->get_first_token( ).
        t708 = t709.
        DATA t712 TYPE REF TO zcl_lnt_position.
        DATA(t713) = t708.
        t712 = t713->start.
        t707 = t712.
        t706 = t707.
        DATA t714 TYPE abap_bool.
        DATA t715 TYPE abap_bool.
        DATA t716 TYPE f.
        DATA(t717) = t698.
        t716 = t717->row.
        DATA t718 TYPE f.
        DATA(t719) = t706.
        t718 = t719->row.
        t715 = xsdbool( t716 < t718 ).
        t714 = t715.
        IF t715 = abap_false.
          DATA t720 TYPE abap_bool.
          DATA t721 TYPE abap_bool.
          DATA t722 TYPE f.
          DATA(t723) = t698.
          t722 = t723->row.
          DATA t724 TYPE f.
          DATA(t725) = t706.
          t724 = t725->row.
          t721 = xsdbool( t722 = t724 ).
          t720 = t721.
          IF t721 = abap_true.
            DATA t726 TYPE abap_bool.
            DATA t727 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t728) = t698.
            t727 = t728->col.
            DATA t729 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t730) = t706.
            t729 = t730->col.
            t726 = zlnt_runtime_numb_290eb04a9758=>compare( left = t727 right = t729 op = `<` ).
            t720 = t726.
          ENDIF.
          t714 = t720.
        ENDIF.
        t697 = t714.
        t656 = t697.
      ENDIF.
      t655 = t656.
      IF t656 = abap_true.
        DATA(t731) = VALUE abap_bool( ).
        DATA t732 TYPE REF TO zcl_lnt_position.
        DATA t733 TYPE REF TO zcl_lnt_position.
        DATA t734 TYPE REF TO zcl_lnt_abstract_token.
        DATA t735 TYPE REF TO zcl_lnt_abstract_token.
        DATA t736 TYPE REF TO zcl_lnt_expression_node.
        DATA(t737) = t651.
        t736 = t737.
        t735 = t736->get_first_token( ).
        t734 = t735.
        DATA t738 TYPE REF TO zcl_lnt_position.
        DATA(t739) = t734.
        t738 = t739->start.
        t733 = t738.
        t732 = t733.
        DATA t740 TYPE REF TO zcl_lnt_position.
        DATA t741 TYPE REF TO zcl_lnt_position.
        DATA t742 TYPE REF TO zcl_lnt_abstract_token.
        DATA t743 TYPE REF TO zcl_lnt_abstract_token.
        DATA t744 TYPE REF TO zcl_lnt_expression_node.
        DATA(t745) = t117.
        t744 = t745.
        t743 = t744->get_first_token( ).
        t742 = t743.
        DATA t746 TYPE REF TO zcl_lnt_position.
        DATA(t747) = t742.
        t746 = t747->start.
        t741 = t746.
        t740 = t741.
        DATA t748 TYPE abap_bool.
        DATA t749 TYPE abap_bool.
        DATA t750 TYPE f.
        DATA(t751) = t732.
        t750 = t751->row.
        DATA t752 TYPE f.
        DATA(t753) = t740.
        t752 = t753->row.
        t749 = xsdbool( t750 < t752 ).
        t748 = t749.
        IF t749 = abap_false.
          DATA t754 TYPE abap_bool.
          DATA t755 TYPE abap_bool.
          DATA t756 TYPE f.
          DATA(t757) = t732.
          t756 = t757->row.
          DATA t758 TYPE f.
          DATA(t759) = t740.
          t758 = t759->row.
          t755 = xsdbool( t756 = t758 ).
          t754 = t755.
          IF t755 = abap_true.
            DATA t760 TYPE abap_bool.
            DATA t761 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t762) = t732.
            t761 = t762->col.
            DATA t763 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t764) = t740.
            t763 = t764->col.
            t760 = zlnt_runtime_numb_290eb04a9758=>compare( left = t761 right = t763 op = `<` ).
            t754 = t760.
          ENDIF.
          t748 = t754.
        ENDIF.
        t731 = t748.
        t655 = t731.
      ENDIF.
      IF t655 = abap_true.
        DATA t765 TYPE string.
        DATA(t766) = |ORDER BY must be before INTO, after WHERE|.
        t765 = t766.
        DATA t767 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t768) = t2.
        t767 = t768->issues.
        DATA t769 TYPE REF TO zcl_lnt_issue.
        DATA(t770) = t2.
        DATA t771 TYPE REF TO zcl_lnt_abstract_token.
        DATA t772 TYPE REF TO zcl_lnt_expression_node.
        DATA(t773) = t642.
        t772 = t773.
        t771 = t772->get_first_token( ).
        DATA(t774) = t765.
        DATA t775 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t775.
        t769 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t770 i_token = t771 i_message_26cb = t774 i_fix = t775 ).
        t767->load( ).
        APPEND t769 TO t767->items.
        t767->save( ).
      ENDIF.
    ENDIF.
    DATA t776 TYPE abap_bool.
    DATA(t777) = t1.
    DATA(t778) = t2.
    t776 = zcl_lnt_sy_expres_select=>is_strict_mode( i_node = t777 i_input_967e = t778 ).
    IF t776 = abap_true.
      DATA(t779) = t1.
      DATA(t780) = t2.
      zcl_lnt_sy_expres_select=>strict_mode_checks( i_node = t779 i_input_967e = t780 ).
    ENDIF.
    DATA t781 TYPE abap_bool.
    DATA t782 TYPE string.
    DATA t783 TYPE REF TO zcl_lnt_current_scope.
    DATA(t784) = t2.
    t783 = t784->scope.
    t782 = t783->get_type( ).
    DATA(t785) = |open_sql|.
    t781 = xsdbool( t782 = t785 ).
    IF t781 = abap_true.
      DATA t786 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t787 TYPE REF TO zcl_lnt_current_scope.
      DATA(t788) = t2.
      t787 = t788->scope.
      DATA t789 TYPE REF TO zcl_lnt_position.
      DATA t790 TYPE REF TO zcl_lnt_abstract_token.
      DATA t791 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t792) = t1.
      t791 = t792->get_last_token( ).
      t790 = t791.
      DATA t793 TYPE REF TO zcl_lnt_position.
      DATA t794 TYPE f.
      DATA t795 TYPE REF TO zcl_lnt_position.
      DATA t796 TYPE REF TO zcl_lnt_position.
      DATA(t797) = t790.
      t796 = t797->start.
      t795 = t796.
      DATA t798 TYPE f.
      DATA(t799) = t795.
      t798 = t799->row.
      t794 = t798.
      DATA t800 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t801 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t802 TYPE REF TO zcl_lnt_position.
      DATA t803 TYPE REF TO zcl_lnt_position.
      DATA(t804) = t790.
      t803 = t804->start.
      t802 = t803.
      DATA t805 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t806) = t802.
      t805 = t806->col.
      t801 = t805.
      DATA t807 TYPE f.
      DATA t808 TYPE i.
      DATA t809 TYPE string.
      DATA(t810) = t790.
      t809 = t810->str.
      DATA(t811) = strlen( t809 ).
      t808 = t811.
      t807 = t808.
      DATA(t812) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t812->has = abap_true.
      t812->value = t807.
      t800 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t801 right = t812 op = `+` ).
      t793 = NEW zcl_lnt_position( i_row = t794 i_col = t800 ).
      t789 = t793.
      t786 = t787->pop( i_end = t789 ).
    ENDIF.
  ENDMETHOD.

  METHOD up_to_uses_host_variable.
    DATA(t1) = i_up.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
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
      DATA(t16) = t6.
      t15 = t16.
      t14 = t15->get_first_token( ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t4.
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
      DATA(t24) = t4.
      t23 = t24.
      t22 = t23.
      DATA t25 TYPE string.
      DATA(t26) = t22.
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
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_up.
    DATA(t4) = i_into_expression.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->get_tokens( ).
    t5 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = t3.
    t9 = t10->get_last_token( ).
    t8 = t9.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA(t13) = t5.
    DATA(t14) = VALUE i( ).
    DATA(t15) = VALUE f( ).
    DATA(t16) = VALUE f( ).
    DATA(t17) = VALUE f( ).
    DATA(t18) = CONV f( -1 ).
    t17 = t18.
    DATA(t19) = VALUE f( ).
    DATA(t20) = CONV f( -1 ).
    t19 = t20.
    DATA(t21) = t5.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t21->load( ).
      IF t24 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t21->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        CLEAR t26.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA(t27) = VALUE f( ).
      DATA(t28) = t17.
      DATA(t29) = CONV f( 1 ).
      t27 = t28 + t29.
      t17 = t27.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t22.
      DATA(t32) = t8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t33.
      IF t31 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        CLEAR t35.
        t36 = t31.
        TRY.
            t33 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS NOT BOUND.
          TRY.
              t35 ?= t31.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t35 IS BOUND.
            t33 = t35->source( ).
          ENDIF.
          IF t33 IS NOT BOUND.
            CREATE OBJECT t33.
            t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t33->oval = t31.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t34.
      IF t32 IS BOUND.
        DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t37.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        CLEAR t37.
        t38 = t32.
        TRY.
            t34 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS NOT BOUND.
          TRY.
              t37 ?= t32.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t37 IS BOUND.
            t34 = t37->source( ).
          ENDIF.
          IF t34 IS NOT BOUND.
            CREATE OBJECT t34.
            t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t34->oval = t32.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t33 IS BOUND.
        t30 = t33->strict_equals( t34 ).
      ELSE.
        t30 = xsdbool( t34 IS NOT BOUND ).
      ENDIF.
      IF t30 = abap_true.
        DATA(t39) = t17.
        t19 = t39.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t40) = t19.
    t16 = t40.
    DATA(t41) = CONV f( 1 ).
    t15 = t16 + t41.
    IF t15 > range_i32_upper.
      t14 = range_i32_upper.
    ELSEIF t15 < range_i32_lower.
      t14 = range_i32_lower.
    ELSE.
      t14 = trunc( t15 ).
    ENDIF.
    t14 = t14 + 1.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    t13->load( ).
    CLEAR t42.
    READ TABLE t13->items INDEX t14 INTO t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    CLEAR t12.
    IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t43 ?= t42.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      t44 = t43->as_ref( ).
      t12 ?= t44.
    ELSE.
      t12 ?= t42.
    ENDIF.
    t11 = t12.
    DATA t45 TYPE REF TO zcl_lnt_position.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_position.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_position.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_position.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t49.
    DATA(t50) = t11.
    t49 = t50.
    DATA t51 TYPE REF TO zcl_lnt_position.
    CLEAR t51.
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = t49.
    IF t53 IS INITIAL.
      t52 = abap_true.
    ENDIF.
    IF t52 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_position.
      CLEAR t54.
      t51 = t54.
    ELSE.
      DATA t55 TYPE REF TO zcl_lnt_position.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t56.
      DATA(t57) = t49.
      t56 = t57.
      DATA t58 TYPE REF TO zcl_lnt_position.
      CLEAR t58.
      DATA(t59) = t56.
      t58 = t59->start.
      t55 = t58.
      t51 = t55.
    ENDIF.
    t48 = t51.
    t47 = t48.
    DATA t60 TYPE REF TO zcl_lnt_position.
    CLEAR t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = t47.
    t61 = xsdbool( t62 IS BOUND ).
    IF t61 = abap_true.
      DATA t63 TYPE REF TO zcl_lnt_position.
      CLEAR t63.
      DATA(t64) = t47.
      t63 = t64.
      t60 = t63.
    ELSE.
      DATA t65 TYPE REF TO zcl_lnt_position.
      CLEAR t65.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t66.
      DATA(t67) = t8.
      t66 = t67.
      DATA t68 TYPE REF TO zcl_lnt_position.
      CLEAR t68.
      DATA(t69) = VALUE f( ).
      DATA t70 TYPE REF TO zcl_lnt_position.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_position.
      CLEAR t71.
      DATA(t72) = t66.
      t71 = t72->start.
      t70 = t71.
      DATA(t73) = VALUE f( ).
      DATA(t74) = t70.
      t73 = t74->row.
      t69 = t73.
      DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_position.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_position.
      CLEAR t78.
      DATA(t79) = t66.
      t78 = t79->start.
      t77 = t78.
      DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t80.
      DATA(t81) = t77.
      t80 = t81->col.
      t76 = t80.
      DATA(t82) = VALUE f( ).
      DATA(t83) = VALUE i( ).
      DATA(t84) = VALUE string( ).
      DATA(t85) = t66.
      t84 = t85->str.
      DATA(t86) = strlen( t84 ).
      t83 = t86.
      t82 = t83.
      DATA(t87) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t87->has = abap_true.
      t87->value = t82.
      t75 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t76 right = t87 op = `+` ).
      t68 = NEW zcl_lnt_position( i_row = t69 i_col = t75 ).
      t65 = t68.
      t60 = t65.
    ENDIF.
    t46 = t60.
    t45 = t46.
    DATA t88 TYPE REF TO zcl_lnt_irange.
    CLEAR t88.
    DATA t89 TYPE REF TO zcl_lnt_irange.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_position.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_position.
    CLEAR t91.
    DATA t92 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t93.
    DATA(t94) = t3.
    t93 = t94->get_first_token( ).
    t92 = t93.
    DATA t95 TYPE REF TO zcl_lnt_position.
    CLEAR t95.
    DATA(t96) = t92.
    t95 = t96->start.
    t91 = t95.
    t90 = t91.
    DATA t97 TYPE REF TO zcl_lnt_position.
    CLEAR t97.
    DATA(t98) = t45.
    t97 = t98.
    t89 = NEW zcl_lnt_irange( i_start = t90 i_end = t97 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t99 ).
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t100 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t101) = |start|.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
    ENDIF.
    DATA(t103) = |end|.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
    ENDIF.
    t88 = t89.
    DATA t105 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t106.
    DATA(t107) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t106 = t107.
    DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t108.
    DATA(t109) = t106.
    DATA(t110) = VALUE string( ).
    DATA(t111) = t2.
    t110 = t111->filename.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t114.
    CREATE OBJECT t114.
    t113 = t114.
    DATA(t115) = t113.
    DATA t116 TYPE REF TO zcl_lnt_itext_edit.
    CLEAR t116.
    DATA t117 TYPE REF TO zcl_lnt_irange.
    CLEAR t117.
    DATA t118 TYPE REF TO zcl_lnt_irange.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_position.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_position.
    CLEAR t120.
    DATA t121 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t122.
    DATA(t123) = t4.
    t122 = t123->get_last_token( ).
    t121 = t122.
    DATA t124 TYPE REF TO zcl_lnt_position.
    CLEAR t124.
    DATA(t125) = VALUE f( ).
    DATA t126 TYPE REF TO zcl_lnt_position.
    CLEAR t126.
    DATA t127 TYPE REF TO zcl_lnt_position.
    CLEAR t127.
    DATA(t128) = t121.
    t127 = t128->start.
    t126 = t127.
    DATA(t129) = VALUE f( ).
    DATA(t130) = t126.
    t129 = t130->row.
    t125 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_position.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_position.
    CLEAR t134.
    DATA(t135) = t121.
    t134 = t135->start.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t136.
    DATA(t137) = t133.
    t136 = t137->col.
    t132 = t136.
    DATA(t138) = VALUE f( ).
    DATA(t139) = VALUE i( ).
    DATA(t140) = VALUE string( ).
    DATA(t141) = t121.
    t140 = t141->str.
    DATA(t142) = strlen( t140 ).
    t139 = t142.
    t138 = t139.
    DATA(t143) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t143->has = abap_true.
    t143->value = t138.
    t131 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t132 right = t143 op = `+` ).
    t124 = NEW zcl_lnt_position( i_row = t125 i_col = t131 ).
    t120 = t124.
    t119 = t120.
    DATA t144 TYPE REF TO zcl_lnt_position.
    CLEAR t144.
    DATA t145 TYPE REF TO zcl_lnt_position.
    CLEAR t145.
    DATA t146 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t146.
    DATA t147 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t147.
    DATA(t148) = t4.
    t147 = t148->get_last_token( ).
    t146 = t147.
    DATA t149 TYPE REF TO zcl_lnt_position.
    CLEAR t149.
    DATA(t150) = VALUE f( ).
    DATA t151 TYPE REF TO zcl_lnt_position.
    CLEAR t151.
    DATA t152 TYPE REF TO zcl_lnt_position.
    CLEAR t152.
    DATA(t153) = t146.
    t152 = t153->start.
    t151 = t152.
    DATA(t154) = VALUE f( ).
    DATA(t155) = t151.
    t154 = t155->row.
    t150 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t157.
    DATA t158 TYPE REF TO zcl_lnt_position.
    CLEAR t158.
    DATA t159 TYPE REF TO zcl_lnt_position.
    CLEAR t159.
    DATA(t160) = t146.
    t159 = t160->start.
    t158 = t159.
    DATA t161 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t161.
    DATA(t162) = t158.
    t161 = t162->col.
    t157 = t161.
    DATA(t163) = VALUE f( ).
    DATA(t164) = VALUE i( ).
    DATA(t165) = VALUE string( ).
    DATA(t166) = t146.
    t165 = t166->str.
    DATA(t167) = strlen( t165 ).
    t164 = t167.
    t163 = t164.
    DATA(t168) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t168->has = abap_true.
    t168->value = t163.
    t156 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t157 right = t168 op = `+` ).
    t149 = NEW zcl_lnt_position( i_row = t150 i_col = t156 ).
    t145 = t149.
    t144 = t145.
    t118 = NEW zcl_lnt_irange( i_start = t119 i_end = t144 ).
    CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
    t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t169 ).
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t170 ).
    ENDIF.
    CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
    t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t171) = |start|.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
    ENDIF.
    DATA(t173) = |end|.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
    ENDIF.
    t117 = t118.
    DATA(t175) = VALUE string( ).
    DATA(t176) = VALUE string( ).
    DATA(t177) = | |.
    DATA(t178) = VALUE string( ).
    DATA(t179) = t3.
    t178 = t179->concat_tokens( ).
    DATA(t180) = strlen( t177 ).
    t176 = |{ t177 }{ t178 }|.
    t175 = t176.
    t116 = NEW zcl_lnt_itext_edit( i_range = t117 i_new_text = t175 ).
    CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
    t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t181 ).
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t182 ).
    ENDIF.
    CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
    t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t183) = |range|.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
    ENDIF.
    DATA(t185) = |newText|.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
    ENDIF.
    t115->load( ).
    APPEND t116 TO t115->items.
    t115->save( ).
    DATA(t187) = t113.
    DATA t188 TYPE REF TO zcl_lnt_itext_edit.
    CLEAR t188.
    DATA t189 TYPE REF TO zcl_lnt_irange.
    CLEAR t189.
    DATA(t190) = t88.
    t189 = t190.
    DATA(t191) = VALUE string( ).
    DATA(t192) = ||.
    t191 = t192.
    t188 = NEW zcl_lnt_itext_edit( i_range = t189 i_new_text = t191 ).
    CREATE OBJECT t188->zlnt_view_ownkeys_b0e8086400eb.
    t188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t193 ).
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t194 ).
    ENDIF.
    CREATE OBJECT t188->zlnt_json_ownkeys_70e5fd461788.
    t188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t195) = |range|.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
    ENDIF.
    DATA(t197) = |newText|.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
    ENDIF.
    t187->load( ).
    APPEND t188 TO t187->items.
    t187->save( ).
    DATA(t199) = t113.
    t112 = t199.
    t108 = t109->set( p0 = t110 p1 = t112 ).
    DATA(t200) = t106.
    t105 = t200.
    result = t105.

  ENDMETHOD.

  METHOD is_strict_mode.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    DATA(t7) = t2.
    t6 = t7->scope.
    t5 = t6.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zif_lnt_configuration.
    DATA t10 TYPE REF TO zif_lnt_registry.
    DATA(t11) = t5.
    t10 = t11->reg.
    t9 = t10->get_config( ).
    t8 = t9->get_language_version( ).
    t4 = t8.
    DATA(t12) = |Cloud|.
    t3 = xsdbool( t4 = t12 ).
    IF t3 = abap_true.
      DATA(t13) = abap_true.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = t19.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t21->load( ).
    APPEND t22 TO t21->items.
    t21->save( ).
    DATA(t23) = t19.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t25) = t19.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t25->load( ).
    APPEND t26 TO t25->items.
    t25->save( ).
    DATA(t27) = t19.
    t18 = t27.
    t16 = t17->find_direct_expressions_multi( i_type_9913 = t18 ).
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    t16->load( ).
    CLEAR t28.
    READ TABLE t16->items INDEX 1 INTO t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    CLEAR t15.
    IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t29 ?= t28.
      DATA t30 TYPE REF TO object.
      t30 = t29->as_ref( ).
      t15 ?= t30.
    ELSE.
      t15 ?= t28.
    ENDIF.
    t14 = t15.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    DATA(t33) = t1.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t32 = t33->find_direct_expression( i_type_9913 = t34 ).
    t31 = t32.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    DATA(t38) = t14.
    t37 = xsdbool( t38 IS BOUND ).
    t36 = t37.
    IF t37 = abap_true.
      DATA t39 TYPE abap_bool.
      DATA(t40) = t31.
      t39 = xsdbool( t40 IS BOUND ).
      t36 = t39.
    ENDIF.
    t35 = t36.
    IF t36 = abap_true.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE REF TO zcl_lnt_position.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t14.
      t44 = t45->get_first_token( ).
      t43 = t44.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA(t47) = t43.
      t46 = t47->start.
      t42 = t46.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = t31.
      t51 = t52.
      t50 = t51->get_first_token( ).
      t49 = t50.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA(t54) = t49.
      t53 = t54->start.
      t48 = t53.
      t41 = t42->is_after( i_p = t48 ).
      t35 = t41.
    ENDIF.
    IF t35 = abap_true.
      DATA(t55) = abap_true.
      result = t55.
      RETURN.
    ENDIF.
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA(t58) = t1.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d319_3b9487add007.
    t57 = t58->find_first_expression( i_type_9913 = t59 ).
    t56 = xsdbool( t57 IS BOUND ).
    IF t56 = abap_true.
      DATA(t60) = abap_true.
      result = t60.
      RETURN.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t62) = t1.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t61 = t62->find_all_expressions( i_type_9913 = t63 ).
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA t65 TYPE REF TO object.
    CLEAR t65.
    DATA(t66) = VALUE i( ).
    DO.
      t61->load( ).
      IF t66 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t65.
      READ TABLE t61->items INDEX t66 + 1 INTO t65.
      t66 = t66 + 1.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      CLEAR t64.
      IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t67 ?= t65.
        DATA t68 TYPE REF TO object.
        t68 = t67->as_ref( ).
        t64 ?= t68.
      ELSE.
        t64 ?= t65.
      ENDIF.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE string.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t73) = t64.
      t72 = t73->get_first_token( ).
      t71 = t72.
      DATA t74 TYPE string.
      DATA(t75) = t71.
      t74 = t75->str.
      t70 = t74.
      DATA(t76) = |@|.
      t69 = xsdbool( t70 = t76 ).
      IF t69 = abap_true.
        DATA(t77) = abap_true.
        result = t77.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t78 TYPE REF TO zcl_lnt_expression_node.
    DATA t79 TYPE REF TO zcl_lnt_expression_node.
    DATA(t80) = t1.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
    t79 = t80->find_first_expression( i_type_9913 = t81 ).
    t78 = t79.
    DATA t82 TYPE abap_bool.
    DATA t83 TYPE abap_bool.
    DATA(t84) = t78.
    t83 = xsdbool( t84 IS BOUND ).
    t82 = t83.
    IF t83 = abap_true.
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      DATA(t88) = t78.
      t87 = t88.
      DATA(t89) = |,|.
      t86 = t87->find_direct_token_by_text( i_text = t89 ).
      t85 = xsdbool( t86 IS BOUND ).
      t82 = t85.
    ENDIF.
    IF t82 = abap_true.
      DATA(t90) = abap_true.
      result = t90.
      RETURN.
    ENDIF.
    DATA(t91) = abap_false.
    result = t91.

  ENDMETHOD.

  METHOD strict_mode_checks.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t4 = t5->find_all_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = t3.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_node.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t17) = t8.
      t16 = t17.
      DATA t18 TYPE REF TO zif_lnt_node.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA t20 TYPE REF TO zif_lnt_node.
        CLEAR t20.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t22) = t16.
        t21 = t22->children.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t21->load( ).
        CLEAR t23.
        READ TABLE t21->items INDEX 1 INTO t23.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        CLEAR t20.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t24 ?= t23.
          DATA t25 TYPE REF TO object.
          t25 = t24->as_ref( ).
          t20 ?= t25.
        ELSE.
          t20 ?= t23.
        ENDIF.
        t18 = t20.
      ELSE.
        DATA t26 TYPE REF TO zif_lnt_node.
        CLEAR t26.
        t18 = t26.
      ENDIF.
      t15 = t18.
      t14 ?= t15.
      t13 = t14.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t28.
      DATA t29 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t30) = t13.
      t29 = t30.
      DATA t31 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t29.
      IF t33 IS INITIAL.
        t32 = abap_true.
      ENDIF.
      IF t32 = abap_true.
        DATA t34 TYPE REF TO zif_lnt_union_daf022d4.
        CLEAR t34.
        t31 = t34.
      ELSE.
        DATA t35 TYPE REF TO zif_lnt_union_daf022d4.
        DATA t36 TYPE REF TO object.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t38) = t29.
        t37 = t38.
        t36 = t37->get_db65( ).
        DATA t39 TYPE REF TO object.
        t39 = t36.
        t35 ?= t39.
        t31 = t35.
      ENDIF.
      t28 = t31.
      t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_sql_alias_field ).
      IF t27 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t43.
        DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t45) = t13.
        t44 = t45.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t44.
        IF t48 IS INITIAL.
          t47 = abap_true.
        ENDIF.
        IF t47 = abap_true.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t49.
          t46 = t49.
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_abstract_token.
          DATA t51 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t52) = t44.
          t51 = t52.
          t50 = t51->get_first_token( ).
          t46 = t50.
        ENDIF.
        t43 = t46.
        t42 = t43.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t42.
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
          DATA(t60) = t42.
          t59 = t60.
          t58 = t59.
          DATA t61 TYPE string.
          DATA(t62) = t58.
          t61 = t62->str.
          t57 = t61.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t57.
          t53 = t63.
        ENDIF.
        t41 = t53.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA(t66) = |@|.
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t66.
          t64 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t64 = t68.
        ENDIF.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = VALUE abap_bool( ).
        IF t41 IS BOUND.
          t69 = t41->has.
        ENDIF.
        IF t64 IS BOUND.
          t70 = t64->has.
        ENDIF.
        IF t69 = t70.
          IF t69 = abap_false.
            t40 = abap_true.
          ELSEIF t41->value = t64->value.
            t40 = abap_true.
          ENDIF.
        ENDIF.
        IF t40 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t71) = VALUE abap_bool( ).
          DATA t72 TYPE REF TO object.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_node.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_node.
          CLEAR t74.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t76.
          DATA t77 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t78) = t13.
          t77 = t78.
          DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t79.
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = t77.
          IF t81 IS INITIAL.
            t80 = abap_true.
          ENDIF.
          IF t80 = abap_true.
            DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t82.
            t79 = t82.
          ELSE.
            DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t84 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t85) = t77.
            t84 = t85.
            t83 = t84->get_children( ).
            t79 = t83.
          ENDIF.
          t76 = t79.
          t75 = t76.
          DATA t86 TYPE REF TO zif_lnt_node.
          CLEAR t86.
          DATA(t87) = VALUE abap_bool( ).
          DATA(t88) = t75.
          IF t88 IS INITIAL.
            t87 = abap_true.
          ENDIF.
          IF t87 = abap_true.
            DATA t89 TYPE REF TO zif_lnt_node.
            CLEAR t89.
            t86 = t89.
          ELSE.
            DATA t90 TYPE REF TO zif_lnt_node.
            CLEAR t90.
            DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t92) = t75.
            t91 = t92.
            DATA t93 TYPE REF TO object.
            CLEAR t93.
            t91->load( ).
            CLEAR t93.
            READ TABLE t91->items INDEX 1 INTO t93.
            DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t94.
            CLEAR t90.
            IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t94 ?= t93.
              DATA t95 TYPE REF TO object.
              t95 = t94->as_ref( ).
              t90 ?= t95.
            ELSE.
              t90 ?= t93.
            ENDIF.
            t86 = t90.
          ENDIF.
          t74 = t86.
          t73 = t74.
          DATA t96 TYPE REF TO object.
          CLEAR t96.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = t73.
          IF t98 IS INITIAL.
            t97 = abap_true.
          ENDIF.
          IF t97 = abap_true.
            DATA t99 TYPE REF TO object.
            CLEAR t99.
            t96 = t99.
          ELSE.
            DATA t100 TYPE REF TO object.
            DATA t101 TYPE REF TO zif_lnt_node.
            DATA(t102) = t73.
            t101 = t102.
            t100 = t101->get_db65( ).
            t96 = t100.
          ENDIF.
          t72 = t96.
          t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_st_expres_constant ).
          IF t71 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t103 TYPE string.
      DATA t104 TYPE string.
      DATA t105 TYPE string.
      DATA(t106) = |SELECT: "|.
      DATA t107 TYPE string.
      DATA(t108) = t8.
      t107 = t108->concat_tokens( ).
      DATA(t109) = strlen( t106 ).
      t105 = |{ t106 }{ t107 }|.
      DATA(t110) = |" must be escaped with @ in strict mode|.
      DATA(t111) = strlen( t105 ).
      t104 = |{ t105 }{ t110 }|.
      t103 = t104.
      DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t113) = t2.
      t112 = t113->issues.
      DATA t114 TYPE REF TO zcl_lnt_issue.
      DATA(t115) = t2.
      DATA t116 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t117) = t1.
      t116 = t117->get_first_token( ).
      DATA(t118) = t103.
      DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t119.
      t114 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t115 i_token = t116 i_message_26cb = t118 i_fix = t119 ).
      t112->load( ).
      APPEND t114 TO t112->items.
      t112->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD handle_into.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_fields_62af.
    DATA(t4) = i_db_sources.
    DATA(t5) = i_from.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t7 = t8->find_direct_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t6.
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t6.
      t14 = t15.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t13 = t14->find_first_expression( i_type_9913 = t16 ).
      t12 = t13.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t12.
      t17 = xsdbool( t18 IS BOUND ).
      IF t17 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t12.
        t19 = t20.
        DATA(t21) = t2.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA t24 TYPE REF TO zcl_lnt_abstract_type.
          DATA t25 TYPE REF TO zif_lnt_union_89dd54d5.
          DATA(t26) = t3.
          DATA(t27) = t4.
          DATA t28 TYPE REF TO zcl_lnt_current_scope.
          DATA(t29) = t2.
          t28 = t29->scope.
          DATA(t30) = t5.
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
        DATA(t35) = t6.
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
    DATA(t39) = t1.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    t38 = t39->find_direct_expression( i_type_9913 = t40 ).
    t37 = t38.
    DATA t41 TYPE abap_bool.
    DATA(t42) = t37.
    t41 = xsdbool( t42 IS BOUND ).
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA(t46) = t37.
      t45 = t46.
      DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t44 = t45->find_all_expressions( i_type_9913 = t47 ).
      t43 = t44.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE i.
      DATA(t50) = t43.
      t50->load( ).
      t49 = lines( t50->items ).
      DATA(t51) = 1.
      t48 = xsdbool( t49 = t51 ).
      IF t48 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t52.
        DATA(t53) = t43.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        t53->load( ).
        CLEAR t54.
        READ TABLE t53->items INDEX 1 INTO t54.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        CLEAR t52.
        IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t55 ?= t54.
          DATA t56 TYPE REF TO object.
          t56 = t55->as_ref( ).
          t52 ?= t56.
        ELSE.
          t52 ?= t54.
        ENDIF.
        DATA(t57) = t2.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t59) = t3.
        DATA(t60) = t4.
        DATA t61 TYPE REF TO zcl_lnt_current_scope.
        DATA(t62) = t2.
        t61 = t62->scope.
        t58 = zcl_lnt_sy_expres_select=>build_structure_type( i_fields_62af = t59 i_db_sources = t60 i_scope = t61 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t52 i_input_967e = t57 i_type_9913 = t58 ).
      ELSE.
        DATA(t63) = t43.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t64.
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        DATA(t66) = VALUE i( ).
        DO.
          t63->load( ).
          IF t66 >= lines( t63->items ).
            EXIT.
          ENDIF.
          CLEAR t65.
          READ TABLE t63->items INDEX t66 + 1 INTO t65.
          t66 = t66 + 1.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          CLEAR t64.
          IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t67 ?= t65.
            DATA t68 TYPE REF TO object.
            t68 = t67->as_ref( ).
            t64 ?= t68.
          ELSE.
            t64 ?= t65.
          ENDIF.
          DATA(t69) = t64.
          DATA(t70) = t2.
          DATA t71 TYPE REF TO zcl_lnt_void_type.
          CLEAR t71.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          DATA(t73) = abap_true.
          IF t73 = abap_true.
            DATA(t74) = |SELECT_todo1|.
            DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t75->has = abap_true.
            t75->value = t74.
            t72 = t75.
          ELSE.
            DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t76.
            t72 = t76.
          ENDIF.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t71 = zcl_lnt_void_type=>get_db65( i_voided = t72 i_qualified_name = t77 ).
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t69 i_input_967e = t70 i_type_9913 = t71 ).
        ENDDO.
      ENDIF.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_expression_node.
        DATA(t81) = t37.
        t80 = t81.
        t78 = t80.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        t78 = t82.
      ENDIF.
      result = t78.
      RETURN.
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    DATA t84 TYPE REF TO zcl_lnt_expression_node.
    DATA(t85) = t1.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t84 = t85->find_direct_expression( i_type_9913 = t86 ).
    t83 = t84.
    DATA t87 TYPE abap_bool.
    DATA(t88) = t83.
    t87 = xsdbool( t88 IS BOUND ).
    IF t87 = abap_true.
      DATA(t89) = VALUE abap_bool( ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE i.
      DATA(t93) = t3.
      t93->load( ).
      t92 = lines( t93->items ).
      DATA(t94) = 1.
      t91 = xsdbool( t92 = t94 ).
      t90 = t91.
      IF t91 = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA t96 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t96.
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_shape_14fea903.
        CLEAR t99.
        DATA(t100) = t3.
        DATA t101 TYPE REF TO object.
        CLEAR t101.
        t100->load( ).
        CLEAR t101.
        READ TABLE t100->items INDEX 1 INTO t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        CLEAR t99.
        IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t101.
          DATA t103 TYPE REF TO object.
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t101.
        ENDIF.
        t98 = t99->expression.
        DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
        t97 = t98->find_direct_expression( i_type_9913 = t104 ).
        t96 = t97.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        t105 = t106.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = t96.
        IF t109 IS INITIAL.
          t108 = abap_true.
        ENDIF.
        t107 = xsdbool( t108 = abap_false ).
        t95 = t107.
        t90 = t95.
      ENDIF.
      t89 = t90.
      DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t112 TYPE REF TO zcl_lnt_expression_node.
      DATA(t113) = t83.
      t112 = t113.
      DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266.
      t111 = t112->find_direct_expressions( i_type_9913 = t114 ).
      t110 = t111.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE i.
      DATA(t118) = t110.
      t118->load( ).
      t117 = lines( t118->items ).
      DATA t119 TYPE i.
      DATA(t120) = t3.
      t120->load( ).
      t119 = lines( t120->items ).
      t116 = xsdbool( t117 <> t119 ).
      t115 = t116.
      IF t116 = abap_true.
        DATA t121 TYPE abap_bool.
        DATA(t122) = t89.
        DATA(t123) = abap_true.
        t121 = xsdbool( t122 <> t123 ).
        t115 = t121.
      ENDIF.
      IF t115 = abap_true.
        DATA t124 TYPE string.
        DATA(t125) = |number of fields selected vs list does not match|.
        t124 = t125.
        DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t127) = t2.
        t126 = t127->issues.
        DATA t128 TYPE REF TO zcl_lnt_issue.
        DATA(t129) = t2.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t131) = t1.
        t130 = t131->get_first_token( ).
        DATA(t132) = t124.
        DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t133.
        t128 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t129 i_token = t130 i_message_26cb = t132 i_fix = t133 ).
        t126->load( ).
        APPEND t128 TO t126->items.
        t126->save( ).
        DATA t134 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t134.
        result = t134.
        RETURN.
      ENDIF.
      DATA t135 TYPE i.
      DATA(t136) = 0.
      t135 = t136.
      DO.
        DATA t137 TYPE abap_bool.
        DATA(t138) = t135.
        DATA t139 TYPE i.
        DATA(t140) = t110.
        t140->load( ).
        t139 = lines( t140->items ).
        t137 = xsdbool( t138 < t139 ).
        IF t137 = abap_false.
          EXIT.
        ENDIF.
        DATA t141 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t141.
        DATA t142 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t142.
        DATA(t143) = t110.
        DATA(t144) = t135.
        t144 = t144 + 1.
        DATA t145 TYPE REF TO object.
        CLEAR t145.
        t143->load( ).
        CLEAR t145.
        READ TABLE t143->items INDEX t144 INTO t145.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        CLEAR t142.
        IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t146 ?= t145.
          DATA t147 TYPE REF TO object.
          t147 = t146->as_ref( ).
          t142 ?= t147.
        ELSE.
          t142 ?= t145.
        ENDIF.
        t141 = t142.
        DATA t148 TYPE REF TO zcl_lnt_shape_14fea903.
        CLEAR t148.
        DATA t149 TYPE REF TO zcl_lnt_shape_14fea903.
        CLEAR t149.
        DATA(t150) = t3.
        DATA(t151) = t135.
        t151 = t151 + 1.
        DATA t152 TYPE REF TO object.
        CLEAR t152.
        t150->load( ).
        CLEAR t152.
        READ TABLE t150->items INDEX t151 INTO t152.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        CLEAR t149.
        IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t153 ?= t152.
          DATA t154 TYPE REF TO object.
          t154 = t153->as_ref( ).
          t149 ?= t154.
        ELSE.
          t149 ?= t152.
        ENDIF.
        t148 = t149.
        DATA t155 TYPE REF TO zcl_lnt_expression_node.
        DATA t156 TYPE REF TO zcl_lnt_expression_node.
        DATA(t157) = t141.
        DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t156 = t157->find_first_expression( i_type_9913 = t158 ).
        t155 = t156.
        DATA t159 TYPE abap_bool.
        DATA(t160) = t155.
        t159 = xsdbool( t160 IS BOUND ).
        IF t159 = abap_true.
          DATA(t161) = t89.
          IF t161 = abap_true.
            DATA t162 TYPE string.
            DATA(t163) = |dynamic field list, inlining not possible|.
            t162 = t163.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t165) = t2.
            t164 = t165->issues.
            DATA t166 TYPE REF TO zcl_lnt_issue.
            DATA(t167) = t2.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t169) = t1.
            t168 = t169->get_first_token( ).
            DATA(t170) = t162.
            DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t171.
            t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t167 i_token = t168 i_message_26cb = t170 i_fix = t171 ).
            t164->load( ).
            APPEND t166 TO t164->items.
            t164->save( ).
            DATA t172 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t172.
            result = t172.
            RETURN.
          ENDIF.
          DATA t173 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t173.
          DATA t174 TYPE REF TO zcl_lnt_void_type.
          CLEAR t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA(t176) = abap_true.
          IF t176 = abap_true.
            DATA(t177) = |SELECT_todo2|.
            DATA(t178) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t178->has = abap_true.
            t178->value = t177.
            t175 = t178.
          ELSE.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            t175 = t179.
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t174 = zcl_lnt_void_type=>get_db65( i_voided = t175 i_qualified_name = t180 ).
          t173 = t174.
          DATA(t181) = VALUE abap_bool( ).
          DATA t182 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t182.
          IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
            zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
          ENDIF.
          t182 = zcl_lnt_select_module=>is_simple.
          DATA t183 TYPE string.
          DATA(t184) = t148.
          t183 = t184->code.
          t181 = t182->test( p0 = t183 ).
          IF t181 = abap_true.
            DATA(t185) = t4.
            DATA t186 TYPE REF TO zif_lnt_union_c74a232f.
            CLEAR t186.
            DATA(t187) = VALUE i( ).
            DO.
              t185->load( ).
              IF t187 >= lines( t185->items ).
                EXIT.
              ENDIF.
              CLEAR t186.
              READ TABLE t185->items INDEX t187 + 1 INTO t186.
              t187 = t187 + 1.
              DATA(t188) = VALUE abap_bool( ).
              DATA t189 TYPE REF TO zif_lnt_union_c74a232f.
              DATA(t190) = t186.
              t189 = t190.
              DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t192.
              t191 = t192.
              DATA(t193) = VALUE abap_bool( ).
              DATA(t194) = t189.
              IF t194 IS INITIAL.
                t193 = abap_true.
              ENDIF.
              t188 = t193.
              IF t188 = abap_true.
                CONTINUE.
              ENDIF.
              DATA t195 TYPE REF TO zcl_lnt_abstract_type.
              DATA t196 TYPE REF TO zcl_lnt_abstract_type.
              DATA t197 TYPE REF TO zif_lnt_union_c74a232f.
              DATA(t198) = t186.
              t197 = t198.
              DATA t199 TYPE REF TO zif_lnt_registry.
              DATA t200 TYPE REF TO zcl_lnt_current_scope.
              DATA t201 TYPE REF TO zcl_lnt_current_scope.
              DATA(t202) = t2.
              t201 = t202->scope.
              t200 = t201.
              DATA t203 TYPE REF TO zif_lnt_registry.
              DATA(t204) = t200.
              t203 = t204->reg.
              t199 = t203.
              DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t205.
              DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t206.
              t196 = t197->parse_type( i_reg_f149 = t199 i_data_element = t205 i_description = t206 ).
              t195 = t196.
              DATA t207 TYPE abap_bool.
              DATA(t208) = t195.
              t207 = xsdbool( t208 IS BOUND AND t208 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t207 = abap_true.
                DATA t209 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t209.
                DATA t210 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t210.
                DATA t211 TYPE REF TO zcl_lnt_structure_type.
                DATA t212 TYPE REF TO zcl_lnt_structure_type.
                DATA(t213) = t195.
                t212 ?= t213.
                t211 = t212.
                DATA t214 TYPE string.
                DATA t215 TYPE string.
                DATA(t216) = t148.
                t215 = t216->code.
                t214 = t215.
                DATA t217 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t217.
                DATA t218 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                DATA(t219) = t211.
                t218 = t219->indexed.
                DATA t220 TYPE string.
                DATA(t221) = t214.
                DATA(t222) = strlen( t221 ).
                t220 = t221.
                IF t220 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t220 TO UPPER CASE.
                ELSE.
                  t220 = zlnt_runtime_uppe_91169605024d=>full( t220 ).
                ENDIF.
                t217 = t218->get( p0 = t220 ).
                t210 = t217.
                t209 = t210.
                DATA t223 TYPE abap_bool.
                DATA(t224) = t209.
                t223 = xsdbool( t224 IS BOUND ).
                IF t223 = abap_true.
                  DATA t225 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t226) = t209.
                  t225 = t226.
                  t173 = t225.
                  EXIT.
                ENDIF.
              ENDIF.
            ENDDO.
          ENDIF.
          DATA t227 TYPE REF TO zcl_lnt_expression_node.
          DATA(t228) = t155.
          t227 = t228.
          DATA(t229) = t2.
          DATA t230 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t230.
          DATA(t231) = abap_true.
          IF t231 = abap_true.
            DATA(t232) = t173.
            t230 = t232.
          ELSE.
            DATA t233 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t233.
            t230 = t233.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t227 i_input_967e = t229 i_type_9913 = t230 ).
        ENDIF.
        DATA t234 TYPE i.
        DATA(t235) = t135.
        DATA(t236) = 1.
        t234 = t235 + t236.
        t135 = t234.
      ENDDO.
      DATA t237 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t237.
      DATA(t238) = abap_true.
      IF t238 = abap_true.
        DATA t239 TYPE REF TO zcl_lnt_expression_node.
        DATA(t240) = t83.
        t239 = t240.
        t237 = t239.
      ELSE.
        DATA t241 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t241.
        t237 = t241.
      ENDIF.
      result = t237.
      RETURN.
    ENDIF.
    DATA t242 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t242.
    result = t242.

  ENDMETHOD.

  METHOD count_result_type.
    DATA(t1) = i_scope.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    DATA t9 TYPE REF TO zif_lnt_configuration.
    DATA t10 TYPE REF TO zif_lnt_registry.
    DATA(t11) = t6.
    t10 = t11->reg.
    t9 = t10->get_config( ).
    t8 = t9->get_release( ).
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
      DATA(t18) = t1.
      t17 = t18.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE REF TO zif_lnt_configuration.
      DATA t21 TYPE REF TO zif_lnt_registry.
      DATA(t22) = t17.
      t21 = t22->reg.
      t20 = t21->get_config( ).
      t19 = t20->is_open_abap( ).
      t16 = t19.
      t3 = t16.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_current_scope.
      DATA(t26) = t1.
      t25 = t26.
      DATA t27 TYPE string.
      DATA t28 TYPE REF TO zif_lnt_configuration.
      DATA t29 TYPE REF TO zif_lnt_registry.
      DATA(t30) = t25.
      t29 = t30->reg.
      t28 = t29->get_config( ).
      t27 = t28->get_language_version( ).
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
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_db_sources.
    DATA(t3) = i_scope.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = t1.
    t7->load( ).
    t6 = lines( t7->items ).
    DATA(t8) = 1.
    t5 = xsdbool( t6 = t8 ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE i.
      DATA(t11) = t2.
      t11->load( ).
      t10 = lines( t11->items ).
      DATA(t12) = 1.
      t9 = xsdbool( t10 = t12 ).
      t4 = t9.
    ENDIF.
    IF t4 = abap_true.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t14.
      DATA(t15) = `^count\(\s*\*\s*\)$`.
      DATA(t16) = `^count\([`.
      t16 = t16 && |\t\n|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |\r    - |.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t16 t19 INTO t16 RESPECTING BLANKS.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t16 t20 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  　|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t16 t21 INTO t16 RESPECTING BLANKS.
      t16 = t16 && `]*\*[`.
      t16 = t16 && |\t\n|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t16 t22 INTO t16 RESPECTING BLANKS.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t16 t23 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |\r    - |.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t16 t24 INTO t16 RESPECTING BLANKS.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t16 t25 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  　|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t16 t26 INTO t16 RESPECTING BLANKS.
      t16 = t16 && `]*\)$`.
      DATA(t27) = |i|.
      CREATE OBJECT t14 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t16 flags = t27.
      t14->source = t15.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t29.
      DATA(t30) = t1.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      t30->load( ).
      CLEAR t31.
      READ TABLE t30->items INDEX 1 INTO t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t31.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t31.
      ENDIF.
      t28 = t29->code.
      t13 = t14->test( p0 = t28 ).
      IF t13 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t34.
        DATA(t35) = abap_true.
        IF t35 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t37) = t3.
          t36 = zcl_lnt_sy_expres_select=>count_result_type( i_scope = t37 ).
          t34 = t36.
        ELSE.
          DATA t38 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t38.
          t34 = t38.
        ENDIF.
        result = t34.
        RETURN.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t42.
      DATA(t43) = t2.
      DATA(t44) = 0.
      DATA t45 TYPE REF TO object.
      t45 = t43->get( p0 = t44 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      CLEAR t42.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t45.
        DATA t47 TYPE REF TO object.
        t47 = t46->as_ref( ).
        t42 ?= t47.
      ELSE.
        t42 ?= t45.
      ENDIF.
      t41 = t42.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t41.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type.
        DATA t53 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t54) = t41.
        t53 = t54.
        DATA t55 TYPE REF TO zif_lnt_registry.
        DATA t56 TYPE REF TO zcl_lnt_current_scope.
        DATA(t57) = t3.
        t56 = t57.
        DATA t58 TYPE REF TO zif_lnt_registry.
        DATA(t59) = t56.
        t58 = t59->reg.
        t55 = t58.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        t52 = t53->parse_type( i_reg_f149 = t55 i_data_element = t60 i_description = t61 ).
        t48 = t52.
      ENDIF.
      t40 = t48.
      t39 = t40.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t64) = t39.
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t65 = t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t63.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      t62 = t67.
      IF t62 = abap_true.
        DATA(t69) = VALUE string( ).
        DATA(t70) = VALUE string( ).
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA t73 TYPE REF TO zif_lnt_union_c74a232f.
        CLEAR t73.
        DATA t74 TYPE REF TO zif_lnt_union_c74a232f.
        CLEAR t74.
        DATA(t75) = t2.
        DATA(t76) = 0.
        DATA t77 TYPE REF TO object.
        t77 = t75->get( p0 = t76 ).
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        CLEAR t74.
        IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t78 ?= t77.
          DATA t79 TYPE REF TO object.
          t79 = t78->as_ref( ).
          t74 ?= t79.
        ELSE.
          t74 ?= t77.
        ENDIF.
        t73 = t74.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = t73.
        IF t82 IS INITIAL.
          t81 = abap_true.
        ENDIF.
        IF t81 = abap_true.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          t80 = t83.
        ELSE.
          DATA t84 TYPE string.
          DATA t85 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t86) = t73.
          t85 = t86.
          t84 = t85->get_name( ).
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t84.
          t80 = t87.
        ENDIF.
        t72 = t80.
        t71 = t72.
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = t71.
        IF t90 IS BOUND.
          IF t90->has = abap_true.
            t89 = xsdbool( strlen( t90->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE string.
          DATA(t92) = t71.
          t91 = t92->value.
          t88 = t91.
        ELSE.
          DATA(t93) = |buildStructureTypeError|.
          t88 = t93.
        ENDIF.
        t70 = t88.
        t69 = t70.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE abap_bool.
        DATA t96 TYPE REF TO zif_lnt_registry.
        DATA t97 TYPE REF TO zcl_lnt_current_scope.
        DATA(t98) = t3.
        t97 = t98.
        DATA t99 TYPE REF TO zif_lnt_registry.
        DATA(t100) = t97.
        t99 = t100->reg.
        t96 = t99.
        DATA(t101) = t69.
        t95 = t96->in_error_namespace( i_name = t101 ).
        DATA(t102) = abap_true.
        t94 = xsdbool( t95 = t102 ).
        IF t94 = abap_true.
          DATA t103 TYPE REF TO zcl_lnt_unknown_type.
          DATA t104 TYPE string.
          DATA t105 TYPE string.
          DATA(t106) = |Select, |.
          DATA(t107) = t69.
          DATA(t108) = strlen( t106 ).
          t105 = |{ t106 }{ t107 }|.
          DATA(t109) = | not found|.
          DATA(t110) = strlen( t105 ).
          t104 = |{ t105 }{ t109 }|.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t103 = NEW zcl_lnt_unknown_type( i_error = t104 i_qualified_name = t111 ).
          result = t103.
          RETURN.
        ELSE.
          DATA t112 TYPE REF TO zcl_lnt_void_type.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA t114 TYPE REF TO zif_lnt_union_c74a232f.
          CLEAR t114.
          DATA t115 TYPE REF TO zif_lnt_union_c74a232f.
          CLEAR t115.
          DATA(t116) = t2.
          DATA(t117) = 0.
          DATA t118 TYPE REF TO object.
          t118 = t116->get( p0 = t117 ).
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          CLEAR t115.
          IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t119 ?= t118.
            DATA t120 TYPE REF TO object.
            t120 = t119->as_ref( ).
            t115 ?= t120.
          ELSE.
            t115 ?= t118.
          ENDIF.
          t114 = t115.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t122) = VALUE abap_bool( ).
          DATA(t123) = t114.
          IF t123 IS INITIAL.
            t122 = abap_true.
          ENDIF.
          IF t122 = abap_true.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            t121 = t124.
          ELSE.
            DATA t125 TYPE string.
            DATA t126 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t127) = t114.
            t126 = t127.
            t125 = t126->get_name( ).
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t125.
            t121 = t128.
          ENDIF.
          t113 = t121.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          t112 = zcl_lnt_void_type=>get_db65( i_voided = t113 i_qualified_name = t129 ).
          result = t112.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = VALUE string( ).
      DATA t132 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t132.
      DATA(t133) = t1.
      DATA t134 TYPE REF TO object.
      CLEAR t134.
      t133->load( ).
      CLEAR t134.
      READ TABLE t133->items INDEX 1 INTO t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      CLEAR t132.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t135 ?= t134.
        DATA t136 TYPE REF TO object.
        t136 = t135->as_ref( ).
        t132 ?= t136.
      ELSE.
        t132 ?= t134.
      ENDIF.
      t131 = t132->code.
      DATA(t137) = |*|.
      t130 = xsdbool( t131 = t137 ).
      IF t130 = abap_true.
        DATA t138 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t138.
        DATA(t139) = abap_true.
        IF t139 = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t141) = t39.
          t140 = t141.
          t138 = t140.
        ELSE.
          DATA t142 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t142.
          t138 = t142.
        ENDIF.
        result = t138.
        RETURN.
      ELSE.
        DATA t143 TYPE abap_bool.
        DATA(t144) = t39.
        t143 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t143 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t145.
          DATA t146 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_structure_type.
          DATA t148 TYPE REF TO zcl_lnt_structure_type.
          DATA(t149) = t39.
          t148 ?= t149.
          t147 = t148.
          DATA(t150) = VALUE string( ).
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t152.
          DATA(t153) = t1.
          DATA t154 TYPE REF TO object.
          CLEAR t154.
          t153->load( ).
          CLEAR t154.
          READ TABLE t153->items INDEX 1 INTO t154.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          CLEAR t152.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t155 ?= t154.
            DATA t156 TYPE REF TO object.
            t156 = t155->as_ref( ).
            t152 ?= t156.
          ELSE.
            t152 ?= t154.
          ENDIF.
          t151 = t152->code.
          t150 = t151.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          DATA(t159) = t147.
          t158 = t159->indexed.
          DATA t160 TYPE string.
          DATA(t161) = t150.
          DATA(t162) = strlen( t161 ).
          t160 = t161.
          IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t160 TO UPPER CASE.
          ELSE.
            t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
          ENDIF.
          t157 = t158->get( p0 = t160 ).
          t146 = t157.
          t145 = t146.
          DATA t163 TYPE abap_bool.
          DATA(t164) = t145.
          t163 = xsdbool( t164 IS BOUND ).
          IF t163 = abap_true.
            DATA t165 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t165.
            DATA(t166) = abap_true.
            IF t166 = abap_true.
              DATA t167 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t168) = t145.
              t167 = t168.
              t165 = t167.
            ELSE.
              DATA t169 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t169.
              t165 = t169.
            ENDIF.
            result = t165.
            RETURN.
          ELSE.
            DATA(t170) = VALUE abap_bool( ).
            DATA(t171) = VALUE string( ).
            DATA t172 TYPE REF TO zcl_lnt_shape_14fea903.
            CLEAR t172.
            DATA(t173) = t1.
            DATA t174 TYPE REF TO object.
            CLEAR t174.
            t173->load( ).
            CLEAR t174.
            READ TABLE t173->items INDEX 1 INTO t174.
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t175.
            CLEAR t172.
            IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t175 ?= t174.
              DATA t176 TYPE REF TO object.
              t176 = t175->as_ref( ).
              t172 ?= t176.
            ELSE.
              t172 ?= t174.
            ENDIF.
            t171 = t172->code.
            DATA(t177) = |COUNT(*)|.
            t170 = xsdbool( t171 = t177 ).
            IF t170 = abap_true.
              DATA(t178) = VALUE abap_bool( ).
              DATA(t179) = VALUE abap_bool( ).
              DATA(t180) = VALUE abap_bool( ).
              DATA t181 TYPE REF TO zcl_lnt_abap_release.
              DATA t182 TYPE REF TO zcl_lnt_current_scope.
              DATA(t183) = t3.
              t182 = t183.
              DATA t184 TYPE REF TO zcl_lnt_abap_release.
              DATA t185 TYPE REF TO zif_lnt_configuration.
              DATA t186 TYPE REF TO zif_lnt_registry.
              DATA(t187) = t182.
              t186 = t187->reg.
              t185 = t186->get_config( ).
              t184 = t185->get_release( ).
              t181 = t184.
              DATA t188 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t188.
              DATA t189 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t189.
              DATA t190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
              CLEAR t190.
              IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
                zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
              ENDIF.
              t190 = zcl_lnt_version_module=>release_b8cd.
              DATA(t191) = |v750|.
              t189 = t190->get( p0 = t191 ).
              t188 = t189.
              t180 = zcl_lnt_version_module=>release_at_least( i_running = t181 i_required = t188 ).
              t179 = t180.
              IF t180 = abap_false.
                DATA t192 TYPE abap_bool.
                DATA t193 TYPE REF TO zcl_lnt_current_scope.
                DATA(t194) = t3.
                t193 = t194.
                DATA t195 TYPE abap_bool.
                DATA t196 TYPE REF TO zif_lnt_configuration.
                DATA t197 TYPE REF TO zif_lnt_registry.
                DATA(t198) = t193.
                t197 = t198->reg.
                t196 = t197->get_config( ).
                t195 = t196->is_open_abap( ).
                t192 = t195.
                t179 = t192.
              ENDIF.
              t178 = t179.
              IF t179 = abap_false.
                DATA t199 TYPE abap_bool.
                DATA t200 TYPE string.
                DATA t201 TYPE REF TO zcl_lnt_current_scope.
                DATA(t202) = t3.
                t201 = t202.
                DATA t203 TYPE string.
                DATA t204 TYPE REF TO zif_lnt_configuration.
                DATA t205 TYPE REF TO zif_lnt_registry.
                DATA(t206) = t201.
                t205 = t206->reg.
                t204 = t205->get_config( ).
                t203 = t204->get_language_version( ).
                t200 = t203.
                DATA(t207) = |Cloud|.
                t199 = xsdbool( t200 = t207 ).
                t178 = t199.
              ENDIF.
              IF t178 = abap_true.
                DATA t208 TYPE REF TO zcl_lnt_integer8_type.
                DATA t209 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t209.
                t208 = NEW zcl_lnt_integer8_type( i_input_967e = t209 ).
                result = t208.
                RETURN.
              ELSE.
                DATA t210 TYPE REF TO zcl_lnt_integer_type.
                DATA t211 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t211.
                t210 = zcl_lnt_integer_type=>get_db65( i_input_967e = t211 ).
                result = t210.
                RETURN.
              ENDIF.
            ELSE.
              DATA t212 TYPE REF TO zcl_lnt_void_type.
              CLEAR t212.
              DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t213.
              DATA(t214) = abap_true.
              IF t214 = abap_true.
                DATA(t215) = |SELECT_todo11|.
                DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t216->has = abap_true.
                t216->value = t215.
                t213 = t216.
              ELSE.
                DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t217.
                t213 = t217.
              ENDIF.
              DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t218.
              t212 = zcl_lnt_void_type=>get_db65( i_voided = t213 i_qualified_name = t218 ).
              result = t212.
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t219 TYPE REF TO zcl_lnt_void_type.
          CLEAR t219.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          DATA(t221) = abap_true.
          IF t221 = abap_true.
            DATA(t222) = |SELECT_todo10|.
            DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t223->has = abap_true.
            t223->value = t222.
            t220 = t223.
          ELSE.
            DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t224.
            t220 = t224.
          ENDIF.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t225.
          t219 = zcl_lnt_void_type=>get_db65( i_voided = t220 i_qualified_name = t225 ).
          result = t219.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t226 TYPE abap_bool.
      DATA t227 TYPE i.
      DATA(t228) = t2.
      t228->load( ).
      t227 = lines( t228->items ).
      DATA(t229) = 1.
      t226 = xsdbool( t227 = t229 ).
      IF t226 = abap_true.
        DATA t230 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t230.
        DATA t231 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t231.
        DATA t232 TYPE REF TO zif_lnt_union_c74a232f.
        CLEAR t232.
        DATA t233 TYPE REF TO zif_lnt_union_c74a232f.
        CLEAR t233.
        DATA(t234) = t2.
        DATA(t235) = 0.
        DATA t236 TYPE REF TO object.
        t236 = t234->get( p0 = t235 ).
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t237.
        CLEAR t233.
        IF t236 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t237 ?= t236.
          DATA t238 TYPE REF TO object.
          t238 = t237->as_ref( ).
          t233 ?= t238.
        ELSE.
          t233 ?= t236.
        ENDIF.
        t232 = t233.
        DATA t239 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t239.
        DATA(t240) = VALUE abap_bool( ).
        DATA(t241) = t232.
        IF t241 IS INITIAL.
          t240 = abap_true.
        ENDIF.
        IF t240 = abap_true.
          DATA t242 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t242.
          t239 = t242.
        ELSE.
          DATA t243 TYPE REF TO zcl_lnt_abstract_type.
          DATA t244 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t245) = t232.
          t244 = t245.
          DATA t246 TYPE REF TO zif_lnt_registry.
          DATA t247 TYPE REF TO zcl_lnt_current_scope.
          DATA(t248) = t3.
          t247 = t248.
          DATA t249 TYPE REF TO zif_lnt_registry.
          DATA(t250) = t247.
          t249 = t250->reg.
          t246 = t249.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t252.
          t243 = t244->parse_type( i_reg_f149 = t246 i_data_element = t251 i_description = t252 ).
          t239 = t243.
        ENDIF.
        t231 = t239.
        t230 = t231.
        DATA(t253) = VALUE abap_bool( ).
        DATA t254 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t255) = t230.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        t256 = t257.
        DATA(t258) = VALUE abap_bool( ).
        DATA(t259) = t254.
        IF t259 IS INITIAL.
          t258 = abap_true.
        ENDIF.
        t253 = t258.
        IF t253 = abap_true.
          DATA(t260) = VALUE string( ).
          DATA(t261) = VALUE string( ).
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          DATA t264 TYPE REF TO zif_lnt_union_c74a232f.
          CLEAR t264.
          DATA t265 TYPE REF TO zif_lnt_union_c74a232f.
          CLEAR t265.
          DATA(t266) = t2.
          DATA(t267) = 0.
          DATA t268 TYPE REF TO object.
          t268 = t266->get( p0 = t267 ).
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t269.
          CLEAR t265.
          IF t268 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t269 ?= t268.
            DATA t270 TYPE REF TO object.
            t270 = t269->as_ref( ).
            t265 ?= t270.
          ELSE.
            t265 ?= t268.
          ENDIF.
          t264 = t265.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          DATA(t272) = VALUE abap_bool( ).
          DATA(t273) = t264.
          IF t273 IS INITIAL.
            t272 = abap_true.
          ENDIF.
          IF t272 = abap_true.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t274.
            t271 = t274.
          ELSE.
            DATA t275 TYPE string.
            DATA t276 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t277) = t264.
            t276 = t277.
            t275 = t276->get_name( ).
            DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t278->has = abap_true.
            t278->value = t275.
            t271 = t278.
          ENDIF.
          t263 = t271.
          t262 = t263.
          DATA(t279) = VALUE string( ).
          DATA(t280) = VALUE abap_bool( ).
          DATA(t281) = t262.
          IF t281 IS BOUND.
            IF t281->has = abap_true.
              t280 = xsdbool( strlen( t281->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t280 = abap_true.
            DATA t282 TYPE string.
            DATA(t283) = t262.
            t282 = t283->value.
            t279 = t282.
          ELSE.
            DATA(t284) = |buildStructureTypeError|.
            t279 = t284.
          ENDIF.
          t261 = t279.
          t260 = t261.
          DATA t285 TYPE abap_bool.
          DATA t286 TYPE abap_bool.
          DATA t287 TYPE REF TO zif_lnt_registry.
          DATA t288 TYPE REF TO zcl_lnt_current_scope.
          DATA(t289) = t3.
          t288 = t289.
          DATA t290 TYPE REF TO zif_lnt_registry.
          DATA(t291) = t288.
          t290 = t291->reg.
          t287 = t290.
          DATA(t292) = t260.
          t286 = t287->in_error_namespace( i_name = t292 ).
          DATA(t293) = abap_true.
          t285 = xsdbool( t286 = t293 ).
          IF t285 = abap_true.
            DATA t294 TYPE REF TO zcl_lnt_unknown_type.
            DATA t295 TYPE string.
            DATA t296 TYPE string.
            DATA(t297) = |Select, |.
            DATA(t298) = t260.
            DATA(t299) = strlen( t297 ).
            t296 = |{ t297 }{ t298 }|.
            DATA(t300) = | not found|.
            DATA(t301) = strlen( t296 ).
            t295 = |{ t296 }{ t300 }|.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            t294 = NEW zcl_lnt_unknown_type( i_error = t295 i_qualified_name = t302 ).
            result = t294.
            RETURN.
          ELSE.
            DATA t303 TYPE REF TO zcl_lnt_void_type.
            CLEAR t303.
            DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t304.
            DATA t305 TYPE REF TO zif_lnt_union_c74a232f.
            CLEAR t305.
            DATA t306 TYPE REF TO zif_lnt_union_c74a232f.
            CLEAR t306.
            DATA(t307) = t2.
            DATA(t308) = 0.
            DATA t309 TYPE REF TO object.
            t309 = t307->get( p0 = t308 ).
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t310.
            CLEAR t306.
            IF t309 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t310 ?= t309.
              DATA t311 TYPE REF TO object.
              t311 = t310->as_ref( ).
              t306 ?= t311.
            ELSE.
              t306 ?= t309.
            ENDIF.
            t305 = t306.
            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t312.
            DATA(t313) = VALUE abap_bool( ).
            DATA(t314) = t305.
            IF t314 IS INITIAL.
              t313 = abap_true.
            ENDIF.
            IF t313 = abap_true.
              DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t315.
              t312 = t315.
            ELSE.
              DATA t316 TYPE string.
              DATA t317 TYPE REF TO zif_lnt_union_c74a232f.
              DATA(t318) = t305.
              t317 = t318.
              t316 = t317->get_name( ).
              DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t319->has = abap_true.
              t319->value = t316.
              t312 = t319.
            ENDIF.
            t304 = t312.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t320.
            t303 = zcl_lnt_void_type=>get_db65( i_voided = t304 i_qualified_name = t320 ).
            result = t303.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t321 TYPE abap_bool.
        DATA t322 TYPE abap_bool.
        DATA(t323) = t230.
        t322 = xsdbool( t323 IS BOUND AND t323 IS INSTANCE OF zcl_lnt_structure_type ).
        t321 = xsdbool( t322 = abap_false ).
        IF t321 = abap_true.
          DATA t324 TYPE REF TO zcl_lnt_void_type.
          CLEAR t324.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA(t326) = abap_true.
          IF t326 = abap_true.
            DATA(t327) = |SELECT_todo14|.
            DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t328->has = abap_true.
            t328->value = t327.
            t325 = t328.
          ELSE.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            t325 = t329.
          ENDIF.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          t324 = zcl_lnt_void_type=>get_db65( i_voided = t325 i_qualified_name = t330 ).
          result = t324.
          RETURN.
        ENDIF.
        DATA(t331) = VALUE abap_bool( ).
        DATA(t332) = VALUE abap_bool( ).
        DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t334) = t1.
        t333 = t334.
        DATA t335 TYPE i.
        DATA t336 TYPE i.
        DATA(t337) = t333.
        t337->load( ).
        t336 = lines( t337->items ).
        t335 = t336.
        DATA t338 TYPE i.
        DATA(t339) = 0.
        t338 = t339.
        DATA t340 TYPE abap_bool.
        DATA(t341) = abap_true.
        t340 = t341.
        DO.
          DATA t342 TYPE abap_bool.
          DATA(t343) = t338.
          DATA(t344) = t335.
          t342 = xsdbool( t343 < t344 ).
          IF t342 = abap_false.
            EXIT.
          ENDIF.
          DATA t345 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t345.
          DATA t346 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t346.
          DATA t347 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t347.
          DATA(t348) = t333.
          DATA(t349) = t338.
          DATA t350 TYPE REF TO object.
          t350 = t348->get( p0 = t349 ).
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t351.
          CLEAR t347.
          IF t350 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t351 ?= t350.
            DATA t352 TYPE REF TO object.
            t352 = t351->as_ref( ).
            t347 ?= t352.
          ELSE.
            t347 ?= t350.
          ENDIF.
          t346 = t347.
          t345 = t346.
          DATA(t353) = VALUE abap_bool( ).
          DATA(t354) = VALUE abap_bool( ).
          DATA t355 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t355.
          IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
            zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
          ENDIF.
          t355 = zcl_lnt_select_module=>is_simple.
          DATA t356 TYPE string.
          DATA(t357) = t345.
          t356 = t357->code.
          t354 = t355->test( p0 = t356 ).
          t353 = xsdbool( t354 = abap_false ).
          IF t353 = abap_true.
            DATA(t358) = abap_false.
            t340 = t358.
            EXIT.
          ENDIF.
          DATA t359 TYPE i.
          DATA(t360) = t338.
          DATA(t361) = 1.
          t359 = t360 + t361.
          t338 = t359.
        ENDDO.
        DATA(t362) = t340.
        t332 = t362.
        t331 = t332.
        DATA t363 TYPE abap_bool.
        DATA(t364) = t331.
        DATA(t365) = abap_true.
        t363 = xsdbool( t364 = t365 ).
        IF t363 = abap_true.
          DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t367.
          t366 = t367.
          DATA(t368) = t1.
          DATA t369 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t369.
          DATA t370 TYPE REF TO object.
          CLEAR t370.
          DATA(t371) = VALUE i( ).
          DO.
            t368->load( ).
            IF t371 >= lines( t368->items ).
              EXIT.
            ENDIF.
            CLEAR t370.
            READ TABLE t368->items INDEX t371 + 1 INTO t370.
            t371 = t371 + 1.
            DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t372.
            CLEAR t369.
            IF t370 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t372 ?= t370.
              DATA t373 TYPE REF TO object.
              t373 = t372->as_ref( ).
              t369 ?= t373.
            ELSE.
              t369 ?= t370.
            ENDIF.
            DATA t374 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t374.
            DATA t375 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t375.
            DATA t376 TYPE REF TO zcl_lnt_structure_type.
            DATA t377 TYPE REF TO zcl_lnt_structure_type.
            DATA(t378) = t230.
            t377 ?= t378.
            t376 = t377.
            DATA t379 TYPE string.
            DATA t380 TYPE string.
            DATA(t381) = t369.
            t380 = t381->code.
            t379 = t380.
            DATA t382 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t382.
            DATA t383 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t384) = t376.
            t383 = t384->indexed.
            DATA t385 TYPE string.
            DATA(t386) = t379.
            DATA(t387) = strlen( t386 ).
            t385 = t386.
            IF t385 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t385 TO UPPER CASE.
            ELSE.
              t385 = zlnt_runtime_uppe_91169605024d=>full( t385 ).
            ENDIF.
            t382 = t383->get( p0 = t385 ).
            t375 = t382.
            t374 = t375.
            DATA(t388) = VALUE abap_bool( ).
            DATA t389 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t390) = t374.
            t389 = t390.
            DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t392.
            t391 = t392.
            DATA(t393) = VALUE abap_bool( ).
            DATA(t394) = t389.
            IF t394 IS INITIAL.
              t393 = abap_true.
            ENDIF.
            t388 = t393.
            IF t388 = abap_true.
              DATA t395 TYPE REF TO zcl_lnt_void_type.
              CLEAR t395.
              DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t396.
              DATA(t397) = abap_true.
              IF t397 = abap_true.
                DATA(t398) = |SELECT_todo9|.
                DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t399->has = abap_true.
                t399->value = t398.
                t396 = t399.
              ELSE.
                DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t400.
                t396 = t400.
              ENDIF.
              DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t401.
              t395 = zcl_lnt_void_type=>get_db65( i_voided = t396 i_qualified_name = t401 ).
              result = t395.
              RETURN.
            ENDIF.
            DATA(t402) = t366.
            DATA t403 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t403.
            DATA(t404) = VALUE string( ).
            DATA(t405) = VALUE string( ).
            DATA t406 TYPE string.
            DATA t407 TYPE string.
            DATA(t408) = t369.
            t407 = t408->as.
            t406 = t407.
            DATA(t409) = VALUE string( ).
            DATA t410 TYPE abap_bool.
            DATA(t411) = t406.
            t410 = xsdbool( strlen( t411 ) > 0 ).
            IF t410 = abap_true.
              DATA(t412) = t406.
              t409 = t412.
            ELSE.
              DATA t413 TYPE string.
              DATA(t414) = t369.
              t413 = t414->code.
              t409 = t413.
            ENDIF.
            t405 = t409.
            t404 = t405.
            DATA t415 TYPE REF TO zcl_lnt_abstract_type.
            DATA t416 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t417) = t374.
            t416 = t417.
            t415 = t416.
            DATA t418 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t419 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t419.
            t418 = t419.
            DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t421.
            t420 = t421.
            t403 = NEW zcl_lnt_istructure_component( i_name = t404 i_type_9913 = t415 i_as_include = t418 i_suffix = t420 ).
            CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
            t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t422 ).
            ENDIF.
            DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t423.
            IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t423 ).
            ENDIF.
            CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
            t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t424) = |name|.
            DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t425.
            IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t424 p1 = t425 ).
            ENDIF.
            DATA(t426) = |type|.
            DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t427.
            IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
            ENDIF.
            t402->load( ).
            APPEND t403 TO t402->items.
            t402->save( ).
          ENDDO.
          DATA t428 TYPE REF TO zcl_lnt_structure_type.
          DATA(t429) = t366.
          DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t430.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t431.
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t432.
          t428 = NEW zcl_lnt_structure_type( i_components = t429 i_qualified_name = t430 i_ddic_name = t431 i_description = t432 ).
          result = t428.
          RETURN.
        ENDIF.
        DATA t433 TYPE REF TO zcl_lnt_void_type.
        CLEAR t433.
        DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t434.
        DATA(t435) = abap_true.
        IF t435 = abap_true.
          DATA(t436) = |SELECT_todo12|.
          DATA(t437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t437->has = abap_true.
          t437->value = t436.
          t434 = t437.
        ELSE.
          DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t438.
          t434 = t438.
        ENDIF.
        DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t439.
        t433 = zcl_lnt_void_type=>get_db65( i_voided = t434 i_qualified_name = t439 ).
        result = t433.
        RETURN.
      ELSE.
        DATA t440 TYPE REF TO zcl_lnt_void_type.
        CLEAR t440.
        DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t441.
        DATA(t442) = abap_true.
        IF t442 = abap_true.
          DATA(t443) = |SELECT_todo13|.
          DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t444->has = abap_true.
          t444->value = t443.
          t441 = t444.
        ELSE.
          DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t445.
          t441 = t445.
        ENDIF.
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t446.
        t440 = zcl_lnt_void_type=>get_db65( i_voided = t441 i_qualified_name = t446 ).
        result = t440.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD build_table_type.
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_db_sources.
    DATA(t3) = i_scope.
    DATA(t4) = i_from.
    DATA t5 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_itable_options.
    DATA t7 TYPE abap_bool.
    DATA(t8) = abap_false.
    t7 = t8.
    DATA t9 TYPE string.
    DATA(t10) = |EMPTY|.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_itable_key.
    DATA t12 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t12.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    t13 = t14.
    t6 = NEW zcl_lnt_itable_options( i_with_header = t7 i_key_type = t9 i_primary_key = t11 i_secondary = t13 ).
    CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
    t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t15 ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
    t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |withHeader|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = |keyType|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    t5 = t6.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE i.
    DATA(t23) = t2.
    t23->load( ).
    t22 = lines( t23->items ).
    DATA(t24) = 1.
    t21 = xsdbool( t22 > t24 ).
    IF t21 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = t4.
      DATA(t28) = t2.
      t26 = zcl_lnt_sy_expres_select=>build_database_source_infos( i_from = t27 i_db_sources = t28 ).
      t25 = t26.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE i.
      DATA(t32) = t1.
      t32->load( ).
      t31 = lines( t32->items ).
      DATA(t33) = 1.
      t30 = xsdbool( t31 = t33 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE string( ).
        DATA t36 TYPE REF TO zcl_lnt_shape_14fea903.
        CLEAR t36.
        DATA(t37) = t1.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        t37->load( ).
        CLEAR t38.
        READ TABLE t37->items INDEX 1 INTO t38.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        CLEAR t36.
        IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t38.
          DATA t40 TYPE REF TO object.
          t40 = t39->as_ref( ).
          t36 ?= t40.
        ELSE.
          t36 ?= t38.
        ENDIF.
        t35 = t36->code.
        DATA(t41) = |*|.
        t34 = xsdbool( t35 = t41 ).
        t29 = t34.
      ENDIF.
      IF t29 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t43.
        t42 = t43.
        DATA(t44) = t25.
        DATA t45 TYPE REF TO zcl_lnt_database_source_info.
        CLEAR t45.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        DATA(t47) = VALUE i( ).
        DO.
          t44->load( ).
          IF t47 >= lines( t44->items ).
            EXIT.
          ENDIF.
          CLEAR t46.
          READ TABLE t44->items INDEX t47 + 1 INTO t46.
          t47 = t47 + 1.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t48.
          CLEAR t45.
          IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t48 ?= t46.
            DATA t49 TYPE REF TO object.
            t49 = t48->as_ref( ).
            t45 ?= t49.
          ELSE.
            t45 ?= t46.
          ENDIF.
          DATA t50 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t50.
          DATA t51 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t51.
          DATA t52 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t53 TYPE REF TO zif_lnt_union_c74a232f.
          DATA(t54) = t45.
          t53 = t54->source.
          t52 = t53.
          DATA t55 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t55.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t52.
          IF t57 IS INITIAL.
            t56 = abap_true.
          ENDIF.
          IF t56 = abap_true.
            DATA t58 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t58.
            t55 = t58.
          ELSE.
            DATA t59 TYPE REF TO zcl_lnt_abstract_type.
            DATA t60 TYPE REF TO zif_lnt_union_c74a232f.
            DATA(t61) = t52.
            t60 = t61.
            DATA t62 TYPE REF TO zif_lnt_registry.
            DATA t63 TYPE REF TO zcl_lnt_current_scope.
            DATA(t64) = t3.
            t63 = t64.
            DATA t65 TYPE REF TO zif_lnt_registry.
            DATA(t66) = t63.
            t65 = t66->reg.
            t62 = t65.
            DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t67.
            DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t68.
            t59 = t60->parse_type( i_reg_f149 = t62 i_data_element = t67 i_description = t68 ).
            t55 = t59.
          ENDIF.
          t51 = t55.
          t50 = t51.
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE abap_bool.
          DATA(t71) = t50.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_structure_type ).
          t69 = xsdbool( t70 = abap_false ).
          IF t69 = abap_true.
            DATA t72 TYPE REF TO zcl_lnt_void_type.
            CLEAR t72.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            DATA(t74) = abap_true.
            IF t74 = abap_true.
              DATA(t75) = |SELECT_todo3|.
              DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t76->has = abap_true.
              t76->value = t75.
              t73 = t76.
            ELSE.
              DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t77.
              t73 = t77.
            ENDIF.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            t72 = zcl_lnt_void_type=>get_db65( i_voided = t73 i_qualified_name = t78 ).
            result = t72.
            RETURN.
          ENDIF.
          DATA(t79) = t42.
          DATA t80 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t80.
          DATA(t81) = VALUE string( ).
          DATA(t82) = VALUE string( ).
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = t45.
          t84 = t85->alias.
          t83 = t84.
          DATA(t86) = VALUE string( ).
          DATA t87 TYPE abap_bool.
          DATA(t88) = t83.
          t87 = xsdbool( strlen( t88 ) > 0 ).
          IF t87 = abap_true.
            DATA(t89) = t83.
            t86 = t89.
          ELSE.
            DATA t90 TYPE string.
            DATA(t91) = t45.
            t90 = t91->name.
            t86 = t90.
          ENDIF.
          t82 = t86.
          t81 = t82.
          DATA t92 TYPE REF TO zcl_lnt_abstract_type.
          DATA t93 TYPE REF TO zcl_lnt_structure_type.
          DATA(t94) = t50.
          t93 ?= t94.
          t92 = t93.
          DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t96.
          t95 = t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          t97 = t98.
          t80 = NEW zcl_lnt_istructure_component( i_name = t81 i_type_9913 = t92 i_as_include = t95 i_suffix = t97 ).
          CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
          t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t99 ).
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t100 ).
          ENDIF.
          CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
          t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t101) = |name|.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
          ENDIF.
          DATA(t103) = |type|.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
          ENDIF.
          t79->load( ).
          APPEND t80 TO t79->items.
          t79->save( ).
        ENDDO.
        DATA t105 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t106 TYPE REF TO zcl_lnt_structure_type.
        DATA(t107) = t42.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        t106 = NEW zcl_lnt_structure_type( i_components = t107 i_qualified_name = t108 i_ddic_name = t109 i_description = t110 ).
        DATA(t111) = t5.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t105 = NEW zcl_lnt_ty_table_type( i_row_type = t106 i_options = t111 i_qualified_name = t112 i_description = t113 ).
        result = t105.
        RETURN.
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t115.
      t114 = t115.
      DATA(t116) = t1.
      DATA t117 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      DATA(t119) = VALUE i( ).
      DO.
        t116->load( ).
        IF t119 >= lines( t116->items ).
          EXIT.
        ENDIF.
        CLEAR t118.
        READ TABLE t116->items INDEX t119 + 1 INTO t118.
        t119 = t119 + 1.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        CLEAR t117.
        IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t120 ?= t118.
          DATA t121 TYPE REF TO object.
          t121 = t120->as_ref( ).
          t117 ?= t121.
        ELSE.
          t117 ?= t118.
        ENDIF.
        DATA t122 TYPE REF TO zcl_lnt_abstract_type.
        DATA t123 TYPE REF TO zcl_lnt_abstract_type.
        DATA t124 TYPE string.
        DATA(t125) = t117.
        t124 = t125->code.
        DATA(t126) = t25.
        DATA(t127) = t3.
        t123 = zcl_lnt_sy_expres_select=>find_field_type( i_code = t124 i_source_infos = t126 i_scope = t127 ).
        t122 = t123.
        DATA(t128) = VALUE abap_bool( ).
        DATA t129 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t130) = t122.
        t129 = t130.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        t131 = t132.
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = t129.
        IF t134 IS INITIAL.
          t133 = abap_true.
        ENDIF.
        t128 = t133.
        IF t128 = abap_true.
          DATA t135 TYPE REF TO zcl_lnt_void_type.
          CLEAR t135.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA(t137) = abap_true.
          IF t137 = abap_true.
            DATA(t138) = |SELECT_todo3|.
            DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t139->has = abap_true.
            t139->value = t138.
            t136 = t139.
          ELSE.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            t136 = t140.
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t135 = zcl_lnt_void_type=>get_db65( i_voided = t136 i_qualified_name = t141 ).
          result = t135.
          RETURN.
        ENDIF.
        DATA(t142) = VALUE string( ).
        DATA(t143) = VALUE string( ).
        DATA t144 TYPE string.
        DATA t145 TYPE string.
        DATA(t146) = t117.
        t145 = t146->as.
        t144 = t145.
        DATA(t147) = VALUE string( ).
        DATA t148 TYPE abap_bool.
        DATA(t149) = t144.
        t148 = xsdbool( strlen( t149 ) > 0 ).
        IF t148 = abap_true.
          DATA(t150) = t144.
          t147 = t150.
        ELSE.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t154 TYPE string.
          DATA(t155) = t117.
          t154 = t155->code.
          DATA(t156) = |~|.
          DATA(t157) = strlen( t154 ).
          DATA t158 TYPE i.
          DATA(t159) = VALUE i( ).
          DATA(t160) = VALUE i( ).
          DATA t161 TYPE i.
          DATA(t162) = VALUE string( ).
          CREATE OBJECT t153.
          t161 = strlen( t156 ).
          t158 = 0.
          IF t161 = 0.
            WHILE t158 < t157.
              t162 = t154+t158(1).
              APPEND t162 TO t153->items.
              t158 = t158 + 1.
            ENDWHILE.
          ELSE.
            WHILE t158 <= t157.
              FIND FIRST OCCURRENCE OF t156 IN SECTION OFFSET t158 OF t154 MATCH OFFSET t159.
              IF sy-subrc = 0.
                t160 = t159 - t158.
              ELSE.
                t159 = -1.
                t160 = t157 - t158.
              ENDIF.
              CLEAR t162.
              IF t160 > 0.
                t162 = t154+t158(t160).
              ENDIF.
              APPEND t162 TO t153->items.
              IF t159 < 0.
                EXIT.
              ENDIF.
              t158 = t159 + t161.
            ENDWHILE.
          ENDIF.
          t152 = t153->pop( ).
          t151 = t152->value.
          t147 = t151.
        ENDIF.
        t143 = t147.
        t142 = t143.
        DATA(t163) = t114.
        DATA t164 TYPE REF TO zcl_lnt_istructure_component.
        DATA t165 TYPE string.
        DATA(t166) = t142.
        t165 = t166.
        DATA t167 TYPE REF TO zcl_lnt_abstract_type.
        DATA t168 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t169) = t122.
        t168 = t169.
        t167 = t168.
        DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t171.
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t172 = t173.
        t164 = NEW zcl_lnt_istructure_component( i_name = t165 i_type_9913 = t167 i_as_include = t170 i_suffix = t172 ).
        CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
        t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t174 ).
        ENDIF.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t175 ).
        ENDIF.
        CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
        t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t176) = |name|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        DATA(t178) = |type|.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        ENDIF.
        t163->load( ).
        APPEND t164 TO t163->items.
        t163->save( ).
      ENDDO.
      DATA t180 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t181 TYPE REF TO zcl_lnt_structure_type.
      DATA(t182) = t114.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t185.
      t181 = NEW zcl_lnt_structure_type( i_components = t182 i_qualified_name = t183 i_ddic_name = t184 i_description = t185 ).
      DATA(t186) = t5.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      t180 = NEW zcl_lnt_ty_table_type( i_row_type = t181 i_options = t186 i_qualified_name = t187 i_description = t188 ).
      result = t180.
      RETURN.
    ELSE.
      DATA t189 TYPE abap_bool.
      DATA t190 TYPE i.
      DATA(t191) = t2.
      t191->load( ).
      t190 = lines( t191->items ).
      DATA(t192) = 1.
      t189 = xsdbool( t190 <> t192 ).
      IF t189 = abap_true.
        DATA t193 TYPE REF TO zcl_lnt_void_type.
        CLEAR t193.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t194.
        DATA(t195) = abap_true.
        IF t195 = abap_true.
          DATA(t196) = |SELECT_todo3|.
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = t196.
          t194 = t197.
        ELSE.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          t194 = t198.
        ENDIF.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        t193 = zcl_lnt_void_type=>get_db65( i_voided = t194 i_qualified_name = t199 ).
        result = t193.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t200) = VALUE abap_bool( ).
    DATA t201 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t202 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t202.
    DATA(t203) = t2.
    t203->load( ).
    CLEAR t202.
    READ TABLE t203->items INDEX 1 INTO t202.
    t201 = t202.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    t204 = t205.
    DATA(t206) = VALUE abap_bool( ).
    DATA(t207) = t201.
    IF t207 IS INITIAL.
      t206 = abap_true.
    ENDIF.
    t200 = t206.
    IF t200 = abap_true.
      DATA t208 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t208.
      DATA t209 TYPE REF TO zcl_lnt_void_type.
      CLEAR t209.
      DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t210.
      DATA(t211) = abap_true.
      IF t211 = abap_true.
        DATA(t212) = |SELECT_todo4|.
        DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t213->has = abap_true.
        t213->value = t212.
        t210 = t213.
      ELSE.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        t210 = t214.
      ENDIF.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      t209 = zcl_lnt_void_type=>get_db65( i_voided = t210 i_qualified_name = t215 ).
      DATA(t216) = t5.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t217.
      DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t218.
      t208 = NEW zcl_lnt_ty_table_type( i_row_type = t209 i_options = t216 i_qualified_name = t217 i_description = t218 ).
      result = t208.
      RETURN.
    ENDIF.
    DATA t219 TYPE REF TO zcl_lnt_abstract_type.
    DATA t220 TYPE REF TO zcl_lnt_abstract_type.
    DATA t221 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t222 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t222.
    DATA(t223) = t2.
    t223->load( ).
    CLEAR t222.
    READ TABLE t223->items INDEX 1 INTO t222.
    t221 = t222.
    DATA t224 TYPE REF TO zif_lnt_registry.
    DATA t225 TYPE REF TO zcl_lnt_current_scope.
    DATA(t226) = t3.
    t225 = t226.
    DATA t227 TYPE REF TO zif_lnt_registry.
    DATA(t228) = t225.
    t227 = t228->reg.
    t224 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t230.
    t220 = t221->parse_type( i_reg_f149 = t224 i_data_element = t229 i_description = t230 ).
    t219 = t220.
    DATA t231 TYPE abap_bool.
    DATA t232 TYPE abap_bool.
    DATA(t233) = t219.
    t232 = xsdbool( t233 IS BOUND AND t233 IS INSTANCE OF zcl_lnt_structure_type ).
    t231 = xsdbool( t232 = abap_false ).
    IF t231 = abap_true.
      DATA t234 TYPE REF TO zcl_lnt_void_type.
      CLEAR t234.
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t235.
      DATA(t236) = abap_true.
      IF t236 = abap_true.
        DATA(t237) = |SELECT_todo5|.
        DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t238->has = abap_true.
        t238->value = t237.
        t235 = t238.
      ELSE.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        t235 = t239.
      ENDIF.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t240.
      t234 = zcl_lnt_void_type=>get_db65( i_voided = t235 i_qualified_name = t240 ).
      result = t234.
      RETURN.
    ENDIF.
    DATA t241 TYPE abap_bool.
    DATA t242 TYPE abap_bool.
    DATA t243 TYPE i.
    DATA(t244) = t1.
    t244->load( ).
    t243 = lines( t244->items ).
    DATA(t245) = 1.
    t242 = xsdbool( t243 = t245 ).
    t241 = t242.
    IF t242 = abap_true.
      DATA(t246) = VALUE abap_bool( ).
      DATA(t247) = VALUE string( ).
      DATA t248 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t248.
      DATA(t249) = t1.
      DATA t250 TYPE REF TO object.
      CLEAR t250.
      t249->load( ).
      CLEAR t250.
      READ TABLE t249->items INDEX 1 INTO t250.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t251.
      CLEAR t248.
      IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t251 ?= t250.
        DATA t252 TYPE REF TO object.
        t252 = t251->as_ref( ).
        t248 ?= t252.
      ELSE.
        t248 ?= t250.
      ENDIF.
      t247 = t248->code.
      DATA(t253) = |*|.
      t246 = xsdbool( t247 = t253 ).
      t241 = t246.
    ENDIF.
    IF t241 = abap_true.
      DATA t254 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t255 TYPE REF TO zcl_lnt_structure_type.
      DATA(t256) = t219.
      t255 ?= t256.
      DATA(t257) = t5.
      DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t258.
      DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t259.
      t254 = NEW zcl_lnt_ty_table_type( i_row_type = t255 i_options = t257 i_qualified_name = t258 i_description = t259 ).
      result = t254.
      RETURN.
    ENDIF.
    DATA(t260) = VALUE abap_bool( ).
    DATA(t261) = VALUE abap_bool( ).
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t263) = t1.
    t262 = t263.
    DATA t264 TYPE i.
    DATA t265 TYPE i.
    DATA(t266) = t262.
    t266->load( ).
    t265 = lines( t266->items ).
    t264 = t265.
    DATA t267 TYPE i.
    DATA(t268) = 0.
    t267 = t268.
    DATA t269 TYPE abap_bool.
    DATA(t270) = abap_true.
    t269 = t270.
    DO.
      DATA t271 TYPE abap_bool.
      DATA(t272) = t267.
      DATA(t273) = t264.
      t271 = xsdbool( t272 < t273 ).
      IF t271 = abap_false.
        EXIT.
      ENDIF.
      DATA t274 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t274.
      DATA t275 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t275.
      DATA t276 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t276.
      DATA(t277) = t262.
      DATA(t278) = t267.
      DATA t279 TYPE REF TO object.
      t279 = t277->get( p0 = t278 ).
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      CLEAR t276.
      IF t279 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t280 ?= t279.
        DATA t281 TYPE REF TO object.
        t281 = t280->as_ref( ).
        t276 ?= t281.
      ELSE.
        t276 ?= t279.
      ENDIF.
      t275 = t276.
      t274 = t275.
      DATA(t282) = VALUE abap_bool( ).
      DATA(t283) = VALUE abap_bool( ).
      DATA t284 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t284.
      IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
        zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
      ENDIF.
      t284 = zcl_lnt_select_module=>is_simple.
      DATA t285 TYPE string.
      DATA(t286) = t274.
      t285 = t286->code.
      t283 = t284->test( p0 = t285 ).
      t282 = xsdbool( t283 = abap_false ).
      IF t282 = abap_true.
        DATA(t287) = abap_false.
        t269 = t287.
        EXIT.
      ENDIF.
      DATA t288 TYPE i.
      DATA(t289) = t267.
      DATA(t290) = 1.
      t288 = t289 + t290.
      t267 = t288.
    ENDDO.
    DATA(t291) = t269.
    t261 = t291.
    t260 = t261.
    DATA t292 TYPE abap_bool.
    DATA(t293) = t260.
    DATA(t294) = abap_true.
    t292 = xsdbool( t293 = t294 ).
    IF t292 = abap_true.
      DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t296.
      t295 = t296.
      DATA(t297) = t1.
      DATA t298 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t298.
      DATA t299 TYPE REF TO object.
      CLEAR t299.
      DATA(t300) = VALUE i( ).
      DO.
        t297->load( ).
        IF t300 >= lines( t297->items ).
          EXIT.
        ENDIF.
        CLEAR t299.
        READ TABLE t297->items INDEX t300 + 1 INTO t299.
        t300 = t300 + 1.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t301.
        CLEAR t298.
        IF t299 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t301 ?= t299.
          DATA t302 TYPE REF TO object.
          t302 = t301->as_ref( ).
          t298 ?= t302.
        ELSE.
          t298 ?= t299.
        ENDIF.
        DATA t303 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t303.
        DATA t304 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t304.
        DATA t305 TYPE REF TO zcl_lnt_structure_type.
        DATA t306 TYPE REF TO zcl_lnt_structure_type.
        DATA(t307) = t219.
        t306 ?= t307.
        t305 = t306.
        DATA t308 TYPE string.
        DATA t309 TYPE string.
        DATA(t310) = t298.
        t309 = t310->code.
        t308 = t309.
        DATA t311 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t311.
        DATA t312 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t313) = t305.
        t312 = t313->indexed.
        DATA t314 TYPE string.
        DATA(t315) = t308.
        DATA(t316) = strlen( t315 ).
        t314 = t315.
        IF t314 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t314 TO UPPER CASE.
        ELSE.
          t314 = zlnt_runtime_uppe_91169605024d=>full( t314 ).
        ENDIF.
        t311 = t312->get( p0 = t314 ).
        t304 = t311.
        t303 = t304.
        DATA(t317) = VALUE abap_bool( ).
        DATA t318 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t319) = t303.
        t318 = t319.
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        t320 = t321.
        DATA(t322) = VALUE abap_bool( ).
        DATA(t323) = t318.
        IF t323 IS INITIAL.
          t322 = abap_true.
        ENDIF.
        t317 = t322.
        IF t317 = abap_true.
          DATA t324 TYPE REF TO zcl_lnt_void_type.
          CLEAR t324.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA(t326) = abap_true.
          IF t326 = abap_true.
            DATA(t327) = |SELECT_todo6|.
            DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t328->has = abap_true.
            t328->value = t327.
            t325 = t328.
          ELSE.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            t325 = t329.
          ENDIF.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          t324 = zcl_lnt_void_type=>get_db65( i_voided = t325 i_qualified_name = t330 ).
          result = t324.
          RETURN.
        ENDIF.
        DATA(t331) = t295.
        DATA t332 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t332.
        DATA(t333) = VALUE string( ).
        DATA(t334) = VALUE string( ).
        DATA t335 TYPE string.
        DATA t336 TYPE string.
        DATA(t337) = t298.
        t336 = t337->as.
        t335 = t336.
        DATA(t338) = VALUE string( ).
        DATA t339 TYPE abap_bool.
        DATA(t340) = t335.
        t339 = xsdbool( strlen( t340 ) > 0 ).
        IF t339 = abap_true.
          DATA(t341) = t335.
          t338 = t341.
        ELSE.
          DATA t342 TYPE string.
          DATA(t343) = t298.
          t342 = t343->code.
          t338 = t342.
        ENDIF.
        t334 = t338.
        t333 = t334.
        DATA t344 TYPE REF TO zcl_lnt_abstract_type.
        DATA t345 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t346) = t303.
        t345 = t346.
        t344 = t345.
        DATA t347 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t348 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t348.
        t347 = t348.
        DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t350.
        t349 = t350.
        t332 = NEW zcl_lnt_istructure_component( i_name = t333 i_type_9913 = t344 i_as_include = t347 i_suffix = t349 ).
        CREATE OBJECT t332->zlnt_view_ownkeys_b0e8086400eb.
        t332->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t351 ).
        ENDIF.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t352 ).
        ENDIF.
        CREATE OBJECT t332->zlnt_json_ownkeys_70e5fd461788.
        t332->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t353) = |name|.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
        ENDIF.
        DATA(t355) = |type|.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
        ENDIF.
        t331->load( ).
        APPEND t332 TO t331->items.
        t331->save( ).
      ENDDO.
      DATA t357 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t358 TYPE REF TO zcl_lnt_structure_type.
      DATA(t359) = t295.
      DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t360.
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t361.
      DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t362.
      t358 = NEW zcl_lnt_structure_type( i_components = t359 i_qualified_name = t360 i_ddic_name = t361 i_description = t362 ).
      DATA(t363) = t5.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t364.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t365.
      t357 = NEW zcl_lnt_ty_table_type( i_row_type = t358 i_options = t363 i_qualified_name = t364 i_description = t365 ).
      result = t357.
      RETURN.
    ENDIF.
    DATA t366 TYPE REF TO zcl_lnt_void_type.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t367.
    DATA(t368) = abap_true.
    IF t368 = abap_true.
      DATA(t369) = |SELECT_todo7|.
      DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t370->has = abap_true.
      t370->value = t369.
      t367 = t370.
    ELSE.
      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t371.
      t367 = t371.
    ENDIF.
    DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t372.
    t366 = zcl_lnt_void_type=>get_db65( i_voided = t367 i_qualified_name = t372 ).
    result = t366.

  ENDMETHOD.

  METHOD build_database_source_infos.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_from.
    DATA(t2) = i_db_sources.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
    t4 = t5->find_all_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE f.
    DATA(t9) = CONV f( -1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = t2.
    DATA t13 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t12->load( ).
      IF t14 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t12->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE f.
      DATA(t16) = t8.
      DATA(t17) = CONV f( 1 ).
      t15 = t16 + t17.
      t8 = t15.
      DATA(t18) = t10.
      DATA t19 TYPE REF TO zcl_lnt_database_source_info.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t21.
      DATA(t22) = t3.
      DATA(t23) = VALUE i( ).
      DATA(t24) = t8.
      IF t24 > range_i32_upper.
        t23 = range_i32_upper.
      ELSEIF t24 < range_i32_lower.
        t23 = range_i32_lower.
      ELSE.
        t23 = trunc( t24 ).
      ENDIF.
      t23 = t23 + 1.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      t22->load( ).
      CLEAR t25.
      READ TABLE t22->items INDEX t23 INTO t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t21.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t25.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t21 ?= t27.
      ELSE.
        t21 ?= t25.
      ENDIF.
      t20 = t21.
      DATA(t28) = VALUE string( ).
      DATA(t29) = VALUE string( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA(t41) = t20.
      t40 = t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t40.
      IF t44 IS INITIAL.
        t43 = abap_true.
      ENDIF.
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t45.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA(t47) = t40.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
        t46 = t47->find_first_expression( i_type_9913 = t48 ).
        t42 = t46.
      ENDIF.
      t39 = t42.
      t38 = t39.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = t38.
      IF t51 IS INITIAL.
        t50 = abap_true.
      ENDIF.
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t52.
        t49 = t52.
      ELSE.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        DATA(t55) = t38.
        t54 = t55.
        t53 = t54->get_first_token( ).
        t49 = t53.
      ENDIF.
      t37 = t49.
      t36 = t37.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t36.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t56 = t59.
      ELSE.
        DATA t60 TYPE string.
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t63) = t36.
        t62 = t63.
        t61 = t62.
        DATA t64 TYPE string.
        DATA(t65) = t61.
        t64 = t65->str.
        t60 = t64.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t60.
        t56 = t66.
      ENDIF.
      t35 = t56.
      t34 = t35.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t34.
      IF t69 IS INITIAL.
        t68 = abap_true.
      ELSEIF t69->has = abap_false.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        DATA(t73) = t34.
        t72 = t73->value.
        DATA t74 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t74.
        DATA(t75) = `^\*`.
        DATA(t76) = ||.
        CREATE OBJECT t74 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t75 flags = t76.
        DATA(t77) = ||.
        DATA(t78) = strlen( t72 ).
        t71 = t74->replace( p0 = t72 p1 = t77 ).
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t71.
        t67 = t79.
      ENDIF.
      t33 = t67.
      t32 = t33.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t32.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ELSEIF t82->has = abap_false.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE string.
        DATA t85 TYPE string.
        DATA(t86) = t32.
        t85 = t86->value.
        DATA(t87) = strlen( t85 ).
        t84 = t85.
        IF t84 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t84 TO UPPER CASE.
        ELSE.
          t84 = zlnt_runtime_uppe_91169605024d=>full( t84 ).
        ENDIF.
        DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t88->has = abap_true.
        t88->value = t84.
        t80 = t88.
      ENDIF.
      t31 = t80.
      t30 = t31.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = t30.
      IF t91 IS BOUND.
        IF t91->has = abap_true.
          t90 = xsdbool( strlen( t91->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t90 = abap_true.
        DATA t92 TYPE string.
        DATA(t93) = t30.
        t92 = t93->value.
        t89 = t92.
      ELSE.
        DATA(t94) = ||.
        t89 = t94.
      ENDIF.
      t29 = t89.
      t28 = t29.
      DATA(t95) = VALUE string( ).
      DATA(t96) = VALUE string( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      DATA(t104) = t20.
      t103 = t104.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t103.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      IF t106 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t108.
        t105 = t108.
      ELSE.
        DATA t109 TYPE REF TO zcl_lnt_expression_node.
        DATA(t110) = t103.
        DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
        t109 = t110->find_direct_expression( i_type_9913 = t111 ).
        t105 = t109.
      ENDIF.
      t102 = t105.
      t101 = t102.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t101.
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      IF t113 = abap_true.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t112 = t115.
      ELSE.
        DATA t116 TYPE string.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        DATA(t118) = t101.
        t117 = t118.
        t116 = t117->concat_tokens( ).
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t116.
        t112 = t119.
      ENDIF.
      t100 = t112.
      t99 = t100.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t120.
      DATA(t121) = VALUE abap_bool( ).
      DATA(t122) = t99.
      IF t122 IS INITIAL.
        t121 = abap_true.
      ELSEIF t122->has = abap_false.
        t121 = abap_true.
      ENDIF.
      IF t121 = abap_true.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        t120 = t123.
      ELSE.
        DATA t124 TYPE string.
        DATA t125 TYPE string.
        DATA(t126) = t99.
        t125 = t126->value.
        DATA(t127) = strlen( t125 ).
        t124 = t125.
        IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t124 TO UPPER CASE.
        ELSE.
          t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
        ENDIF.
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t124.
        t120 = t128.
      ENDIF.
      t98 = t120.
      t97 = t98.
      DATA(t129) = VALUE string( ).
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = t97.
      IF t131 IS BOUND.
        IF t131->has = abap_true.
          t130 = xsdbool( strlen( t131->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t130 = abap_true.
        DATA t132 TYPE string.
        DATA(t133) = t97.
        t132 = t133->value.
        t129 = t132.
      ELSE.
        DATA(t134) = ||.
        t129 = t134.
      ENDIF.
      t96 = t129.
      t95 = t96.
      DATA t135 TYPE REF TO zcl_lnt_database_source_info.
      DATA t136 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t137) = t13.
      t136 = t137.
      DATA t138 TYPE string.
      DATA(t139) = t28.
      t138 = t139.
      DATA t140 TYPE string.
      DATA(t141) = t95.
      t140 = t141.
      t135 = NEW zcl_lnt_database_source_info( i_source_75cf = t136 i_name = t138 i_alias = t140 ).
      CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
      t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t142 ).
      ENDIF.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t143 ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alias` p1 = t144 ).
      ENDIF.
      CREATE OBJECT t135->zlnt_json_ownkeys_70e5fd461788.
      t135->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t145) = |source|.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
      ENDIF.
      DATA(t147) = |name|.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
      ENDIF.
      DATA(t149) = |alias|.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
      ENDIF.
      t19 = t135.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
    ENDDO.
    DATA(t151) = t10.
    t7 = t151.
    result = t7.

  ENDMETHOD.

  METHOD find_field_type.
    DATA(t1) = i_code.
    DATA(t2) = i_source_infos.
    DATA(t3) = i_scope.
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
    DATA(t46) = t9.
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    t47 = t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = t45.
    IF t50 IS INITIAL.
      t49 = abap_true.
    ELSEIF t50->has = abap_false.
      t49 = abap_true.
    ENDIF.
    t44 = t49.
    IF t44 = abap_true.
      DATA(t51) = t2.
      t43 = t51.
    ELSE.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t54.
      t53 = t54.
      DATA(t55) = t2.
      DATA t56 TYPE REF TO zcl_lnt_database_source_info.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      DATA(t58) = VALUE i( ).
      DO.
        t55->load( ).
        IF t58 >= lines( t55->items ).
          EXIT.
        ENDIF.
        CLEAR t57.
        READ TABLE t55->items INDEX t58 + 1 INTO t57.
        t58 = t58 + 1.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t56.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t59 ?= t57.
          DATA t60 TYPE REF TO object.
          t60 = t59->as_ref( ).
          t56 ?= t60.
        ELSE.
          t56 ?= t57.
        ENDIF.
        DATA t61 TYPE abap_bool.
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE string.
        DATA(t64) = t56.
        t63 = t64->alias.
        DATA t65 TYPE string.
        DATA(t66) = t9.
        t65 = t66->value.
        t62 = xsdbool( t63 = t65 ).
        t61 = t62.
        IF t62 = abap_false.
          DATA t67 TYPE abap_bool.
          DATA t68 TYPE string.
          DATA(t69) = t56.
          t68 = t69->name.
          DATA t70 TYPE string.
          DATA(t71) = t9.
          t70 = t71->value.
          t67 = xsdbool( t68 = t70 ).
          t61 = t67.
        ENDIF.
        IF t61 = abap_true.
          DATA(t72) = t53.
          DATA(t73) = t56.
          t72->load( ).
          APPEND t73 TO t72->items.
          t72->save( ).
        ENDIF.
      ENDDO.
      DATA(t74) = t53.
      t52 = t74.
      t43 = t52.
    ENDIF.
    t42 = t43.
    DATA(t75) = t42.
    DATA t76 TYPE REF TO zcl_lnt_database_source_info.
    CLEAR t76.
    DATA t77 TYPE REF TO object.
    CLEAR t77.
    DATA(t78) = VALUE i( ).
    DO.
      t75->load( ).
      IF t78 >= lines( t75->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t75->items INDEX t78 + 1 INTO t77.
      t78 = t78 + 1.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t76.
      IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t77.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t76 ?= t80.
      ELSE.
        t76 ?= t77.
      ENDIF.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t82.
      DATA t83 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t84 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t85) = t76.
      t84 = t85->source.
      t83 = t84.
      DATA t86 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t83.
      IF t88 IS INITIAL.
        t87 = abap_true.
      ENDIF.
      IF t87 = abap_true.
        DATA t89 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t89.
        t86 = t89.
      ELSE.
        DATA t90 TYPE REF TO zcl_lnt_abstract_type.
        DATA t91 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t92) = t83.
        t91 = t92.
        DATA t93 TYPE REF TO zif_lnt_registry.
        DATA t94 TYPE REF TO zcl_lnt_current_scope.
        DATA(t95) = t3.
        t94 = t95.
        DATA t96 TYPE REF TO zif_lnt_registry.
        DATA(t97) = t94.
        t96 = t97->reg.
        t93 = t96.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t90 = t91->parse_type( i_reg_f149 = t93 i_data_element = t98 i_description = t99 ).
        t86 = t90.
      ENDIF.
      t82 = t86.
      t81 = t82.
      DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t101) = t24.
      DATA(t102) = |-|.
      DATA(t103) = strlen( t101 ).
      DATA t104 TYPE i.
      DATA(t105) = VALUE i( ).
      DATA(t106) = VALUE i( ).
      DATA t107 TYPE i.
      DATA(t108) = VALUE string( ).
      CREATE OBJECT t100.
      t107 = strlen( t102 ).
      t104 = 0.
      IF t107 = 0.
        WHILE t104 < t103.
          t108 = t101+t104(1).
          APPEND t108 TO t100->items.
          t104 = t104 + 1.
        ENDWHILE.
      ELSE.
        WHILE t104 <= t103.
          FIND FIRST OCCURRENCE OF t102 IN SECTION OFFSET t104 OF t101 MATCH OFFSET t105.
          IF sy-subrc = 0.
            t106 = t105 - t104.
          ELSE.
            t105 = -1.
            t106 = t103 - t104.
          ENDIF.
          CLEAR t108.
          IF t106 > 0.
            t108 = t101+t104(t106).
          ENDIF.
          APPEND t108 TO t100->items.
          IF t105 < 0.
            EXIT.
          ENDIF.
          t104 = t105 + t107.
        ENDWHILE.
      ENDIF.
      DATA(t109) = VALUE string( ).
      t100->dense( ).
      DATA(t110) = VALUE i( ).
      DO.
        t100->load( ).
        IF t110 >= lines( t100->items ).
          EXIT.
        ENDIF.
        CLEAR t109.
        READ TABLE t100->items INDEX t110 + 1 INTO t109.
        IF t100->has( t110 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t110 = t110 + 1.
        DATA t111 TYPE abap_bool.
        DATA t112 TYPE abap_bool.
        DATA(t113) = t81.
        t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_structure_type ).
        t111 = xsdbool( t112 = abap_false ).
        IF t111 = abap_true.
          DATA t114 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t114.
          t81 = t114.
          EXIT.
        ENDIF.
        DATA t115 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_structure_type.
        DATA t117 TYPE REF TO zcl_lnt_structure_type.
        DATA(t118) = t81.
        t117 ?= t118.
        t116 = t117.
        DATA t119 TYPE string.
        DATA(t120) = t109.
        t119 = t120.
        DATA t121 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t123) = t116.
        t122 = t123->indexed.
        DATA t124 TYPE string.
        DATA(t125) = t119.
        DATA(t126) = strlen( t125 ).
        t124 = t125.
        IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t124 TO UPPER CASE.
        ELSE.
          t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
        ENDIF.
        t121 = t122->get( p0 = t124 ).
        t115 = t121.
        t81 = t115.
      ENDDO.
      DATA t127 TYPE abap_bool.
      DATA(t128) = t81.
      t127 = xsdbool( t128 IS BOUND ).
      IF t127 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t132) = t81.
          t131 = t132.
          t129 = t131.
        ELSE.
          DATA t133 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t133.
          t129 = t133.
        ENDIF.
        result = t129.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t134 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t134.
    result = t134.

  ENDMETHOD.

  METHOD find_fields.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
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
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
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
    DATA t34 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t12.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t37.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t39 TYPE REF TO object.
      DATA t40 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t41) = t12.
      t40 = t41.
      t39 = t40->get_db65( ).
      DATA t42 TYPE REF TO object.
      t42 = t39.
      t38 ?= t42.
      t34 = t38.
    ENDIF.
    t11 = t34.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_st_dynamic ).
    IF t10 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t43.
      DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t44.
      DATA t45 TYPE REF TO zif_lnt_node.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_abstract_node.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      DATA(t48) = t3.
      t47 = t48.
      t46 = t47.
      DATA t49 TYPE REF TO zif_lnt_node.
      CLEAR t49.
      DATA(t50) = abap_true.
      IF t50 = abap_true.
        DATA t51 TYPE REF TO zif_lnt_node.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t53) = t46.
        t52 = t53->children.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        t52->load( ).
        CLEAR t54.
        READ TABLE t52->items INDEX 1 INTO t54.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        CLEAR t51.
        IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t55 ?= t54.
          DATA t56 TYPE REF TO object.
          t56 = t55->as_ref( ).
          t51 ?= t56.
        ELSE.
          t51 ?= t54.
        ENDIF.
        t49 = t51.
      ELSE.
        DATA t57 TYPE REF TO zif_lnt_node.
        CLEAR t57.
        t49 = t57.
      ENDIF.
      t45 = t49.
      t44 ?= t45.
      t43 ?= t44.
      DATA(t58) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t43 i_input_967e = t58 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
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
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      DATA(t70) = t62.
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t73.
      t72 = t73.
      DATA(t74) = t72.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
      t74->load( ).
      APPEND t75 TO t74->items.
      t74->save( ).
      DATA(t76) = t72.
      DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
      t76->load( ).
      APPEND t77 TO t76->items.
      t76->save( ).
      DATA(t78) = t72.
      DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
      t78->load( ).
      APPEND t79 TO t78->items.
      t78->save( ).
      DATA(t80) = t72.
      t71 = t80.
      t68 = t69->find_direct_expressions_multi( i_type_9913 = t71 ).
      t64 = t68.
    ENDIF.
    t61 = t64.
    t60 = t61.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE abap_bool.
    DATA(t83) = t60.
    t82 = xsdbool( t83 IS BOUND ).
    IF t82 = abap_true.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t85) = t60.
      t84 = t85.
      t81 = t84.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t86.
      t81 = t86.
    ENDIF.
    t59 = t81.
    DATA t87 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t87.
    DATA t88 TYPE REF TO object.
    CLEAR t88.
    DATA(t89) = VALUE i( ).
    DO.
      t59->load( ).
      IF t89 >= lines( t59->items ).
        EXIT.
      ENDIF.
      CLEAR t88.
      READ TABLE t59->items INDEX t89 + 1 INTO t88.
      t89 = t89 + 1.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      CLEAR t87.
      IF t88 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t90 ?= t88.
        DATA t91 TYPE REF TO object.
        t91 = t90->as_ref( ).
        t87 ?= t91.
      ELSE.
        t87 ?= t88.
      ENDIF.
      DATA(t92) = VALUE string( ).
      DATA t93 TYPE string.
      DATA t94 TYPE string.
      DATA(t95) = t87.
      t94 = t95->concat_tokens( ).
      DATA(t96) = strlen( t94 ).
      t93 = t94.
      IF t93 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t93 TO UPPER CASE.
      ELSE.
        t93 = zlnt_runtime_uppe_91169605024d=>full( t93 ).
      ENDIF.
      t92 = t93.
      DATA(t97) = VALUE string( ).
      DATA(t98) = VALUE string( ).
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      DATA(t103) = t87.
      DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
      t102 = t103->find_direct_expression( i_type_9913 = t104 ).
      t101 = t102.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t101.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      IF t106 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        t105 = t108.
      ELSE.
        DATA t109 TYPE string.
        DATA t110 TYPE REF TO zcl_lnt_expression_node.
        DATA(t111) = t101.
        t110 = t111.
        t109 = t110->concat_tokens( ).
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t109.
        t105 = t112.
      ENDIF.
      t100 = t105.
      t99 = t100.
      DATA(t113) = VALUE string( ).
      DATA(t114) = VALUE abap_bool( ).
      DATA(t115) = t99.
      IF t115 IS BOUND.
        IF t115->has = abap_true.
          t114 = xsdbool( strlen( t115->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t114 = abap_true.
        DATA t116 TYPE string.
        DATA(t117) = t99.
        t116 = t117->value.
        t113 = t116.
      ELSE.
        DATA(t118) = ||.
        t113 = t118.
      ENDIF.
      t98 = t113.
      t97 = t98.
      DATA t119 TYPE abap_bool.
      DATA(t120) = t97.
      DATA(t121) = ||.
      t119 = xsdbool( t120 <> t121 ).
      IF t119 = abap_true.
        DATA(t122) = VALUE string( ).
        DATA(t123) = t92.
        DATA(t124) = VALUE string( ).
        DATA(t125) = | AS |.
        DATA t126 TYPE string.
        DATA(t127) = t97.
        DATA(t128) = strlen( t127 ).
        t126 = t127.
        IF t126 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t126 TO UPPER CASE.
        ELSE.
          t126 = zlnt_runtime_uppe_91169605024d=>full( t126 ).
        ENDIF.
        DATA(t129) = strlen( t125 ).
        t124 = |{ t125 }{ t126 }|.
        DATA(t130) = ||.
        DATA(t131) = strlen( t123 ).
        t122 = t123.
        IF t124 = ``.
          t122 = |{ t130 }{ t123 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t124 IN t122 WITH t130.
        ENDIF.
        t92 = t122.
      ENDIF.
      DATA(t132) = t5.
      DATA t133 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t133.
      DATA t134 TYPE string.
      DATA(t135) = t92.
      t134 = t135.
      DATA t136 TYPE string.
      DATA(t137) = t97.
      t136 = t137.
      DATA t138 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t138.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t139.
      DATA(t140) = abap_true.
      IF t140 = abap_true.
        DATA(t141) = t87.
        t139 = t141.
      ELSE.
        DATA t142 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t142.
        t139 = t142.
      ENDIF.
      t138 = t139.
      t133 = NEW zcl_lnt_shape_14fea903( i_code = t134 i_as = t136 i_expression = t138 ).
      CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
      t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t143 ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t144 ).
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `expression` p1 = t145 ).
      ENDIF.
      CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
      t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t146) = |code|.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
      ENDIF.
      DATA(t148) = |as|.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
      ENDIF.
      DATA(t150) = |expression|.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
      ENDIF.
      t132->load( ).
      APPEND t133 TO t132->items.
      t132->save( ).
    ENDDO.
    DATA t152 TYPE abap_bool.
    DATA t153 TYPE abap_bool.
    DATA t154 TYPE i.
    DATA(t155) = t5.
    t155->load( ).
    t154 = lines( t155->items ).
    DATA(t156) = 0.
    t153 = xsdbool( t154 = t156 ).
    t152 = t153.
    IF t153 = abap_true.
      DATA t157 TYPE abap_bool.
      DATA(t158) = t3.
      t157 = xsdbool( t158 IS BOUND ).
      t152 = t157.
    ENDIF.
    IF t152 = abap_true.
      DATA(t159) = t5.
      DATA t160 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t160.
      DATA t161 TYPE string.
      DATA t162 TYPE string.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      DATA(t164) = t3.
      t163 = t164.
      t162 = t163->concat_tokens( ).
      t161 = t162.
      DATA t165 TYPE string.
      DATA(t166) = ||.
      t165 = t166.
      DATA t167 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t167.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t168.
      DATA(t169) = abap_true.
      IF t169 = abap_true.
        DATA t170 TYPE REF TO zcl_lnt_expression_node.
        DATA(t171) = t3.
        t170 = t171.
        t168 = t170.
      ELSE.
        DATA t172 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t172.
        t168 = t172.
      ENDIF.
      t167 = t168.
      t160 = NEW zcl_lnt_shape_14fea903( i_code = t161 i_as = t165 i_expression = t167 ).
      CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
      t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t173 ).
      ENDIF.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t174 ).
      ENDIF.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `expression` p1 = t175 ).
      ENDIF.
      CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
      t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t176) = |code|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      DATA(t178) = |as|.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
      ENDIF.
      DATA(t180) = |expression|.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
      ENDIF.
      t159->load( ).
      APPEND t160 TO t159->items.
      t159->save( ).
    ENDIF.
    DATA(t182) = t5.
    result = t182.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d831_ef901d590872.
  ENDMETHOD.
ENDCLASS.
