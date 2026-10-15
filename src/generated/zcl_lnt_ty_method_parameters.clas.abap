* TS: src/abap/types/method_parameters.ts:22:1 MethodParameters
CLASS zcl_lnt_ty_method_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_method_parameters.
    DATA preferred TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA returning TYPE REF TO zcl_lnt_typed_identifier.
    DATA importing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA optional TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA exporting TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA changing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA exceptions TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA defaults TYPE REF TO zlnt_runtime_map__b1b44c588059.
    DATA filename TYPE string.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_abstract_method TYPE abap_bool.
    METHODS get_filename RETURNING VALUE(result) TYPE string.
    METHODS get_optional RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_default_importing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_importing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_required_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_exporting RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_changing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_returning RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS get_exceptions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr IMPORTING i_parameter_5406 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_parent_name TYPE string i_abstract_method TYPE abap_bool.
    METHODS check_duplicate_names.
    METHODS check_name_lengths IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS workaround_rap IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_parent_name TYPE string.
    METHODS add_51c1 IMPORTING i_target_5f8a TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_source_75cf TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0
    i_abstract_method TYPE abap_bool.
    METHODS is_pass_by_value IMPORTING i_param TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_parameter_default IMPORTING i_parameter_5406 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_method_parameters IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_abstract_method.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_method_def ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      IF t9 IS BOUND.
        DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t15.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        CLEAR t15.
        t16 = t9.
        TRY.
            t8->source_value ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8->source_value IS NOT BOUND.
          TRY.
              t15 ?= t9.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t15 IS BOUND.
            t8->source_value = t15->source( ).
          ENDIF.
          IF t8->source_value IS NOT BOUND.
            CREATE OBJECT t8->source_value.
            t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t8->source_value->oval = t9.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    me->importing = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `importing`.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    CREATE OBJECT t18.
    me->exporting = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exporting`.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    CREATE OBJECT t19.
    me->changing = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `changing`.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    CREATE OBJECT t20.
    me->optional = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
    DATA t21 TYPE REF TO zlnt_runtime_map__b1b44c588059.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__b1b44c588059.
    CLEAR t22.
    DATA(t23) = NEW zlnt_runtime_map__b1b44c588059( ).
    t22 = t23.
    DATA(t24) = t22.
    t21 = t24.
    me->defaults = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `defaults`.
    DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t25.
    me->returning = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `returning`.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    me->preferred = t26.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    CREATE OBJECT t27.
    me->exceptions = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exceptions`.
    DATA(t28) = VALUE string( ).
    DATA(t29) = t2.
    t28 = t29->filename.
    me->filename = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
    DATA(t30) = VALUE string( ).
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t32.
    DATA(t33) = t2.
    t32 = t33->scope.
    t31 = t32->get_name( ).
    t30 = t31.
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t35.
    DATA(t36) = t2.
    t35 = t36->scope.
    t34 = t35.
    DATA t37 TYPE REF TO zcl_lnt_position.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_position.
    CLEAR t38.
    DATA t39 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t39.
    DATA(t40) = t1.
    t39 = t40.
    DATA t41 TYPE REF TO zcl_lnt_position.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t42.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t43.
    DATA(t44) = t39.
    t43 = t44->get_first_token( ).
    t42 = t43.
    DATA t45 TYPE REF TO zcl_lnt_position.
    CLEAR t45.
    DATA(t46) = t42.
    t45 = t46->start.
    t41 = t45.
    t38 = t41.
    t37 = t38.
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA(t49) = t2.
    t48 = t49->filename.
    t47 = t48.
    DATA t50 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t51.
    DATA(t52) = VALUE string( ).
    DATA(t53) = |method_definition|.
    t52 = t53.
    DATA(t54) = VALUE string( ).
    DATA(t55) = |method definition|.
    t54 = t55.
    DATA t56 TYPE REF TO zcl_lnt_position.
    CLEAR t56.
    DATA(t57) = t37.
    t56 = t57.
    DATA(t58) = VALUE string( ).
    DATA(t59) = t47.
    t58 = t59.
    DATA t60 TYPE REF TO zcl_lnt_position.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_position.
    CLEAR t61.
    t60 = t61.
    t51 = NEW zcl_lnt_iscope_identifier( i_stype = t52 i_sname = t54 i_filename = t58 i_start = t56 i_end = t60 ).
    CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
    t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t62 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t63 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t64 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t66 ).
    ENDIF.
    CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
    t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t67) = |stype|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA(t69) = |sname|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    DATA(t71) = |start|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
    ENDIF.
    DATA(t73) = |filename|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
    ENDIF.
    DATA(t75) = |end|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
    ENDIF.
    t50 = t51.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t79.
    DATA(t80) = t34.
    t79 = t80->current.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    t81 = t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = t78.
    IF t84 IS INITIAL.
      t83 = abap_true.
    ENDIF.
    t77 = t83.
    IF t77 = abap_true.
      DATA(t85) = t34.
      DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t86.
      DATA(t87) = abap_true.
      IF t87 = abap_true.
        DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t88.
        DATA(t89) = t50.
        DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t90.
        t88 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t89 i_parent = t90 ).
        t86 = t88.
      ELSE.
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t91.
        t86 = t91.
      ENDIF.
      t85->current = t86.
      DELETE t85->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t94.
      DATA(t95) = t34.
      t94 = t95->current.
      t93 = t94.
      t92 = t93.
      DATA(t96) = t34.
      DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t97.
      DATA(t98) = abap_true.
      IF t98 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t99.
        DATA(t100) = t50.
        DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA(t103) = t92.
          t101 = t103.
        ELSE.
          DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t104.
          t101 = t104.
        ENDIF.
        t99 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t100 i_parent = t101 ).
        t97 = t99.
      ELSE.
        DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t105.
        t97 = t105.
      ENDIF.
      t96->current = t97.
      DELETE t96->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t106) = t92.
      DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t107.
      DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t108.
      DATA(t109) = t34.
      t108 = t109->current.
      t107 = t108.
      t106->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t107 ).
    ENDIF.
    DATA t110 TYPE REF TO cx_root.
    CLEAR t110.
    TRY.
        DATA(t111) = t1.
        DATA(t112) = t2.
        DATA(t113) = t30.
        DATA(t114) = t3.
        me->parse( i_node = t111 i_input_967e = t112 i_parent_name = t113 i_abstract_method = t114 ).
        DATA(t115) = t2.
        me->check_name_lengths( i_input_967e = t115 ).
        me->check_duplicate_names( ).
      CATCH cx_root INTO t110.
        DATA t116 TYPE REF TO zcl_lnt_spaghetti_scope.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t117.
        DATA(t118) = t2.
        t117 = t118->scope.
        DATA t119 TYPE REF TO zcl_lnt_position.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t120.
        DATA(t121) = t1.
        t120 = t121.
        DATA t122 TYPE REF TO zcl_lnt_position.
        CLEAR t122.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t123.
        DATA t124 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t124.
        DATA(t125) = t120.
        t124 = t125->get_last_token( ).
        t123 = t124.
        DATA t126 TYPE REF TO zcl_lnt_position.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t127.
        DATA(t128) = t123.
        t127 = t128.
        DATA t129 TYPE REF TO zcl_lnt_position.
        CLEAR t129.
        DATA(t130) = VALUE f( ).
        DATA t131 TYPE REF TO zcl_lnt_position.
        CLEAR t131.
        DATA t132 TYPE REF TO zcl_lnt_position.
        CLEAR t132.
        DATA(t133) = t127.
        t132 = t133->start.
        t131 = t132.
        DATA(t134) = VALUE f( ).
        DATA(t135) = t131.
        t134 = t135->row.
        t130 = t134.
        DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t137.
        DATA t138 TYPE REF TO zcl_lnt_position.
        CLEAR t138.
        DATA t139 TYPE REF TO zcl_lnt_position.
        CLEAR t139.
        DATA(t140) = t127.
        t139 = t140->start.
        t138 = t139.
        DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t141.
        DATA(t142) = t138.
        t141 = t142->col.
        t137 = t141.
        DATA(t143) = VALUE f( ).
        DATA(t144) = VALUE i( ).
        DATA(t145) = VALUE string( ).
        DATA(t146) = t127.
        t145 = t146->str.
        DATA(t147) = strlen( t145 ).
        t144 = t147.
        t143 = t144.
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t143.
        t136 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t137 right = t148 op = `+` ).
        t129 = NEW zcl_lnt_position( i_row = t130 i_col = t136 ).
        t126 = t129.
        t122 = t126.
        t119 = t122.
        t116 = t117->pop( i_end = t119 ).
        RAISE EXCEPTION t110.
    ENDTRY.
    DATA t149 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t149.
    DATA t150 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t150.
    DATA(t151) = t2.
    t150 = t151->scope.
    DATA t152 TYPE REF TO zcl_lnt_position.
    CLEAR t152.
    DATA t153 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t153.
    DATA(t154) = t1.
    t153 = t154.
    DATA t155 TYPE REF TO zcl_lnt_position.
    CLEAR t155.
    DATA t156 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t156.
    DATA t157 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t157.
    DATA(t158) = t153.
    t157 = t158->get_last_token( ).
    t156 = t157.
    DATA t159 TYPE REF TO zcl_lnt_position.
    CLEAR t159.
    DATA t160 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t160.
    DATA(t161) = t156.
    t160 = t161.
    DATA t162 TYPE REF TO zcl_lnt_position.
    CLEAR t162.
    DATA(t163) = VALUE f( ).
    DATA t164 TYPE REF TO zcl_lnt_position.
    CLEAR t164.
    DATA t165 TYPE REF TO zcl_lnt_position.
    CLEAR t165.
    DATA(t166) = t160.
    t165 = t166->start.
    t164 = t165.
    DATA(t167) = VALUE f( ).
    DATA(t168) = t164.
    t167 = t168->row.
    t163 = t167.
    DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t170.
    DATA t171 TYPE REF TO zcl_lnt_position.
    CLEAR t171.
    DATA t172 TYPE REF TO zcl_lnt_position.
    CLEAR t172.
    DATA(t173) = t160.
    t172 = t173->start.
    t171 = t172.
    DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t174.
    DATA(t175) = t171.
    t174 = t175->col.
    t170 = t174.
    DATA(t176) = VALUE f( ).
    DATA(t177) = VALUE i( ).
    DATA(t178) = VALUE string( ).
    DATA(t179) = t160.
    t178 = t179->str.
    DATA(t180) = strlen( t178 ).
    t177 = t180.
    t176 = t177.
    DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t181->has = abap_true.
    t181->value = t176.
    t169 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ).
    t162 = NEW zcl_lnt_position( i_row = t163 i_col = t169 ).
    t159 = t162.
    t155 = t159.
    t152 = t155.
    t149 = t150->pop( i_end = t152 ).
  ENDMETHOD.

  METHOD get_filename.
    DATA(t1) = CONV string( me->filename ).
    result = t1.

  ENDMETHOD.

  METHOD get_optional.
    DATA(t1) = me->optional.
    result = t1.

  ENDMETHOD.

  METHOD get_all.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = me->returning.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t3.
    t5 = xsdbool( t6 IS BOUND ).
    IF t5 = abap_true.
      DATA(t7) = t1.
      DATA t8 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t9) = t3.
      t8 = t9.
      t7->load( ).
      APPEND t8 TO t7->items.
      t7->save( ).
    ENDIF.
    DATA(t10) = VALUE i( ).
    DATA(t11) = me->importing.
    DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = t1.
      DATA(t18) = t12.
      t17->load( ).
      APPEND t18 TO t17->items.
      t17->save( ).
    ENDDO.
    DATA t19 TYPE i.
    DATA(t20) = t1.
    t20->load( ).
    t19 = lines( t20->items ).
    t10 = t19.
    DATA(t21) = VALUE i( ).
    DATA(t22) = me->exporting.
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t22->load( ).
      IF t25 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t22->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA(t28) = t1.
      DATA(t29) = t23.
      t28->load( ).
      APPEND t29 TO t28->items.
      t28->save( ).
    ENDDO.
    DATA t30 TYPE i.
    DATA(t31) = t1.
    t31->load( ).
    t30 = lines( t31->items ).
    t21 = t30.
    DATA(t32) = VALUE i( ).
    DATA(t33) = me->changing.
    DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t34.
    DATA t35 TYPE REF TO object.
    CLEAR t35.
    DATA(t36) = VALUE i( ).
    DO.
      t33->load( ).
      IF t36 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t35.
      READ TABLE t33->items INDEX t36 + 1 INTO t35.
      t36 = t36 + 1.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      CLEAR t34.
      IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t35.
        DATA t38 TYPE REF TO object.
        t38 = t37->as_ref( ).
        t34 ?= t38.
      ELSE.
        t34 ?= t35.
      ENDIF.
      DATA(t39) = t1.
      DATA(t40) = t34.
      t39->load( ).
      APPEND t40 TO t39->items.
      t39->save( ).
    ENDDO.
    DATA t41 TYPE i.
    DATA(t42) = t1.
    t42->load( ).
    t41 = lines( t42->items ).
    t32 = t41.
    DATA(t43) = t1.
    result = t43.

  ENDMETHOD.

  METHOD get_default_importing.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE i.
    DATA(t3) = me->importing.
    t3->load( ).
    t2 = lines( t3->items ).
    DATA(t4) = 0.
    t1 = xsdbool( t2 = t4 ).
    IF t1 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t5.
      result = t5.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE i.
      DATA(t8) = me->importing.
      t8->load( ).
      t7 = lines( t8->items ).
      DATA(t9) = 1.
      t6 = xsdbool( t7 = t9 ).
      IF t6 = abap_true.
        DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t10.
        DATA(t11) = abap_true.
        IF t11 = abap_true.
          DATA(t12) = VALUE string( ).
          DATA(t13) = VALUE string( ).
          DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t14.
          DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t15.
          DATA(t16) = me->importing.
          DATA t17 TYPE REF TO object.
          CLEAR t17.
          t16->load( ).
          CLEAR t17.
          READ TABLE t16->items INDEX 1 INTO t17.
          DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t18.
          CLEAR t15.
          IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t18 ?= t17.
            DATA t19 TYPE REF TO object.
            t19 = t18->as_ref( ).
            t15 ?= t19.
          ELSE.
            t15 ?= t17.
          ENDIF.
          t14 = t15.
          DATA(t20) = VALUE string( ).
          DATA t21 TYPE string.
          DATA t22 TYPE string.
          DATA t23 TYPE REF TO zcl_lnt_abstract_token.
          DATA t24 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t25) = t14.
          t24 = t25->token.
          t23 = t24.
          DATA t26 TYPE string.
          DATA(t27) = t23.
          t26 = t27->str.
          t22 = t26.
          t21 = t22.
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = VALUE string( ).
          DATA(t30) = t21.
          DATA(t31) = 0.
          DATA(t32) = 1.
          DATA(t33) = strlen( t30 ).
          IF t31 < 0.
            t31 = t31 + t33.
            IF t31 < 0.
              t31 = 0.
            ENDIF.
          ENDIF.
          IF t31 > t33 OR t32 <= 0.
            CLEAR t29.
          ELSE.
            IF t32 > t33 - t31.
              t32 = t33 - t31.
            ENDIF.
            t29 = t30+t31(t32).
          ENDIF.
          DATA(t34) = |!|.
          t28 = xsdbool( t29 = t34 ).
          IF t28 = abap_true.
            DATA(t35) = VALUE string( ).
            DATA t36 TYPE string.
            DATA(t37) = t21.
            t36 = t37.
            DATA(t38) = VALUE string( ).
            DATA(t39) = t36.
            DATA(t40) = 1.
            DATA t41 TYPE i.
            DATA(t42) = t36.
            DATA(t43) = strlen( t42 ).
            t41 = t43.
            DATA(t44) = strlen( t39 ).
            IF t40 < 0.
              t40 = t40 + t44.
              IF t40 < 0.
                t40 = 0.
              ENDIF.
            ENDIF.
            IF t40 > t44 OR t41 <= 0.
              CLEAR t38.
            ELSE.
              IF t41 > t44 - t40.
                t41 = t44 - t40.
              ENDIF.
              t38 = t39+t40(t41).
            ENDIF.
            t35 = t38.
            t21 = t35.
          ENDIF.
          DATA(t45) = t21.
          t20 = t45.
          t13 = t20.
          DATA(t46) = strlen( t13 ).
          t12 = t13.
          IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t12 TO UPPER CASE.
          ELSE.
            t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
          ENDIF.
          DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t47->has = abap_true.
          t47->value = t12.
          t10 = t47.
        ELSE.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          t10 = t48.
        ENDIF.
        result = t10.
        RETURN.
      ELSE.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = me->preferred.
        IF t50 IS BOUND.
          IF t50->has = abap_true.
            t49 = xsdbool( strlen( t50->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t49 = abap_true.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          DATA(t52) = abap_true.
          IF t52 = abap_true.
            DATA t53 TYPE string.
            DATA(t54) = me->preferred.
            t53 = t54->value.
            DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t55->has = abap_true.
            t55->value = t53.
            t51 = t55.
          ELSE.
            DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t56.
            t51 = t56.
          ENDIF.
          result = t51.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t60.
    t59 = t60.
    DATA(t61) = me->importing.
    DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t62.
    DATA t63 TYPE REF TO object.
    CLEAR t63.
    DATA(t64) = VALUE i( ).
    DO.
      t61->load( ).
      IF t64 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t63.
      READ TABLE t61->items INDEX t64 + 1 INTO t63.
      t64 = t64 + 1.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      CLEAR t62.
      IF t63 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t65 ?= t63.
        DATA t66 TYPE REF TO object.
        t66 = t65->as_ref( ).
        t62 ?= t66.
      ELSE.
        t62 ?= t63.
      ENDIF.
      DATA(t67) = t59.
      DATA(t68) = VALUE string( ).
      DATA(t69) = VALUE string( ).
      DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t71) = t62.
      t70 = t71.
      DATA(t72) = VALUE string( ).
      DATA t73 TYPE string.
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA t76 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t77) = t70.
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
      t69 = t72.
      DATA(t98) = strlen( t69 ).
      t68 = t69.
      IF t68 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t68 TO UPPER CASE.
      ELSE.
        t68 = zlnt_runtime_uppe_91169605024d=>full( t68 ).
      ENDIF.
      t67->load( ).
      APPEND t68 TO t67->items.
      t67->save( ).
    ENDDO.
    DATA(t99) = t59.
    t58 = t99.
    t57 = t58.
    DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    t101 = t102.
    DATA(t103) = t57.
    DATA(t104) = VALUE string( ).
    t103->dense( ).
    DATA(t105) = VALUE i( ).
    DO.
      t103->load( ).
      IF t105 >= lines( t103->items ).
        EXIT.
      ENDIF.
      CLEAR t104.
      READ TABLE t103->items INDEX t105 + 1 INTO t104.
      IF t103->has( t105 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t105 = t105 + 1.
      DATA t106 TYPE abap_bool.
      DATA t107 TYPE i.
      DATA(t108) = me->optional.
      DATA(t109) = t104.
      t107 = t108->indexof( p0 = t109 ).
      DATA(t110) = 0.
      t106 = xsdbool( t107 < t110 ).
      IF t106 = abap_true.
        DATA(t111) = t101.
        DATA(t112) = t104.
        t111->load( ).
        APPEND t112 TO t111->items.
        t111->save( ).
      ENDIF.
    ENDDO.
    DATA(t113) = t101.
    t100 = t113.
    t57 = t100.
    DATA t114 TYPE abap_bool.
    DATA t115 TYPE i.
    DATA(t116) = t57.
    t116->load( ).
    t115 = lines( t116->items ).
    DATA(t117) = 1.
    t114 = xsdbool( t115 = t117 ).
    IF t114 = abap_true.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      DATA(t119) = abap_true.
      IF t119 = abap_true.
        DATA(t120) = VALUE string( ).
        DATA(t121) = t57.
        IF t121->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t121->load( ).
        CLEAR t120.
        READ TABLE t121->items INDEX 1 INTO t120.
        DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t122->has = abap_true.
        t122->value = t120.
        t118 = t122.
      ELSE.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        t118 = t123.
      ENDIF.
      result = t118.
      RETURN.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t124.
    result = t124.

  ENDMETHOD.

  METHOD get_importing.
    DATA(t1) = me->importing.
    result = t1.

  ENDMETHOD.

  METHOD get_required_parameters.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA(t3) = me->importing.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE abap_bool.
      DATA(t12) = abap_false.
      t11 = t12.
      DATA(t13) = me->optional.
      DATA(t14) = VALUE string( ).
      t13->dense( ).
      DATA(t15) = VALUE i( ).
      DO.
        t13->load( ).
        IF t15 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t13->items INDEX t15 + 1 INTO t14.
        IF t13->has( t15 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t15 = t15 + 1.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE string.
        DATA(t18) = t14.
        DATA(t19) = strlen( t18 ).
        t17 = t18.
        IF t17 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t17 TO UPPER CASE.
        ELSE.
          t17 = zlnt_runtime_uppe_91169605024d=>full( t17 ).
        ENDIF.
        DATA(t20) = VALUE string( ).
        DATA(t21) = VALUE string( ).
        DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t23) = t4.
        t22 = t23.
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE string.
        DATA t26 TYPE string.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t29) = t22.
        t28 = t29->token.
        t27 = t28.
        DATA t30 TYPE string.
        DATA(t31) = t27.
        t30 = t31->str.
        t26 = t30.
        t25 = t26.
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = VALUE string( ).
        DATA(t34) = t25.
        DATA(t35) = 0.
        DATA(t36) = 1.
        DATA(t37) = strlen( t34 ).
        IF t35 < 0.
          t35 = t35 + t37.
          IF t35 < 0.
            t35 = 0.
          ENDIF.
        ENDIF.
        IF t35 > t37 OR t36 <= 0.
          CLEAR t33.
        ELSE.
          IF t36 > t37 - t35.
            t36 = t37 - t35.
          ENDIF.
          t33 = t34+t35(t36).
        ENDIF.
        DATA(t38) = |!|.
        t32 = xsdbool( t33 = t38 ).
        IF t32 = abap_true.
          DATA(t39) = VALUE string( ).
          DATA t40 TYPE string.
          DATA(t41) = t25.
          t40 = t41.
          DATA(t42) = VALUE string( ).
          DATA(t43) = t40.
          DATA(t44) = 1.
          DATA t45 TYPE i.
          DATA(t46) = t40.
          DATA(t47) = strlen( t46 ).
          t45 = t47.
          DATA(t48) = strlen( t43 ).
          IF t44 < 0.
            t44 = t44 + t48.
            IF t44 < 0.
              t44 = 0.
            ENDIF.
          ENDIF.
          IF t44 > t48 OR t45 <= 0.
            CLEAR t42.
          ELSE.
            IF t45 > t48 - t44.
              t45 = t48 - t44.
            ENDIF.
            t42 = t43+t44(t45).
          ENDIF.
          t39 = t42.
          t25 = t39.
        ENDIF.
        DATA(t49) = t25.
        t24 = t49.
        t21 = t24.
        DATA(t50) = strlen( t21 ).
        t20 = t21.
        IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t20 TO UPPER CASE.
        ELSE.
          t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
        ENDIF.
        t16 = xsdbool( t17 = t20 ).
        IF t16 = abap_true.
          DATA(t51) = abap_true.
          t11 = t51.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t52) = t11.
      t10 = t52.
      DATA(t53) = abap_true.
      t9 = xsdbool( t10 = t53 ).
      IF t9 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t57) = me->preferred.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = t56.
        IF t60 IS INITIAL.
          t59 = abap_true.
        ELSEIF t60->has = abap_false.
          t59 = abap_true.
        ENDIF.
        IF t59 = abap_true.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          t58 = t61.
        ELSE.
          DATA t62 TYPE string.
          DATA t63 TYPE string.
          DATA(t64) = t56.
          t63 = t64->value.
          DATA(t65) = strlen( t63 ).
          t62 = t63.
          IF t62 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t62 TO UPPER CASE.
          ELSE.
            t62 = zlnt_runtime_uppe_91169605024d=>full( t62 ).
          ENDIF.
          DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t66->has = abap_true.
          t66->value = t62.
          t58 = t66.
        ENDIF.
        t55 = t58.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = VALUE string( ).
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t72) = t4.
          t71 = t72.
          DATA(t73) = VALUE string( ).
          DATA t74 TYPE string.
          DATA t75 TYPE string.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t78) = t71.
          t77 = t78->token.
          t76 = t77.
          DATA t79 TYPE string.
          DATA(t80) = t76.
          t79 = t80->str.
          t75 = t79.
          t74 = t75.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = VALUE string( ).
          DATA(t83) = t74.
          DATA(t84) = 0.
          DATA(t85) = 1.
          DATA(t86) = strlen( t83 ).
          IF t84 < 0.
            t84 = t84 + t86.
            IF t84 < 0.
              t84 = 0.
            ENDIF.
          ENDIF.
          IF t84 > t86 OR t85 <= 0.
            CLEAR t82.
          ELSE.
            IF t85 > t86 - t84.
              t85 = t86 - t84.
            ENDIF.
            t82 = t83+t84(t85).
          ENDIF.
          DATA(t87) = |!|.
          t81 = xsdbool( t82 = t87 ).
          IF t81 = abap_true.
            DATA(t88) = VALUE string( ).
            DATA t89 TYPE string.
            DATA(t90) = t74.
            t89 = t90.
            DATA(t91) = VALUE string( ).
            DATA(t92) = t89.
            DATA(t93) = 1.
            DATA t94 TYPE i.
            DATA(t95) = t89.
            DATA(t96) = strlen( t95 ).
            t94 = t96.
            DATA(t97) = strlen( t92 ).
            IF t93 < 0.
              t93 = t93 + t97.
              IF t93 < 0.
                t93 = 0.
              ENDIF.
            ENDIF.
            IF t93 > t97 OR t94 <= 0.
              CLEAR t91.
            ELSE.
              IF t94 > t97 - t93.
                t94 = t97 - t93.
              ENDIF.
              t91 = t92+t93(t94).
            ENDIF.
            t88 = t91.
            t74 = t88.
          ENDIF.
          DATA(t98) = t74.
          t73 = t98.
          t70 = t73.
          DATA(t99) = strlen( t70 ).
          t69 = t70.
          IF t69 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t69 TO UPPER CASE.
          ELSE.
            t69 = zlnt_runtime_uppe_91169605024d=>full( t69 ).
          ENDIF.
          DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t100->has = abap_true.
          t100->value = t69.
          t67 = t100.
        ELSE.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          t67 = t101.
        ENDIF.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        IF t55 IS BOUND.
          t102 = t55->has.
        ENDIF.
        IF t67 IS BOUND.
          t103 = t67->has.
        ENDIF.
        IF t102 = t103.
          IF t102 = abap_false.
            t54 = abap_true.
          ELSEIF t55->value = t67->value.
            t54 = abap_true.
          ENDIF.
        ENDIF.
        IF t54 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA(t104) = t1.
      DATA(t105) = t4.
      t104->load( ).
      APPEND t105 TO t104->items.
      t104->save( ).
    ENDDO.
    DATA(t106) = me->changing.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t107.
    DATA t108 TYPE REF TO object.
    CLEAR t108.
    DATA(t109) = VALUE i( ).
    DO.
      t106->load( ).
      IF t109 >= lines( t106->items ).
        EXIT.
      ENDIF.
      CLEAR t108.
      READ TABLE t106->items INDEX t109 + 1 INTO t108.
      t109 = t109 + 1.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      CLEAR t107.
      IF t108 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t110 ?= t108.
        DATA t111 TYPE REF TO object.
        t111 = t110->as_ref( ).
        t107 ?= t111.
      ELSE.
        t107 ?= t108.
      ENDIF.
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = VALUE abap_bool( ).
      DATA t114 TYPE abap_bool.
      DATA(t115) = abap_false.
      t114 = t115.
      DATA(t116) = me->optional.
      DATA(t117) = VALUE string( ).
      t116->dense( ).
      DATA(t118) = VALUE i( ).
      DO.
        t116->load( ).
        IF t118 >= lines( t116->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t116->items INDEX t118 + 1 INTO t117.
        IF t116->has( t118 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t118 = t118 + 1.
        DATA(t119) = VALUE abap_bool( ).
        DATA t120 TYPE string.
        DATA(t121) = t117.
        DATA(t122) = strlen( t121 ).
        t120 = t121.
        IF t120 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t120 TO UPPER CASE.
        ELSE.
          t120 = zlnt_runtime_uppe_91169605024d=>full( t120 ).
        ENDIF.
        DATA(t123) = VALUE string( ).
        DATA(t124) = VALUE string( ).
        DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t126) = t107.
        t125 = t126.
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE string.
        DATA t129 TYPE string.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t132) = t125.
        t131 = t132->token.
        t130 = t131.
        DATA t133 TYPE string.
        DATA(t134) = t130.
        t133 = t134->str.
        t129 = t133.
        t128 = t129.
        DATA(t135) = VALUE abap_bool( ).
        DATA(t136) = VALUE string( ).
        DATA(t137) = t128.
        DATA(t138) = 0.
        DATA(t139) = 1.
        DATA(t140) = strlen( t137 ).
        IF t138 < 0.
          t138 = t138 + t140.
          IF t138 < 0.
            t138 = 0.
          ENDIF.
        ENDIF.
        IF t138 > t140 OR t139 <= 0.
          CLEAR t136.
        ELSE.
          IF t139 > t140 - t138.
            t139 = t140 - t138.
          ENDIF.
          t136 = t137+t138(t139).
        ENDIF.
        DATA(t141) = |!|.
        t135 = xsdbool( t136 = t141 ).
        IF t135 = abap_true.
          DATA(t142) = VALUE string( ).
          DATA t143 TYPE string.
          DATA(t144) = t128.
          t143 = t144.
          DATA(t145) = VALUE string( ).
          DATA(t146) = t143.
          DATA(t147) = 1.
          DATA t148 TYPE i.
          DATA(t149) = t143.
          DATA(t150) = strlen( t149 ).
          t148 = t150.
          DATA(t151) = strlen( t146 ).
          IF t147 < 0.
            t147 = t147 + t151.
            IF t147 < 0.
              t147 = 0.
            ENDIF.
          ENDIF.
          IF t147 > t151 OR t148 <= 0.
            CLEAR t145.
          ELSE.
            IF t148 > t151 - t147.
              t148 = t151 - t147.
            ENDIF.
            t145 = t146+t147(t148).
          ENDIF.
          t142 = t145.
          t128 = t142.
        ENDIF.
        DATA(t152) = t128.
        t127 = t152.
        t124 = t127.
        DATA(t153) = strlen( t124 ).
        t123 = t124.
        IF t123 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t123 TO UPPER CASE.
        ELSE.
          t123 = zlnt_runtime_uppe_91169605024d=>full( t123 ).
        ENDIF.
        t119 = xsdbool( t120 = t123 ).
        IF t119 = abap_true.
          DATA(t154) = abap_true.
          t114 = t154.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t155) = t114.
      t113 = t155.
      DATA(t156) = abap_true.
      t112 = xsdbool( t113 = t156 ).
      IF t112 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t157) = t1.
      DATA(t158) = t107.
      t157->load( ).
      APPEND t158 TO t157->items.
      t157->save( ).
    ENDDO.
    DATA(t159) = t1.
    result = t159.

  ENDMETHOD.

  METHOD get_exporting.
    DATA(t1) = me->exporting.
    result = t1.

  ENDMETHOD.

  METHOD get_changing.
    DATA(t1) = me->changing.
    result = t1.

  ENDMETHOD.

  METHOD get_returning.
    DATA(t1) = me->returning.
    result = t1.

  ENDMETHOD.

  METHOD get_exceptions.
    DATA(t1) = me->exceptions.
    result = t1.

  ENDMETHOD.

  METHOD g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr.
    DATA(t1) = i_parameter_5406.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA(t4) = me->defaults.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    DATA(t7) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t3 = t4->get( p0 = t5 ).
    t2 = t3.
    result = t2.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_parent_name.
    DATA(t4) = i_abstract_method.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t5.
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t1.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t13.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        DATA(t23) = t13.
        t22 = t23.
        t21 = t22->get_first_token( ).
        t17 = t21.
      ENDIF.
      t12 = t17.
      t11 = t12.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = t11.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t26.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE string.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t35) = t26.
        t34 = t35.
        t33 = t34.
        DATA t36 TYPE string.
        DATA(t37) = t33.
        t36 = t37->str.
        t32 = t36.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t32.
        t28 = t38.
      ENDIF.
      t25 = t28.
      t24 = t25.
      DATA t39 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t39.
      DATA t40 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_current_scope.
      DATA t42 TYPE REF TO zcl_lnt_current_scope.
      DATA(t43) = t2.
      t42 = t43->scope.
      t41 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = t24.
      t44 = t45.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = t44.
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      t50 = t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t48.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t47 = t52.
      IF t47 = abap_true.
        DATA t54 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t54.
        t46 = t54.
      ELSE.
        DATA t55 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t55.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        CLEAR t56.
        DATA t57 TYPE REF TO zif_lnt_class_definition.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE string.
          DATA(t62) = t44.
          t61 = t62->value.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t61.
          t59 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t59 = t64.
        ENDIF.
        t58 = t59.
        DATA t65 TYPE REF TO zif_lnt_class_definition.
        CLEAR t65.
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t68) = t58.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t69 = t70.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = t67.
        IF t72 IS INITIAL.
          t71 = abap_true.
        ELSEIF t72->has = abap_false.
          t71 = abap_true.
        ENDIF.
        t66 = t71.
        IF t66 = abap_true.
          DATA t73 TYPE REF TO zif_lnt_class_definition.
          CLEAR t73.
          t65 = t73.
        ELSE.
          DATA t74 TYPE REF TO zif_lnt_class_definition.
          CLEAR t74.
          DATA t75 TYPE REF TO zif_lnt_class_definition.
          CLEAR t75.
          DATA t76 TYPE REF TO zif_lnt_class_definition.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t79) = t41.
          t78 = t79->current.
          t77 = t78.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = t77.
          IF t82 IS INITIAL.
            t81 = abap_true.
          ENDIF.
          IF t81 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_class_definition.
            CLEAR t83.
            t80 = t83.
          ELSE.
            DATA t84 TYPE REF TO zif_lnt_class_definition.
            DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t86) = t77.
            t85 = t86.
            DATA t87 TYPE string.
            DATA(t88) = t58.
            t87 = t88->value.
            t84 = t85->find_class_definition( i_name = t87 ).
            t80 = t84.
          ENDIF.
          t76 = t80.
          t75 = t76.
          DATA t89 TYPE REF TO zif_lnt_class_definition.
          CLEAR t89.
          DATA t90 TYPE abap_bool.
          DATA(t91) = t75.
          t90 = xsdbool( t91 IS BOUND ).
          IF t90 = abap_true.
            DATA t92 TYPE REF TO zif_lnt_class_definition.
            CLEAR t92.
            DATA(t93) = abap_true.
            IF t93 = abap_true.
              DATA t94 TYPE REF TO zif_lnt_class_definition.
              DATA(t95) = t75.
              t94 = t95.
              t92 = t94.
            ELSE.
              DATA t96 TYPE REF TO zif_lnt_class_definition.
              CLEAR t96.
              t92 = t96.
            ENDIF.
            t89 = t92.
          ELSE.
            DATA t97 TYPE REF TO zif_lnt_class_definition.
            CLEAR t97.
            DATA t98 TYPE REF TO zcl_lnt_class.
            CLEAR t98.
            DATA t99 TYPE REF TO zcl_lnt_class.
            CLEAR t99.
            DATA t100 TYPE REF TO zif_lnt_object.
            CLEAR t100.
            DATA t101 TYPE REF TO zif_lnt_registry.
            DATA(t102) = t41.
            t101 = t102->reg.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA(t104) = abap_true.
            IF t104 = abap_true.
              DATA(t105) = |CLAS|.
              DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t106->has = abap_true.
              t106->value = t105.
              t103 = t106.
            ELSE.
              DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t107.
              t103 = t107.
            ENDIF.
            DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t108.
            DATA(t109) = abap_true.
            IF t109 = abap_true.
              DATA t110 TYPE string.
              DATA(t111) = t58.
              t110 = t111->value.
              DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t112->has = abap_true.
              t112->value = t110.
              t108 = t112.
            ELSE.
              DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t113.
              t108 = t113.
            ENDIF.
            t100 = t101->get_object( i_type_9913 = t103 i_name = t108 ).
            DATA t114 TYPE REF TO object.
            t114 = t100.
            t99 ?= t114.
            t98 = t99.
            DATA t115 TYPE REF TO zif_lnt_class_definition.
            CLEAR t115.
            DATA t116 TYPE abap_bool.
            DATA(t117) = t98.
            t116 = xsdbool( t117 IS BOUND ).
            IF t116 = abap_true.
              DATA t118 TYPE REF TO zif_lnt_class_definition.
              DATA t119 TYPE REF TO zcl_lnt_class.
              DATA(t120) = t98.
              t119 = t120.
              t118 = t119->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t115 = t118.
            ELSE.
              DATA t121 TYPE REF TO zif_lnt_class_definition.
              CLEAR t121.
              t115 = t121.
            ENDIF.
            t97 = t115.
            t89 = t97.
          ENDIF.
          t74 = t89.
          t65 = t74.
        ENDIF.
        t57 = t65.
        t56 = t57.
        DATA t122 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t122.
        DATA t123 TYPE abap_bool.
        DATA(t124) = t56.
        t123 = xsdbool( t124 IS BOUND ).
        IF t123 = abap_true.
          DATA t125 TYPE REF TO zif_lnt_interface_definition.
          DATA t126 TYPE REF TO zif_lnt_class_definition.
          DATA(t127) = t56.
          t126 = t127.
          t125 ?= t126.
          t122 = t125.
        ELSE.
          DATA t128 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t128.
          DATA t129 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t129.
          DATA t130 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = abap_true.
          IF t133 = abap_true.
            DATA t134 TYPE string.
            DATA(t135) = t44.
            t134 = t135->value.
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t134.
            t132 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t132 = t137.
          ENDIF.
          t131 = t132.
          DATA t138 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t138.
          DATA(t139) = VALUE abap_bool( ).
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t141) = t131.
          t140 = t141.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          t142 = t143.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = t140.
          IF t145 IS INITIAL.
            t144 = abap_true.
          ELSEIF t145->has = abap_false.
            t144 = abap_true.
          ENDIF.
          t139 = t144.
          IF t139 = abap_true.
            DATA t146 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t146.
            t138 = t146.
          ELSE.
            DATA t147 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t147.
            DATA t148 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t148.
            DATA t149 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t149.
            DATA t150 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t151 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t152) = t41.
            t151 = t152->current.
            t150 = t151.
            DATA t153 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t153.
            DATA(t154) = VALUE abap_bool( ).
            DATA(t155) = t150.
            IF t155 IS INITIAL.
              t154 = abap_true.
            ENDIF.
            IF t154 = abap_true.
              DATA t156 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t156.
              t153 = t156.
            ELSE.
              DATA t157 TYPE REF TO zif_lnt_interface_definition.
              DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t159) = t150.
              t158 = t159.
              DATA t160 TYPE string.
              DATA(t161) = t131.
              t160 = t161->value.
              t157 = t158->find_interface_definition( i_name = t160 ).
              t153 = t157.
            ENDIF.
            t149 = t153.
            t148 = t149.
            DATA t162 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t162.
            DATA t163 TYPE abap_bool.
            DATA(t164) = t148.
            t163 = xsdbool( t164 IS BOUND ).
            IF t163 = abap_true.
              DATA t165 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t165.
              DATA(t166) = abap_true.
              IF t166 = abap_true.
                DATA t167 TYPE REF TO zif_lnt_interface_definition.
                DATA(t168) = t148.
                t167 = t168.
                t165 = t167.
              ELSE.
                DATA t169 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t169.
                t165 = t169.
              ENDIF.
              t162 = t165.
            ELSE.
              DATA t170 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t170.
              DATA t171 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t171.
              DATA t172 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t172.
              DATA t173 TYPE REF TO zif_lnt_object.
              CLEAR t173.
              DATA t174 TYPE REF TO zif_lnt_registry.
              DATA(t175) = t41.
              t174 = t175->reg.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t176.
              DATA(t177) = abap_true.
              IF t177 = abap_true.
                DATA(t178) = |INTF|.
                DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t179->has = abap_true.
                t179->value = t178.
                t176 = t179.
              ELSE.
                DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t180.
                t176 = t180.
              ENDIF.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t181.
              DATA(t182) = abap_true.
              IF t182 = abap_true.
                DATA t183 TYPE string.
                DATA(t184) = t131.
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
              t173 = t174->get_object( i_type_9913 = t176 i_name = t181 ).
              DATA t187 TYPE REF TO object.
              t187 = t173.
              t172 ?= t187.
              t171 = t172.
              DATA t188 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t188.
              DATA t189 TYPE abap_bool.
              DATA(t190) = t171.
              t189 = xsdbool( t190 IS BOUND ).
              IF t189 = abap_true.
                DATA t191 TYPE REF TO zif_lnt_interface_definition.
                DATA t192 TYPE REF TO zcl_lnt_ob_interface.
                DATA t193 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t194) = t171.
                t193 = t194.
                t192 = t193.
                DATA t195 TYPE REF TO zif_lnt_interface_definition.
                DATA(t196) = t192.
                t195 = t196->def.
                t191 = t195.
                t188 = t191.
              ELSE.
                DATA t197 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t197.
                t188 = t197.
              ENDIF.
              t170 = t188.
              t162 = t170.
            ENDIF.
            t147 = t162.
            t138 = t147.
          ENDIF.
          t130 = t138.
          t129 = t130.
          DATA t198 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t198.
          DATA t199 TYPE abap_bool.
          DATA(t200) = t129.
          t199 = xsdbool( t200 IS BOUND ).
          IF t199 = abap_true.
            DATA t201 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t201.
            DATA(t202) = abap_true.
            IF t202 = abap_true.
              DATA t203 TYPE REF TO zif_lnt_interface_definition.
              DATA(t204) = t129.
              t203 = t204.
              t201 = t203.
            ELSE.
              DATA t205 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t205.
              t201 = t205.
            ENDIF.
            t198 = t201.
          ELSE.
            DATA t206 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t206.
            t198 = t206.
          ENDIF.
          t128 = t198.
          t122 = t128.
        ENDIF.
        t55 = t122.
        t46 = t55.
      ENDIF.
      t40 = t46.
      t39 = t40.
      DATA(t207) = VALUE abap_bool( ).
      DATA(t208) = VALUE abap_bool( ).
      DATA t209 TYPE abap_bool.
      DATA(t210) = t39.
      t209 = xsdbool( t210 IS BOUND ).
      IF t209 = abap_true.
        DATA(t211) = abap_false.
        t208 = t211.
      ELSE.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zcl_lnt_ddic.
        DATA t215 TYPE REF TO zcl_lnt_ddic.
        DATA t216 TYPE REF TO zcl_lnt_current_scope.
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        DATA(t218) = t2.
        t217 = t218->scope.
        t216 = t217.
        DATA t219 TYPE REF TO zcl_lnt_ddic.
        DATA t220 TYPE REF TO zif_lnt_registry.
        DATA(t221) = t216.
        t220 = t221->reg.
        t219 = NEW zcl_lnt_ddic( i_reg_f149 = t220 ).
        t215 = t219.
        t214 = t215.
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t223) = t24.
        t222 = t223.
        DATA(t224) = VALUE abap_bool( ).
        DATA(t225) = VALUE abap_bool( ).
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t227) = t222.
        t226 = t227.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        t228 = t229.
        DATA(t230) = VALUE abap_bool( ).
        DATA(t231) = t226.
        IF t231 IS INITIAL.
          t230 = abap_true.
        ELSEIF t231->has = abap_false.
          t230 = abap_true.
        ENDIF.
        t225 = t230.
        IF t225 = abap_true.
          DATA(t232) = abap_true.
          t224 = t232.
        ELSE.
          DATA t233 TYPE abap_bool.
          DATA t234 TYPE REF TO zif_lnt_registry.
          DATA(t235) = t214.
          t234 = t235->reg.
          DATA t236 TYPE string.
          DATA(t237) = t222.
          t236 = t237->value.
          t233 = t234->in_error_namespace( i_name = t236 ).
          t224 = t233.
        ENDIF.
        t213 = t224.
        t212 = xsdbool( t213 = abap_false ).
        t208 = t212.
      ENDIF.
      t207 = t208.
      DATA t238 TYPE abap_bool.
      DATA(t239) = t39.
      t238 = xsdbool( t239 IS BOUND ).
      IF t238 = abap_true.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        DATA(t241) = t2.
        t240 = t241->scope.
        DATA(t242) = t11.
        DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t243.
        DATA(t244) = abap_true.
        IF t244 = abap_true.
          DATA t245 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t246 TYPE REF TO zif_lnt_interface_definition.
          DATA(t247) = t39.
          t246 = t247.
          t245 ?= t246.
          t243 = t245.
        ELSE.
          DATA t248 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t248.
          t243 = t248.
        ENDIF.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        DATA(t250) = |Object|.
        CLEAR t249.
        CREATE OBJECT t249.
        t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t249->sval = t250.
        DATA t251 TYPE string.
        DATA(t252) = t2.
        t251 = t252->filename.
        DATA t253 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t253.
        t240->add_reference( i_usage = t242 i_referencing = t243 i_type_9913 = t249 i_filename = t251 i_extra = t253 ).
      ELSE.
        DATA t254 TYPE abap_bool.
        DATA(t255) = t207.
        t254 = t255.
        IF t255 = abap_true.
          DATA(t256) = VALUE abap_bool( ).
          DATA(t257) = t24.
          IF t257 IS BOUND.
            IF t257->has = abap_true.
              t256 = xsdbool( strlen( t257->value ) > 0 ).
            ENDIF.
          ENDIF.
          t254 = t256.
        ENDIF.
        IF t254 = abap_true.
          DATA t258 TYPE REF TO zcl_lnt_current_scope.
          DATA(t259) = t2.
          t258 = t259->scope.
          DATA(t260) = t11.
          DATA t261 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t261.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          DATA(t263) = |Object (Void)|.
          CLEAR t262.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t262->sval = t263.
          DATA(t264) = CONV string( me->filename ).
          DATA t265 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t265.
          DATA(t266) = abap_true.
          IF t266 = abap_true.
            DATA t267 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t267.
            DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t268.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t269.
            DATA(t270) = abap_true.
            IF t270 = abap_true.
              DATA t271 TYPE string.
              DATA t272 TYPE string.
              DATA(t273) = t24.
              t272 = t273->value.
              DATA(t274) = strlen( t272 ).
              t271 = t272.
              IF t271 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t271 TO UPPER CASE.
              ELSE.
                t271 = zlnt_runtime_uppe_91169605024d=>full( t271 ).
              ENDIF.
              DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t275->has = abap_true.
              t275->value = t271.
              t269 = t275.
            ELSE.
              DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t276.
              t269 = t276.
            ENDIF.
            t268 = t269.
            DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t278.
            t277 = t278.
            DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t280 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t280.
            t279 = t280.
            t267 = NEW zcl_lnt_ireference_extras( i_oo_name = t268 i_oo_type = t277 i_found_qualified = t279 ).
            CREATE OBJECT t267->zlnt_view_ownkeys_b0e8086400eb.
            t267->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t281.
            IF t267->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t267->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t281 ).
            ENDIF.
            CREATE OBJECT t267->zlnt_json_ownkeys_70e5fd461788.
            t267->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t282) = |ooName|.
            DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t283.
            IF t267->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t267->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
            ENDIF.
            t265 = t267.
          ELSE.
            DATA t284 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t284.
            t265 = t284.
          ENDIF.
          t258->add_reference( i_usage = t260 i_referencing = t261 i_type_9913 = t262 i_filename = t264 i_extra = t265 ).
        ENDIF.
      ENDIF.
      DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t285.
      DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t286.
      DATA t287 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t287.
      DATA t288 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t288.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      DATA t290 TYPE REF TO zcl_lnt_expression_node.
      DATA(t291) = t1.
      DATA(t292) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t290 = t291->find_first_expression( i_type_9913 = t292 ).
      t289 = t290.
      DATA t293 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t293.
      DATA(t294) = VALUE abap_bool( ).
      DATA(t295) = t289.
      IF t295 IS INITIAL.
        t294 = abap_true.
      ENDIF.
      IF t294 = abap_true.
        DATA t296 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t296.
        t293 = t296.
      ELSE.
        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
        DATA t298 TYPE REF TO zcl_lnt_expression_node.
        DATA(t299) = t289.
        t298 = t299.
        t297 = t298->get_first_token( ).
        t293 = t297.
      ENDIF.
      t288 = t293.
      t287 = t288.
      DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t300.
      DATA(t301) = VALUE abap_bool( ).
      DATA(t302) = t287.
      IF t302 IS INITIAL.
        t301 = abap_true.
      ENDIF.
      IF t301 = abap_true.
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t303.
        t300 = t303.
      ELSE.
        DATA t304 TYPE string.
        DATA t305 TYPE REF TO zcl_lnt_abstract_token.
        DATA t306 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t307) = t287.
        t306 = t307.
        t305 = t306.
        DATA t308 TYPE string.
        DATA(t309) = t305.
        t308 = t309->str.
        t304 = t308.
        DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t310->has = abap_true.
        t310->value = t304.
        t300 = t310.
      ENDIF.
      t286 = t300.
      t285 = t286.
      DATA t311 TYPE REF TO zif_lnt_event_definition.
      DATA t312 TYPE REF TO zif_lnt_event_definition.
      DATA t313 TYPE REF TO zcl_lnt_object_oriented.
      DATA t314 TYPE REF TO zcl_lnt_current_scope.
      DATA(t315) = t2.
      t314 = t315->scope.
      t313 = NEW zcl_lnt_object_oriented( i_scope = t314 ).
      DATA(t316) = t39.
      DATA(t317) = t285.
      t312 = t313->search_event( i_def = t316 i_name = t317 ).
      t311 = t312.
      DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t319 TYPE REF TO zcl_lnt_expression_node.
      DATA(t320) = t5.
      t319 = t320.
      DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
      t318 = t319->find_all_expressions( i_type_9913 = t321 ).
      DATA t322 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t322.
      DATA t323 TYPE REF TO object.
      CLEAR t323.
      DATA(t324) = VALUE i( ).
      DO.
        t318->load( ).
        IF t324 >= lines( t318->items ).
          EXIT.
        ENDIF.
        CLEAR t323.
        READ TABLE t318->items INDEX t324 + 1 INTO t323.
        t324 = t324 + 1.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t325.
        CLEAR t322.
        IF t323 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t325 ?= t323.
          DATA t326 TYPE REF TO object.
          t326 = t325->as_ref( ).
          t322 ?= t326.
        ELSE.
          t322 ?= t323.
        ENDIF.
        DATA t327 TYPE REF TO zcl_lnt_abstract_token.
        DATA t328 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t329) = t322.
        t328 = t329->get_first_token( ).
        t327 = t328.
        DATA(t330) = VALUE string( ).
        DATA(t331) = VALUE string( ).
        DATA t332 TYPE string.
        DATA t333 TYPE string.
        DATA t334 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t335) = t327.
        t334 = t335.
        DATA t336 TYPE string.
        DATA(t337) = t334.
        t336 = t337->str.
        t333 = t336.
        DATA(t338) = strlen( t333 ).
        t332 = t333.
        IF t332 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t332 TO UPPER CASE.
        ELSE.
          t332 = zlnt_runtime_uppe_91169605024d=>full( t332 ).
        ENDIF.
        DATA(t339) = |!|.
        DATA(t340) = ||.
        DATA(t341) = strlen( t332 ).
        t331 = t332.
        REPLACE ALL OCCURRENCES OF t339 IN t331 WITH t340.
        t330 = t331.
        DATA(t342) = me->optional.
        DATA(t343) = t330.
        t342->load( ).
        APPEND t343 TO t342->items.
        t342->save( ).
        DATA t344 TYPE abap_bool.
        DATA t345 TYPE abap_bool.
        DATA(t346) = t330.
        DATA(t347) = |SENDER|.
        t345 = xsdbool( t346 = t347 ).
        t344 = t345.
        IF t345 = abap_true.
          DATA t348 TYPE abap_bool.
          DATA(t349) = t39.
          t348 = xsdbool( t349 IS BOUND ).
          t344 = t348.
        ENDIF.
        IF t344 = abap_true.
          DATA(t350) = me->importing.
          DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t351.
          DATA(t352) = t327.
          DATA(t353) = CONV string( me->filename ).
          DATA t354 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t355 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t356 TYPE REF TO zif_lnt_interface_definition.
          DATA(t357) = t39.
          t356 = t357.
          t355 ?= t356.
          DATA t358 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t358.
          t354 = NEW zcl_lnt_object_reference_type( i_id = t355 i_extra = t358 ).
          DATA t359 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t359.
          DATA(t360) = abap_true.
          IF t360 = abap_true.
            DATA t361 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t363 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t363.
            t362 = t363.
            DATA(t364) = t362.
            DATA(t365) = |event_parameter|.
            t364->load( ).
            APPEND t365 TO t364->items.
            t364->save( ).
            DATA(t366) = t362.
            t361 = t366.
            t359 = t361.
          ELSE.
            DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t367.
            t359 = t367.
          ENDIF.
          DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t368.
          t351 = NEW zcl_lnt_typed_identifier( i_token = t352 i_filename = t353 i_type_9913 = t354 i_meta = t359 i_value = t368 ).
          t350->load( ).
          APPEND t351 TO t350->items.
          t350->save( ).
          CONTINUE.
        ENDIF.
        DATA t369 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t369.
        DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t370.
        DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t371.
        DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t372.
        DATA t373 TYPE REF TO zif_lnt_event_definition.
        DATA(t374) = t311.
        t373 = t374.
        DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t375.
        DATA(t376) = VALUE abap_bool( ).
        DATA(t377) = t373.
        IF t377 IS INITIAL.
          t376 = abap_true.
        ENDIF.
        IF t376 = abap_true.
          DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t378.
          t375 = t378.
        ELSE.
          DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t380 TYPE REF TO zif_lnt_event_definition.
          DATA(t381) = t373.
          t380 = t381.
          t379 = t380->get_parameters( ).
          t375 = t379.
        ENDIF.
        t372 = t375.
        t371 = t372.
        DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t382.
        DATA(t383) = VALUE abap_bool( ).
        DATA(t384) = t371.
        IF t384 IS INITIAL.
          t383 = abap_true.
        ENDIF.
        IF t383 = abap_true.
          DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t385.
          t382 = t385.
        ELSE.
          DATA t386 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t386.
          DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t389) = t371.
          t388 = t389.
          t387 = t388.
          DATA t390 TYPE i.
          DATA t391 TYPE i.
          DATA(t392) = t387.
          t392->load( ).
          t391 = lines( t392->items ).
          t390 = t391.
          DATA t393 TYPE i.
          DATA(t394) = 0.
          t393 = t394.
          DATA t395 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t396 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t396.
          t395 = t396.
          DO.
            DATA t397 TYPE abap_bool.
            DATA(t398) = t393.
            DATA(t399) = t390.
            t397 = xsdbool( t398 < t399 ).
            IF t397 = abap_false.
              EXIT.
            ENDIF.
            DATA t400 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t400.
            DATA t401 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t401.
            DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t402.
            DATA(t403) = t387.
            DATA(t404) = t393.
            DATA t405 TYPE REF TO object.
            t405 = t403->get( p0 = t404 ).
            DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t406.
            CLEAR t402.
            IF t405 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t406 ?= t405.
              DATA t407 TYPE REF TO object.
              t407 = t406->as_ref( ).
              t402 ?= t407.
            ELSE.
              t402 ?= t405.
            ENDIF.
            t401 = t402.
            t400 = t401.
            DATA(t408) = VALUE abap_bool( ).
            DATA(t409) = VALUE string( ).
            DATA(t410) = VALUE string( ).
            DATA t411 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t412) = t400.
            t411 = t412.
            DATA(t413) = VALUE string( ).
            DATA t414 TYPE string.
            DATA t415 TYPE string.
            DATA t416 TYPE REF TO zcl_lnt_abstract_token.
            DATA t417 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t418) = t411.
            t417 = t418->token.
            t416 = t417.
            DATA t419 TYPE string.
            DATA(t420) = t416.
            t419 = t420->str.
            t415 = t419.
            t414 = t415.
            DATA(t421) = VALUE abap_bool( ).
            DATA(t422) = VALUE string( ).
            DATA(t423) = t414.
            DATA(t424) = 0.
            DATA(t425) = 1.
            DATA(t426) = strlen( t423 ).
            IF t424 < 0.
              t424 = t424 + t426.
              IF t424 < 0.
                t424 = 0.
              ENDIF.
            ENDIF.
            IF t424 > t426 OR t425 <= 0.
              CLEAR t422.
            ELSE.
              IF t425 > t426 - t424.
                t425 = t426 - t424.
              ENDIF.
              t422 = t423+t424(t425).
            ENDIF.
            DATA(t427) = |!|.
            t421 = xsdbool( t422 = t427 ).
            IF t421 = abap_true.
              DATA(t428) = VALUE string( ).
              DATA t429 TYPE string.
              DATA(t430) = t414.
              t429 = t430.
              DATA(t431) = VALUE string( ).
              DATA(t432) = t429.
              DATA(t433) = 1.
              DATA t434 TYPE i.
              DATA(t435) = t429.
              DATA(t436) = strlen( t435 ).
              t434 = t436.
              DATA(t437) = strlen( t432 ).
              IF t433 < 0.
                t433 = t433 + t437.
                IF t433 < 0.
                  t433 = 0.
                ENDIF.
              ENDIF.
              IF t433 > t437 OR t434 <= 0.
                CLEAR t431.
              ELSE.
                IF t434 > t437 - t433.
                  t434 = t437 - t433.
                ENDIF.
                t431 = t432+t433(t434).
              ENDIF.
              t428 = t431.
              t414 = t428.
            ENDIF.
            DATA(t438) = t414.
            t413 = t438.
            t410 = t413.
            DATA(t439) = strlen( t410 ).
            t409 = t410.
            IF t409 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t409 TO UPPER CASE.
            ELSE.
              t409 = zlnt_runtime_uppe_91169605024d=>full( t409 ).
            ENDIF.
            DATA(t440) = t330.
            t408 = xsdbool( t409 = t440 ).
            IF t408 = abap_true.
              DATA t441 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t441.
              DATA(t442) = abap_true.
              IF t442 = abap_true.
                DATA(t443) = t400.
                t441 = t443.
              ELSE.
                DATA t444 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t444.
                t441 = t444.
              ENDIF.
              t395 = t441.
              EXIT.
            ENDIF.
            DATA t445 TYPE i.
            DATA(t446) = t393.
            DATA(t447) = 1.
            t445 = t446 + t447.
            t393 = t445.
          ENDDO.
          DATA(t448) = t395.
          t386 = t448.
          t382 = t386.
        ENDIF.
        t370 = t382.
        t369 = t370.
        DATA t449 TYPE abap_bool.
        DATA(t450) = t369.
        t449 = xsdbool( t450 IS BOUND ).
        IF t449 = abap_true.
          DATA(t451) = me->importing.
          DATA t452 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t452.
          DATA(t453) = t327.
          DATA(t454) = CONV string( me->filename ).
          DATA t455 TYPE REF TO zcl_lnt_abstract_type.
          DATA t456 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t457 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t458) = t369.
          t457 = t458.
          t456 = t457.
          DATA t459 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t460) = t456.
          t459 = t460->type_cba0.
          t455 = t459.
          DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t461.
          DATA(t462) = abap_true.
          IF t462 = abap_true.
            DATA t463 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t464 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t465 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t465.
            t464 = t465.
            DATA(t466) = t464.
            DATA(t467) = |event_parameter|.
            t466->load( ).
            APPEND t467 TO t466->items.
            t466->save( ).
            DATA(t468) = t464.
            t463 = t468.
            t461 = t463.
          ELSE.
            DATA t469 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t469.
            t461 = t469.
          ENDIF.
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t470.
          t452 = NEW zcl_lnt_typed_identifier( i_token = t453 i_filename = t454 i_type_9913 = t455 i_meta = t461 i_value = t470 ).
          t451->load( ).
          APPEND t452 TO t451->items.
          t451->save( ).
        ELSE.
          DATA(t471) = t207.
          IF t471 = abap_true.
            DATA(t472) = me->importing.
            DATA t473 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t473.
            DATA(t474) = t327.
            DATA(t475) = CONV string( me->filename ).
            DATA t476 TYPE REF TO zcl_lnt_void_type.
            DATA(t477) = t24.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t478.
            t476 = zcl_lnt_void_type=>get_db65( i_voided = t477 i_qualified_name = t478 ).
            DATA t479 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t479.
            DATA(t480) = abap_true.
            IF t480 = abap_true.
              DATA t481 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t483.
              t482 = t483.
              DATA(t484) = t482.
              DATA(t485) = |event_parameter|.
              t484->load( ).
              APPEND t485 TO t484->items.
              t484->save( ).
              DATA(t486) = t482.
              t481 = t486.
              t479 = t481.
            ELSE.
              DATA t487 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t487.
              t479 = t487.
            ENDIF.
            DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t488.
            t473 = NEW zcl_lnt_typed_identifier( i_token = t474 i_filename = t475 i_type_9913 = t476 i_meta = t479 i_value = t488 ).
            t472->load( ).
            APPEND t473 TO t472->items.
            t472->save( ).
          ELSE.
            DATA t489 TYPE REF TO zcl_lnt_unknown_type.
            DATA t490 TYPE REF TO zcl_lnt_unknown_type.
            DATA t491 TYPE string.
            DATA t492 TYPE string.
            DATA(t493) = |handler parameter not found "|.
            DATA(t494) = t330.
            DATA(t495) = strlen( t493 ).
            t492 = |{ t493 }{ t494 }|.
            DATA(t496) = |"|.
            DATA(t497) = strlen( t492 ).
            t491 = |{ t492 }{ t496 }|.
            DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t498.
            t490 = NEW zcl_lnt_unknown_type( i_error = t491 i_qualified_name = t498 ).
            t489 = t490.
            DATA(t499) = me->importing.
            DATA t500 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t500.
            DATA(t501) = t327.
            DATA(t502) = CONV string( me->filename ).
            DATA(t503) = t489.
            DATA t504 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t504.
            DATA(t505) = abap_true.
            IF t505 = abap_true.
              DATA t506 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t508 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t508.
              t507 = t508.
              DATA(t509) = t507.
              DATA(t510) = |event_parameter|.
              t509->load( ).
              APPEND t510 TO t509->items.
              t509->save( ).
              DATA(t511) = t507.
              t506 = t511.
              t504 = t506.
            ELSE.
              DATA t512 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t512.
              t504 = t512.
            ENDIF.
            DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t513.
            t500 = NEW zcl_lnt_typed_identifier( i_token = t501 i_filename = t502 i_type_9913 = t503 i_meta = t504 i_value = t513 ).
            t499->load( ).
            APPEND t500 TO t499->items.
            t499->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
      RETURN.
    ENDIF.
    DATA t514 TYPE REF TO zcl_lnt_expression_node.
    DATA t515 TYPE REF TO zcl_lnt_expression_node.
    DATA(t516) = t1.
    DATA(t517) = zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57.
    t515 = t516->find_first_expression( i_type_9913 = t517 ).
    t514 = t515.
    DATA t518 TYPE abap_bool.
    DATA(t519) = t514.
    t518 = xsdbool( t519 IS BOUND ).
    IF t518 = abap_true.
      DATA(t520) = me->importing.
      DATA t521 TYPE REF TO zcl_lnt_expression_node.
      DATA(t522) = t514.
      t521 = t522.
      DATA(t523) = t2.
      DATA t524 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t525 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t526 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t526.
      t525 = t526.
      DATA(t527) = t525.
      DATA(t528) = |importing|.
      t527->load( ).
      APPEND t528 TO t527->items.
      t527->save( ).
      DATA(t529) = t525.
      t524 = t529.
      DATA(t530) = t4.
      me->add_51c1( i_target_5f8a = t520 i_source_75cf = t521 i_input_967e = t523 i_meta = t524 i_abstract_method = t530 ).
      DATA t531 TYPE abap_bool.
      DATA t532 TYPE REF TO zcl_lnt_abstract_token.
      DATA t533 TYPE REF TO zcl_lnt_expression_node.
      DATA(t534) = t514.
      t533 = t534.
      DATA(t535) = |PREFERRED|.
      t532 = t533->find_direct_token_by_text( i_text = t535 ).
      t531 = xsdbool( t532 IS BOUND ).
      IF t531 = abap_true.
        DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t536.
        DATA(t537) = abap_true.
        IF t537 = abap_true.
          DATA t538 TYPE string.
          DATA t539 TYPE string.
          DATA t540 TYPE REF TO zcl_lnt_abstract_token.
          DATA t541 TYPE REF TO zcl_lnt_abstract_token.
          DATA t542 TYPE REF TO zcl_lnt_expression_node.
          DATA(t543) = t514.
          t542 = t543.
          t541 = t542->get_last_token( ).
          t540 = t541.
          DATA t544 TYPE string.
          DATA(t545) = t540.
          t544 = t545->str.
          t539 = t544.
          DATA(t546) = strlen( t539 ).
          t538 = t539.
          IF t538 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t538 TO UPPER CASE.
          ELSE.
            t538 = zlnt_runtime_uppe_91169605024d=>full( t538 ).
          ENDIF.
          DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t547->has = abap_true.
          t547->value = t538.
          t536 = t547.
        ELSE.
          DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t548.
          t536 = t548.
        ENDIF.
        me->preferred = t536.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
        DATA(t549) = VALUE abap_bool( ).
        DATA t550 TYPE string.
        DATA(t551) = me->preferred.
        t550 = t551->value.
        DATA(t552) = |!|.
        DATA(t553) = strlen( t550 ).
        DATA t554 TYPE i.
        DATA(t555) = VALUE i( ).
        DATA(t556) = VALUE string( ).
        t554 = strlen( t552 ).
        IF t554 = 0.
          t549 = abap_true.
        ELSEIF t554 <= t553.
          t555 = 0.
          t556 = t550+t555(t554).
          IF t556 = t552.
            t549 = abap_true.
          ENDIF.
        ENDIF.
        IF t549 = abap_true.
          DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t557.
          DATA(t558) = abap_true.
          IF t558 = abap_true.
            DATA(t559) = VALUE string( ).
            DATA t560 TYPE string.
            DATA t561 TYPE string.
            DATA(t562) = me->preferred.
            t561 = t562->value.
            t560 = t561.
            DATA(t563) = VALUE string( ).
            DATA(t564) = t560.
            DATA(t565) = 1.
            DATA t566 TYPE i.
            DATA(t567) = t560.
            DATA(t568) = strlen( t567 ).
            t566 = t568.
            DATA(t569) = strlen( t564 ).
            t565 = COND i( WHEN t565 < 0 THEN 0 WHEN t565 > t569 THEN t569 ELSE t565 ).
            t566 = COND i( WHEN t566 < 0 THEN 0 WHEN t566 > t569 THEN t569 ELSE t566 ).
            IF t565 > t566.
              t569 = t565.
              t565 = t566.
              t566 = t569.
            ENDIF.
            t569 = t566 - t565.
            t563 = t564+t565(t569).
            t559 = t563.
            DATA(t570) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t570->has = abap_true.
            t570->value = t559.
            t557 = t570.
          ELSE.
            DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t571.
            t557 = t571.
          ENDIF.
          me->preferred = t557.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t572 TYPE REF TO zcl_lnt_expression_node.
    DATA t573 TYPE REF TO zcl_lnt_expression_node.
    DATA(t574) = t1.
    DATA(t575) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
    t573 = t574->find_first_expression( i_type_9913 = t575 ).
    t572 = t573.
    DATA t576 TYPE abap_bool.
    DATA(t577) = t572.
    t576 = xsdbool( t577 IS BOUND ).
    IF t576 = abap_true.
      DATA(t578) = me->exporting.
      DATA t579 TYPE REF TO zcl_lnt_expression_node.
      DATA(t580) = t572.
      t579 = t580.
      DATA(t581) = t2.
      DATA t582 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t583 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t584 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t584.
      t583 = t584.
      DATA(t585) = t583.
      DATA(t586) = |exporting|.
      t585->load( ).
      APPEND t586 TO t585->items.
      t585->save( ).
      DATA(t587) = t583.
      t582 = t587.
      DATA(t588) = t4.
      me->add_51c1( i_target_5f8a = t578 i_source_75cf = t579 i_input_967e = t581 i_meta = t582 i_abstract_method = t588 ).
    ENDIF.
    DATA t589 TYPE REF TO zcl_lnt_expression_node.
    DATA t590 TYPE REF TO zcl_lnt_expression_node.
    DATA(t591) = t1.
    DATA(t592) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
    t590 = t591->find_first_expression( i_type_9913 = t592 ).
    t589 = t590.
    DATA t593 TYPE abap_bool.
    DATA(t594) = t589.
    t593 = xsdbool( t594 IS BOUND ).
    IF t593 = abap_true.
      DATA(t595) = me->changing.
      DATA t596 TYPE REF TO zcl_lnt_expression_node.
      DATA(t597) = t589.
      t596 = t597.
      DATA(t598) = t2.
      DATA t599 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t600 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t601 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t601.
      t600 = t601.
      DATA(t602) = t600.
      DATA(t603) = |changing|.
      t602->load( ).
      APPEND t603 TO t602->items.
      t602->save( ).
      DATA(t604) = t600.
      t599 = t604.
      DATA(t605) = t4.
      me->add_51c1( i_target_5f8a = t595 i_source_75cf = t596 i_input_967e = t598 i_meta = t599 i_abstract_method = t605 ).
    ENDIF.
    DATA t606 TYPE REF TO zcl_lnt_expression_node.
    DATA t607 TYPE REF TO zcl_lnt_expression_node.
    DATA(t608) = t1.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
    t607 = t608->find_first_expression( i_type_9913 = t609 ).
    t606 = t607.
    DATA t610 TYPE abap_bool.
    DATA(t611) = t606.
    t610 = xsdbool( t611 IS BOUND ).
    IF t610 = abap_true.
      DATA t612 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t612.
      DATA(t613) = abap_true.
      IF t613 = abap_true.
        DATA t614 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t615 TYPE REF TO zcl_lnt_expression_node.
        DATA(t616) = t606.
        t615 = t616.
        DATA(t617) = t2.
        DATA t618 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t619 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t620 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t620.
        t619 = t620.
        DATA(t621) = t619.
        DATA(t622) = |returning|.
        t621->load( ).
        APPEND t622 TO t621->items.
        t621->save( ).
        DATA(t623) = t619.
        t618 = t623.
        t614 = zcl_lnt_sy_mthd_df_rtrnng=>run_syntax( i_node = t615 i_input_967e = t617 i_meta = t618 ).
        t612 = t614.
      ELSE.
        DATA t624 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t624.
        t612 = t624.
      ENDIF.
      me->returning = t612.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `returning`.
    ENDIF.
    DATA(t625) = t1.
    DATA(t626) = t2.
    DATA(t627) = t3.
    me->workaround_rap( i_node = t625 i_input_967e = t626 i_parent_name = t627 ).
  ENDMETHOD.

  METHOD check_duplicate_names.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t1.
    DATA(t2) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t1 = t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_all( ) ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        CLEAR t8.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE string( ).
      DATA(t10) = VALUE string( ).
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t12.
      DATA(t13) = t4.
      t12 = t13.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA(t19) = t12.
      t18 = t19->token.
      t17 = t18.
      DATA(t20) = VALUE string( ).
      DATA(t21) = t17.
      t20 = t21->str.
      t16 = t20.
      t15 = t16.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE string( ).
      DATA(t24) = t15.
      DATA(t25) = 0.
      DATA(t26) = 1.
      DATA(t27) = strlen( t24 ).
      IF t25 < 0.
        t25 = t25 + t27.
        IF t25 < 0.
          t25 = 0.
        ENDIF.
      ENDIF.
      IF t25 > t27 OR t26 <= 0.
        CLEAR t23.
      ELSE.
        IF t26 > t27 - t25.
          t26 = t27 - t25.
        ENDIF.
        t23 = t24+t25(t26).
      ENDIF.
      DATA(t28) = |!|.
      t22 = xsdbool( t23 = t28 ).
      IF t22 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA(t30) = VALUE string( ).
        DATA(t31) = t15.
        t30 = t31.
        DATA(t32) = VALUE string( ).
        DATA(t33) = t30.
        DATA(t34) = 1.
        DATA(t35) = VALUE i( ).
        DATA(t36) = t30.
        DATA(t37) = strlen( t36 ).
        t35 = t37.
        DATA(t38) = strlen( t33 ).
        IF t34 < 0.
          t34 = t34 + t38.
          IF t34 < 0.
            t34 = 0.
          ENDIF.
        ENDIF.
        IF t34 > t38 OR t35 <= 0.
          CLEAR t32.
        ELSE.
          IF t35 > t38 - t34.
            t35 = t38 - t34.
          ENDIF.
          t32 = t33+t34(t35).
        ENDIF.
        t29 = t32.
        t15 = t29.
      ENDIF.
      DATA(t39) = t15.
      t14 = t39.
      t11 = t14.
      DATA(t40) = strlen( t11 ).
      t10 = t11.
      IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t10 TO UPPER CASE.
      ELSE.
        t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
      ENDIF.
      t9 = t10.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t1.
      DATA(t43) = t9.
      t41 = t42->has( p0 = t43 ).
      IF t41 = abap_true.
        DATA t44 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA(t47) = abap_true.
        IF t47 = abap_true.
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE string( ).
          DATA(t50) = |Method parameter "|.
          DATA(t51) = t9.
          DATA(t52) = strlen( t50 ).
          t49 = |{ t50 }{ t51 }|.
          DATA(t53) = |" already defined|.
          DATA(t54) = strlen( t49 ).
          t48 = |{ t49 }{ t53 }|.
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t48.
          t46 = t55.
        ELSE.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t46 = t56.
        ENDIF.
        t45 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t46 ).
        t44 = NEW #( ).
        t44->payload = t45.
        CLEAR t44->source_value.
        IF t45 IS BOUND.
          DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t57.
          DATA t58 TYPE REF TO object.
          CLEAR t58.
          CLEAR t57.
          t58 = t45.
          TRY.
              t44->source_value ?= t58.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t44->source_value IS NOT BOUND.
            TRY.
                t57 ?= t45.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t57 IS BOUND.
              t44->source_value = t57->source( ).
            ENDIF.
            IF t44->source_value IS NOT BOUND.
              CREATE OBJECT t44->source_value.
              t44->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t44->source_value->oval = t45.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t44.
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t59.
      DATA(t60) = t1.
      DATA(t61) = t9.
      t59 = t60->add( p0 = t61 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_name_lengths.
    DATA(t1) = i_input_967e.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_all( ) ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE i( ).
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t12) = t3.
      t11 = t12.
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t18) = t11.
      t17 = t18->token.
      t16 = t17.
      DATA t19 TYPE string.
      DATA(t20) = t16.
      t19 = t20->str.
      t15 = t19.
      t14 = t15.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE string( ).
      DATA(t23) = t14.
      DATA(t24) = 0.
      DATA(t25) = 1.
      DATA(t26) = strlen( t23 ).
      IF t24 < 0.
        t24 = t24 + t26.
        IF t24 < 0.
          t24 = 0.
        ENDIF.
      ENDIF.
      IF t24 > t26 OR t25 <= 0.
        CLEAR t22.
      ELSE.
        IF t25 > t26 - t24.
          t25 = t26 - t24.
        ENDIF.
        t22 = t23+t24(t25).
      ENDIF.
      DATA(t27) = |!|.
      t21 = xsdbool( t22 = t27 ).
      IF t21 = abap_true.
        DATA(t28) = VALUE string( ).
        DATA t29 TYPE string.
        DATA(t30) = t14.
        t29 = t30.
        DATA(t31) = VALUE string( ).
        DATA(t32) = t29.
        DATA(t33) = 1.
        DATA t34 TYPE i.
        DATA(t35) = t29.
        DATA(t36) = strlen( t35 ).
        t34 = t36.
        DATA(t37) = strlen( t32 ).
        IF t33 < 0.
          t33 = t33 + t37.
          IF t33 < 0.
            t33 = 0.
          ENDIF.
        ENDIF.
        IF t33 > t37 OR t34 <= 0.
          CLEAR t31.
        ELSE.
          IF t34 > t37 - t33.
            t34 = t37 - t33.
          ENDIF.
          t31 = t32+t33(t34).
        ENDIF.
        t28 = t31.
        t14 = t28.
      ENDIF.
      DATA(t38) = t14.
      t13 = t38.
      t10 = t13.
      DATA(t39) = strlen( t10 ).
      t9 = t39.
      DATA(t40) = 30.
      t8 = xsdbool( t9 > t40 ).
      IF t8 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t42) = t1.
        t41 = t42->issues.
        DATA t43 TYPE REF TO zcl_lnt_issue.
        DATA(t44) = t1.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t47) = t3.
        t46 = t47.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t49) = t46.
        t48 = t49->token.
        t45 = t48.
        DATA(t50) = |Method parameter name longer than 30 characters|.
        DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t51.
        t43 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t44 i_token = t45 i_message_26cb = t50 i_fix = t51 ).
        t41->load( ).
        APPEND t43 TO t41->items.
        t41->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD workaround_rap.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_parent_name.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = t1.
    DATA(t7) = |RESULT|.
    t5 = t6->find_expression_after_token( i_text = t7 ).
    t4 = t5.
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = t1.
    t10 = t11->concat_tokens( ).
    DATA(t12) = strlen( t10 ).
    t9 = t10.
    IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t9 TO UPPER CASE.
    ELSE.
      t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t16.
    DATA(t17) = t1.
    DATA(t18) = |IMPORTING|.
    t16 = t17->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t15.
    t20 = xsdbool( t21 IS BOUND ).
    IF t20 = abap_true.
      DATA(t22) = t15.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE i( ).
      DATA(t26) = t8.
      DATA(t27) = | IMPORTING REQUEST |.
      DATA(t28) = strlen( t26 ).
      IF t27 IS INITIAL.
        t25 = 0.
      ELSE.
        FIND t27 IN t26 MATCH OFFSET t25.
        IF sy-subrc <> 0.
          t25 = -1.
        ENDIF.
      ENDIF.
      DATA(t29) = 0.
      t24 = xsdbool( t25 >= t29 ).
      IF t24 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t30.
        DATA(t31) = t1.
        DATA(t32) = |REQUEST|.
        t30 = t31->find_expression_after_token( i_text = t32 ).
        t23 = t30.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        t23 = t33.
      ENDIF.
      t19 = t23.
    ENDIF.
    t14 = t19.
    t13 = t14.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t13.
    t34 = xsdbool( t35 IS BOUND ).
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE i( ).
      DATA(t40) = t8.
      DATA(t41) = | FOR LOCK |.
      DATA(t42) = strlen( t40 ).
      IF t41 IS INITIAL.
        t39 = 0.
      ELSE.
        FIND t41 IN t40 MATCH OFFSET t39.
        IF sy-subrc <> 0.
          t39 = -1.
        ENDIF.
      ENDIF.
      DATA(t43) = 0.
      t38 = xsdbool( t39 >= t43 ).
      IF t38 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t46.
        DATA(t47) = t1.
        DATA(t48) = |LOCK|.
        t46 = t47->find_expression_after_token( i_text = t48 ).
        t45 = t46.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t45.
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t49 = t52.
        ELSE.
          DATA(t53) = VALUE string( ).
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t54.
          DATA(t55) = t45.
          t54 = t55.
          t53 = t54->concat_tokens( ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t53.
          t49 = t56.
        ENDIF.
        t44 = t49.
        t37 = t44.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t37 = t57.
      ENDIF.
      t36 = t37.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA(t59) = t1.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
      t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t58->load( ).
        IF t63 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t58->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = t61.
          t67 = t69.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t70.
          t67 = t70.
        ENDIF.
        DATA(t71) = t4.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        CLEAR t72.
        IF t67 IS BOUND.
          CLEAR t72.
          IF t67 IS BOUND.
            DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t74.
            DATA t75 TYPE REF TO object.
            CLEAR t75.
            CLEAR t74.
            t75 = t67.
            TRY.
                t72 ?= t75.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t72 IS NOT BOUND.
              TRY.
                  t74 ?= t67.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t74 IS BOUND.
                t72 = t74->source( ).
              ENDIF.
              IF t72 IS NOT BOUND.
                CREATE OBJECT t72.
                t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t72->oval = t67.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t73.
        IF t71 IS BOUND.
          CLEAR t73.
          IF t71 IS BOUND.
            DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t76.
            DATA t77 TYPE REF TO object.
            CLEAR t77.
            CLEAR t76.
            t77 = t71.
            TRY.
                t73 ?= t77.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t73 IS NOT BOUND.
              TRY.
                  t76 ?= t71.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t76 IS BOUND.
                t73 = t76->source( ).
              ENDIF.
              IF t73 IS NOT BOUND.
                CREATE OBJECT t73.
                t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t73->oval = t71.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t72 IS BOUND.
          t66 = t72->strict_equals( t73 ).
        ELSE.
          t66 = xsdbool( t73 IS NOT BOUND ).
        ENDIF.
        IF t66 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t78 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t79.
        DATA(t80) = VALUE abap_bool( ).
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA(t82) = t36.
        t81 = t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        t83 = t84.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = t81.
        IF t86 IS INITIAL.
          t85 = abap_true.
        ELSEIF t86->has = abap_false.
          t85 = abap_true.
        ENDIF.
        t80 = t85.
        IF t80 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_void_type.
          CLEAR t87.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA(t90) = |RapMethodParameter|.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = t90.
            t88 = t91.
          ELSE.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            t88 = t92.
          ENDIF.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t87 = zcl_lnt_void_type=>get_db65( i_voided = t88 i_qualified_name = t93 ).
          t79 = t87.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_basic_types.
          CLEAR t95.
          DATA(t96) = t2.
          t95 = NEW zcl_lnt_basic_types( i_input_967e = t96 ).
          DATA(t97) = VALUE string( ).
          DATA(t98) = t36.
          t97 = t98->value.
          DATA t99 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t99.
          t94 = t95->rap_table_for( i_entity_name = t97 i_options = t99 ).
          t79 = t94.
        ENDIF.
        t78 = t79.
        DATA(t100) = me->importing.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t101.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        DATA(t103) = t61.
        t102 = t103->get_first_token( ).
        DATA(t104) = VALUE string( ).
        DATA(t105) = t2.
        t104 = t105->filename.
        DATA(t106) = t78.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t107.
        DATA(t108) = abap_true.
        IF t108 = abap_true.
          DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t109.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t110.
          DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t111.
          CREATE OBJECT t111.
          t110 = t111.
          DATA(t112) = t110.
          DATA(t113) = |importing|.
          t112->load( ).
          APPEND t113 TO t112->items.
          t112->save( ).
          DATA(t114) = t110.
          t109 = t114.
          t107 = t109.
        ELSE.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          t107 = t115.
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t101 = NEW zcl_lnt_typed_identifier( i_token = t102 i_filename = t104 i_type_9913 = t106 i_meta = t107 i_value = t116 ).
        t100->load( ).
        APPEND t101 TO t100->items.
        t100->save( ).
      ENDDO.
      DATA(t117) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      DATA(t119) = t36.
      t118 = t119.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      t120 = t121.
      DATA(t122) = VALUE abap_bool( ).
      DATA(t123) = VALUE abap_bool( ).
      DATA(t124) = t118.
      IF t124 IS INITIAL.
        t123 = abap_true.
      ELSEIF t124->has = abap_false.
        t123 = abap_true.
      ENDIF.
      t122 = xsdbool( t123 = abap_false ).
      t117 = t122.
      IF t117 = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t125.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        DATA(t128) = t13.
        t127 = t128.
        t126 = t127->get_first_token( ).
        t125 = t126.
        DATA(t129) = me->exporting.
        DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_lx_identifier.
        CLEAR t131.
        DATA t132 TYPE REF TO zcl_lnt_position.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t133.
        DATA(t134) = t125.
        t133 = t134.
        DATA t135 TYPE REF TO zcl_lnt_position.
        CLEAR t135.
        DATA(t136) = t133.
        t135 = t136->start.
        t132 = t135.
        DATA(t137) = |failed|.
        t131 = NEW zcl_lnt_lx_identifier( i_start = t132 i_str = t137 ).
        DATA(t138) = VALUE string( ).
        DATA(t139) = t2.
        t138 = t139->filename.
        DATA t140 TYPE REF TO zcl_lnt_void_type.
        CLEAR t140.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA(t143) = VALUE string( ).
          DATA(t144) = VALUE string( ).
          DATA(t145) = |RESPONSE FOR FAILED EARLY |.
          DATA(t146) = VALUE string( ).
          DATA(t147) = t36.
          t146 = t147->value.
          DATA(t148) = strlen( t145 ).
          t144 = |{ t145 }{ t146 }|.
          DATA(t149) = ||.
          DATA(t150) = strlen( t144 ).
          t143 = |{ t144 }{ t149 }|.
          DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t151->has = abap_true.
          t151->value = t143.
          t141 = t151.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          t141 = t152.
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        t140 = zcl_lnt_void_type=>get_db65( i_voided = t141 i_qualified_name = t153 ).
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t154.
        DATA(t155) = abap_true.
        IF t155 = abap_true.
          DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t158.
          CREATE OBJECT t158.
          t157 = t158.
          DATA(t159) = t157.
          DATA(t160) = |exporting|.
          t159->load( ).
          APPEND t160 TO t159->items.
          t159->save( ).
          DATA(t161) = t157.
          t156 = t161.
          t154 = t156.
        ELSE.
          DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t162.
          t154 = t162.
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        t130 = NEW zcl_lnt_typed_identifier( i_token = t131 i_filename = t138 i_type_9913 = t140 i_meta = t154 i_value = t163 ).
        t129->load( ).
        APPEND t130 TO t129->items.
        t129->save( ).
        DATA(t164) = me->exporting.
        DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t165.
        DATA t166 TYPE REF TO zcl_lnt_lx_identifier.
        CLEAR t166.
        DATA t167 TYPE REF TO zcl_lnt_position.
        CLEAR t167.
        DATA t168 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t168.
        DATA(t169) = t125.
        t168 = t169.
        DATA t170 TYPE REF TO zcl_lnt_position.
        CLEAR t170.
        DATA(t171) = t168.
        t170 = t171->start.
        t167 = t170.
        DATA(t172) = |reported|.
        t166 = NEW zcl_lnt_lx_identifier( i_start = t167 i_str = t172 ).
        DATA(t173) = VALUE string( ).
        DATA(t174) = t2.
        t173 = t174->filename.
        DATA t175 TYPE REF TO zcl_lnt_void_type.
        CLEAR t175.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t177) = abap_true.
        IF t177 = abap_true.
          DATA(t178) = VALUE string( ).
          DATA(t179) = VALUE string( ).
          DATA(t180) = |RESPONSE FOR REPORTED EARLY |.
          DATA(t181) = VALUE string( ).
          DATA(t182) = t36.
          t181 = t182->value.
          DATA(t183) = strlen( t180 ).
          t179 = |{ t180 }{ t181 }|.
          DATA(t184) = ||.
          DATA(t185) = strlen( t179 ).
          t178 = |{ t179 }{ t184 }|.
          DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t186->has = abap_true.
          t186->value = t178.
          t176 = t186.
        ELSE.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          t176 = t187.
        ENDIF.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t175 = zcl_lnt_void_type=>get_db65( i_voided = t176 i_qualified_name = t188 ).
        DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t189.
        DATA(t190) = abap_true.
        IF t190 = abap_true.
          DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t191.
          DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t192.
          DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t193.
          CREATE OBJECT t193.
          t192 = t193.
          DATA(t194) = t192.
          DATA(t195) = |exporting|.
          t194->load( ).
          APPEND t195 TO t194->items.
          t194->save( ).
          DATA(t196) = t192.
          t191 = t196.
          t189 = t191.
        ELSE.
          DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t197.
          t189 = t197.
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        t165 = NEW zcl_lnt_typed_identifier( i_token = t166 i_filename = t173 i_type_9913 = t175 i_meta = t189 i_value = t198 ).
        t164->load( ).
        APPEND t165 TO t164->items.
        t164->save( ).
      ELSE.
        DATA(t199) = VALUE abap_bool( ).
        DATA(t200) = VALUE abap_bool( ).
        DATA(t201) = VALUE abap_bool( ).
        DATA(t202) = VALUE abap_bool( ).
        DATA(t203) = VALUE abap_bool( ).
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE abap_bool( ).
        DATA(t209) = VALUE abap_bool( ).
        DATA(t210) = VALUE i( ).
        DATA(t211) = t8.
        DATA(t212) = | FOR VALIDATE |.
        DATA(t213) = strlen( t211 ).
        IF t212 IS INITIAL.
          t210 = 0.
        ELSE.
          FIND t212 IN t211 MATCH OFFSET t210.
          IF sy-subrc <> 0.
            t210 = -1.
          ENDIF.
        ENDIF.
        DATA(t214) = 0.
        t209 = xsdbool( t210 >= t214 ).
        t208 = t209.
        IF t209 = abap_false.
          DATA(t215) = VALUE abap_bool( ).
          DATA(t216) = VALUE i( ).
          DATA(t217) = t8.
          DATA(t218) = | FOR BEHAVIOR |.
          DATA(t219) = strlen( t217 ).
          IF t218 IS INITIAL.
            t216 = 0.
          ELSE.
            FIND t218 IN t217 MATCH OFFSET t216.
            IF sy-subrc <> 0.
              t216 = -1.
            ENDIF.
          ENDIF.
          DATA(t220) = 0.
          t215 = xsdbool( t216 >= t220 ).
          t208 = t215.
        ENDIF.
        t207 = t208.
        IF t208 = abap_false.
          DATA(t221) = VALUE abap_bool( ).
          DATA(t222) = VALUE i( ).
          DATA(t223) = t8.
          DATA(t224) = | FOR DETERMINE |.
          DATA(t225) = strlen( t223 ).
          IF t224 IS INITIAL.
            t222 = 0.
          ELSE.
            FIND t224 IN t223 MATCH OFFSET t222.
            IF sy-subrc <> 0.
              t222 = -1.
            ENDIF.
          ENDIF.
          DATA(t226) = 0.
          t221 = xsdbool( t222 >= t226 ).
          t207 = t221.
        ENDIF.
        t206 = t207.
        IF t207 = abap_false.
          DATA(t227) = VALUE abap_bool( ).
          DATA(t228) = VALUE i( ).
          DATA(t229) = t8.
          DATA(t230) = | FOR FEATURES |.
          DATA(t231) = strlen( t229 ).
          IF t230 IS INITIAL.
            t228 = 0.
          ELSE.
            FIND t230 IN t229 MATCH OFFSET t228.
            IF sy-subrc <> 0.
              t228 = -1.
            ENDIF.
          ENDIF.
          DATA(t232) = 0.
          t227 = xsdbool( t228 >= t232 ).
          t206 = t227.
        ENDIF.
        t205 = t206.
        IF t206 = abap_false.
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = VALUE i( ).
          DATA(t235) = t8.
          DATA(t236) = | FOR INSTANCE FEATURES |.
          DATA(t237) = strlen( t235 ).
          IF t236 IS INITIAL.
            t234 = 0.
          ELSE.
            FIND t236 IN t235 MATCH OFFSET t234.
            IF sy-subrc <> 0.
              t234 = -1.
            ENDIF.
          ENDIF.
          DATA(t238) = 0.
          t233 = xsdbool( t234 >= t238 ).
          t205 = t233.
        ENDIF.
        t204 = t205.
        IF t205 = abap_false.
          DATA(t239) = VALUE abap_bool( ).
          DATA(t240) = VALUE i( ).
          DATA(t241) = t8.
          DATA(t242) = | FOR GLOBAL AUTHORIZATION |.
          DATA(t243) = strlen( t241 ).
          IF t242 IS INITIAL.
            t240 = 0.
          ELSE.
            FIND t242 IN t241 MATCH OFFSET t240.
            IF sy-subrc <> 0.
              t240 = -1.
            ENDIF.
          ENDIF.
          DATA(t244) = 0.
          t239 = xsdbool( t240 >= t244 ).
          t204 = t239.
        ENDIF.
        t203 = t204.
        IF t204 = abap_false.
          DATA(t245) = VALUE abap_bool( ).
          DATA(t246) = VALUE i( ).
          DATA(t247) = t8.
          DATA(t248) = | FOR PRECHECK |.
          DATA(t249) = strlen( t247 ).
          IF t248 IS INITIAL.
            t246 = 0.
          ELSE.
            FIND t248 IN t247 MATCH OFFSET t246.
            IF sy-subrc <> 0.
              t246 = -1.
            ENDIF.
          ENDIF.
          DATA(t250) = 0.
          t245 = xsdbool( t246 >= t250 ).
          t203 = t245.
        ENDIF.
        t202 = t203.
        IF t203 = abap_false.
          DATA(t251) = VALUE abap_bool( ).
          DATA(t252) = VALUE i( ).
          DATA(t253) = t8.
          DATA(t254) = | FOR NUMBERING |.
          DATA(t255) = strlen( t253 ).
          IF t254 IS INITIAL.
            t252 = 0.
          ELSE.
            FIND t254 IN t253 MATCH OFFSET t252.
            IF sy-subrc <> 0.
              t252 = -1.
            ENDIF.
          ENDIF.
          DATA(t256) = 0.
          t251 = xsdbool( t252 >= t256 ).
          t202 = t251.
        ENDIF.
        t201 = t202.
        IF t202 = abap_false.
          DATA(t257) = VALUE abap_bool( ).
          DATA(t258) = VALUE i( ).
          DATA(t259) = t8.
          DATA(t260) = | FOR READ |.
          DATA(t261) = strlen( t259 ).
          IF t260 IS INITIAL.
            t258 = 0.
          ELSE.
            FIND t260 IN t259 MATCH OFFSET t258.
            IF sy-subrc <> 0.
              t258 = -1.
            ENDIF.
          ENDIF.
          DATA(t262) = 0.
          t257 = xsdbool( t258 >= t262 ).
          t201 = t257.
        ENDIF.
        t200 = t201.
        IF t201 = abap_false.
          DATA(t263) = VALUE abap_bool( ).
          DATA(t264) = VALUE i( ).
          DATA(t265) = t8.
          DATA(t266) = | FOR VALIDATION |.
          DATA(t267) = strlen( t265 ).
          IF t266 IS INITIAL.
            t264 = 0.
          ELSE.
            FIND t266 IN t265 MATCH OFFSET t264.
            IF sy-subrc <> 0.
              t264 = -1.
            ENDIF.
          ENDIF.
          DATA(t268) = 0.
          t263 = xsdbool( t264 >= t268 ).
          t200 = t263.
        ENDIF.
        t199 = t200.
        IF t200 = abap_false.
          DATA(t269) = VALUE abap_bool( ).
          DATA(t270) = VALUE i( ).
          DATA(t271) = t8.
          DATA(t272) = | FOR MODIFY |.
          DATA(t273) = strlen( t271 ).
          IF t272 IS INITIAL.
            t270 = 0.
          ELSE.
            FIND t272 IN t271 MATCH OFFSET t270.
            IF sy-subrc <> 0.
              t270 = -1.
            ENDIF.
          ENDIF.
          DATA(t274) = 0.
          t269 = xsdbool( t270 >= t274 ).
          t199 = t269.
        ENDIF.
        IF t199 = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t275.
          DATA t276 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t276.
          DATA t277 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t277.
          DATA(t278) = t13.
          t277 = t278.
          t276 = t277->get_first_token( ).
          t275 = t276.
          DATA(t279) = me->exporting.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t280.
          DATA t281 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t281.
          DATA t282 TYPE REF TO zcl_lnt_position.
          CLEAR t282.
          DATA t283 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t283.
          DATA(t284) = t275.
          t283 = t284.
          DATA t285 TYPE REF TO zcl_lnt_position.
          CLEAR t285.
          DATA(t286) = t283.
          t285 = t286->start.
          t282 = t285.
          DATA(t287) = |failed|.
          t281 = NEW zcl_lnt_lx_identifier( i_start = t282 i_str = t287 ).
          DATA(t288) = VALUE string( ).
          DATA(t289) = t2.
          t288 = t289->filename.
          DATA t290 TYPE REF TO zcl_lnt_void_type.
          CLEAR t290.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          DATA(t292) = abap_true.
          IF t292 = abap_true.
            DATA(t293) = |RapMethodParameter|.
            DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t294->has = abap_true.
            t294->value = t293.
            t291 = t294.
          ELSE.
            DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t295.
            t291 = t295.
          ENDIF.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          t290 = zcl_lnt_void_type=>get_db65( i_voided = t291 i_qualified_name = t296 ).
          DATA t297 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t297.
          DATA(t298) = abap_true.
          IF t298 = abap_true.
            DATA t299 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t299.
            DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t300.
            DATA t301 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t301.
            CREATE OBJECT t301.
            t300 = t301.
            DATA(t302) = t300.
            DATA(t303) = |exporting|.
            t302->load( ).
            APPEND t303 TO t302->items.
            t302->save( ).
            DATA(t304) = t300.
            t299 = t304.
            t297 = t299.
          ELSE.
            DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t305.
            t297 = t305.
          ENDIF.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          t280 = NEW zcl_lnt_typed_identifier( i_token = t281 i_filename = t288 i_type_9913 = t290 i_meta = t297 i_value = t306 ).
          t279->load( ).
          APPEND t280 TO t279->items.
          t279->save( ).
          DATA(t307) = me->exporting.
          DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t308.
          DATA t309 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t309.
          DATA t310 TYPE REF TO zcl_lnt_position.
          CLEAR t310.
          DATA t311 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t311.
          DATA(t312) = t275.
          t311 = t312.
          DATA t313 TYPE REF TO zcl_lnt_position.
          CLEAR t313.
          DATA(t314) = t311.
          t313 = t314->start.
          t310 = t313.
          DATA(t315) = |mapped|.
          t309 = NEW zcl_lnt_lx_identifier( i_start = t310 i_str = t315 ).
          DATA(t316) = VALUE string( ).
          DATA(t317) = t2.
          t316 = t317->filename.
          DATA t318 TYPE REF TO zcl_lnt_void_type.
          CLEAR t318.
          DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t319.
          DATA(t320) = abap_true.
          IF t320 = abap_true.
            DATA(t321) = |RapMethodParameter|.
            DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t322->has = abap_true.
            t322->value = t321.
            t319 = t322.
          ELSE.
            DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t323.
            t319 = t323.
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t324.
          t318 = zcl_lnt_void_type=>get_db65( i_voided = t319 i_qualified_name = t324 ).
          DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t325.
          DATA(t326) = abap_true.
          IF t326 = abap_true.
            DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t327.
            DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t328.
            DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t329.
            CREATE OBJECT t329.
            t328 = t329.
            DATA(t330) = t328.
            DATA(t331) = |exporting|.
            t330->load( ).
            APPEND t331 TO t330->items.
            t330->save( ).
            DATA(t332) = t328.
            t327 = t332.
            t325 = t327.
          ELSE.
            DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t333.
            t325 = t333.
          ENDIF.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          t308 = NEW zcl_lnt_typed_identifier( i_token = t309 i_filename = t316 i_type_9913 = t318 i_meta = t325 i_value = t334 ).
          t307->load( ).
          APPEND t308 TO t307->items.
          t307->save( ).
          DATA(t335) = me->exporting.
          DATA t336 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t336.
          DATA t337 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t337.
          DATA t338 TYPE REF TO zcl_lnt_position.
          CLEAR t338.
          DATA t339 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t339.
          DATA(t340) = t275.
          t339 = t340.
          DATA t341 TYPE REF TO zcl_lnt_position.
          CLEAR t341.
          DATA(t342) = t339.
          t341 = t342->start.
          t338 = t341.
          DATA(t343) = |reported|.
          t337 = NEW zcl_lnt_lx_identifier( i_start = t338 i_str = t343 ).
          DATA(t344) = VALUE string( ).
          DATA(t345) = t2.
          t344 = t345->filename.
          DATA t346 TYPE REF TO zcl_lnt_void_type.
          CLEAR t346.
          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t347.
          DATA(t348) = abap_true.
          IF t348 = abap_true.
            DATA(t349) = |RapMethodParameter|.
            DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t350->has = abap_true.
            t350->value = t349.
            t347 = t350.
          ELSE.
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            t347 = t351.
          ENDIF.
          DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t352.
          t346 = zcl_lnt_void_type=>get_db65( i_voided = t347 i_qualified_name = t352 ).
          DATA t353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t353.
          DATA(t354) = abap_true.
          IF t354 = abap_true.
            DATA t355 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t355.
            DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t356.
            DATA t357 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t357.
            CREATE OBJECT t357.
            t356 = t357.
            DATA(t358) = t356.
            DATA(t359) = |exporting|.
            t358->load( ).
            APPEND t359 TO t358->items.
            t358->save( ).
            DATA(t360) = t356.
            t355 = t360.
            t353 = t355.
          ELSE.
            DATA t361 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t361.
            t353 = t361.
          ENDIF.
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t362.
          t336 = NEW zcl_lnt_typed_identifier( i_token = t337 i_filename = t344 i_type_9913 = t346 i_meta = t353 i_value = t362 ).
          t335->load( ).
          APPEND t336 TO t335->items.
          t335->save( ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t363) = VALUE abap_bool( ).
    DATA(t364) = t4.
    t363 = xsdbool( t364 IS BOUND ).
    IF t363 = abap_true.
      DATA t365 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t365.
      DATA t366 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t366.
      DATA t367 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t367.
      DATA(t368) = t4.
      t367 = t368.
      t366 = t367->get_first_token( ).
      t365 = t366.
      DATA(t369) = me->importing.
      DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t370.
      DATA(t371) = t365.
      DATA(t372) = VALUE string( ).
      DATA(t373) = t2.
      t372 = t373->filename.
      DATA t374 TYPE REF TO zcl_lnt_void_type.
      CLEAR t374.
      DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t375.
      DATA(t376) = abap_true.
      IF t376 = abap_true.
        DATA(t377) = |RapMethodParameter|.
        DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t378->has = abap_true.
        t378->value = t377.
        t375 = t378.
      ELSE.
        DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t379.
        t375 = t379.
      ENDIF.
      DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t380.
      t374 = zcl_lnt_void_type=>get_db65( i_voided = t375 i_qualified_name = t380 ).
      DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t381.
      DATA(t382) = abap_true.
      IF t382 = abap_true.
        DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t383.
        DATA t384 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t384.
        DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t385.
        CREATE OBJECT t385.
        t384 = t385.
        DATA(t386) = t384.
        DATA(t387) = |exporting|.
        t386->load( ).
        APPEND t387 TO t386->items.
        t386->save( ).
        DATA(t388) = t384.
        t383 = t388.
        t381 = t383.
      ELSE.
        DATA t389 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t389.
        t381 = t389.
      ENDIF.
      DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t390.
      t370 = NEW zcl_lnt_typed_identifier( i_token = t371 i_filename = t372 i_type_9913 = t374 i_meta = t381 i_value = t390 ).
      t369->load( ).
      APPEND t370 TO t369->items.
      t369->save( ).
    ENDIF.
    DATA(t391) = VALUE abap_bool( ).
    DATA(t392) = VALUE string( ).
    DATA(t393) = t3.
    DATA(t394) = strlen( t393 ).
    t392 = t393.
    IF t392 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t392 TO UPPER CASE.
    ELSE.
      t392 = zlnt_runtime_uppe_91169605024d=>full( t392 ).
    ENDIF.
    DATA(t395) = |CL_ABAP_BEHAVIOR_SAVER|.
    t391 = xsdbool( t392 = t395 ).
    IF t391 = abap_true.
      DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t396.
      DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t397.
      DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t398.
      DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t399.
      CREATE OBJECT t399.
      t398 = t399.
      DATA(t400) = me->changing.
      DATA t401 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t401.
      DATA t402 TYPE REF TO object.
      CLEAR t402.
      DATA(t403) = VALUE i( ).
      DO.
        t400->load( ).
        IF t403 >= lines( t400->items ).
          EXIT.
        ENDIF.
        CLEAR t402.
        READ TABLE t400->items INDEX t403 + 1 INTO t402.
        t403 = t403 + 1.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t404.
        CLEAR t401.
        IF t402 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t404 ?= t402.
          DATA t405 TYPE REF TO object.
          CLEAR t405.
          t405 = t404->as_ref( ).
          t401 ?= t405.
        ELSE.
          t401 ?= t402.
        ENDIF.
        DATA(t406) = t398.
        DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t407.
        DATA t408 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t408.
        DATA t409 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t409.
        DATA(t410) = t401.
        t409 = t410.
        DATA t411 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t411.
        DATA(t412) = t409.
        t411 = t412->token.
        t408 = t411.
        DATA(t413) = VALUE string( ).
        DATA(t414) = t2.
        t413 = t414->filename.
        DATA t415 TYPE REF TO zcl_lnt_void_type.
        CLEAR t415.
        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t416.
        DATA(t417) = abap_true.
        IF t417 = abap_true.
          DATA(t418) = |RapMethodParameter|.
          DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t419->has = abap_true.
          t419->value = t418.
          t416 = t419.
        ELSE.
          DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t420.
          t416 = t420.
        ENDIF.
        DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t421.
        t415 = zcl_lnt_void_type=>get_db65( i_voided = t416 i_qualified_name = t421 ).
        DATA t422 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t422.
        DATA(t423) = abap_true.
        IF t423 = abap_true.
          DATA t424 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t424.
          DATA t425 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t425.
          DATA(t426) = t401.
          t425 = t426.
          DATA t427 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t427.
          DATA(t428) = t425.
          t427 = t428->meta.
          t424 = t427.
          t422 = t424.
        ELSE.
          DATA t429 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t429.
          t422 = t429.
        ENDIF.
        DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t430.
        t407 = NEW zcl_lnt_typed_identifier( i_token = t408 i_filename = t413 i_type_9913 = t415 i_meta = t422 i_value = t430 ).
        t406->load( ).
        APPEND t407 TO t406->items.
        t406->save( ).
      ENDDO.
      DATA(t431) = t398.
      t397 = t431.
      t396 = t397.
      DO.
        DATA(t432) = VALUE abap_bool( ).
        DATA(t433) = VALUE i( ).
        DATA(t434) = me->changing.
        t434->load( ).
        t433 = lines( t434->items ).
        DATA(t435) = 0.
        t432 = xsdbool( t433 > t435 ).
        IF t432 = abap_false.
          EXIT.
        ENDIF.
        DATA t436 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t436.
        DATA(t437) = me->changing.
        DATA t438 TYPE REF TO object.
        CLEAR t438.
        t438 = t437->shift( ).
        DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t439.
        CLEAR t436.
        IF t438 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t439 ?= t438.
          DATA t440 TYPE REF TO object.
          CLEAR t440.
          t440 = t439->as_ref( ).
          t436 ?= t440.
        ELSE.
          t436 ?= t438.
        ENDIF.
      ENDDO.
      DATA(t441) = VALUE i( ).
      DATA(t442) = t396.
      DATA t443 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t443.
      DATA t444 TYPE REF TO object.
      CLEAR t444.
      DATA(t445) = VALUE i( ).
      DO.
        t442->load( ).
        IF t445 >= lines( t442->items ).
          EXIT.
        ENDIF.
        CLEAR t444.
        READ TABLE t442->items INDEX t445 + 1 INTO t444.
        t445 = t445 + 1.
        DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t446.
        CLEAR t443.
        IF t444 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t446 ?= t444.
          DATA t447 TYPE REF TO object.
          CLEAR t447.
          t447 = t446->as_ref( ).
          t443 ?= t447.
        ELSE.
          t443 ?= t444.
        ENDIF.
        DATA(t448) = me->changing.
        DATA(t449) = t443.
        t448->load( ).
        APPEND t449 TO t448->items.
        t448->save( ).
      ENDDO.
      DATA(t450) = VALUE i( ).
      DATA(t451) = me->changing.
      t451->load( ).
      t450 = lines( t451->items ).
      t441 = t450.
      DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t452.
      DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t453.
      DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t454.
      DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t455.
      CREATE OBJECT t455.
      t454 = t455.
      DATA(t456) = me->importing.
      DATA t457 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t457.
      DATA t458 TYPE REF TO object.
      CLEAR t458.
      DATA(t459) = VALUE i( ).
      DO.
        t456->load( ).
        IF t459 >= lines( t456->items ).
          EXIT.
        ENDIF.
        CLEAR t458.
        READ TABLE t456->items INDEX t459 + 1 INTO t458.
        t459 = t459 + 1.
        DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t460.
        CLEAR t457.
        IF t458 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t460 ?= t458.
          DATA t461 TYPE REF TO object.
          CLEAR t461.
          t461 = t460->as_ref( ).
          t457 ?= t461.
        ELSE.
          t457 ?= t458.
        ENDIF.
        DATA(t462) = t454.
        DATA t463 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t463.
        DATA t464 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t464.
        DATA t465 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t465.
        DATA(t466) = t457.
        t465 = t466.
        DATA t467 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t467.
        DATA(t468) = t465.
        t467 = t468->token.
        t464 = t467.
        DATA(t469) = VALUE string( ).
        DATA(t470) = t2.
        t469 = t470->filename.
        DATA t471 TYPE REF TO zcl_lnt_void_type.
        CLEAR t471.
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t472.
        DATA(t473) = abap_true.
        IF t473 = abap_true.
          DATA(t474) = |RapMethodParameter|.
          DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t475->has = abap_true.
          t475->value = t474.
          t472 = t475.
        ELSE.
          DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t476.
          t472 = t476.
        ENDIF.
        DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t477.
        t471 = zcl_lnt_void_type=>get_db65( i_voided = t472 i_qualified_name = t477 ).
        DATA t478 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t478.
        DATA(t479) = abap_true.
        IF t479 = abap_true.
          DATA t480 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t480.
          DATA t481 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t481.
          DATA(t482) = t457.
          t481 = t482.
          DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t483.
          DATA(t484) = t481.
          t483 = t484->meta.
          t480 = t483.
          t478 = t480.
        ELSE.
          DATA t485 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t485.
          t478 = t485.
        ENDIF.
        DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t486.
        t463 = NEW zcl_lnt_typed_identifier( i_token = t464 i_filename = t469 i_type_9913 = t471 i_meta = t478 i_value = t486 ).
        t462->load( ).
        APPEND t463 TO t462->items.
        t462->save( ).
      ENDDO.
      DATA(t487) = t454.
      t453 = t487.
      t452 = t453.
      DO.
        DATA(t488) = VALUE abap_bool( ).
        DATA(t489) = VALUE i( ).
        DATA(t490) = me->importing.
        t490->load( ).
        t489 = lines( t490->items ).
        DATA(t491) = 0.
        t488 = xsdbool( t489 > t491 ).
        IF t488 = abap_false.
          EXIT.
        ENDIF.
        DATA t492 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t492.
        DATA(t493) = me->importing.
        DATA t494 TYPE REF TO object.
        CLEAR t494.
        t494 = t493->shift( ).
        DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t495.
        CLEAR t492.
        IF t494 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t495 ?= t494.
          DATA t496 TYPE REF TO object.
          CLEAR t496.
          t496 = t495->as_ref( ).
          t492 ?= t496.
        ELSE.
          t492 ?= t494.
        ENDIF.
      ENDDO.
      DATA(t497) = VALUE i( ).
      DATA(t498) = t452.
      DATA t499 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t499.
      DATA t500 TYPE REF TO object.
      CLEAR t500.
      DATA(t501) = VALUE i( ).
      DO.
        t498->load( ).
        IF t501 >= lines( t498->items ).
          EXIT.
        ENDIF.
        CLEAR t500.
        READ TABLE t498->items INDEX t501 + 1 INTO t500.
        t501 = t501 + 1.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        CLEAR t499.
        IF t500 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t502 ?= t500.
          DATA t503 TYPE REF TO object.
          CLEAR t503.
          t503 = t502->as_ref( ).
          t499 ?= t503.
        ELSE.
          t499 ?= t500.
        ENDIF.
        DATA(t504) = me->importing.
        DATA(t505) = t499.
        t504->load( ).
        APPEND t505 TO t504->items.
        t504->save( ).
      ENDDO.
      DATA(t506) = VALUE i( ).
      DATA(t507) = me->importing.
      t507->load( ).
      t506 = lines( t507->items ).
      t497 = t506.
    ENDIF.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = i_target_5f8a.
    DATA(t2) = i_source_75cf.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_meta.
    DATA(t5) = i_abstract_method.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t2.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97.
    t6 = t7->find_all_expressions( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t6->load( ).
      IF t11 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t6->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t9.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t15 = t16->find_direct_expression( i_type_9913 = t17 ).
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = t14.
      t19 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t21 = t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t19.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ENDIF.
      t18 = t23.
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = t14.
      t29 = t30.
      t28 = t29.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      DATA t34 TYPE string.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t37) = t28.
      t36 = t37->get_first_token( ).
      t35 = t36.
      DATA t38 TYPE string.
      DATA(t39) = t35.
      t38 = t39->str.
      t34 = t38.
      DATA(t40) = strlen( t34 ).
      t33 = t34.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      DATA(t41) = |VALUE|.
      t32 = xsdbool( t33 = t41 ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t50 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t51) = t28.
        t50 = t51.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t53) = t50.
        t52 = t53->children.
        t49 = t52.
        t48 ?= t49.
        DATA(t54) = 1.
        DATA t55 TYPE REF TO object.
        t55 = t48->get( p0 = t54 ).
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t47.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t47 ?= t57.
        ELSE.
          t47 ?= t55.
        ENDIF.
        t46 = t47.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = t46.
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        IF t59 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t61.
          t58 = t61.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          DATA t63 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t64) = t46.
          t63 = t64.
          t62 = t63->get_first_token( ).
          t58 = t62.
        ENDIF.
        t45 = t58.
        t44 = t45.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = t44.
        IF t67 IS INITIAL.
          t66 = abap_true.
        ENDIF.
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t65 = t68.
        ELSE.
          DATA t69 TYPE string.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t72) = t44.
          t71 = t72.
          t70 = t71.
          DATA t73 TYPE string.
          DATA(t74) = t70.
          t73 = t74->str.
          t69 = t73.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t69.
          t65 = t75.
        ENDIF.
        t43 = t65.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA(t78) = |(|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t78.
          t76 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t76 = t80.
        ENDIF.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE abap_bool( ).
        IF t43 IS BOUND.
          t81 = t43->has.
        ENDIF.
        IF t76 IS BOUND.
          t82 = t76->has.
        ENDIF.
        IF t81 = t82.
          IF t81 = abap_false.
            t42 = abap_true.
          ELSEIF t43->value = t76->value.
            t42 = abap_true.
          ENDIF.
        ENDIF.
        t31 = t42.
      ENDIF.
      t27 = t31.
      IF t27 = abap_true.
        DATA(t83) = t25.
        DATA(t84) = |pass_by_value|.
        t83->load( ).
        APPEND t84 TO t83->items.
        t83->save( ).
      ELSE.
        DATA t85 TYPE abap_bool.
        DATA(t86) = t4.
        DATA(t87) = |importing|.
        t85 = t86->includes( p0 = t87 ).
        IF t85 = abap_true.
          DATA(t88) = t25.
          DATA(t89) = |read_only|.
          t88->load( ).
          APPEND t89 TO t88->items.
          t88->save( ).
        ENDIF.
      ENDIF.
      DATA t90 TYPE abap_bool.
      DATA(t91) = t5.
      DATA(t92) = abap_true.
      t90 = xsdbool( t91 = t92 ).
      IF t90 = abap_true.
        DATA(t93) = t25.
        DATA(t94) = |abstract|.
        t93->load( ).
        APPEND t94 TO t93->items.
        t93->save( ).
      ENDIF.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      DATA(t98) = t14.
      t97 = t98.
      DATA(t99) = t3.
      DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t102.
      t101 = t102.
      DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t105) = t101.
      DATA(t106) = t4.
      t104 = t105->concat( p0 = t106 ).
      t103 = t104.
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t109) = t103.
      DATA(t110) = t25.
      t108 = t109->concat( p0 = t110 ).
      t107 = t108.
      DATA(t111) = t107.
      t100 = t111.
      t96 = zcl_lnt_sy_method_param=>run_syntax( i_node = t97 i_input_967e = t99 i_meta = t100 ).
      t95 = t96.
      DATA t112 TYPE REF TO zcl_lnt_current_scope.
      DATA t113 TYPE REF TO zcl_lnt_current_scope.
      DATA(t114) = t3.
      t113 = t114->scope.
      t112 = t113.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t115.
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t116.
      DATA(t117) = abap_true.
      IF t117 = abap_true.
        DATA(t118) = t95.
        t116 = t118.
      ELSE.
        DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t119.
        t116 = t119.
      ENDIF.
      t115 = t116.
      DATA(t120) = VALUE abap_bool( ).
      DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t122) = t115.
      t121 = t122.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      t123 = t124.
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = t121.
      IF t126 IS INITIAL.
        t125 = abap_true.
      ENDIF.
      t120 = t125.
      IF t120 = abap_true.
      ELSE.
        DATA(t127) = t112.
        DATA(t128) = VALUE string( ).
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t131) = t115.
        t130 = t131.
        t129 = t130.
        DATA(t132) = VALUE string( ).
        DATA t133 TYPE string.
        DATA t134 TYPE string.
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t137) = t129.
        t136 = t137->token.
        t135 = t136.
        DATA t138 TYPE string.
        DATA(t139) = t135.
        t138 = t139->str.
        t134 = t138.
        t133 = t134.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE string( ).
        DATA(t142) = t133.
        DATA(t143) = 0.
        DATA(t144) = 1.
        DATA(t145) = strlen( t142 ).
        IF t143 < 0.
          t143 = t143 + t145.
          IF t143 < 0.
            t143 = 0.
          ENDIF.
        ENDIF.
        IF t143 > t145 OR t144 <= 0.
          CLEAR t141.
        ELSE.
          IF t144 > t145 - t143.
            t144 = t145 - t143.
          ENDIF.
          t141 = t142+t143(t144).
        ENDIF.
        DATA(t146) = |!|.
        t140 = xsdbool( t141 = t146 ).
        IF t140 = abap_true.
          DATA(t147) = VALUE string( ).
          DATA t148 TYPE string.
          DATA(t149) = t133.
          t148 = t149.
          DATA(t150) = VALUE string( ).
          DATA(t151) = t148.
          DATA(t152) = 1.
          DATA t153 TYPE i.
          DATA(t154) = t148.
          DATA(t155) = strlen( t154 ).
          t153 = t155.
          DATA(t156) = strlen( t151 ).
          IF t152 < 0.
            t152 = t152 + t156.
            IF t152 < 0.
              t152 = 0.
            ENDIF.
          ENDIF.
          IF t152 > t156 OR t153 <= 0.
            CLEAR t150.
          ELSE.
            IF t153 > t156 - t152.
              t153 = t156 - t152.
            ENDIF.
            t150 = t151+t152(t153).
          ENDIF.
          t147 = t150.
          t133 = t147.
        ENDIF.
        DATA(t157) = t133.
        t132 = t157.
        t128 = t132.
        DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t159) = t115.
        t158 = t159.
        t127->add_named_identifier( i_name = t128 i_identifier = t158 ).
      ENDIF.
      DATA(t160) = t1.
      DATA(t161) = t95.
      t160->load( ).
      APPEND t161 TO t160->items.
      t160->save( ).
      DATA t162 TYPE abap_bool.
      DATA t163 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t164) = t9.
      DATA(t165) = |OPTIONAL|.
      t163 = t164->find_direct_token_by_text( i_text = t165 ).
      t162 = xsdbool( t163 IS BOUND ).
      IF t162 = abap_true.
        DATA(t166) = VALUE string( ).
        DATA(t167) = VALUE string( ).
        DATA(t168) = VALUE string( ).
        DATA t169 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t170.
        DATA(t171) = t1.
        DATA t172 TYPE i.
        DATA t173 TYPE i.
        DATA(t174) = t1.
        t174->load( ).
        t173 = lines( t174->items ).
        DATA(t175) = 1.
        t172 = t173 - t175.
        t172 = t172 + 1.
        DATA t176 TYPE REF TO object.
        CLEAR t176.
        t171->load( ).
        CLEAR t176.
        READ TABLE t171->items INDEX t172 INTO t176.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        CLEAR t170.
        IF t176 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t177 ?= t176.
          DATA t178 TYPE REF TO object.
          t178 = t177->as_ref( ).
          t170 ?= t178.
        ELSE.
          t170 ?= t176.
        ENDIF.
        t169 = t170.
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE string.
        DATA t181 TYPE string.
        DATA t182 TYPE REF TO zcl_lnt_abstract_token.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t184) = t169.
        t183 = t184->token.
        t182 = t183.
        DATA t185 TYPE string.
        DATA(t186) = t182.
        t185 = t186->str.
        t181 = t185.
        t180 = t181.
        DATA(t187) = VALUE abap_bool( ).
        DATA(t188) = VALUE string( ).
        DATA(t189) = t180.
        DATA(t190) = 0.
        DATA(t191) = 1.
        DATA(t192) = strlen( t189 ).
        IF t190 < 0.
          t190 = t190 + t192.
          IF t190 < 0.
            t190 = 0.
          ENDIF.
        ENDIF.
        IF t190 > t192 OR t191 <= 0.
          CLEAR t188.
        ELSE.
          IF t191 > t192 - t190.
            t191 = t192 - t190.
          ENDIF.
          t188 = t189+t190(t191).
        ENDIF.
        DATA(t193) = |!|.
        t187 = xsdbool( t188 = t193 ).
        IF t187 = abap_true.
          DATA(t194) = VALUE string( ).
          DATA t195 TYPE string.
          DATA(t196) = t180.
          t195 = t196.
          DATA(t197) = VALUE string( ).
          DATA(t198) = t195.
          DATA(t199) = 1.
          DATA t200 TYPE i.
          DATA(t201) = t195.
          DATA(t202) = strlen( t201 ).
          t200 = t202.
          DATA(t203) = strlen( t198 ).
          IF t199 < 0.
            t199 = t199 + t203.
            IF t199 < 0.
              t199 = 0.
            ENDIF.
          ENDIF.
          IF t199 > t203 OR t200 <= 0.
            CLEAR t197.
          ELSE.
            IF t200 > t203 - t199.
              t200 = t203 - t199.
            ENDIF.
            t197 = t198+t199(t200).
          ENDIF.
          t194 = t197.
          t180 = t194.
        ENDIF.
        DATA(t204) = t180.
        t179 = t204.
        t168 = t179.
        DATA(t205) = strlen( t168 ).
        t167 = t168.
        IF t167 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t167 TO UPPER CASE.
        ELSE.
          t167 = zlnt_runtime_uppe_91169605024d=>full( t167 ).
        ENDIF.
        t166 = t167.
        DATA(t206) = me->optional.
        DATA(t207) = t166.
        t206->load( ).
        APPEND t207 TO t206->items.
        t206->save( ).
      ELSE.
        DATA t208 TYPE abap_bool.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA(t210) = t9.
        DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
        t209 = t210->find_first_expression( i_type_9913 = t211 ).
        t208 = xsdbool( t209 IS BOUND ).
        IF t208 = abap_true.
          DATA(t212) = VALUE string( ).
          DATA(t213) = VALUE string( ).
          DATA(t214) = VALUE string( ).
          DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t215.
          DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t216.
          DATA(t217) = t1.
          DATA t218 TYPE i.
          DATA t219 TYPE i.
          DATA(t220) = t1.
          t220->load( ).
          t219 = lines( t220->items ).
          DATA(t221) = 1.
          t218 = t219 - t221.
          t218 = t218 + 1.
          DATA t222 TYPE REF TO object.
          CLEAR t222.
          t217->load( ).
          CLEAR t222.
          READ TABLE t217->items INDEX t218 INTO t222.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          CLEAR t216.
          IF t222 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t223 ?= t222.
            DATA t224 TYPE REF TO object.
            t224 = t223->as_ref( ).
            t216 ?= t224.
          ELSE.
            t216 ?= t222.
          ENDIF.
          t215 = t216.
          DATA(t225) = VALUE string( ).
          DATA t226 TYPE string.
          DATA t227 TYPE string.
          DATA t228 TYPE REF TO zcl_lnt_abstract_token.
          DATA t229 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t230) = t215.
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
          t214 = t225.
          DATA(t251) = strlen( t214 ).
          t213 = t214.
          IF t213 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t213 TO UPPER CASE.
          ELSE.
            t213 = zlnt_runtime_uppe_91169605024d=>full( t213 ).
          ENDIF.
          t212 = t213.
          DATA(t252) = me->optional.
          DATA(t253) = t212.
          t252->load( ).
          APPEND t253 TO t252->items.
          t252->save( ).
          DATA t254 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t254.
          DATA t255 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t255.
          DATA t256 TYPE REF TO zcl_lnt_expression_node.
          DATA t257 TYPE REF TO zcl_lnt_expression_node.
          DATA(t258) = t9.
          DATA(t259) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
          t257 = t258->find_first_expression( i_type_9913 = t259 ).
          t256 = t257.
          DATA t260 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t260.
          DATA(t261) = VALUE abap_bool( ).
          DATA(t262) = t256.
          IF t262 IS INITIAL.
            t261 = abap_true.
          ENDIF.
          IF t261 = abap_true.
            DATA t263 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t263.
            t260 = t263.
          ELSE.
            DATA t264 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t264.
            DATA t265 TYPE REF TO zif_lnt_node.
            CLEAR t265.
            DATA t266 TYPE REF TO zcl_lnt_abstract_node.
            DATA t267 TYPE REF TO zcl_lnt_expression_node.
            DATA(t268) = t256.
            t267 = t268.
            t266 = t267.
            DATA t269 TYPE REF TO zif_lnt_node.
            CLEAR t269.
            DATA(t270) = abap_true.
            IF t270 = abap_true.
              DATA t271 TYPE REF TO zif_lnt_node.
              CLEAR t271.
              DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t273) = t266.
              t272 = t273->children.
              DATA t274 TYPE i.
              DATA t275 TYPE i.
              DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t277) = t266.
              t276 = t277->children.
              t276->load( ).
              t275 = lines( t276->items ).
              DATA(t278) = 1.
              t274 = t275 - t278.
              t274 = t274 + 1.
              DATA t279 TYPE REF TO object.
              CLEAR t279.
              t272->load( ).
              CLEAR t279.
              READ TABLE t272->items INDEX t274 INTO t279.
              DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t280.
              CLEAR t271.
              IF t279 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t280 ?= t279.
                DATA t281 TYPE REF TO object.
                t281 = t280->as_ref( ).
                t271 ?= t281.
              ELSE.
                t271 ?= t279.
              ENDIF.
              t269 = t271.
            ELSE.
              DATA t282 TYPE REF TO zif_lnt_node.
              CLEAR t282.
              t269 = t282.
            ENDIF.
            t265 = t269.
            t264 ?= t265.
            t260 = t264.
          ENDIF.
          t255 = t260.
          t254 = t255.
          DATA t283 TYPE abap_bool.
          DATA t284 TYPE abap_bool.
          DATA(t285) = t254.
          t284 = xsdbool( t285 IS BOUND ).
          t283 = t284.
          IF t284 = abap_true.
            DATA t286 TYPE abap_bool.
            DATA t287 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t288) = t254.
            t287 = t288.
            t286 = xsdbool( t287 IS BOUND AND t287 IS INSTANCE OF zcl_lnt_expression_node ).
            t283 = t286.
          ENDIF.
          IF t283 = abap_true.
            DATA t289 TYPE REF TO zlnt_runtime_map__b1b44c588059.
            DATA(t290) = me->defaults.
            DATA(t291) = t212.
            DATA t292 TYPE REF TO zcl_lnt_expression_node.
            DATA(t293) = t254.
            DATA t294 TYPE REF TO object.
            t294 = t293.
            t292 ?= t294.
            t289 = t290->set( p0 = t291 p1 = t292 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t295 TYPE abap_bool.
    DATA t296 TYPE i.
    DATA(t297) = t1.
    t297->load( ).
    t296 = lines( t297->items ).
    DATA(t298) = 0.
    t295 = xsdbool( t296 > t298 ).
    IF t295 = abap_true.
      RETURN.
    ENDIF.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t301) = t2.
    DATA(t302) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
    t300 = t301->find_all_expressions( i_type_9913 = t302 ).
    t299 = t300.
    DATA(t303) = t299.
    DATA t304 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t304.
    DATA t305 TYPE REF TO object.
    CLEAR t305.
    DATA(t306) = VALUE i( ).
    DO.
      t303->load( ).
      IF t306 >= lines( t303->items ).
        EXIT.
      ENDIF.
      CLEAR t305.
      READ TABLE t303->items INDEX t306 + 1 INTO t305.
      t306 = t306 + 1.
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t307.
      CLEAR t304.
      IF t305 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t307 ?= t305.
        DATA t308 TYPE REF TO object.
        t308 = t307->as_ref( ).
        t304 ?= t308.
      ELSE.
        t304 ?= t305.
      ENDIF.
      DATA t309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t309.
      DATA t310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t310.
      DATA(t311) = VALUE abap_bool( ).
      DATA t312 TYPE REF TO zcl_lnt_expression_node.
      DATA(t313) = t304.
      t312 = t313.
      DATA(t314) = VALUE abap_bool( ).
      DATA(t315) = VALUE abap_bool( ).
      DATA t316 TYPE string.
      DATA t317 TYPE string.
      DATA t318 TYPE REF TO zcl_lnt_abstract_token.
      DATA t319 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t320) = t312.
      t319 = t320->get_first_token( ).
      t318 = t319.
      DATA t321 TYPE string.
      DATA(t322) = t318.
      t321 = t322->str.
      t317 = t321.
      DATA(t323) = strlen( t317 ).
      t316 = t317.
      IF t316 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t316 TO UPPER CASE.
      ELSE.
        t316 = zlnt_runtime_uppe_91169605024d=>full( t316 ).
      ENDIF.
      DATA(t324) = |VALUE|.
      t315 = xsdbool( t316 = t324 ).
      t314 = t315.
      IF t315 = abap_true.
        DATA(t325) = VALUE abap_bool( ).
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        DATA t327 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t327.
        DATA t328 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t328.
        DATA t329 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t329.
        DATA t330 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t330.
        DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t333 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t334) = t312.
        t333 = t334.
        DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t336) = t333.
        t335 = t336->children.
        t332 = t335.
        t331 ?= t332.
        DATA(t337) = 1.
        DATA t338 TYPE REF TO object.
        t338 = t331->get( p0 = t337 ).
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        CLEAR t330.
        IF t338 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t339 ?= t338.
          DATA t340 TYPE REF TO object.
          t340 = t339->as_ref( ).
          t330 ?= t340.
        ELSE.
          t330 ?= t338.
        ENDIF.
        t329 = t330.
        DATA t341 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t341.
        DATA(t342) = VALUE abap_bool( ).
        DATA(t343) = t329.
        IF t343 IS INITIAL.
          t342 = abap_true.
        ENDIF.
        IF t342 = abap_true.
          DATA t344 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t344.
          t341 = t344.
        ELSE.
          DATA t345 TYPE REF TO zcl_lnt_abstract_token.
          DATA t346 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t347) = t329.
          t346 = t347.
          t345 = t346->get_first_token( ).
          t341 = t345.
        ENDIF.
        t328 = t341.
        t327 = t328.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        DATA(t349) = VALUE abap_bool( ).
        DATA(t350) = t327.
        IF t350 IS INITIAL.
          t349 = abap_true.
        ENDIF.
        IF t349 = abap_true.
          DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t351.
          t348 = t351.
        ELSE.
          DATA t352 TYPE string.
          DATA t353 TYPE REF TO zcl_lnt_abstract_token.
          DATA t354 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t355) = t327.
          t354 = t355.
          t353 = t354.
          DATA t356 TYPE string.
          DATA(t357) = t353.
          t356 = t357->str.
          t352 = t356.
          DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t358->has = abap_true.
          t358->value = t352.
          t348 = t358.
        ENDIF.
        t326 = t348.
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t359.
        DATA(t360) = abap_true.
        IF t360 = abap_true.
          DATA(t361) = |(|.
          DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t362->has = abap_true.
          t362->value = t361.
          t359 = t362.
        ELSE.
          DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t363.
          t359 = t363.
        ENDIF.
        DATA(t364) = VALUE abap_bool( ).
        DATA(t365) = VALUE abap_bool( ).
        IF t326 IS BOUND.
          t364 = t326->has.
        ENDIF.
        IF t359 IS BOUND.
          t365 = t359->has.
        ENDIF.
        IF t364 = t365.
          IF t364 = abap_false.
            t325 = abap_true.
          ELSEIF t326->value = t359->value.
            t325 = abap_true.
          ENDIF.
        ENDIF.
        t314 = t325.
      ENDIF.
      t311 = t314.
      IF t311 = abap_true.
        DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t368 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t368.
        t367 = t368.
        DATA(t369) = t367.
        DATA(t370) = |pass_by_value|.
        t369->load( ).
        APPEND t370 TO t369->items.
        t369->save( ).
        DATA(t371) = t367.
        t366 = t371.
        t310 = t366.
      ELSE.
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t372.
        t310 = t372.
      ENDIF.
      t309 = t310.
      DATA(t373) = t1.
      DATA t374 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t375) = t304.
      DATA(t376) = t3.
      DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t378 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t379.
      t378 = t379.
      DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t382) = t378.
      DATA(t383) = t4.
      t381 = t382->concat( p0 = t383 ).
      t380 = t381.
      DATA t384 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t386) = t380.
      DATA(t387) = t309.
      t385 = t386->concat( p0 = t387 ).
      t384 = t385.
      DATA(t388) = t384.
      t377 = t388.
      t374 = zcl_lnt_sy_method_param=>run_syntax( i_node = t375 i_input_967e = t376 i_meta = t377 ).
      t373->load( ).
      APPEND t374 TO t373->items.
      t373->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD is_pass_by_value.
    DATA(t1) = i_param.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = t1.
    t7 = t8->get_first_token( ).
    t6 = t7.
    DATA t9 TYPE string.
    DATA(t10) = t6.
    t9 = t10->str.
    t5 = t9.
    DATA(t11) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    DATA(t12) = |VALUE|.
    t3 = xsdbool( t4 = t12 ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t22) = t1.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = t21.
      t23 = t24->children.
      t20 = t23.
      t19 ?= t20.
      DATA(t25) = 1.
      DATA t26 TYPE REF TO object.
      t26 = t19->get( p0 = t25 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t18.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t18 ?= t28.
      ELSE.
        t18 ?= t26.
      ENDIF.
      t17 = t18.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t17.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ENDIF.
      IF t30 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t32.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t35) = t17.
        t34 = t35.
        t33 = t34->get_first_token( ).
        t29 = t33.
      ENDIF.
      t16 = t29.
      t15 = t16.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t15.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        t36 = t39.
      ELSE.
        DATA t40 TYPE string.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t43) = t15.
        t42 = t43.
        t41 = t42.
        DATA t44 TYPE string.
        DATA(t45) = t41.
        t44 = t45->str.
        t40 = t44.
        DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t46->has = abap_true.
        t46->value = t40.
        t36 = t46.
      ENDIF.
      t14 = t36.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = |(|.
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = t49.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t47 = t51.
      ENDIF.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t14 IS BOUND.
        t52 = t14->has.
      ENDIF.
      IF t47 IS BOUND.
        t53 = t47->has.
      ENDIF.
      IF t52 = t53.
        IF t52 = abap_false.
          t13 = abap_true.
        ELSEIF t14->value = t47->value.
          t13 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t13.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_parameter_default.
    DATA(t1) = i_parameter_5406.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t3) = t1.
    t2 = me->g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr( i_parameter_5406 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1065_c808f34fb6c6.
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_all.
    result = me->get_all( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_importing.
    result = me->get_importing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_required_parameters.
    result = me->get_required_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_exporting.
    result = me->get_exporting( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_changing.
    result = me->get_changing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_optional.
    result = me->get_optional( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_returning.
    result = me->get_returning( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_exceptions.
    result = me->get_exceptions( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_default_importing.
    result = me->get_default_importing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_parameter_default.
    result = me->get_parameter_default( i_parameter_5406 = i_parameter_5406 ).
  ENDMETHOD.
ENDCLASS.
