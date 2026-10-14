* TS: src/abap/5_syntax/syntax.ts:313:1 SyntaxLogic
CLASS zcl_lnt_syntax_logic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA current_file TYPE REF TO zcl_lnt_abap_file.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA deferred TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA object_a393 TYPE REF TO zcl_lnt_abap_object.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA scope TYPE REF TO zcl_lnt_current_scope.
    DATA helpers TYPE REF TO zcl_lnt_shape_0dbcb8a9.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_object_19cd TYPE REF TO zcl_lnt_abap_object.
    METHODS run RETURNING VALUE(result) TYPE REF TO zcl_lnt_isyntax_result.
    METHODS traverse_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_current_scope.
    METHODS new_issue IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_union_8249fcb1.
    METHODS update_scope_structure IMPORTING i_node TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS update_scope_statement IMPORTING i_node TYPE REF TO zcl_lnt_statement_node.
    METHODS update_selection_event_scope IMPORTING i_node TYPE REF TO zcl_lnt_statement_node.
    METHODS opens_selection_event_scope IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_selection_event_boundary IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_slctn_evnt_bndry_strctr IMPORTING i_structure TYPE REF TO zif_lnt_structure RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_syntax_logic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_object_19cd.
    DATA(t3) = t1.
    me->reg = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->issues = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->deferred = t5.
    DATA(t6) = t2.
    me->object_a393 = t6.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t3 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t4) = me->object_a393.
    t3 = t4->syntax_result.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t2.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t7 = xsdbool( t8 = abap_false ).
    t1 = t7.
    IF t1 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_isyntax_result.
      DATA t11 TYPE REF TO zcl_lnt_isyntax_result.
      DATA(t12) = me->object_a393.
      t11 = t12->syntax_result.
      t10 = t11.
      result = t10.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    DATA(t14) = me->reg.
    DATA(t15) = me->object_a393.
    t13 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t14 i_obj_1ed0 = t15 ).
    me->scope = t13.
    DATA t16 TYPE REF TO zcl_lnt_shape_0dbcb8a9.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_object_oriented.
      DATA(t20) = me->scope.
      t19 = NEW zcl_lnt_object_oriented( i_scope = t20 ).
      t17 = t19.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_object_oriented.
      CLEAR t21.
      t17 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_procedural.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_procedural.
      DATA(t25) = me->reg.
      DATA(t26) = me->scope.
      t24 = NEW zcl_lnt_procedural( i_reg_f149 = t25 i_scope = t26 ).
      t22 = t24.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_procedural.
      CLEAR t27.
      t22 = t27.
    ENDIF.
    t16 = NEW zcl_lnt_shape_0dbcb8a9( i_oooc = t17 i_proc = t22 ).
    me->helpers = t16.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    me->issues = t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    me->deferred = t29.
    DATA t30 TYPE REF TO zif_lnt_ddic_references.
    DATA(t31) = me->reg.
    t30 = t31->get_ddic_references( ).
    DATA(t32) = me->object_a393.
    t30->clear_feba( i_obj_1ed0 = t32 ).
    DATA t33 TYPE REF TO zif_lnt_msag_references.
    DATA(t34) = me->reg.
    t33 = t34->get_msag_references( ).
    DATA(t35) = me->object_a393.
    t33->clear_feba( i_obj_1ed0 = t35 ).
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    DATA(t38) = me->object_a393.
    t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_ob_program ).
    t36 = t37.
    IF t37 = abap_true.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE REF TO zcl_lnt_ob_program.
      DATA t41 TYPE REF TO zcl_lnt_ob_program.
      DATA(t42) = me->object_a393.
      t41 ?= t42.
      t40 = t41.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t40.
      t44->parse_xml( ).
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE REF TO zcl_lnt_shape_e86506f0.
      DATA t47 TYPE REF TO zcl_lnt_shape_e86506f0.
      DATA(t48) = t40.
      t47 = t48->parsed_xml.
      t46 = t47.
      t45 = t46->is_include.
      t43 = t45.
      t39 = t43.
      t36 = t39.
    ENDIF.
    IF t36 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_isyntax_result.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t50.
      DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t52) = me->scope.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA(t54) = CONV int8( 9007199 ).
      t54 = t54 * 1000000000.
      t54 = t54 + 254740991.
      DATA(t55) = CONV int8( 9007199 ).
      t55 = t55 * 1000000000.
      t55 = t55 + 254740991.
      t53 = NEW zcl_lnt_position( i_row = t54 i_col = t55 ).
      t51 = t52->pop( i_end = t53 ).
      t49 = NEW zcl_lnt_isyntax_result( i_issues = t50 i_spaghetti = t51 ).
      result = t49.
      RETURN.
    ENDIF.
    DATA(t56) = CAST zcl_lnt_current_scope( me->traverse_object( ) ).
    DATA(t57) = me->deferred.
    DATA t58 TYPE REF TO zif_lnt_closure_d810f2d3.
    CLEAR t58.
    DATA t59 TYPE REF TO object.
    CLEAR t59.
    LOOP AT t57->items INTO t59.
      t58 ?= t59.
      DATA(t60) = t58.
      t60->call_7bd1( ).
    ENDLOOP.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    me->deferred = t61.
    DO.
      DATA(t62) = abap_true.
      IF t62 = abap_false.
        EXIT.
      ENDIF.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t65) = me->scope.
      DATA t66 TYPE REF TO zcl_lnt_position.
      DATA(t67) = CONV int8( 9007199 ).
      t67 = t67 * 1000000000.
      t67 = t67 + 254740991.
      DATA(t68) = CONV int8( 9007199 ).
      t68 = t68 * 1000000000.
      t68 = t68 + 254740991.
      t66 = NEW zcl_lnt_position( i_row = t67 i_col = t68 ).
      t64 = t65->pop( i_end = t66 ).
      t63 = t64.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE string.
      DATA t71 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t74) = t63.
      t73 = t74->g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc( ).
      t72 = t73.
      DATA t75 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t76) = t72.
      t75 = t76->identifier.
      t71 = t75.
      t70 = t71->stype.
      DATA(t77) = |_builtin|.
      t69 = xsdbool( t70 = t77 ).
      IF t69 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t79 TYPE REF TO zcl_lnt_isyntax_result.
        DATA(t80) = me->issues.
        DATA(t81) = t63.
        t79 = NEW zcl_lnt_isyntax_result( i_issues = t80 i_spaghetti = t81 ).
        t78 = t79.
        DATA(t82) = me->object_a393.
        DATA t83 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t83.
        DATA(t84) = abap_true.
        IF t84 = abap_true.
          DATA(t85) = t78.
          t83 = t85.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t86.
          t83 = t86.
        ENDIF.
        t82->syntax_result = t83.
        DATA(t87) = t78.
        result = t87.
        RETURN.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD traverse_object.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->object_a393.
    t2 = t3->get_sequenced_files( ).
    t1 = t2.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = me->object_a393.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_program ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA(t8) = me->object_a393.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_function_group ).
      t4 = t7.
    ENDIF.
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zif_lnt_union_d439e5f2.
      DATA(t11) = me->object_a393.
      t10 ?= t11.
      t9 = t10->get_sequenced_files( ).
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      LOOP AT t9->items INTO t13.
        t12 ?= t13.
        DATA t14 TYPE REF TO zcl_lnt_procedural.
        DATA(t15) = me->helpers.
        t14 = t15->proc.
        DATA(t16) = t12.
        DATA t17 TYPE REF TO zcl_lnt_abap_object.
        DATA t18 TYPE REF TO zif_lnt_union_d439e5f2.
        DATA(t19) = me->object_a393.
        t18 ?= t19.
        t17 ?= t18.
        t14->add_all_form_definitions( i_file = t16 i_obj_1ed0 = t17 ).
      ENDLOOP.
      DATA t20 TYPE REF TO zcl_lnt_abap_file.
      DATA t21 TYPE REF TO zcl_lnt_abap_file.
      DATA t22 TYPE REF TO zif_lnt_union_d439e5f2.
      DATA(t23) = me->object_a393.
      t22 ?= t23.
      t21 = t22->get_main_abap_file( ).
      t20 = t21.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA(t26) = t20.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      t27 = t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t25.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ENDIF.
      t29 = xsdbool( t30 = abap_false ).
      t24 = t29.
      IF t24 = abap_true.
        DATA t32 TYPE string.
        DATA(t33) = |_program|.
        t32 = t33.
        DATA t34 TYPE abap_bool.
        DATA(t35) = me->object_a393.
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_function_group ).
        IF t34 = abap_true.
          DATA(t36) = |_function_group|.
          t32 = t36.
        ENDIF.
        DATA t37 TYPE REF TO zcl_lnt_current_scope.
        DATA(t38) = me->scope.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = t32.
        t39 = t40.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA t43 TYPE REF TO zif_lnt_union_d439e5f2.
        DATA(t44) = me->object_a393.
        t43 ?= t44.
        t42 = t43->get_name( ).
        t41 = t42.
        DATA t45 TYPE REF TO zcl_lnt_position.
        DATA t46 TYPE REF TO zcl_lnt_position.
        DATA(t47) = CONV int8( 1 ).
        DATA(t48) = CONV int8( 1 ).
        t46 = NEW zcl_lnt_position( i_row = t47 i_col = t48 ).
        t45 = t46.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_abstract_file.
        DATA t52 TYPE REF TO zcl_lnt_abap_file.
        DATA(t53) = t20.
        t52 = t53.
        t51 = t52.
        DATA t54 TYPE string.
        DATA(t55) = t51.
        t54 = t55->filename.
        t50 = t54.
        t49 = t50.
        DATA t56 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t57 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t58) = t39.
        DATA(t59) = t41.
        DATA(t60) = t49.
        DATA(t61) = t45.
        DATA t62 TYPE REF TO zcl_lnt_position.
        CLEAR t62.
        t57 = NEW zcl_lnt_iscope_identifier( i_stype = t58 i_sname = t59 i_filename = t60 i_start = t61 i_end = t62 ).
        t56 = t57.
        DATA(t63) = VALUE abap_bool( ).
        DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t66) = t37.
        t65 = t66->current.
        t64 = t65.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        t67 = t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t64.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ENDIF.
        t63 = t69.
        IF t63 = abap_true.
          DATA(t71) = t37.
          DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t72.
          DATA(t73) = abap_true.
          IF t73 = abap_true.
            DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t75) = t56.
            DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t76.
            t74 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t75 i_parent = t76 ).
            t72 = t74.
          ELSE.
            DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t77.
            t72 = t77.
          ENDIF.
          t71->current = t72.
        ELSE.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t81) = t37.
          t80 = t81->current.
          t79 = t80.
          t78 = t79.
          DATA(t82) = t37.
          DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t83.
          DATA(t84) = abap_true.
          IF t84 = abap_true.
            DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t85.
            DATA(t86) = t56.
            DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t87.
            DATA(t88) = abap_true.
            IF t88 = abap_true.
              DATA(t89) = t78.
              t87 = t89.
            ELSE.
              DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t90.
              t87 = t90.
            ENDIF.
            t85 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t86 i_parent = t87 ).
            t83 = t85.
          ELSE.
            DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t91.
            t83 = t91.
          ENDIF.
          t82->current = t83.
          DATA(t92) = t78.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t95) = t37.
          t94 = t95->current.
          t93 = t94.
          t92->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t93 ).
        ENDIF.
        DATA t96 TYPE abap_bool.
        DATA(t97) = me->object_a393.
        t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_function_group ).
        IF t96 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_procedural.
          DATA(t99) = me->helpers.
          t98 = t99->proc.
          DATA t100 TYPE REF TO zcl_lnt_function_group.
          DATA(t101) = me->object_a393.
          t100 ?= t101.
          t98->find_function_group_scope( i_fg = t100 ).
        ENDIF.
      ENDIF.
    ELSE.
      DATA t102 TYPE abap_bool.
      DATA(t103) = me->object_a393.
      t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_ob_type_pool ).
      IF t102 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_abap_file.
        DATA t105 TYPE REF TO zcl_lnt_abap_file.
        DATA t106 TYPE REF TO zcl_lnt_ob_type_pool.
        DATA(t107) = me->object_a393.
        t106 ?= t107.
        t105 = t106->get_main_abap_file( ).
        t104 = t105.
        DATA(t108) = VALUE abap_bool( ).
        DATA t109 TYPE REF TO zcl_lnt_abap_file.
        DATA(t110) = t104.
        t109 = t110.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        t111 = t112.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = t109.
        IF t115 IS INITIAL.
          t114 = abap_true.
        ENDIF.
        t113 = xsdbool( t114 = abap_false ).
        t108 = t113.
        IF t108 = abap_true.
          DATA t116 TYPE REF TO zcl_lnt_current_scope.
          DATA(t117) = me->scope.
          t116 = t117.
          DATA t118 TYPE string.
          DATA t119 TYPE string.
          DATA t120 TYPE REF TO zcl_lnt_abstract_object.
          DATA t121 TYPE REF TO zcl_lnt_ob_type_pool.
          DATA(t122) = me->object_a393.
          t121 ?= t122.
          t120 = t121.
          DATA t123 TYPE string.
          DATA(t124) = t120.
          t123 = t124->name.
          t119 = t123.
          t118 = t119.
          DATA t125 TYPE REF TO zcl_lnt_position.
          DATA t126 TYPE REF TO zcl_lnt_position.
          DATA(t127) = CONV int8( 1 ).
          DATA(t128) = CONV int8( 1 ).
          t126 = NEW zcl_lnt_position( i_row = t127 i_col = t128 ).
          t125 = t126.
          DATA t129 TYPE string.
          DATA t130 TYPE string.
          DATA t131 TYPE REF TO zcl_lnt_abstract_file.
          DATA t132 TYPE REF TO zcl_lnt_abap_file.
          DATA(t133) = t104.
          t132 = t133.
          t131 = t132.
          DATA t134 TYPE string.
          DATA(t135) = t131.
          t134 = t135->filename.
          t130 = t134.
          t129 = t130.
          DATA t136 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t137 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA(t138) = |_type_pool|.
          DATA(t139) = t118.
          DATA(t140) = t129.
          DATA(t141) = t125.
          DATA t142 TYPE REF TO zcl_lnt_position.
          CLEAR t142.
          t137 = NEW zcl_lnt_iscope_identifier( i_stype = t138 i_sname = t139 i_filename = t140 i_start = t141 i_end = t142 ).
          t136 = t137.
          DATA(t143) = VALUE abap_bool( ).
          DATA t144 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t145 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t146) = t116.
          t145 = t146->current.
          t144 = t145.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          t147 = t148.
          DATA(t149) = VALUE abap_bool( ).
          DATA(t150) = t144.
          IF t150 IS INITIAL.
            t149 = abap_true.
          ENDIF.
          t143 = t149.
          IF t143 = abap_true.
            DATA(t151) = t116.
            DATA t152 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t152.
            DATA(t153) = abap_true.
            IF t153 = abap_true.
              DATA t154 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t155) = t136.
              DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t156.
              t154 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t155 i_parent = t156 ).
              t152 = t154.
            ELSE.
              DATA t157 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t157.
              t152 = t157.
            ENDIF.
            t151->current = t152.
          ELSE.
            DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t159 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t160 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t161) = t116.
            t160 = t161->current.
            t159 = t160.
            t158 = t159.
            DATA(t162) = t116.
            DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t163.
            DATA(t164) = abap_true.
            IF t164 = abap_true.
              DATA t165 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t165.
              DATA(t166) = t136.
              DATA t167 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t167.
              DATA(t168) = abap_true.
              IF t168 = abap_true.
                DATA(t169) = t158.
                t167 = t169.
              ELSE.
                DATA t170 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t170.
                t167 = t170.
              ENDIF.
              t165 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t166 i_parent = t167 ).
              t163 = t165.
            ELSE.
              DATA t171 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t171.
              t163 = t171.
            ENDIF.
            t162->current = t163.
            DATA(t172) = t158.
            DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t175) = t116.
            t174 = t175->current.
            t173 = t174.
            t172->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t173 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t176) = t1.
    DATA t177 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t177.
    DATA t178 TYPE REF TO object.
    CLEAR t178.
    LOOP AT t176->items INTO t178.
      t177 ?= t178.
      DATA(t179) = t177.
      me->current_file = t179.
      DATA t180 TYPE REF TO zcl_lnt_structure_node.
      DATA t181 TYPE REF TO zcl_lnt_structure_node.
      DATA t182 TYPE REF TO zcl_lnt_abap_file.
      DATA(t183) = me->current_file.
      t182 = t183.
      DATA t184 TYPE REF TO zcl_lnt_structure_node.
      DATA(t185) = t182.
      t184 = t185->structure.
      t181 = t184.
      t180 = t181.
      DATA(t186) = VALUE abap_bool( ).
      DATA t187 TYPE REF TO zcl_lnt_structure_node.
      DATA(t188) = t180.
      t187 = t188.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      t189 = t190.
      DATA(t191) = VALUE abap_bool( ).
      DATA(t192) = t187.
      IF t192 IS INITIAL.
        t191 = abap_true.
      ENDIF.
      t186 = t191.
      IF t186 = abap_true.
        DATA(t193) = me->scope.
        result = t193.
        RETURN.
      ELSE.
        DATA t194 TYPE REF TO zcl_lnt_structure_node.
        DATA(t195) = t180.
        t194 = t195.
        me->traverse( i_node = t194 ).
      ENDIF.
    ENDLOOP.
    DATA(t196) = me->scope.
    result = t196.

  ENDMETHOD.

  METHOD new_issue.
    DATA(t1) = i_token.
    DATA(t2) = i_message_26cb.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/syntax.ts:423|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = t1.
    t2 = t3->get_children( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t2->items INTO t5.
      t4 ?= t5.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = t4.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_structure_node ).
      t6 = t7.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t4.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_statement_node ).
      t9 = t10.
      DATA t12 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t12.
      TRY.
          DATA(t13) = t6.
          IF t13 = abap_true.
            DATA(t14) = VALUE abap_bool( ).
            DATA(t15) = VALUE abap_bool( ).
            DATA t16 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t16.
            DATA(t17) = t4.
            DATA t18 TYPE REF TO object.
            CLEAR t18.
            t18 = t17.
            t16 ?= t18.
            t15 = me->update_scope_structure( i_node = t16 ).
            t14 = t15.
            DATA(t19) = VALUE abap_bool( ).
            DATA(t20) = t14.
            DATA(t21) = abap_true.
            t19 = xsdbool( t20 = t21 ).
            IF t19 = abap_true.
              CONTINUE.
            ENDIF.
          ELSE.
            DATA(t22) = t9.
            IF t22 = abap_true.
              DATA t23 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t23.
              DATA(t24) = t4.
              DATA t25 TYPE REF TO object.
              CLEAR t25.
              t25 = t24.
              t23 ?= t25.
              me->update_scope_statement( i_node = t23 ).
            ENDIF.
          ENDIF.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t12.
          DATA(t26) = t12->payload.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t27.
          DATA t28 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t28.
          DATA(t29) = t4.
          t28 ?= t29.
          t27 = t28->get_first_token( ).
          DATA(t30) = VALUE string( ).
          DATA(t31) = t26.
          t30 = t31->message_25cb.
          me->new_issue( i_token = t27 i_message_26cb = t30 ).
          EXIT.
      ENDTRY.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t9.
      t32 = t33.
      IF t33 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA t35 TYPE REF TO zif_lnt_statement.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t36.
        DATA(t37) = t4.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        t38 = t37.
        t36 ?= t38.
        t35 = t36->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_include ).
        t32 = t34.
      ENDIF.
      IF t32 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_procedural.
        CLEAR t41.
        DATA(t42) = me->helpers.
        t41 = t42->proc.
        DATA t43 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t43.
        DATA(t44) = t4.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        t45 = t44.
        t43 ?= t45.
        DATA(t46) = me->object_a393.
        t40 = t41->find_include( i_node = t43 i_obj_1ed0 = t46 ).
        t39 = t40.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = VALUE abap_bool( ).
        DATA t49 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t49.
        DATA(t50) = t39.
        t49 = t50.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t51 = t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t49.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ENDIF.
        t53 = xsdbool( t54 = abap_false ).
        t48 = t53.
        t47 = t48.
        IF t48 = abap_true.
          DATA(t56) = VALUE abap_bool( ).
          DATA t57 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t58.
          DATA t59 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t59.
          DATA t60 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t60.
          DATA(t61) = t39.
          t60 = t61.
          t59 = t60.
          DATA t62 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t62.
          DATA(t63) = t59.
          t62 = t63->structure.
          t58 = t62.
          t57 = t58.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t65.
          t64 = t65.
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = t57.
          IF t68 IS INITIAL.
            t67 = abap_true.
          ENDIF.
          t66 = xsdbool( t67 = abap_false ).
          t56 = t66.
          t47 = t56.
        ENDIF.
        IF t47 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t69.
          DATA(t70) = me->current_file.
          t69 = t70.
          DATA t71 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t71.
          DATA(t72) = t39.
          t71 = t72.
          me->current_file = t71.
          DATA t73 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t73.
          DATA t74 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t74.
          DATA t75 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t75.
          DATA t76 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t76.
          DATA(t77) = t39.
          t76 = t77.
          t75 = t76.
          DATA t78 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t78.
          DATA(t79) = t75.
          t78 = t79->structure.
          t74 = t78.
          t73 = t74.
          me->traverse( i_node = t73 ).
          DATA(t80) = t69.
          me->current_file = t80.
        ENDIF.
      ENDIF.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t6.
      t81 = t82.
      IF t82 = abap_false.
        DATA(t83) = t9.
        t81 = t83.
      ENDIF.
      IF t81 = abap_true.
        DATA t84 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t84.
        DATA(t85) = t4.
        t84 ?= t85.
        me->traverse( i_node = t84 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD update_scope_structure.
    DATA(t1) = i_node.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t5) = me->current_file.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = t4.
    t6 = t7->filename.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE REF TO zif_lnt_structure.
    DATA t9 TYPE REF TO zif_lnt_structure.
    DATA(t10) = t1.
    t9 = t10->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t8 = t9.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE string.
    DATA(t14) = me->scope.
    t13 = t14->get_type( ).
    DATA(t15) = |selection_event|.
    t12 = xsdbool( t13 = t15 ).
    t11 = t12.
    IF t12 = abap_true.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_structure.
      DATA(t18) = t8.
      t17 = t18.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t17.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_sr_class_definition ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t17.
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_interface ).
        t19 = t22.
      ENDIF.
      t16 = t19.
      t11 = t16.
    ENDIF.
    IF t11 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t25) = me->scope.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t29) = t1.
      t28 = t29->get_first_token( ).
      t27 = t28.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA(t31) = t27.
      t30 = t31->start.
      t26 = t30.
      t24 = t25->pop( i_end = t26 ).
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_syntax_input.
    DATA t33 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t34) = me->scope.
    DATA(t35) = t2.
    DATA(t36) = me->issues.
    DATA(t37) = me->deferred.
    t33 = NEW zcl_lnt_syntax_input( i_scope = t34 i_filename = t35 i_issues = t36 i_deferred = t37 ).
    t32 = t33.
    DATA t38 TYPE abap_bool.
    DATA(t39) = t8.
    t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    IF t38 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t41) = t1.
      DATA(t42) = t32.
      t40 = NEW zcl_lnt_ty_class_definition( i_node = t41 i_input_967e = t42 ).
      DATA(t43) = abap_true.
      result = t43.
      RETURN.
    ELSE.
      DATA t44 TYPE abap_bool.
      DATA(t45) = t8.
      t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_sr_interface ).
      IF t44 = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_interface_definition.
        DATA(t47) = t1.
        DATA(t48) = t32.
        t46 = NEW zcl_lnt_interface_definition( i_node = t47 i_input_967e = t48 ).
        DATA(t49) = abap_true.
        result = t49.
        RETURN.
      ELSE.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t8.
        t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_sr_types ).
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_current_scope.
          DATA(t53) = me->scope.
          t52 = t53.
          DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t56) = NEW zcl_lnt_sy_types( ).
          DATA(t57) = t1.
          DATA(t58) = t32.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t55 = t56->run_syntax( i_node = t57 i_input_967e = t58 i_qualified_name_prefix = t59 ).
          t54 = t55.
          DATA(t60) = VALUE abap_bool( ).
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t62) = t54.
          t61 = t62.
          DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          t63 = t64.
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = t61.
          IF t66 IS INITIAL.
            t65 = abap_true.
          ENDIF.
          t60 = t65.
          IF t60 = abap_true.
          ELSE.
            DATA(t67) = t52.
            DATA(t68) = VALUE string( ).
            DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t71) = t54.
            t70 = t71.
            t69 = t70.
            DATA(t72) = VALUE string( ).
            DATA t73 TYPE string.
            DATA t74 TYPE string.
            DATA t75 TYPE REF TO zcl_lnt_abstract_token.
            DATA t76 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t77) = t69.
            t76 = t77->token.
            t75 = t76.
            DATA t78 TYPE string.
            DATA(t79) = t75.
            t78 = t79->str.
            t74 = t78.
            t73 = t74.
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = VALUE string( ).
            DATA(t82) = t73.
            DATA(t83) = 0.
            DATA(t84) = 1.
            DATA(t85) = strlen( t82 ).
            IF t83 < 0.
              t83 = t83 + t85.
              IF t83 < 0.
                t83 = 0.
              ENDIF.
            ENDIF.
            IF t83 > t85 OR t84 <= 0.
              CLEAR t81.
            ELSE.
              IF t84 > t85 - t83.
                t84 = t85 - t83.
              ENDIF.
              t81 = t82+t83(t84).
            ENDIF.
            DATA(t86) = |!|.
            t80 = xsdbool( t81 = t86 ).
            IF t80 = abap_true.
              DATA(t87) = VALUE string( ).
              DATA t88 TYPE string.
              DATA(t89) = t73.
              t88 = t89.
              DATA(t90) = VALUE string( ).
              DATA(t91) = t88.
              DATA(t92) = 1.
              DATA t93 TYPE i.
              DATA(t94) = t88.
              DATA(t95) = strlen( t94 ).
              t93 = t95.
              DATA(t96) = strlen( t91 ).
              IF t92 < 0.
                t92 = t92 + t96.
                IF t92 < 0.
                  t92 = 0.
                ENDIF.
              ENDIF.
              IF t92 > t96 OR t93 <= 0.
                CLEAR t90.
              ELSE.
                IF t93 > t96 - t92.
                  t93 = t96 - t92.
                ENDIF.
                t90 = t91+t92(t93).
              ENDIF.
              t87 = t90.
              t73 = t87.
            ENDIF.
            DATA(t97) = t73.
            t72 = t97.
            t68 = t72.
            DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t98.
            DATA(t99) = abap_true.
            IF t99 = abap_true.
              DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t101) = t54.
              t100 = t101.
              t98 = t100.
            ELSE.
              DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t102.
              t98 = t102.
            ENDIF.
            t67->add_type_named( i_name = t68 i_type_9913 = t98 ).
          ENDIF.
          DATA(t103) = abap_true.
          result = t103.
          RETURN.
        ELSE.
          DATA t104 TYPE abap_bool.
          DATA(t105) = t8.
          t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_sr_constants ).
          IF t104 = abap_true.
            DATA t106 TYPE REF TO zcl_lnt_current_scope.
            DATA(t107) = me->scope.
            t106 = t107.
            DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t110 TYPE REF TO zcl_lnt_shape_28fac025.
            DATA(t111) = NEW zcl_lnt_sy_constants( ).
            DATA(t112) = t1.
            DATA(t113) = t32.
            t110 = t111->run_syntax( i_node = t112 i_input_967e = t113 ).
            t109 = t110->type_cba0.
            t108 = t109.
            DATA(t114) = VALUE abap_bool( ).
            DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t116) = t108.
            t115 = t116.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            t117 = t118.
            DATA(t119) = VALUE abap_bool( ).
            DATA(t120) = t115.
            IF t120 IS INITIAL.
              t119 = abap_true.
            ENDIF.
            t114 = t119.
            IF t114 = abap_true.
            ELSE.
              DATA(t121) = t106.
              DATA(t122) = VALUE string( ).
              DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t125) = t108.
              t124 = t125.
              t123 = t124.
              DATA(t126) = VALUE string( ).
              DATA t127 TYPE string.
              DATA t128 TYPE string.
              DATA t129 TYPE REF TO zcl_lnt_abstract_token.
              DATA t130 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t131) = t123.
              t130 = t131->token.
              t129 = t130.
              DATA t132 TYPE string.
              DATA(t133) = t129.
              t132 = t133->str.
              t128 = t132.
              t127 = t128.
              DATA(t134) = VALUE abap_bool( ).
              DATA(t135) = VALUE string( ).
              DATA(t136) = t127.
              DATA(t137) = 0.
              DATA(t138) = 1.
              DATA(t139) = strlen( t136 ).
              IF t137 < 0.
                t137 = t137 + t139.
                IF t137 < 0.
                  t137 = 0.
                ENDIF.
              ENDIF.
              IF t137 > t139 OR t138 <= 0.
                CLEAR t135.
              ELSE.
                IF t138 > t139 - t137.
                  t138 = t139 - t137.
                ENDIF.
                t135 = t136+t137(t138).
              ENDIF.
              DATA(t140) = |!|.
              t134 = xsdbool( t135 = t140 ).
              IF t134 = abap_true.
                DATA(t141) = VALUE string( ).
                DATA t142 TYPE string.
                DATA(t143) = t127.
                t142 = t143.
                DATA(t144) = VALUE string( ).
                DATA(t145) = t142.
                DATA(t146) = 1.
                DATA t147 TYPE i.
                DATA(t148) = t142.
                DATA(t149) = strlen( t148 ).
                t147 = t149.
                DATA(t150) = strlen( t145 ).
                IF t146 < 0.
                  t146 = t146 + t150.
                  IF t146 < 0.
                    t146 = 0.
                  ENDIF.
                ENDIF.
                IF t146 > t150 OR t147 <= 0.
                  CLEAR t144.
                ELSE.
                  IF t147 > t150 - t146.
                    t147 = t150 - t146.
                  ENDIF.
                  t144 = t145+t146(t147).
                ENDIF.
                t141 = t144.
                t127 = t141.
              ENDIF.
              DATA(t151) = t127.
              t126 = t151.
              t122 = t126.
              DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t153) = t108.
              t152 = t153.
              t121->add_named_identifier( i_name = t122 i_identifier = t152 ).
            ENDIF.
            DATA(t154) = abap_true.
            result = t154.
            RETURN.
          ELSE.
            DATA t155 TYPE abap_bool.
            DATA(t156) = t8.
            t155 = xsdbool( t156 IS BOUND AND t156 IS INSTANCE OF zcl_lnt_sr_data ).
            IF t155 = abap_true.
              DATA t157 TYPE REF TO zcl_lnt_current_scope.
              DATA(t158) = me->scope.
              t157 = t158.
              DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t161) = t1.
              DATA(t162) = t32.
              t160 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t161 i_input_967e = t162 ).
              t159 = t160.
              DATA(t163) = VALUE abap_bool( ).
              DATA t164 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t165) = t159.
              t164 = t165.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t167.
              t166 = t167.
              DATA(t168) = VALUE abap_bool( ).
              DATA(t169) = t164.
              IF t169 IS INITIAL.
                t168 = abap_true.
              ENDIF.
              t163 = t168.
              IF t163 = abap_true.
              ELSE.
                DATA(t170) = t157.
                DATA(t171) = VALUE string( ).
                DATA t172 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t173 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t174) = t159.
                t173 = t174.
                t172 = t173.
                DATA(t175) = VALUE string( ).
                DATA t176 TYPE string.
                DATA t177 TYPE string.
                DATA t178 TYPE REF TO zcl_lnt_abstract_token.
                DATA t179 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t180) = t172.
                t179 = t180->token.
                t178 = t179.
                DATA t181 TYPE string.
                DATA(t182) = t178.
                t181 = t182->str.
                t177 = t181.
                t176 = t177.
                DATA(t183) = VALUE abap_bool( ).
                DATA(t184) = VALUE string( ).
                DATA(t185) = t176.
                DATA(t186) = 0.
                DATA(t187) = 1.
                DATA(t188) = strlen( t185 ).
                IF t186 < 0.
                  t186 = t186 + t188.
                  IF t186 < 0.
                    t186 = 0.
                  ENDIF.
                ENDIF.
                IF t186 > t188 OR t187 <= 0.
                  CLEAR t184.
                ELSE.
                  IF t187 > t188 - t186.
                    t187 = t188 - t186.
                  ENDIF.
                  t184 = t185+t186(t187).
                ENDIF.
                DATA(t189) = |!|.
                t183 = xsdbool( t184 = t189 ).
                IF t183 = abap_true.
                  DATA(t190) = VALUE string( ).
                  DATA t191 TYPE string.
                  DATA(t192) = t176.
                  t191 = t192.
                  DATA(t193) = VALUE string( ).
                  DATA(t194) = t191.
                  DATA(t195) = 1.
                  DATA t196 TYPE i.
                  DATA(t197) = t191.
                  DATA(t198) = strlen( t197 ).
                  t196 = t198.
                  DATA(t199) = strlen( t194 ).
                  IF t195 < 0.
                    t195 = t195 + t199.
                    IF t195 < 0.
                      t195 = 0.
                    ENDIF.
                  ENDIF.
                  IF t195 > t199 OR t196 <= 0.
                    CLEAR t193.
                  ELSE.
                    IF t196 > t199 - t195.
                      t196 = t199 - t195.
                    ENDIF.
                    t193 = t194+t195(t196).
                  ENDIF.
                  t190 = t193.
                  t176 = t190.
                ENDIF.
                DATA(t200) = t176.
                t175 = t200.
                t171 = t175.
                DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t202) = t159.
                t201 = t202.
                t170->add_named_identifier( i_name = t171 i_identifier = t201 ).
              ENDIF.
              DATA(t203) = abap_true.
              result = t203.
              RETURN.
            ELSE.
              DATA t204 TYPE abap_bool.
              DATA(t205) = t8.
              t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_sr_statics ).
              IF t204 = abap_true.
                DATA t206 TYPE REF TO zcl_lnt_current_scope.
                DATA(t207) = me->scope.
                t206 = t207.
                DATA t208 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t210) = NEW zcl_lnt_sy_statics( ).
                DATA(t211) = t1.
                DATA(t212) = t32.
                t209 = t210->run_syntax( i_node = t211 i_input_967e = t212 ).
                t208 = t209.
                DATA(t213) = VALUE abap_bool( ).
                DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t215) = t208.
                t214 = t215.
                DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t217.
                t216 = t217.
                DATA(t218) = VALUE abap_bool( ).
                DATA(t219) = t214.
                IF t219 IS INITIAL.
                  t218 = abap_true.
                ENDIF.
                t213 = t218.
                IF t213 = abap_true.
                ELSE.
                  DATA(t220) = t206.
                  DATA(t221) = VALUE string( ).
                  DATA t222 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t224) = t208.
                  t223 = t224.
                  t222 = t223.
                  DATA(t225) = VALUE string( ).
                  DATA t226 TYPE string.
                  DATA t227 TYPE string.
                  DATA t228 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t229 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t230) = t222.
                  t229 = t230->token.
                  t228 = t229.
                  DATA t231 TYPE string.
                  DATA(t232) = t228.
                  t231 = t232->str.
                  t227 = t231.
                  t226 = t227.
                  DATA(t233) = VALUE abap_bool( ).
                  DATA(t234) = VALUE string( ).
                  DATA(t235) = t226.
                  DATA(t236) = 0.
                  DATA(t237) = 1.
                  DATA(t238) = strlen( t235 ).
                  IF t236 < 0.
                    t236 = t236 + t238.
                    IF t236 < 0.
                      t236 = 0.
                    ENDIF.
                  ENDIF.
                  IF t236 > t238 OR t237 <= 0.
                    CLEAR t234.
                  ELSE.
                    IF t237 > t238 - t236.
                      t237 = t238 - t236.
                    ENDIF.
                    t234 = t235+t236(t237).
                  ENDIF.
                  DATA(t239) = |!|.
                  t233 = xsdbool( t234 = t239 ).
                  IF t233 = abap_true.
                    DATA(t240) = VALUE string( ).
                    DATA t241 TYPE string.
                    DATA(t242) = t226.
                    t241 = t242.
                    DATA(t243) = VALUE string( ).
                    DATA(t244) = t241.
                    DATA(t245) = 1.
                    DATA t246 TYPE i.
                    DATA(t247) = t241.
                    DATA(t248) = strlen( t247 ).
                    t246 = t248.
                    DATA(t249) = strlen( t244 ).
                    IF t245 < 0.
                      t245 = t245 + t249.
                      IF t245 < 0.
                        t245 = 0.
                      ENDIF.
                    ENDIF.
                    IF t245 > t249 OR t246 <= 0.
                      CLEAR t243.
                    ELSE.
                      IF t246 > t249 - t245.
                        t246 = t249 - t245.
                      ENDIF.
                      t243 = t244+t245(t246).
                    ENDIF.
                    t240 = t243.
                    t226 = t240.
                  ENDIF.
                  DATA(t250) = t226.
                  t225 = t250.
                  t221 = t225.
                  DATA t251 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t252) = t208.
                  t251 = t252.
                  t220->add_named_identifier( i_name = t221 i_identifier = t251 ).
                ENDIF.
                DATA(t253) = abap_true.
                result = t253.
                RETURN.
              ELSE.
                DATA t254 TYPE abap_bool.
                DATA(t255) = t8.
                t254 = xsdbool( t255 IS BOUND AND t255 IS INSTANCE OF zcl_lnt_sr_type_mesh ).
                IF t254 = abap_true.
                  DATA t256 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t258) = NEW zcl_lnt_sy_type_mesh( ).
                  DATA(t259) = t1.
                  DATA(t260) = t32.
                  t257 = t258->run_syntax( i_node = t259 i_input_967e = t260 ).
                  t256 = t257.
                  DATA t261 TYPE abap_bool.
                  DATA(t262) = t256.
                  t261 = xsdbool( t262 IS BOUND ).
                  IF t261 = abap_true.
                    DATA t263 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t264) = me->scope.
                    t263 = t264.
                    DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t265.
                    DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t266.
                    DATA(t267) = abap_true.
                    IF t267 = abap_true.
                      DATA t268 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t269) = t256.
                      t268 = t269.
                      t266 = t268.
                    ELSE.
                      DATA t270 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t270.
                      t266 = t270.
                    ENDIF.
                    t265 = t266.
                    DATA(t271) = VALUE abap_bool( ).
                    DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t273) = t265.
                    t272 = t273.
                    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t275.
                    t274 = t275.
                    DATA(t276) = VALUE abap_bool( ).
                    DATA(t277) = t272.
                    IF t277 IS INITIAL.
                      t276 = abap_true.
                    ENDIF.
                    t271 = t276.
                    IF t271 = abap_true.
                    ELSE.
                      DATA(t278) = t263.
                      DATA(t279) = VALUE string( ).
                      DATA t280 TYPE REF TO zcl_lnt_fi_identifier.
                      DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t282) = t265.
                      t281 = t282.
                      t280 = t281.
                      DATA(t283) = VALUE string( ).
                      DATA t284 TYPE string.
                      DATA t285 TYPE string.
                      DATA t286 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t287 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t288) = t280.
                      t287 = t288->token.
                      t286 = t287.
                      DATA t289 TYPE string.
                      DATA(t290) = t286.
                      t289 = t290->str.
                      t285 = t289.
                      t284 = t285.
                      DATA(t291) = VALUE abap_bool( ).
                      DATA(t292) = VALUE string( ).
                      DATA(t293) = t284.
                      DATA(t294) = 0.
                      DATA(t295) = 1.
                      DATA(t296) = strlen( t293 ).
                      IF t294 < 0.
                        t294 = t294 + t296.
                        IF t294 < 0.
                          t294 = 0.
                        ENDIF.
                      ENDIF.
                      IF t294 > t296 OR t295 <= 0.
                        CLEAR t292.
                      ELSE.
                        IF t295 > t296 - t294.
                          t295 = t296 - t294.
                        ENDIF.
                        t292 = t293+t294(t295).
                      ENDIF.
                      DATA(t297) = |!|.
                      t291 = xsdbool( t292 = t297 ).
                      IF t291 = abap_true.
                        DATA(t298) = VALUE string( ).
                        DATA t299 TYPE string.
                        DATA(t300) = t284.
                        t299 = t300.
                        DATA(t301) = VALUE string( ).
                        DATA(t302) = t299.
                        DATA(t303) = 1.
                        DATA t304 TYPE i.
                        DATA(t305) = t299.
                        DATA(t306) = strlen( t305 ).
                        t304 = t306.
                        DATA(t307) = strlen( t302 ).
                        IF t303 < 0.
                          t303 = t303 + t307.
                          IF t303 < 0.
                            t303 = 0.
                          ENDIF.
                        ENDIF.
                        IF t303 > t307 OR t304 <= 0.
                          CLEAR t301.
                        ELSE.
                          IF t304 > t307 - t303.
                            t304 = t307 - t303.
                          ENDIF.
                          t301 = t302+t303(t304).
                        ENDIF.
                        t298 = t301.
                        t284 = t298.
                      ENDIF.
                      DATA(t308) = t284.
                      t283 = t308.
                      t279 = t283.
                      DATA t309 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t309.
                      DATA(t310) = abap_true.
                      IF t310 = abap_true.
                        DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t312) = t265.
                        t311 = t312.
                        t309 = t311.
                      ELSE.
                        DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t313.
                        t309 = t313.
                      ENDIF.
                      t278->add_type_named( i_name = t279 i_type_9913 = t309 ).
                    ENDIF.
                  ENDIF.
                  DATA(t314) = abap_true.
                  result = t314.
                  RETURN.
                ELSE.
                  DATA t315 TYPE abap_bool.
                  DATA(t316) = t8.
                  t315 = xsdbool( t316 IS BOUND AND t316 IS INSTANCE OF zcl_lnt_sr_type_enum ).
                  IF t315 = abap_true.
                    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t319 TYPE REF TO zcl_lnt_shape_33d96643.
                    DATA(t320) = NEW zcl_lnt_sy_type_enum( ).
                    DATA(t321) = t1.
                    DATA(t322) = t32.
                    t319 = t320->run_syntax( i_node = t321 i_input_967e = t322 ).
                    t318 = t319->values.
                    t317 = t318.
                    DATA(t323) = me->scope.
                    DATA(t324) = t317.
                    t323->add_list( i_identifiers = t324 ).
                    DATA(t325) = abap_true.
                    result = t325.
                    RETURN.
                  ELSE.
                    DATA t326 TYPE abap_bool.
                    DATA(t327) = t8.
                    t326 = xsdbool( t327 IS BOUND AND t327 IS INSTANCE OF zcl_lnt_sr_test_injection ).
                    IF t326 = abap_true.
                      DATA(t328) = abap_true.
                      result = t328.
                      RETURN.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t329) = abap_false.
    result = t329.

  ENDMETHOD.

  METHOD update_scope_statement.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_node.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t5) = me->current_file.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = t4.
    t6 = t7->filename.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE REF TO zif_lnt_statement.
    DATA t9 TYPE REF TO zif_lnt_statement.
    DATA(t10) = t1.
    t9 = t10->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t8 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_statement.
    DATA t14 TYPE REF TO zif_lnt_statement.
    DATA(t15) = t11.
    t14 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t13 = t14.
    DATA t16 TYPE abap_bool.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE string.
    DATA(t19) = me->scope.
    t18 = t19->get_type( ).
    DATA(t20) = |selection_event|.
    t17 = xsdbool( t18 = t20 ).
    t16 = t17.
    IF t17 = abap_true.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t13.
      t21 = me->is_selection_event_boundary( i_statement = t22 ).
      t16 = t21.
    ENDIF.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t24) = me->scope.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = t11.
      t27 = t28->get_first_token( ).
      t26 = t27.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA(t30) = t26.
      t29 = t30->start.
      t25 = t29.
      t23 = t24->pop( i_end = t25 ).
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE REF TO zif_lnt_statement.
    DATA(t33) = t13.
    t32 = t33.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t32.
    t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    t31 = t34.
    IF t31 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_current_scope.
      DATA(t37) = me->scope.
      t36 = t37.
      DATA t38 TYPE string.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t41) = t13.
      t40 = t41->zlnt_builtin_clas_3f891b097658( ).
      t39 = t40->name.
      t38 = t39.
      DATA t42 TYPE REF TO zcl_lnt_position.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t11.
      t45 = t46->get_first_token( ).
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t44.
      t47 = t48->start.
      t43 = t47.
      t42 = t43.
      DATA t49 TYPE string.
      DATA t50 TYPE string.
      DATA t51 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t52) = me->current_file.
      t51 = t52.
      DATA t53 TYPE string.
      DATA(t54) = t51.
      t53 = t54->filename.
      t50 = t53.
      t49 = t50.
      DATA t55 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t56 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t57) = |selection_event|.
      DATA(t58) = t38.
      DATA(t59) = t49.
      DATA(t60) = t42.
      DATA t61 TYPE REF TO zcl_lnt_position.
      CLEAR t61.
      t56 = NEW zcl_lnt_iscope_identifier( i_stype = t57 i_sname = t58 i_filename = t59 i_start = t60 i_end = t61 ).
      t55 = t56.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t65) = t36.
      t64 = t65->current.
      t63 = t64.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      t66 = t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t63.
      IF t69 IS INITIAL.
        t68 = abap_true.
      ENDIF.
      t62 = t68.
      IF t62 = abap_true.
        DATA(t70) = t36.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t74) = t55.
          DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t75.
          t73 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t74 i_parent = t75 ).
          t71 = t73.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t76.
          t71 = t76.
        ENDIF.
        t70->current = t71.
      ELSE.
        DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t80) = t36.
        t79 = t80->current.
        t78 = t79.
        t77 = t78.
        DATA(t81) = t36.
        DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t82.
        DATA(t83) = abap_true.
        IF t83 = abap_true.
          DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t84.
          DATA(t85) = t55.
          DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t86.
          DATA(t87) = abap_true.
          IF t87 = abap_true.
            DATA(t88) = t77.
            t86 = t88.
          ELSE.
            DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t89.
            t86 = t89.
          ENDIF.
          t84 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t85 i_parent = t86 ).
          t82 = t84.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t90.
          t82 = t90.
        ENDIF.
        t81->current = t82.
        DATA(t91) = t77.
        DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t94) = t36.
        t93 = t94->current.
        t92 = t93.
        t91->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t92 ).
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zcl_lnt_syntax_input.
    DATA t96 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t97) = me->scope.
    DATA(t98) = t2.
    DATA(t99) = me->issues.
    DATA(t100) = me->deferred.
    t96 = NEW zcl_lnt_syntax_input( i_scope = t97 i_filename = t98 i_issues = t99 i_deferred = t100 ).
    t95 = t96.
    DATA t101 TYPE abap_bool.
    DATA(t102) = t8.
    t101 = xsdbool( t102 IS BOUND AND t102 IS INSTANCE OF zcl_lnt_st_statem_type ).
    IF t101 = abap_true.
      DATA t103 TYPE REF TO zcl_lnt_current_scope.
      DATA(t104) = me->scope.
      t103 = t104.
      DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t107) = NEW zcl_lnt_sy_type( ).
      DATA(t108) = t1.
      DATA(t109) = t95.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t110.
      t106 = t107->run_syntax( i_node = t108 i_input_967e = t109 i_qualified_name_prefix = t110 ).
      t105 = t106.
      DATA(t111) = VALUE abap_bool( ).
      DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t113) = t105.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      t114 = t115.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = t112.
      IF t117 IS INITIAL.
        t116 = abap_true.
      ENDIF.
      t111 = t116.
      IF t111 = abap_true.
      ELSE.
        DATA(t118) = t103.
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t122) = t105.
        t121 = t122.
        t120 = t121.
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE string.
        DATA t125 TYPE string.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t128) = t120.
        t127 = t128->token.
        t126 = t127.
        DATA t129 TYPE string.
        DATA(t130) = t126.
        t129 = t130->str.
        t125 = t129.
        t124 = t125.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = VALUE string( ).
        DATA(t133) = t124.
        DATA(t134) = 0.
        DATA(t135) = 1.
        DATA(t136) = strlen( t133 ).
        IF t134 < 0.
          t134 = t134 + t136.
          IF t134 < 0.
            t134 = 0.
          ENDIF.
        ENDIF.
        IF t134 > t136 OR t135 <= 0.
          CLEAR t132.
        ELSE.
          IF t135 > t136 - t134.
            t135 = t136 - t134.
          ENDIF.
          t132 = t133+t134(t135).
        ENDIF.
        DATA(t137) = |!|.
        t131 = xsdbool( t132 = t137 ).
        IF t131 = abap_true.
          DATA(t138) = VALUE string( ).
          DATA t139 TYPE string.
          DATA(t140) = t124.
          t139 = t140.
          DATA(t141) = VALUE string( ).
          DATA(t142) = t139.
          DATA(t143) = 1.
          DATA t144 TYPE i.
          DATA(t145) = t139.
          DATA(t146) = strlen( t145 ).
          t144 = t146.
          DATA(t147) = strlen( t142 ).
          IF t143 < 0.
            t143 = t143 + t147.
            IF t143 < 0.
              t143 = 0.
            ENDIF.
          ENDIF.
          IF t143 > t147 OR t144 <= 0.
            CLEAR t141.
          ELSE.
            IF t144 > t147 - t143.
              t144 = t147 - t143.
            ENDIF.
            t141 = t142+t143(t144).
          ENDIF.
          t138 = t141.
          t124 = t138.
        ENDIF.
        DATA(t148) = t124.
        t123 = t148.
        t119 = t123.
        DATA t149 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t149.
        DATA(t150) = abap_true.
        IF t150 = abap_true.
          DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t152) = t105.
          t151 = t152.
          t149 = t151.
        ELSE.
          DATA t153 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t153.
          t149 = t153.
        ENDIF.
        t118->add_type_named( i_name = t119 i_type_9913 = t149 ).
      ENDIF.
      RETURN.
    ELSE.
      DATA t154 TYPE abap_bool.
      DATA(t155) = t8.
      t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_st_statem_constant ).
      IF t154 = abap_true.
        DATA t156 TYPE REF TO zcl_lnt_current_scope.
        DATA(t157) = me->scope.
        t156 = t157.
        DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t159.
        DATA(t160) = abap_true.
        IF t160 = abap_true.
          DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t162) = NEW zcl_lnt_sy_statem_constant( ).
          DATA(t163) = t1.
          DATA(t164) = t95.
          t161 = t162->run_syntax( i_node = t163 i_input_967e = t164 ).
          t159 = t161.
        ELSE.
          DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t165.
          t159 = t165.
        ENDIF.
        t158 = t159.
        DATA(t166) = VALUE abap_bool( ).
        DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t168) = t158.
        t167 = t168.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        t169 = t170.
        DATA(t171) = VALUE abap_bool( ).
        DATA(t172) = t167.
        IF t172 IS INITIAL.
          t171 = abap_true.
        ENDIF.
        t166 = t171.
        IF t166 = abap_true.
        ELSE.
          DATA(t173) = t156.
          DATA(t174) = VALUE string( ).
          DATA t175 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t177) = t158.
          t176 = t177.
          t175 = t176.
          DATA(t178) = VALUE string( ).
          DATA t179 TYPE string.
          DATA t180 TYPE string.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          DATA t182 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t183) = t175.
          t182 = t183->token.
          t181 = t182.
          DATA t184 TYPE string.
          DATA(t185) = t181.
          t184 = t185->str.
          t180 = t184.
          t179 = t180.
          DATA(t186) = VALUE abap_bool( ).
          DATA(t187) = VALUE string( ).
          DATA(t188) = t179.
          DATA(t189) = 0.
          DATA(t190) = 1.
          DATA(t191) = strlen( t188 ).
          IF t189 < 0.
            t189 = t189 + t191.
            IF t189 < 0.
              t189 = 0.
            ENDIF.
          ENDIF.
          IF t189 > t191 OR t190 <= 0.
            CLEAR t187.
          ELSE.
            IF t190 > t191 - t189.
              t190 = t191 - t189.
            ENDIF.
            t187 = t188+t189(t190).
          ENDIF.
          DATA(t192) = |!|.
          t186 = xsdbool( t187 = t192 ).
          IF t186 = abap_true.
            DATA(t193) = VALUE string( ).
            DATA t194 TYPE string.
            DATA(t195) = t179.
            t194 = t195.
            DATA(t196) = VALUE string( ).
            DATA(t197) = t194.
            DATA(t198) = 1.
            DATA t199 TYPE i.
            DATA(t200) = t194.
            DATA(t201) = strlen( t200 ).
            t199 = t201.
            DATA(t202) = strlen( t197 ).
            IF t198 < 0.
              t198 = t198 + t202.
              IF t198 < 0.
                t198 = 0.
              ENDIF.
            ENDIF.
            IF t198 > t202 OR t199 <= 0.
              CLEAR t196.
            ELSE.
              IF t199 > t202 - t198.
                t199 = t202 - t198.
              ENDIF.
              t196 = t197+t198(t199).
            ENDIF.
            t193 = t196.
            t179 = t193.
          ENDIF.
          DATA(t203) = t179.
          t178 = t203.
          t174 = t178.
          DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t205) = t158.
          t204 = t205.
          t173->add_named_identifier( i_name = t174 i_identifier = t204 ).
        ENDIF.
        RETURN.
      ELSE.
        DATA t206 TYPE abap_bool.
        DATA(t207) = t8.
        t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_st_static ).
        IF t206 = abap_true.
          DATA t208 TYPE REF TO zcl_lnt_current_scope.
          DATA(t209) = me->scope.
          t208 = t209.
          DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t212) = NEW zcl_lnt_sy_static( ).
          DATA(t213) = t1.
          DATA(t214) = t95.
          t211 = t212->run_syntax( i_node = t213 i_input_967e = t214 ).
          t210 = t211.
          DATA(t215) = VALUE abap_bool( ).
          DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t217) = t210.
          t216 = t217.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          t218 = t219.
          DATA(t220) = VALUE abap_bool( ).
          DATA(t221) = t216.
          IF t221 IS INITIAL.
            t220 = abap_true.
          ENDIF.
          t215 = t220.
          IF t215 = abap_true.
          ELSE.
            DATA(t222) = t208.
            DATA(t223) = VALUE string( ).
            DATA t224 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t225 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t226) = t210.
            t225 = t226.
            t224 = t225.
            DATA(t227) = VALUE string( ).
            DATA t228 TYPE string.
            DATA t229 TYPE string.
            DATA t230 TYPE REF TO zcl_lnt_abstract_token.
            DATA t231 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t232) = t224.
            t231 = t232->token.
            t230 = t231.
            DATA t233 TYPE string.
            DATA(t234) = t230.
            t233 = t234->str.
            t229 = t233.
            t228 = t229.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = VALUE string( ).
            DATA(t237) = t228.
            DATA(t238) = 0.
            DATA(t239) = 1.
            DATA(t240) = strlen( t237 ).
            IF t238 < 0.
              t238 = t238 + t240.
              IF t238 < 0.
                t238 = 0.
              ENDIF.
            ENDIF.
            IF t238 > t240 OR t239 <= 0.
              CLEAR t236.
            ELSE.
              IF t239 > t240 - t238.
                t239 = t240 - t238.
              ENDIF.
              t236 = t237+t238(t239).
            ENDIF.
            DATA(t241) = |!|.
            t235 = xsdbool( t236 = t241 ).
            IF t235 = abap_true.
              DATA(t242) = VALUE string( ).
              DATA t243 TYPE string.
              DATA(t244) = t228.
              t243 = t244.
              DATA(t245) = VALUE string( ).
              DATA(t246) = t243.
              DATA(t247) = 1.
              DATA t248 TYPE i.
              DATA(t249) = t243.
              DATA(t250) = strlen( t249 ).
              t248 = t250.
              DATA(t251) = strlen( t246 ).
              IF t247 < 0.
                t247 = t247 + t251.
                IF t247 < 0.
                  t247 = 0.
                ENDIF.
              ENDIF.
              IF t247 > t251 OR t248 <= 0.
                CLEAR t245.
              ELSE.
                IF t248 > t251 - t247.
                  t248 = t251 - t247.
                ENDIF.
                t245 = t246+t247(t248).
              ENDIF.
              t242 = t245.
              t228 = t242.
            ENDIF.
            DATA(t252) = t228.
            t227 = t252.
            t223 = t227.
            DATA t253 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t254) = t210.
            t253 = t254.
            t222->add_named_identifier( i_name = t223 i_identifier = t253 ).
          ENDIF.
          RETURN.
        ELSE.
          DATA t255 TYPE abap_bool.
          DATA(t256) = t8.
          t255 = xsdbool( t256 IS BOUND AND t256 IS INSTANCE OF zcl_lnt_st_data ).
          IF t255 = abap_true.
            DATA t257 TYPE REF TO zcl_lnt_current_scope.
            DATA(t258) = me->scope.
            t257 = t258.
            DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t260 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t261) = NEW zcl_lnt_sy_statem_data( ).
            DATA(t262) = t1.
            DATA(t263) = t95.
            t260 = t261->run_syntax( i_node = t262 i_input_967e = t263 ).
            t259 = t260.
            DATA(t264) = VALUE abap_bool( ).
            DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t266) = t259.
            t265 = t266.
            DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            t267 = t268.
            DATA(t269) = VALUE abap_bool( ).
            DATA(t270) = t265.
            IF t270 IS INITIAL.
              t269 = abap_true.
            ENDIF.
            t264 = t269.
            IF t264 = abap_true.
            ELSE.
              DATA(t271) = t257.
              DATA(t272) = VALUE string( ).
              DATA t273 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t275) = t259.
              t274 = t275.
              t273 = t274.
              DATA(t276) = VALUE string( ).
              DATA t277 TYPE string.
              DATA t278 TYPE string.
              DATA t279 TYPE REF TO zcl_lnt_abstract_token.
              DATA t280 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t281) = t273.
              t280 = t281->token.
              t279 = t280.
              DATA t282 TYPE string.
              DATA(t283) = t279.
              t282 = t283->str.
              t278 = t282.
              t277 = t278.
              DATA(t284) = VALUE abap_bool( ).
              DATA(t285) = VALUE string( ).
              DATA(t286) = t277.
              DATA(t287) = 0.
              DATA(t288) = 1.
              DATA(t289) = strlen( t286 ).
              IF t287 < 0.
                t287 = t287 + t289.
                IF t287 < 0.
                  t287 = 0.
                ENDIF.
              ENDIF.
              IF t287 > t289 OR t288 <= 0.
                CLEAR t285.
              ELSE.
                IF t288 > t289 - t287.
                  t288 = t289 - t287.
                ENDIF.
                t285 = t286+t287(t288).
              ENDIF.
              DATA(t290) = |!|.
              t284 = xsdbool( t285 = t290 ).
              IF t284 = abap_true.
                DATA(t291) = VALUE string( ).
                DATA t292 TYPE string.
                DATA(t293) = t277.
                t292 = t293.
                DATA(t294) = VALUE string( ).
                DATA(t295) = t292.
                DATA(t296) = 1.
                DATA t297 TYPE i.
                DATA(t298) = t292.
                DATA(t299) = strlen( t298 ).
                t297 = t299.
                DATA(t300) = strlen( t295 ).
                IF t296 < 0.
                  t296 = t296 + t300.
                  IF t296 < 0.
                    t296 = 0.
                  ENDIF.
                ENDIF.
                IF t296 > t300 OR t297 <= 0.
                  CLEAR t294.
                ELSE.
                  IF t297 > t300 - t296.
                    t297 = t300 - t296.
                  ENDIF.
                  t294 = t295+t296(t297).
                ENDIF.
                t291 = t294.
                t277 = t291.
              ENDIF.
              DATA(t301) = t277.
              t276 = t301.
              t272 = t276.
              DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t303) = t259.
              t302 = t303.
              t271->add_named_identifier( i_name = t272 i_identifier = t302 ).
            ENDIF.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t304 TYPE string.
    DATA t305 TYPE string.
    DATA t306 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t307) = t8.
    t306 = t307->zlnt_builtin_clas_3f891b097658( ).
    t305 = t306->name.
    t304 = t305.
    DATA(t308) = VALUE abap_bool( ).
    DATA t309 TYPE REF TO zif_lnt_statement_syntax.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLEAR t310.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t310 = zcl_lnt_syntax_module=>map.
    DATA(t311) = t304.
    t309 = t310->get( p0 = t311 ).
    t308 = xsdbool( t309 IS BOUND ).
    IF t308 = abap_true.
      DATA t312 TYPE REF TO zif_lnt_statement_syntax.
      CLEAR t312.
      DATA t313 TYPE REF TO zif_lnt_statement_syntax.
      CLEAR t313.
      DATA t314 TYPE REF TO zlnt_runtime_map__1746889b1684.
      CLEAR t314.
      IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
        zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
      ENDIF.
      t314 = zcl_lnt_syntax_module=>map.
      DATA(t315) = t304.
      t313 = t314->get( p0 = t315 ).
      t312 = t313.
      DATA(t316) = t1.
      DATA(t317) = t95.
      t312->run_syntax( i_node = t316 i_input_967e = t317 ).
      RETURN.
    ENDIF.
    DATA t318 TYPE abap_bool.
    DATA(t319) = t8.
    t318 = xsdbool( t319 IS BOUND AND t319 IS INSTANCE OF zcl_lnt_st_function_module ).
    IF t318 = abap_true.
      DATA t320 TYPE REF TO zcl_lnt_procedural.
      DATA(t321) = me->helpers.
      t320 = t321->proc.
      DATA(t322) = me->object_a393.
      DATA(t323) = t1.
      DATA(t324) = t2.
      t320->find_function_scope( i_obj_1ed0 = t322 i_node = t323 i_filename = t324 ).
    ELSE.
      DATA(t325) = VALUE abap_bool( ).
      DATA(t326) = VALUE abap_bool( ).
      DATA t327 TYPE abap_bool.
      DATA t328 TYPE abap_bool.
      DATA(t329) = t8.
      t328 = xsdbool( t329 IS BOUND AND t329 IS INSTANCE OF zcl_lnt_end_form ).
      t327 = t328.
      IF t328 = abap_false.
        DATA t330 TYPE abap_bool.
        DATA(t331) = t8.
        t330 = xsdbool( t331 IS BOUND AND t331 IS INSTANCE OF zcl_lnt_end_function ).
        t327 = t330.
      ENDIF.
      t326 = t327.
      IF t327 = abap_false.
        DATA t332 TYPE abap_bool.
        DATA(t333) = t8.
        t332 = xsdbool( t333 IS BOUND AND t333 IS INSTANCE OF zcl_lnt_end_class ).
        t326 = t332.
      ENDIF.
      t325 = t326.
      IF t326 = abap_false.
        DATA t334 TYPE abap_bool.
        DATA(t335) = t8.
        t334 = xsdbool( t335 IS BOUND AND t335 IS INSTANCE OF zcl_lnt_end_interface ).
        t325 = t334.
      ENDIF.
      IF t325 = abap_true.
        DATA t336 TYPE REF TO zcl_lnt_spaghetti_scope.
        CLEAR t336.
        DATA(t337) = me->scope.
        DATA t338 TYPE REF TO zcl_lnt_position.
        CLEAR t338.
        DATA t339 TYPE REF TO zcl_lnt_abstract_token.
        DATA t340 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t341) = t1.
        t340 = t341->get_last_token( ).
        t339 = t340.
        DATA t342 TYPE REF TO zcl_lnt_position.
        CLEAR t342.
        DATA t343 TYPE int8.
        DATA t344 TYPE REF TO zcl_lnt_position.
        DATA t345 TYPE REF TO zcl_lnt_position.
        DATA(t346) = t339.
        t345 = t346->start.
        t344 = t345.
        DATA t347 TYPE int8.
        DATA(t348) = t344.
        t347 = t348->row.
        t343 = t347.
        DATA t349 TYPE int8.
        DATA t350 TYPE int8.
        DATA t351 TYPE REF TO zcl_lnt_position.
        DATA t352 TYPE REF TO zcl_lnt_position.
        DATA(t353) = t339.
        t352 = t353->start.
        t351 = t352.
        DATA t354 TYPE int8.
        DATA(t355) = t351.
        t354 = t355->col.
        t350 = t354.
        DATA t356 TYPE int8.
        DATA t357 TYPE i.
        DATA t358 TYPE string.
        DATA(t359) = t339.
        t358 = t359->str.
        DATA(t360) = strlen( t358 ).
        t357 = t360.
        t356 = t357.
        t349 = t350 + t356.
        IF t349 < range_int8_bound_min OR t349 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t342 = NEW zcl_lnt_position( i_row = t343 i_col = t349 ).
        t338 = t342.
        t336 = t337->pop( i_end = t338 ).
      ELSE.
        DATA t361 TYPE abap_bool.
        DATA(t362) = t8.
        t361 = xsdbool( t362 IS BOUND AND t362 IS INSTANCE OF zcl_lnt_end_method ).
        IF t361 = abap_true.
          DATA t363 TYPE abap_bool.
          DATA t364 TYPE string.
          DATA(t365) = me->scope.
          t364 = t365->get_type( ).
          DATA(t366) = |method|.
          t363 = xsdbool( t364 = t366 ).
          IF t363 = abap_true.
            DATA t367 TYPE REF TO zcl_lnt_spaghetti_scope.
            CLEAR t367.
            DATA(t368) = me->scope.
            DATA t369 TYPE REF TO zcl_lnt_position.
            CLEAR t369.
            DATA t370 TYPE REF TO zcl_lnt_abstract_token.
            DATA t371 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t372) = t1.
            t371 = t372->get_last_token( ).
            t370 = t371.
            DATA t373 TYPE REF TO zcl_lnt_position.
            CLEAR t373.
            DATA t374 TYPE int8.
            DATA t375 TYPE REF TO zcl_lnt_position.
            DATA t376 TYPE REF TO zcl_lnt_position.
            DATA(t377) = t370.
            t376 = t377->start.
            t375 = t376.
            DATA t378 TYPE int8.
            DATA(t379) = t375.
            t378 = t379->row.
            t374 = t378.
            DATA t380 TYPE int8.
            DATA t381 TYPE int8.
            DATA t382 TYPE REF TO zcl_lnt_position.
            DATA t383 TYPE REF TO zcl_lnt_position.
            DATA(t384) = t370.
            t383 = t384->start.
            t382 = t383.
            DATA t385 TYPE int8.
            DATA(t386) = t382.
            t385 = t386->col.
            t381 = t385.
            DATA t387 TYPE int8.
            DATA t388 TYPE i.
            DATA t389 TYPE string.
            DATA(t390) = t370.
            t389 = t390->str.
            DATA(t391) = strlen( t389 ).
            t388 = t391.
            t387 = t388.
            t380 = t381 + t387.
            IF t380 < range_int8_bound_min OR t380 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t373 = NEW zcl_lnt_position( i_row = t374 i_col = t380 ).
            t369 = t373.
            t367 = t368->pop( i_end = t369 ).
          ENDIF.
          DATA t392 TYPE abap_bool.
          DATA t393 TYPE string.
          DATA(t394) = me->scope.
          t393 = t394->get_type( ).
          DATA(t395) = |method_instance|.
          t392 = xsdbool( t393 = t395 ).
          IF t392 = abap_true.
            DATA t396 TYPE REF TO zcl_lnt_spaghetti_scope.
            CLEAR t396.
            DATA(t397) = me->scope.
            DATA t398 TYPE REF TO zcl_lnt_position.
            CLEAR t398.
            DATA t399 TYPE REF TO zcl_lnt_abstract_token.
            DATA t400 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t401) = t1.
            t400 = t401->get_last_token( ).
            t399 = t400.
            DATA t402 TYPE REF TO zcl_lnt_position.
            CLEAR t402.
            DATA t403 TYPE int8.
            DATA t404 TYPE REF TO zcl_lnt_position.
            DATA t405 TYPE REF TO zcl_lnt_position.
            DATA(t406) = t399.
            t405 = t406->start.
            t404 = t405.
            DATA t407 TYPE int8.
            DATA(t408) = t404.
            t407 = t408->row.
            t403 = t407.
            DATA t409 TYPE int8.
            DATA t410 TYPE int8.
            DATA t411 TYPE REF TO zcl_lnt_position.
            DATA t412 TYPE REF TO zcl_lnt_position.
            DATA(t413) = t399.
            t412 = t413->start.
            t411 = t412.
            DATA t414 TYPE int8.
            DATA(t415) = t411.
            t414 = t415->col.
            t410 = t414.
            DATA t416 TYPE int8.
            DATA t417 TYPE i.
            DATA t418 TYPE string.
            DATA(t419) = t399.
            t418 = t419->str.
            DATA(t420) = strlen( t418 ).
            t417 = t420.
            t416 = t417.
            t409 = t410 + t416.
            IF t409 < range_int8_bound_min OR t409 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t402 = NEW zcl_lnt_position( i_row = t403 i_col = t409 ).
            t398 = t402.
            t396 = t397->pop( i_end = t398 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD update_selection_event_scope.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE string.
    DATA(t8) = me->scope.
    t7 = t8->get_type( ).
    DATA(t9) = |selection_event|.
    t6 = xsdbool( t7 = t9 ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t2.
      t10 = me->is_selection_event_boundary( i_statement = t11 ).
      t5 = t10.
    ENDIF.
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t13) = me->scope.
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t17) = t1.
      t16 = t17->get_first_token( ).
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA(t19) = t15.
      t18 = t19->start.
      t14 = t18.
      t12 = t13->pop( i_end = t14 ).
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE REF TO zif_lnt_statement.
    DATA(t22) = t2.
    t21 = t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t21.
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    t20 = t23.
    IF t20 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_current_scope.
      DATA(t26) = me->scope.
      t25 = t26.
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t30) = t2.
      t29 = t30->zlnt_builtin_clas_3f891b097658( ).
      t28 = t29->name.
      t27 = t28.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = t1.
      t34 = t35->get_first_token( ).
      t33 = t34.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA(t37) = t33.
      t36 = t37->start.
      t32 = t36.
      t31 = t32.
      DATA t38 TYPE string.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t41) = me->current_file.
      t40 = t41.
      DATA t42 TYPE string.
      DATA(t43) = t40.
      t42 = t43->filename.
      t39 = t42.
      t38 = t39.
      DATA t44 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t45 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t46) = |selection_event|.
      DATA(t47) = t27.
      DATA(t48) = t38.
      DATA(t49) = t31.
      DATA t50 TYPE REF TO zcl_lnt_position.
      CLEAR t50.
      t45 = NEW zcl_lnt_iscope_identifier( i_stype = t46 i_sname = t47 i_filename = t48 i_start = t49 i_end = t50 ).
      t44 = t45.
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t54) = t25.
      t53 = t54->current.
      t52 = t53.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      t55 = t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t52.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      t51 = t57.
      IF t51 = abap_true.
        DATA(t59) = t25.
        DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t63) = t44.
          DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t64.
          t62 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t63 i_parent = t64 ).
          t60 = t62.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t65.
          t60 = t65.
        ENDIF.
        t59->current = t60.
      ELSE.
        DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t69) = t25.
        t68 = t69->current.
        t67 = t68.
        t66 = t67.
        DATA(t70) = t25.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t73.
          DATA(t74) = t44.
          DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA(t77) = t66.
            t75 = t77.
          ELSE.
            DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t78.
            t75 = t78.
          ENDIF.
          t73 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t74 i_parent = t75 ).
          t71 = t73.
        ELSE.
          DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t79.
          t71 = t79.
        ENDIF.
        t70->current = t71.
        DATA(t80) = t66.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t83) = t25.
        t82 = t83->current.
        t81 = t82.
        t80->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t81 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD opens_selection_event_scope.
    DATA(t1) = i_statement.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    result = t2.

  ENDMETHOD.

  METHOD is_selection_event_boundary.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    DATA(t7) = abap_false.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
      zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
    ENDIF.
    t8 = zcl_lnt_stuff_module=>selection_events.
    DATA t9 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t8->items INTO t10.
      t9 ?= t10.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t1.
      DATA(t13) = t9.
      DATA t14 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t14.
      IF t12 IS BOUND.
        t14 = t12->zlnt_builtin_clas_3f891b097658( ).
        WHILE t14 IS BOUND.
          IF t14 = t13.
            t11 = abap_true.
            EXIT.
          ENDIF.
          t14 = t14->parent.
        ENDWHILE.
      ENDIF.
      IF t11 = abap_true.
        DATA(t15) = abap_true.
        t6 = t15.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA(t16) = t6.
    t5 = t16.
    t4 = t5.
    IF t5 = abap_false.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t1.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_st_form ).
      t4 = t17.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t1.
      t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_module ).
      t3 = t19.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t1.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_function_module ).
      t2 = t21.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_slctn_evnt_bndry_strctr.
    DATA(t1) = i_structure.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      DATA(t6) = t1.
      t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_sr_interface ).
      t2 = t5.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d975_b3b62c0f7275.
  ENDMETHOD.
ENDCLASS.
