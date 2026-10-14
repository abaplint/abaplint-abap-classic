* TS: src/abap/types/method_parameters.ts:22:1 MethodParameters
CLASS zcl_lnt_ty_method_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_method_parameters IMPLEMENTATION.
  METHOD constructor.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = i_abstract_method.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    t6 = t7->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
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
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    CREATE OBJECT t15.
    me->importing = t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    CREATE OBJECT t16.
    me->exporting = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    me->changing = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    CREATE OBJECT t18.
    me->optional = t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__b1b44c588059.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__b1b44c588059.
    CLEAR t20.
    DATA(t21) = NEW zlnt_runtime_map__b1b44c588059(  ).
    t20 = t21.
    DATA(t22) = CAST zlnt_runtime_map__b1b44c588059( t20 ).
    t19 = t22.
    me->defaults = t19.
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t23.
    me->returning = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    me->preferred = t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t25.
    CREATE OBJECT t25.
    me->exceptions = t25.
    DATA(t26) = VALUE string( ).
    DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
    t26 = t27->filename.
    me->filename = t26.
    DATA(t28) = VALUE string( ).
    DATA(t29) = VALUE string( ).
    DATA t30 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t30.
    DATA(t31) = CAST zcl_lnt_syntax_input( t2 ).
    t30 = t31->scope.
    t29 = t30->get_name(  ).
    t28 = t29.
    DATA t32 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t33.
    DATA(t34) = CAST zcl_lnt_syntax_input( t2 ).
    t33 = t34->scope.
    t32 = t33.
    DATA t35 TYPE REF TO zcl_lnt_position.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_position.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t37.
    DATA(t38) = CAST zcl_lnt_statement_node( t1 ).
    t37 = t38.
    DATA t39 TYPE REF TO zcl_lnt_position.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t41.
    DATA(t42) = CAST zcl_lnt_statement_node( t37 ).
    t41 = t42->get_first_token(  ).
    t40 = t41.
    DATA t43 TYPE REF TO zcl_lnt_position.
    CLEAR t43.
    DATA(t44) = CAST zcl_lnt_abstract_token( t40 ).
    t43 = t44->start.
    t39 = t43.
    t36 = t39.
    t35 = t36.
    DATA(t45) = VALUE string( ).
    DATA(t46) = VALUE string( ).
    DATA(t47) = CAST zcl_lnt_syntax_input( t2 ).
    t46 = t47->filename.
    t45 = t46.
    DATA t48 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t49.
    DATA(t50) = |method_definition|.
    DATA(t51) = |method definition|.
    DATA(t52) = t45.
    DATA(t53) = CAST zcl_lnt_position( t35 ).
    DATA t54 TYPE REF TO zcl_lnt_position.
    CLEAR t54.
    t49 = NEW zcl_lnt_iscope_identifier( i_stype = t50 i_sname = t51 i_filename = t52 i_start = t53 i_end = t54 ).
    t48 = t49.
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t57.
    DATA(t58) = CAST zcl_lnt_current_scope( t32 ).
    t57 = t58->current.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    t59 = t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = CAST zcl_lnt_spaghetti_scope_node( t56 ).
    IF t62 IS INITIAL.
      t61 = abap_true.
    ENDIF.
    t55 = t61.
    IF t55 = abap_true.
      DATA(t63) = CAST zcl_lnt_current_scope( t32 ).
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t64.
      DATA(t65) = abap_true.
      IF t65 = abap_true.
        DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t66.
        DATA(t67) = CAST zcl_lnt_iscope_identifier( t48 ).
        DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t68.
        t66 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t67 i_parent = t68 ).
        t64 = t66.
      ELSE.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t69.
        t64 = t69.
      ENDIF.
      t63->current = t64.
    ELSE.
      DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t71.
      DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t72.
      DATA(t73) = CAST zcl_lnt_current_scope( t32 ).
      t72 = t73->current.
      t71 = t72.
      t70 = t71.
      DATA(t74) = CAST zcl_lnt_current_scope( t32 ).
      DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t75.
      DATA(t76) = abap_true.
      IF t76 = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t77.
        DATA(t78) = CAST zcl_lnt_iscope_identifier( t48 ).
        DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA(t81) = CAST zcl_lnt_spaghetti_scope_node( t70 ).
          t79 = t81.
        ELSE.
          DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t82.
          t79 = t82.
        ENDIF.
        t77 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t78 i_parent = t79 ).
        t75 = t77.
      ELSE.
        DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t83.
        t75 = t83.
      ENDIF.
      t74->current = t75.
      DATA(t84) = CAST zcl_lnt_spaghetti_scope_node( t70 ).
      DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t86.
      DATA(t87) = CAST zcl_lnt_current_scope( t32 ).
      t86 = t87->current.
      t85 = t86.
      t84->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t85 ).
    ENDIF.
    DATA t88 TYPE REF TO cx_root.
    CLEAR t88.
    TRY.
        DATA(t89) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t90) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t91) = t28.
        DATA(t92) = t3.
        me->parse( i_node = t89 i_input_967e = t90 i_parent_name = t91 i_abstract_method = t92 ).
        DATA(t93) = CAST zcl_lnt_syntax_input( t2 ).
        me->check_name_lengths( i_input_967e = t93 ).
        me->check_duplicate_names(  ).
      CATCH cx_root INTO t88.
        DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope.
        CLEAR t94.
        DATA t95 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t95.
        DATA(t96) = CAST zcl_lnt_syntax_input( t2 ).
        t95 = t96->scope.
        DATA t97 TYPE REF TO zcl_lnt_position.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t98.
        DATA(t99) = CAST zcl_lnt_statement_node( t1 ).
        t98 = t99.
        DATA t100 TYPE REF TO zcl_lnt_position.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t101.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        DATA(t103) = CAST zcl_lnt_statement_node( t98 ).
        t102 = t103->get_last_token(  ).
        t101 = t102.
        DATA t104 TYPE REF TO zcl_lnt_position.
        CLEAR t104.
        DATA t105 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t105.
        DATA(t106) = CAST zcl_lnt_abstract_token( t101 ).
        t105 = t106.
        DATA t107 TYPE REF TO zcl_lnt_position.
        CLEAR t107.
        DATA(t108) = VALUE int8( ).
        DATA t109 TYPE REF TO zcl_lnt_position.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_position.
        CLEAR t110.
        DATA(t111) = CAST zcl_lnt_abstract_token( t105 ).
        t110 = t111->start.
        t109 = t110.
        DATA(t112) = VALUE int8( ).
        DATA(t113) = CAST zcl_lnt_position( t109 ).
        t112 = t113->row.
        t108 = t112.
        DATA(t114) = VALUE int8( ).
        DATA(t115) = VALUE int8( ).
        DATA t116 TYPE REF TO zcl_lnt_position.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_position.
        CLEAR t117.
        DATA(t118) = CAST zcl_lnt_abstract_token( t105 ).
        t117 = t118->start.
        t116 = t117.
        DATA(t119) = VALUE int8( ).
        DATA(t120) = CAST zcl_lnt_position( t116 ).
        t119 = t120->col.
        t115 = t119.
        DATA(t121) = VALUE int8( ).
        DATA(t122) = VALUE i( ).
        DATA(t123) = VALUE string( ).
        DATA(t124) = CAST zcl_lnt_abstract_token( t105 ).
        t123 = t124->str.
        DATA(t125) = strlen( t123 ).
        t122 = t125.
        t121 = t122.
        t114 = t115 + t121.
        IF t114 < range_int8_bound_min OR t114 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t107 = NEW zcl_lnt_position( i_row = t108 i_col = t114 ).
        t104 = t107.
        t100 = t104.
        t97 = t100.
        t94 = t95->pop( i_end = t97 ).
        RAISE EXCEPTION t88.
    ENDTRY.
    DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t126.
    DATA t127 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t127.
    DATA(t128) = CAST zcl_lnt_syntax_input( t2 ).
    t127 = t128->scope.
    DATA t129 TYPE REF TO zcl_lnt_position.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t130.
    DATA(t131) = CAST zcl_lnt_statement_node( t1 ).
    t130 = t131.
    DATA t132 TYPE REF TO zcl_lnt_position.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t134.
    DATA(t135) = CAST zcl_lnt_statement_node( t130 ).
    t134 = t135->get_last_token(  ).
    t133 = t134.
    DATA t136 TYPE REF TO zcl_lnt_position.
    CLEAR t136.
    DATA t137 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t137.
    DATA(t138) = CAST zcl_lnt_abstract_token( t133 ).
    t137 = t138.
    DATA t139 TYPE REF TO zcl_lnt_position.
    CLEAR t139.
    DATA(t140) = VALUE int8( ).
    DATA t141 TYPE REF TO zcl_lnt_position.
    CLEAR t141.
    DATA t142 TYPE REF TO zcl_lnt_position.
    CLEAR t142.
    DATA(t143) = CAST zcl_lnt_abstract_token( t137 ).
    t142 = t143->start.
    t141 = t142.
    DATA(t144) = VALUE int8( ).
    DATA(t145) = CAST zcl_lnt_position( t141 ).
    t144 = t145->row.
    t140 = t144.
    DATA(t146) = VALUE int8( ).
    DATA(t147) = VALUE int8( ).
    DATA t148 TYPE REF TO zcl_lnt_position.
    CLEAR t148.
    DATA t149 TYPE REF TO zcl_lnt_position.
    CLEAR t149.
    DATA(t150) = CAST zcl_lnt_abstract_token( t137 ).
    t149 = t150->start.
    t148 = t149.
    DATA(t151) = VALUE int8( ).
    DATA(t152) = CAST zcl_lnt_position( t148 ).
    t151 = t152->col.
    t147 = t151.
    DATA(t153) = VALUE int8( ).
    DATA(t154) = VALUE i( ).
    DATA(t155) = VALUE string( ).
    DATA(t156) = CAST zcl_lnt_abstract_token( t137 ).
    t155 = t156->str.
    DATA(t157) = strlen( t155 ).
    t154 = t157.
    t153 = t154.
    t146 = t147 + t153.
    IF t146 < range_int8_bound_min OR t146 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t139 = NEW zcl_lnt_position( i_row = t140 i_col = t146 ).
    t136 = t139.
    t132 = t136.
    t129 = t132.
    t126 = t127->pop( i_end = t129 ).
  ENDMETHOD.
  METHOD get_filename.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_parameters.ts:60|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_optional.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
    result = t1.

  ENDMETHOD.
  METHOD get_all.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = CAST zcl_lnt_typed_identifier( me->returning ).
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CAST zcl_lnt_typed_identifier( t3 ).
    t5 = xsdbool( t6 IS BOUND ).
    IF t5 = abap_true.
      DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t8 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t9) = CAST zcl_lnt_typed_identifier( t3 ).
      t8 = t9.
      APPEND t8 TO t7->items.
    ENDIF.
    DATA(t10) = VALUE i( ).
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
    DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    LOOP AT t11->items INTO t13.
      t12 ?= t13.
      DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t15) = CAST zcl_lnt_typed_identifier( t12 ).
      APPEND t15 TO t14->items.
    ENDLOOP.
    DATA t16 TYPE i.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t16 = lines( t17->items ).
    t10 = t16.
    DATA(t18) = VALUE i( ).
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
    DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t19->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t23) = CAST zcl_lnt_typed_identifier( t20 ).
      APPEND t23 TO t22->items.
    ENDLOOP.
    DATA t24 TYPE i.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t24 = lines( t25->items ).
    t18 = t24.
    DATA(t26) = VALUE i( ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
    DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    LOOP AT t27->items INTO t29.
      t28 ?= t29.
      DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t31) = CAST zcl_lnt_typed_identifier( t28 ).
      APPEND t31 TO t30->items.
    ENDLOOP.
    DATA t32 TYPE i.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t32 = lines( t33->items ).
    t26 = t32.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t34.

  ENDMETHOD.
  METHOD get_default_importing.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE i.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
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
      DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
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
          DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
          DATA t17 TYPE REF TO object.
          CLEAR t17.
          READ TABLE t16->items INDEX 1 INTO t17.
          t15 ?= t17.
          t14 = t15.
          DATA(t18) = VALUE string( ).
          DATA t19 TYPE string.
          DATA t20 TYPE string.
          DATA t21 TYPE REF TO zcl_lnt_abstract_token.
          DATA t22 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t23) = CAST zcl_lnt_fi_identifier( t14 ).
          t22 = t23->token.
          t21 = t22.
          DATA t24 TYPE string.
          DATA(t25) = CAST zcl_lnt_abstract_token( t21 ).
          t24 = t25->str.
          t20 = t24.
          t19 = t20.
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = VALUE string( ).
          DATA(t28) = t19.
          DATA(t29) = 0.
          DATA(t30) = 1.
          DATA(t31) = strlen( t28 ).
          IF t29 < 0.
            t29 = t29 + t31.
            IF t29 < 0.
              t29 = 0.
            ENDIF.
          ENDIF.
          IF t29 > t31 OR t30 <= 0.
            CLEAR t27.
          ELSE.
            IF t30 > t31 - t29.
              t30 = t31 - t29.
            ENDIF.
            t27 = t28+t29(t30).
          ENDIF.
          DATA(t32) = |!|.
          t26 = xsdbool( t27 = t32 ).
          IF t26 = abap_true.
            DATA(t33) = VALUE string( ).
            DATA t34 TYPE string.
            DATA(t35) = t19.
            t34 = t35.
            DATA(t36) = VALUE string( ).
            DATA(t37) = t34.
            DATA(t38) = 1.
            DATA t39 TYPE i.
            DATA(t40) = t34.
            DATA(t41) = strlen( t40 ).
            t39 = t41.
            DATA(t42) = strlen( t37 ).
            IF t38 < 0.
              t38 = t38 + t42.
              IF t38 < 0.
                t38 = 0.
              ENDIF.
            ENDIF.
            IF t38 > t42 OR t39 <= 0.
              CLEAR t36.
            ELSE.
              IF t39 > t42 - t38.
                t39 = t42 - t38.
              ENDIF.
              t36 = t37+t38(t39).
            ENDIF.
            t33 = t36.
            t19 = t33.
          ENDIF.
          DATA(t43) = t19.
          t18 = t43.
          t13 = t18.
          DATA(t44) = strlen( t13 ).
          t12 = t13.
          IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t12 TO UPPER CASE.
          ELSE.
            t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
          ENDIF.
          DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t45->has = abap_true.
          t45->value = t12.
          t10 = t45.
        ELSE.
          DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t46.
          t10 = t46.
        ENDIF.
        result = t10.
        RETURN.
      ELSE.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = CAST zlnt_runtime_opti_4ba3bdccd169( me->preferred ).
        IF t48 IS BOUND.
          IF t48->has = abap_true.
            t47 = xsdbool( strlen( t48->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t47 = abap_true.
          DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t49.
          DATA(t50) = abap_true.
          IF t50 = abap_true.
            DATA t51 TYPE string.
            DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( me->preferred ).
            t51 = t52->value.
            DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t53->has = abap_true.
            t53->value = t51.
            t49 = t53.
          ELSE.
            DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t54.
            t49 = t54.
          ENDIF.
          result = t49.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t58.
    t57 = t58.
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
    DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t60.
    DATA t61 TYPE REF TO object.
    CLEAR t61.
    LOOP AT t59->items INTO t61.
      t60 ?= t61.
      DATA(t62) = CAST zlnt_runtime_arra_8ecd6afe19e0( t57 ).
      DATA(t63) = VALUE string( ).
      DATA(t64) = VALUE string( ).
      DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t66) = CAST zcl_lnt_typed_identifier( t60 ).
      t65 = t66.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t72) = CAST zcl_lnt_fi_identifier( t65 ).
      t71 = t72->token.
      t70 = t71.
      DATA t73 TYPE string.
      DATA(t74) = CAST zcl_lnt_abstract_token( t70 ).
      t73 = t74->str.
      t69 = t73.
      t68 = t69.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = VALUE string( ).
      DATA(t77) = t68.
      DATA(t78) = 0.
      DATA(t79) = 1.
      DATA(t80) = strlen( t77 ).
      IF t78 < 0.
        t78 = t78 + t80.
        IF t78 < 0.
          t78 = 0.
        ENDIF.
      ENDIF.
      IF t78 > t80 OR t79 <= 0.
        CLEAR t76.
      ELSE.
        IF t79 > t80 - t78.
          t79 = t80 - t78.
        ENDIF.
        t76 = t77+t78(t79).
      ENDIF.
      DATA(t81) = |!|.
      t75 = xsdbool( t76 = t81 ).
      IF t75 = abap_true.
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE string.
        DATA(t84) = t68.
        t83 = t84.
        DATA(t85) = VALUE string( ).
        DATA(t86) = t83.
        DATA(t87) = 1.
        DATA t88 TYPE i.
        DATA(t89) = t83.
        DATA(t90) = strlen( t89 ).
        t88 = t90.
        DATA(t91) = strlen( t86 ).
        IF t87 < 0.
          t87 = t87 + t91.
          IF t87 < 0.
            t87 = 0.
          ENDIF.
        ENDIF.
        IF t87 > t91 OR t88 <= 0.
          CLEAR t85.
        ELSE.
          IF t88 > t91 - t87.
            t88 = t91 - t87.
          ENDIF.
          t85 = t86+t87(t88).
        ENDIF.
        t82 = t85.
        t68 = t82.
      ENDIF.
      DATA(t92) = t68.
      t67 = t92.
      t64 = t67.
      DATA(t93) = strlen( t64 ).
      t63 = t64.
      IF t63 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t63 TO UPPER CASE.
      ELSE.
        t63 = zlnt_runtime_uppe_91169605024d=>full( t63 ).
      ENDIF.
      APPEND t63 TO t62->items.
    ENDLOOP.
    DATA(t94) = CAST zlnt_runtime_arra_8ecd6afe19e0( t57 ).
    t56 = t94.
    t55 = t56.
    DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t97.
    t96 = t97.
    DATA(t98) = CAST zlnt_runtime_arra_8ecd6afe19e0( t55 ).
    DATA(t99) = VALUE string( ).
    LOOP AT t98->items INTO t99.
      DATA t100 TYPE abap_bool.
      DATA t101 TYPE i.
      DATA(t102) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
      DATA(t103) = t99.
      t101 = t102->indexOf( p0 = t103 ).
      DATA(t104) = 0.
      t100 = xsdbool( t101 < t104 ).
      IF t100 = abap_true.
        DATA(t105) = CAST zlnt_runtime_arra_8ecd6afe19e0( t96 ).
        DATA(t106) = t99.
        APPEND t106 TO t105->items.
      ENDIF.
    ENDLOOP.
    DATA(t107) = CAST zlnt_runtime_arra_8ecd6afe19e0( t96 ).
    t95 = t107.
    t55 = t95.
    DATA t108 TYPE abap_bool.
    DATA t109 TYPE i.
    DATA(t110) = CAST zlnt_runtime_arra_8ecd6afe19e0( t55 ).
    t109 = lines( t110->items ).
    DATA(t111) = 1.
    t108 = xsdbool( t109 = t111 ).
    IF t108 = abap_true.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      DATA(t113) = abap_true.
      IF t113 = abap_true.
        DATA(t114) = VALUE string( ).
        DATA(t115) = CAST zlnt_runtime_arra_8ecd6afe19e0( t55 ).
        READ TABLE t115->items INDEX 1 INTO t114.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t114.
        t112 = t116.
      ELSE.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t112 = t117.
      ENDIF.
      result = t112.
      RETURN.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t118.
    result = t118.

  ENDMETHOD.
  METHOD get_importing.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
    result = t1.

  ENDMETHOD.
  METHOD get_required_parameters.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t3->items INTO t5.
      t4 ?= t5.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE abap_bool.
      DATA(t9) = abap_false.
      t8 = t9.
      DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
      DATA(t11) = VALUE string( ).
      LOOP AT t10->items INTO t11.
        DATA(t12) = VALUE abap_bool( ).
        DATA t13 TYPE string.
        DATA(t14) = t11.
        DATA(t15) = strlen( t14 ).
        t13 = t14.
        IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t13 TO UPPER CASE.
        ELSE.
          t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
        ENDIF.
        DATA(t16) = VALUE string( ).
        DATA(t17) = VALUE string( ).
        DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t19) = CAST zcl_lnt_typed_identifier( t4 ).
        t18 = t19.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE string.
        DATA t22 TYPE string.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t25) = CAST zcl_lnt_fi_identifier( t18 ).
        t24 = t25->token.
        t23 = t24.
        DATA t26 TYPE string.
        DATA(t27) = CAST zcl_lnt_abstract_token( t23 ).
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
        t17 = t20.
        DATA(t46) = strlen( t17 ).
        t16 = t17.
        IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t16 TO UPPER CASE.
        ELSE.
          t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
        ENDIF.
        t12 = xsdbool( t13 = t16 ).
        IF t12 = abap_true.
          DATA(t47) = abap_true.
          t8 = t47.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t48) = t8.
      t7 = t48.
      DATA(t49) = abap_true.
      t6 = xsdbool( t7 = t49 ).
      IF t6 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( me->preferred ).
        t52 = t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t52 ).
        IF t56 IS INITIAL.
          t55 = abap_true.
        ELSEIF t56->has = abap_false.
          t55 = abap_true.
        ENDIF.
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          t54 = t57.
        ELSE.
          DATA t58 TYPE string.
          DATA t59 TYPE string.
          DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t52 ).
          t59 = t60->value.
          DATA(t61) = strlen( t59 ).
          t58 = t59.
          IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t58 TO UPPER CASE.
          ELSE.
            t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
          ENDIF.
          DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t62->has = abap_true.
          t62->value = t58.
          t54 = t62.
        ENDIF.
        t51 = t54.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = VALUE string( ).
          DATA(t66) = VALUE string( ).
          DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t68) = CAST zcl_lnt_typed_identifier( t4 ).
          t67 = t68.
          DATA(t69) = VALUE string( ).
          DATA t70 TYPE string.
          DATA t71 TYPE string.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          DATA t73 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t74) = CAST zcl_lnt_fi_identifier( t67 ).
          t73 = t74->token.
          t72 = t73.
          DATA t75 TYPE string.
          DATA(t76) = CAST zcl_lnt_abstract_token( t72 ).
          t75 = t76->str.
          t71 = t75.
          t70 = t71.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = VALUE string( ).
          DATA(t79) = t70.
          DATA(t80) = 0.
          DATA(t81) = 1.
          DATA(t82) = strlen( t79 ).
          IF t80 < 0.
            t80 = t80 + t82.
            IF t80 < 0.
              t80 = 0.
            ENDIF.
          ENDIF.
          IF t80 > t82 OR t81 <= 0.
            CLEAR t78.
          ELSE.
            IF t81 > t82 - t80.
              t81 = t82 - t80.
            ENDIF.
            t78 = t79+t80(t81).
          ENDIF.
          DATA(t83) = |!|.
          t77 = xsdbool( t78 = t83 ).
          IF t77 = abap_true.
            DATA(t84) = VALUE string( ).
            DATA t85 TYPE string.
            DATA(t86) = t70.
            t85 = t86.
            DATA(t87) = VALUE string( ).
            DATA(t88) = t85.
            DATA(t89) = 1.
            DATA t90 TYPE i.
            DATA(t91) = t85.
            DATA(t92) = strlen( t91 ).
            t90 = t92.
            DATA(t93) = strlen( t88 ).
            IF t89 < 0.
              t89 = t89 + t93.
              IF t89 < 0.
                t89 = 0.
              ENDIF.
            ENDIF.
            IF t89 > t93 OR t90 <= 0.
              CLEAR t87.
            ELSE.
              IF t90 > t93 - t89.
                t90 = t93 - t89.
              ENDIF.
              t87 = t88+t89(t90).
            ENDIF.
            t84 = t87.
            t70 = t84.
          ENDIF.
          DATA(t94) = t70.
          t69 = t94.
          t66 = t69.
          DATA(t95) = strlen( t66 ).
          t65 = t66.
          IF t65 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t65 TO UPPER CASE.
          ELSE.
            t65 = zlnt_runtime_uppe_91169605024d=>full( t65 ).
          ENDIF.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t65.
          t63 = t96.
        ELSE.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t63 = t97.
        ENDIF.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE abap_bool( ).
        IF t51 IS BOUND.
          t98 = t51->has.
        ENDIF.
        IF t63 IS BOUND.
          t99 = t63->has.
        ENDIF.
        IF t98 = t99.
          IF t98 = abap_false.
            t50 = abap_true.
          ELSEIF t51->value = t63->value.
            t50 = abap_true.
          ENDIF.
        ENDIF.
        IF t50 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t101) = CAST zcl_lnt_typed_identifier( t4 ).
      APPEND t101 TO t100->items.
    ENDLOOP.
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
    DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t103.
    DATA t104 TYPE REF TO object.
    CLEAR t104.
    LOOP AT t102->items INTO t104.
      t103 ?= t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = VALUE abap_bool( ).
      DATA t107 TYPE abap_bool.
      DATA(t108) = abap_false.
      t107 = t108.
      DATA(t109) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
      DATA(t110) = VALUE string( ).
      LOOP AT t109->items INTO t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE string.
        DATA(t113) = t110.
        DATA(t114) = strlen( t113 ).
        t112 = t113.
        IF t112 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t112 TO UPPER CASE.
        ELSE.
          t112 = zlnt_runtime_uppe_91169605024d=>full( t112 ).
        ENDIF.
        DATA(t115) = VALUE string( ).
        DATA(t116) = VALUE string( ).
        DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t118) = CAST zcl_lnt_typed_identifier( t103 ).
        t117 = t118.
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE string.
        DATA t121 TYPE string.
        DATA t122 TYPE REF TO zcl_lnt_abstract_token.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t124) = CAST zcl_lnt_fi_identifier( t117 ).
        t123 = t124->token.
        t122 = t123.
        DATA t125 TYPE string.
        DATA(t126) = CAST zcl_lnt_abstract_token( t122 ).
        t125 = t126->str.
        t121 = t125.
        t120 = t121.
        DATA(t127) = VALUE abap_bool( ).
        DATA(t128) = VALUE string( ).
        DATA(t129) = t120.
        DATA(t130) = 0.
        DATA(t131) = 1.
        DATA(t132) = strlen( t129 ).
        IF t130 < 0.
          t130 = t130 + t132.
          IF t130 < 0.
            t130 = 0.
          ENDIF.
        ENDIF.
        IF t130 > t132 OR t131 <= 0.
          CLEAR t128.
        ELSE.
          IF t131 > t132 - t130.
            t131 = t132 - t130.
          ENDIF.
          t128 = t129+t130(t131).
        ENDIF.
        DATA(t133) = |!|.
        t127 = xsdbool( t128 = t133 ).
        IF t127 = abap_true.
          DATA(t134) = VALUE string( ).
          DATA t135 TYPE string.
          DATA(t136) = t120.
          t135 = t136.
          DATA(t137) = VALUE string( ).
          DATA(t138) = t135.
          DATA(t139) = 1.
          DATA t140 TYPE i.
          DATA(t141) = t135.
          DATA(t142) = strlen( t141 ).
          t140 = t142.
          DATA(t143) = strlen( t138 ).
          IF t139 < 0.
            t139 = t139 + t143.
            IF t139 < 0.
              t139 = 0.
            ENDIF.
          ENDIF.
          IF t139 > t143 OR t140 <= 0.
            CLEAR t137.
          ELSE.
            IF t140 > t143 - t139.
              t140 = t143 - t139.
            ENDIF.
            t137 = t138+t139(t140).
          ENDIF.
          t134 = t137.
          t120 = t134.
        ENDIF.
        DATA(t144) = t120.
        t119 = t144.
        t116 = t119.
        DATA(t145) = strlen( t116 ).
        t115 = t116.
        IF t115 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t115 TO UPPER CASE.
        ELSE.
          t115 = zlnt_runtime_uppe_91169605024d=>full( t115 ).
        ENDIF.
        t111 = xsdbool( t112 = t115 ).
        IF t111 = abap_true.
          DATA(t146) = abap_true.
          t107 = t146.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t147) = t107.
      t106 = t147.
      DATA(t148) = abap_true.
      t105 = xsdbool( t106 = t148 ).
      IF t105 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t149) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t150) = CAST zcl_lnt_typed_identifier( t103 ).
      APPEND t150 TO t149->items.
    ENDLOOP.
    DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t151.

  ENDMETHOD.
  METHOD get_exporting.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
    result = t1.

  ENDMETHOD.
  METHOD get_changing.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
    result = t1.

  ENDMETHOD.
  METHOD get_returning.
    DATA(t1) = CAST zcl_lnt_typed_identifier( me->returning ).
    result = t1.

  ENDMETHOD.
  METHOD get_exceptions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_parameters.ts:135|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr.
    DATA(t1) = i_parameter_5406.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/method_parameters.ts:139|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = i_parent_name.
    DATA(t4) = i_abstract_method.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257 ).
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA(t10) = CAST zcl_lnt_expression_node( t5 ).
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = CAST zcl_lnt_expression_node( t13 ).
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
        DATA(t23) = CAST zcl_lnt_expression_node( t13 ).
        t22 = t23.
        t21 = t22->get_first_token(  ).
        t17 = t21.
      ENDIF.
      t12 = t17.
      t11 = t12.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = CAST zcl_lnt_abstract_token( t11 ).
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = CAST zcl_lnt_abstract_token( t26 ).
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
        DATA(t35) = CAST zcl_lnt_abstract_token( t26 ).
        t34 = t35.
        t33 = t34.
        DATA t36 TYPE string.
        DATA(t37) = CAST zcl_lnt_abstract_token( t33 ).
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
      DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
      t42 = t43->scope.
      t41 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
      t44 = t45.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t44 ).
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      t50 = t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
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
          DATA(t62) = CAST zlnt_runtime_opti_4ba3bdccd169( t44 ).
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
        DATA(t68) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t69 = t70.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t67 ).
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
          DATA(t79) = CAST zcl_lnt_current_scope( t41 ).
          t78 = t79->current.
          t77 = t78.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = CAST zcl_lnt_spaghetti_scope_node( t77 ).
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
            DATA(t86) = CAST zcl_lnt_spaghetti_scope_node( t77 ).
            t85 = t86.
            DATA t87 TYPE string.
            DATA(t88) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
            t87 = t88->value.
            t84 = t85->find_class_definition( i_name = t87 ).
            t80 = t84.
          ENDIF.
          t76 = t80.
          t75 = t76.
          DATA t89 TYPE REF TO zif_lnt_class_definition.
          CLEAR t89.
          DATA t90 TYPE abap_bool.
          DATA(t91) = CAST zif_lnt_class_definition( t75 ).
          t90 = xsdbool( t91 IS BOUND ).
          IF t90 = abap_true.
            DATA t92 TYPE REF TO zif_lnt_class_definition.
            CLEAR t92.
            DATA(t93) = abap_true.
            IF t93 = abap_true.
              DATA t94 TYPE REF TO zif_lnt_class_definition.
              DATA(t95) = CAST zif_lnt_class_definition( t75 ).
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
            DATA(t102) = CAST zcl_lnt_current_scope( t41 ).
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
              DATA(t111) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
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
            DATA(t117) = CAST zcl_lnt_class( t98 ).
            t116 = xsdbool( t117 IS BOUND ).
            IF t116 = abap_true.
              DATA t118 TYPE REF TO zif_lnt_class_definition.
              DATA t119 TYPE REF TO zcl_lnt_class.
              DATA(t120) = CAST zcl_lnt_class( t98 ).
              t119 = t120.
              t118 = t119->gt_dfn_ins_src_obj_cls_ts_clss(  ).
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
        DATA(t124) = CAST zif_lnt_class_definition( t56 ).
        t123 = xsdbool( t124 IS BOUND ).
        IF t123 = abap_true.
          DATA t125 TYPE REF TO zif_lnt_interface_definition.
          DATA t126 TYPE REF TO zif_lnt_class_definition.
          DATA(t127) = CAST zif_lnt_class_definition( t56 ).
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
            DATA(t135) = CAST zlnt_runtime_opti_4ba3bdccd169( t44 ).
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
          DATA(t141) = CAST zlnt_runtime_opti_4ba3bdccd169( t131 ).
          t140 = t141.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          t142 = t143.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = CAST zlnt_runtime_opti_4ba3bdccd169( t140 ).
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
            DATA(t152) = CAST zcl_lnt_current_scope( t41 ).
            t151 = t152->current.
            t150 = t151.
            DATA t153 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t153.
            DATA(t154) = VALUE abap_bool( ).
            DATA(t155) = CAST zcl_lnt_spaghetti_scope_node( t150 ).
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
              DATA(t159) = CAST zcl_lnt_spaghetti_scope_node( t150 ).
              t158 = t159.
              DATA t160 TYPE string.
              DATA(t161) = CAST zlnt_runtime_opti_4ba3bdccd169( t131 ).
              t160 = t161->value.
              t157 = t158->find_interface_definition( i_name = t160 ).
              t153 = t157.
            ENDIF.
            t149 = t153.
            t148 = t149.
            DATA t162 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t162.
            DATA t163 TYPE abap_bool.
            DATA(t164) = CAST zif_lnt_interface_definition( t148 ).
            t163 = xsdbool( t164 IS BOUND ).
            IF t163 = abap_true.
              DATA t165 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t165.
              DATA(t166) = abap_true.
              IF t166 = abap_true.
                DATA t167 TYPE REF TO zif_lnt_interface_definition.
                DATA(t168) = CAST zif_lnt_interface_definition( t148 ).
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
              DATA(t175) = CAST zcl_lnt_current_scope( t41 ).
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
                DATA(t184) = CAST zlnt_runtime_opti_4ba3bdccd169( t131 ).
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
              DATA(t190) = CAST zcl_lnt_ob_interface( t171 ).
              t189 = xsdbool( t190 IS BOUND ).
              IF t189 = abap_true.
                DATA t191 TYPE REF TO zif_lnt_interface_definition.
                DATA t192 TYPE REF TO zcl_lnt_ob_interface.
                DATA t193 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t194) = CAST zcl_lnt_ob_interface( t171 ).
                t193 = t194.
                t192 = t193.
                DATA t195 TYPE REF TO zif_lnt_interface_definition.
                DATA(t196) = CAST zcl_lnt_ob_interface( t192 ).
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
          DATA(t200) = CAST zif_lnt_interface_definition( t129 ).
          t199 = xsdbool( t200 IS BOUND ).
          IF t199 = abap_true.
            DATA t201 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t201.
            DATA(t202) = abap_true.
            IF t202 = abap_true.
              DATA t203 TYPE REF TO zif_lnt_interface_definition.
              DATA(t204) = CAST zif_lnt_interface_definition( t129 ).
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
      DATA(t210) = CAST zif_lnt_interface_definition( t39 ).
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
        DATA(t218) = CAST zcl_lnt_syntax_input( t2 ).
        t217 = t218->scope.
        t216 = t217.
        DATA t219 TYPE REF TO zcl_lnt_ddic.
        DATA t220 TYPE REF TO zif_lnt_registry.
        DATA(t221) = CAST zcl_lnt_current_scope( t216 ).
        t220 = t221->reg.
        t219 = NEW zcl_lnt_ddic( i_reg_f149 = t220 ).
        t215 = t219.
        t214 = t215.
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t223) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
        t222 = t223.
        DATA(t224) = VALUE abap_bool( ).
        DATA(t225) = VALUE abap_bool( ).
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t227) = CAST zlnt_runtime_opti_4ba3bdccd169( t222 ).
        t226 = t227.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        t228 = t229.
        DATA(t230) = VALUE abap_bool( ).
        DATA(t231) = CAST zlnt_runtime_opti_4ba3bdccd169( t226 ).
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
          DATA(t235) = CAST zcl_lnt_ddic( t214 ).
          t234 = t235->reg.
          DATA t236 TYPE string.
          DATA(t237) = CAST zlnt_runtime_opti_4ba3bdccd169( t222 ).
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
      DATA(t239) = CAST zif_lnt_interface_definition( t39 ).
      t238 = xsdbool( t239 IS BOUND ).
      IF t238 = abap_true.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
        t240 = t241->scope.
        DATA(t242) = CAST zcl_lnt_abstract_token( t11 ).
        DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t243.
        DATA(t244) = abap_true.
        IF t244 = abap_true.
          DATA t245 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t246 TYPE REF TO zif_lnt_interface_definition.
          DATA(t247) = CAST zif_lnt_interface_definition( t39 ).
          t246 = t247.
          t245 ?= t246.
          t243 = t245.
        ELSE.
          DATA t248 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t248.
          t243 = t248.
        ENDIF.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t250) = |Object|.
        CREATE OBJECT t249.
        t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t249->sval = t250.
        DATA t251 TYPE string.
        DATA(t252) = CAST zcl_lnt_syntax_input( t2 ).
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
          DATA(t257) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
          IF t257 IS BOUND.
            IF t257->has = abap_true.
              t256 = xsdbool( strlen( t257->value ) > 0 ).
            ENDIF.
          ENDIF.
          t254 = t256.
        ENDIF.
        IF t254 = abap_true.
          DATA t258 TYPE REF TO zcl_lnt_current_scope.
          DATA(t259) = CAST zcl_lnt_syntax_input( t2 ).
          t258 = t259->scope.
          DATA(t260) = CAST zcl_lnt_abstract_token( t11 ).
          DATA t261 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t261.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t263) = |Object (Void)|.
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
            DATA(t269) = abap_true.
            IF t269 = abap_true.
              DATA t270 TYPE string.
              DATA t271 TYPE string.
              DATA(t272) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
              t271 = t272->value.
              DATA(t273) = strlen( t271 ).
              t270 = t271.
              IF t270 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t270 TO UPPER CASE.
              ELSE.
                t270 = zlnt_runtime_uppe_91169605024d=>full( t270 ).
              ENDIF.
              DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t274->has = abap_true.
              t274->value = t270.
              t268 = t274.
            ELSE.
              DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t275.
              t268 = t275.
            ENDIF.
            DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t276.
            DATA t277 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t277.
            t267 = NEW zcl_lnt_ireference_extras( i_oo_name = t268 i_oo_type = t276 i_found_qualified = t277 ).
            t265 = t267.
          ELSE.
            DATA t278 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t278.
            t265 = t278.
          ENDIF.
          t258->add_reference( i_usage = t260 i_referencing = t261 i_type_9913 = t262 i_filename = t264 i_extra = t265 ).
        ENDIF.
      ENDIF.
      DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t279.
      DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t280.
      DATA t281 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t281.
      DATA t282 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t282.
      DATA t283 TYPE REF TO zcl_lnt_expression_node.
      DATA t284 TYPE REF TO zcl_lnt_expression_node.
      DATA(t285) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t286) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0 ).
      t284 = t285->find_first_expression( i_type_9913 = t286 ).
      t283 = t284.
      DATA t287 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t287.
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = CAST zcl_lnt_expression_node( t283 ).
      IF t289 IS INITIAL.
        t288 = abap_true.
      ENDIF.
      IF t288 = abap_true.
        DATA t290 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t290.
        t287 = t290.
      ELSE.
        DATA t291 TYPE REF TO zcl_lnt_abstract_token.
        DATA t292 TYPE REF TO zcl_lnt_expression_node.
        DATA(t293) = CAST zcl_lnt_expression_node( t283 ).
        t292 = t293.
        t291 = t292->get_first_token(  ).
        t287 = t291.
      ENDIF.
      t282 = t287.
      t281 = t282.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      DATA(t295) = VALUE abap_bool( ).
      DATA(t296) = CAST zcl_lnt_abstract_token( t281 ).
      IF t296 IS INITIAL.
        t295 = abap_true.
      ENDIF.
      IF t295 = abap_true.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        t294 = t297.
      ELSE.
        DATA t298 TYPE string.
        DATA t299 TYPE REF TO zcl_lnt_abstract_token.
        DATA t300 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t301) = CAST zcl_lnt_abstract_token( t281 ).
        t300 = t301.
        t299 = t300.
        DATA t302 TYPE string.
        DATA(t303) = CAST zcl_lnt_abstract_token( t299 ).
        t302 = t303->str.
        t298 = t302.
        DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t304->has = abap_true.
        t304->value = t298.
        t294 = t304.
      ENDIF.
      t280 = t294.
      t279 = t280.
      DATA t305 TYPE REF TO zif_lnt_event_definition.
      DATA t306 TYPE REF TO zif_lnt_event_definition.
      DATA t307 TYPE REF TO zcl_lnt_object_oriented.
      DATA t308 TYPE REF TO zcl_lnt_current_scope.
      DATA(t309) = CAST zcl_lnt_syntax_input( t2 ).
      t308 = t309->scope.
      t307 = NEW zcl_lnt_object_oriented( i_scope = t308 ).
      DATA(t310) = CAST zif_lnt_interface_definition( t39 ).
      DATA(t311) = CAST zlnt_runtime_opti_4ba3bdccd169( t279 ).
      t306 = t307->search_event( i_def = t310 i_name = t311 ).
      t305 = t306.
      DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t313 TYPE REF TO zcl_lnt_expression_node.
      DATA(t314) = CAST zcl_lnt_expression_node( t5 ).
      t313 = t314.
      DATA(t315) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
      t312 = t313->find_all_expressions( i_type_9913 = t315 ).
      DATA t316 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t316.
      DATA t317 TYPE REF TO object.
      CLEAR t317.
      LOOP AT t312->items INTO t317.
        t316 ?= t317.
        DATA t318 TYPE REF TO zcl_lnt_abstract_token.
        DATA t319 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t320) = CAST zcl_lnt_expression_node( t316 ).
        t319 = t320->get_first_token(  ).
        t318 = t319.
        DATA(t321) = VALUE string( ).
        DATA(t322) = VALUE string( ).
        DATA t323 TYPE string.
        DATA t324 TYPE string.
        DATA t325 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t326) = CAST zcl_lnt_abstract_token( t318 ).
        t325 = t326.
        DATA t327 TYPE string.
        DATA(t328) = CAST zcl_lnt_abstract_token( t325 ).
        t327 = t328->str.
        t324 = t327.
        DATA(t329) = strlen( t324 ).
        t323 = t324.
        IF t323 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t323 TO UPPER CASE.
        ELSE.
          t323 = zlnt_runtime_uppe_91169605024d=>full( t323 ).
        ENDIF.
        DATA(t330) = |!|.
        DATA(t331) = ||.
        DATA(t332) = strlen( t323 ).
        t322 = t323.
        REPLACE ALL OCCURRENCES OF t330 IN t322 WITH t331.
        t321 = t322.
        DATA(t333) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
        DATA(t334) = t321.
        APPEND t334 TO t333->items.
        DATA t335 TYPE abap_bool.
        DATA t336 TYPE abap_bool.
        DATA(t337) = t321.
        DATA(t338) = |SENDER|.
        t336 = xsdbool( t337 = t338 ).
        t335 = t336.
        IF t336 = abap_true.
          DATA t339 TYPE abap_bool.
          DATA(t340) = CAST zif_lnt_interface_definition( t39 ).
          t339 = xsdbool( t340 IS BOUND ).
          t335 = t339.
        ENDIF.
        IF t335 = abap_true.
          DATA(t341) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
          DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t342.
          DATA(t343) = CAST zcl_lnt_abstract_token( t318 ).
          DATA(t344) = CONV string( me->filename ).
          DATA t345 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t346 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t347 TYPE REF TO zif_lnt_interface_definition.
          DATA(t348) = CAST zif_lnt_interface_definition( t39 ).
          t347 = t348.
          t346 ?= t347.
          DATA t349 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t349.
          t345 = NEW zcl_lnt_object_reference_type( i_id = t346 i_extra = t349 ).
          DATA t350 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t350.
          DATA(t351) = abap_true.
          IF t351 = abap_true.
            DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t354 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t354.
            t353 = t354.
            DATA(t355) = CAST zlnt_runtime_arra_8ecd6afe19e0( t353 ).
            DATA(t356) = |event_parameter|.
            APPEND t356 TO t355->items.
            DATA(t357) = CAST zlnt_runtime_arra_8ecd6afe19e0( t353 ).
            t352 = t357.
            t350 = t352.
          ELSE.
            DATA t358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t358.
            t350 = t358.
          ENDIF.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          t342 = NEW zcl_lnt_typed_identifier( i_token = t343 i_filename = t344 i_type_9913 = t345 i_meta = t350 i_value = t359 ).
          APPEND t342 TO t341->items.
          CONTINUE.
        ENDIF.
        DATA t360 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t360.
        DATA t361 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t361.
        DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t362.
        DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t363.
        DATA t364 TYPE REF TO zif_lnt_event_definition.
        DATA(t365) = CAST zif_lnt_event_definition( t305 ).
        t364 = t365.
        DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t366.
        DATA(t367) = VALUE abap_bool( ).
        DATA(t368) = CAST zif_lnt_event_definition( t364 ).
        IF t368 IS INITIAL.
          t367 = abap_true.
        ENDIF.
        IF t367 = abap_true.
          DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t369.
          t366 = t369.
        ELSE.
          DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t371 TYPE REF TO zif_lnt_event_definition.
          DATA(t372) = CAST zif_lnt_event_definition( t364 ).
          t371 = t372.
          t370 = t371->get_parameters(  ).
          t366 = t370.
        ENDIF.
        t363 = t366.
        t362 = t363.
        DATA t373 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t373.
        DATA(t374) = VALUE abap_bool( ).
        DATA(t375) = CAST zlnt_runtime_arra_c22708faf2e3( t362 ).
        IF t375 IS INITIAL.
          t374 = abap_true.
        ENDIF.
        IF t374 = abap_true.
          DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t376.
          t373 = t376.
        ELSE.
          DATA t377 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t377.
          DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t380) = CAST zlnt_runtime_arra_c22708faf2e3( t362 ).
          t379 = t380.
          t378 = t379.
          DATA t381 TYPE i.
          DATA t382 TYPE i.
          DATA(t383) = CAST zlnt_runtime_arra_c22708faf2e3( t378 ).
          t382 = lines( t383->items ).
          t381 = t382.
          DATA t384 TYPE i.
          DATA(t385) = 0.
          t384 = t385.
          DATA t386 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t387 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t387.
          t386 = t387.
          DO.
            DATA t388 TYPE abap_bool.
            DATA(t389) = t384.
            DATA(t390) = t381.
            t388 = xsdbool( t389 < t390 ).
            IF t388 = abap_false.
              EXIT.
            ENDIF.
            DATA t391 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t392 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t378 ).
            DATA(t395) = t384.
            DATA t396 TYPE REF TO object.
            t396 = t394->get( p0 = t395 ).
            t393 ?= t396.
            t392 = t393.
            t391 = t392.
            DATA(t397) = VALUE abap_bool( ).
            DATA(t398) = VALUE string( ).
            DATA(t399) = VALUE string( ).
            DATA t400 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t401) = CAST zcl_lnt_typed_identifier( t391 ).
            t400 = t401.
            DATA(t402) = VALUE string( ).
            DATA t403 TYPE string.
            DATA t404 TYPE string.
            DATA t405 TYPE REF TO zcl_lnt_abstract_token.
            DATA t406 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t407) = CAST zcl_lnt_fi_identifier( t400 ).
            t406 = t407->token.
            t405 = t406.
            DATA t408 TYPE string.
            DATA(t409) = CAST zcl_lnt_abstract_token( t405 ).
            t408 = t409->str.
            t404 = t408.
            t403 = t404.
            DATA(t410) = VALUE abap_bool( ).
            DATA(t411) = VALUE string( ).
            DATA(t412) = t403.
            DATA(t413) = 0.
            DATA(t414) = 1.
            DATA(t415) = strlen( t412 ).
            IF t413 < 0.
              t413 = t413 + t415.
              IF t413 < 0.
                t413 = 0.
              ENDIF.
            ENDIF.
            IF t413 > t415 OR t414 <= 0.
              CLEAR t411.
            ELSE.
              IF t414 > t415 - t413.
                t414 = t415 - t413.
              ENDIF.
              t411 = t412+t413(t414).
            ENDIF.
            DATA(t416) = |!|.
            t410 = xsdbool( t411 = t416 ).
            IF t410 = abap_true.
              DATA(t417) = VALUE string( ).
              DATA t418 TYPE string.
              DATA(t419) = t403.
              t418 = t419.
              DATA(t420) = VALUE string( ).
              DATA(t421) = t418.
              DATA(t422) = 1.
              DATA t423 TYPE i.
              DATA(t424) = t418.
              DATA(t425) = strlen( t424 ).
              t423 = t425.
              DATA(t426) = strlen( t421 ).
              IF t422 < 0.
                t422 = t422 + t426.
                IF t422 < 0.
                  t422 = 0.
                ENDIF.
              ENDIF.
              IF t422 > t426 OR t423 <= 0.
                CLEAR t420.
              ELSE.
                IF t423 > t426 - t422.
                  t423 = t426 - t422.
                ENDIF.
                t420 = t421+t422(t423).
              ENDIF.
              t417 = t420.
              t403 = t417.
            ENDIF.
            DATA(t427) = t403.
            t402 = t427.
            t399 = t402.
            DATA(t428) = strlen( t399 ).
            t398 = t399.
            IF t398 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t398 TO UPPER CASE.
            ELSE.
              t398 = zlnt_runtime_uppe_91169605024d=>full( t398 ).
            ENDIF.
            DATA(t429) = t321.
            t397 = xsdbool( t398 = t429 ).
            IF t397 = abap_true.
              DATA t430 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t430.
              DATA(t431) = abap_true.
              IF t431 = abap_true.
                DATA(t432) = CAST zcl_lnt_typed_identifier( t391 ).
                t430 = t432.
              ELSE.
                DATA t433 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t433.
                t430 = t433.
              ENDIF.
              t386 = t430.
              EXIT.
            ENDIF.
            DATA t434 TYPE i.
            DATA(t435) = t384.
            DATA(t436) = 1.
            t434 = t435 + t436.
            t384 = t434.
          ENDDO.
          DATA(t437) = CAST zcl_lnt_typed_identifier( t386 ).
          t377 = t437.
          t373 = t377.
        ENDIF.
        t361 = t373.
        t360 = t361.
        DATA t438 TYPE abap_bool.
        DATA(t439) = CAST zcl_lnt_typed_identifier( t360 ).
        t438 = xsdbool( t439 IS BOUND ).
        IF t438 = abap_true.
          DATA(t440) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
          DATA t441 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t441.
          DATA(t442) = CAST zcl_lnt_abstract_token( t318 ).
          DATA(t443) = CONV string( me->filename ).
          DATA t444 TYPE REF TO zcl_lnt_abstract_type.
          DATA t445 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t446 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t447) = CAST zcl_lnt_typed_identifier( t360 ).
          t446 = t447.
          t445 = t446.
          DATA t448 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t449) = CAST zcl_lnt_typed_identifier( t445 ).
          t448 = t449->type_cba0.
          t444 = t448.
          DATA t450 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t450.
          DATA(t451) = abap_true.
          IF t451 = abap_true.
            DATA t452 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t453 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t454 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t454.
            t453 = t454.
            DATA(t455) = CAST zlnt_runtime_arra_8ecd6afe19e0( t453 ).
            DATA(t456) = |event_parameter|.
            APPEND t456 TO t455->items.
            DATA(t457) = CAST zlnt_runtime_arra_8ecd6afe19e0( t453 ).
            t452 = t457.
            t450 = t452.
          ELSE.
            DATA t458 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t458.
            t450 = t458.
          ENDIF.
          DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t459.
          t441 = NEW zcl_lnt_typed_identifier( i_token = t442 i_filename = t443 i_type_9913 = t444 i_meta = t450 i_value = t459 ).
          APPEND t441 TO t440->items.
        ELSE.
          DATA(t460) = t207.
          IF t460 = abap_true.
            DATA(t461) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
            DATA t462 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t462.
            DATA(t463) = CAST zcl_lnt_abstract_token( t318 ).
            DATA(t464) = CONV string( me->filename ).
            DATA t465 TYPE REF TO zcl_lnt_void_type.
            DATA(t466) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
            DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t467.
            t465 = zcl_lnt_void_type=>get_db65( i_voided = t466 i_qualified_name = t467 ).
            DATA t468 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t468.
            DATA(t469) = abap_true.
            IF t469 = abap_true.
              DATA t470 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t471 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t472 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t472.
              t471 = t472.
              DATA(t473) = CAST zlnt_runtime_arra_8ecd6afe19e0( t471 ).
              DATA(t474) = |event_parameter|.
              APPEND t474 TO t473->items.
              DATA(t475) = CAST zlnt_runtime_arra_8ecd6afe19e0( t471 ).
              t470 = t475.
              t468 = t470.
            ELSE.
              DATA t476 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t476.
              t468 = t476.
            ENDIF.
            DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t477.
            t462 = NEW zcl_lnt_typed_identifier( i_token = t463 i_filename = t464 i_type_9913 = t465 i_meta = t468 i_value = t477 ).
            APPEND t462 TO t461->items.
          ELSE.
            DATA t478 TYPE REF TO zcl_lnt_unknown_type.
            DATA t479 TYPE REF TO zcl_lnt_unknown_type.
            DATA t480 TYPE string.
            DATA t481 TYPE string.
            DATA(t482) = |handler parameter not found "|.
            DATA(t483) = t321.
            DATA(t484) = strlen( t482 ).
            t481 = |{ t482 }{ t483 }|.
            DATA(t485) = |"|.
            DATA(t486) = strlen( t481 ).
            t480 = |{ t481 }{ t485 }|.
            DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t487.
            t479 = NEW zcl_lnt_unknown_type( i_error = t480 i_qualified_name = t487 ).
            t478 = t479.
            DATA(t488) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
            DATA t489 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t489.
            DATA(t490) = CAST zcl_lnt_abstract_token( t318 ).
            DATA(t491) = CONV string( me->filename ).
            DATA(t492) = CAST zcl_lnt_unknown_type( t478 ).
            DATA t493 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t493.
            DATA(t494) = abap_true.
            IF t494 = abap_true.
              DATA t495 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t496 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t497 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t497.
              t496 = t497.
              DATA(t498) = CAST zlnt_runtime_arra_8ecd6afe19e0( t496 ).
              DATA(t499) = |event_parameter|.
              APPEND t499 TO t498->items.
              DATA(t500) = CAST zlnt_runtime_arra_8ecd6afe19e0( t496 ).
              t495 = t500.
              t493 = t495.
            ELSE.
              DATA t501 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t501.
              t493 = t501.
            ENDIF.
            DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t502.
            t489 = NEW zcl_lnt_typed_identifier( i_token = t490 i_filename = t491 i_type_9913 = t492 i_meta = t493 i_value = t502 ).
            APPEND t489 TO t488->items.
          ENDIF.
        ENDIF.
      ENDLOOP.
      RETURN.
    ENDIF.
    DATA t503 TYPE REF TO zcl_lnt_expression_node.
    DATA t504 TYPE REF TO zcl_lnt_expression_node.
    DATA(t505) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t506) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97 ).
    t504 = t505->find_first_expression( i_type_9913 = t506 ).
    t503 = t504.
    DATA t507 TYPE abap_bool.
    DATA(t508) = CAST zcl_lnt_expression_node( t503 ).
    t507 = xsdbool( t508 IS BOUND ).
    IF t507 = abap_true.
      DATA(t509) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
      DATA t510 TYPE REF TO zcl_lnt_expression_node.
      DATA(t511) = CAST zcl_lnt_expression_node( t503 ).
      t510 = t511.
      DATA(t512) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t513 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t514 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t515 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t515.
      t514 = t515.
      DATA(t516) = CAST zlnt_runtime_arra_8ecd6afe19e0( t514 ).
      DATA(t517) = |importing|.
      APPEND t517 TO t516->items.
      DATA(t518) = CAST zlnt_runtime_arra_8ecd6afe19e0( t514 ).
      t513 = t518.
      DATA(t519) = t4.
      me->add_51c1( i_target_5f8a = t509 i_source_75cf = t510 i_input_967e = t512 i_meta = t513 i_abstract_method = t519 ).
      DATA t520 TYPE abap_bool.
      DATA t521 TYPE REF TO zcl_lnt_abstract_token.
      DATA t522 TYPE REF TO zcl_lnt_expression_node.
      DATA(t523) = CAST zcl_lnt_expression_node( t503 ).
      t522 = t523.
      DATA(t524) = |PREFERRED|.
      t521 = t522->find_direct_token_by_text( i_text = t524 ).
      t520 = xsdbool( t521 IS BOUND ).
      IF t520 = abap_true.
        DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t525.
        DATA(t526) = abap_true.
        IF t526 = abap_true.
          DATA t527 TYPE string.
          DATA t528 TYPE string.
          DATA t529 TYPE REF TO zcl_lnt_abstract_token.
          DATA t530 TYPE REF TO zcl_lnt_abstract_token.
          DATA t531 TYPE REF TO zcl_lnt_expression_node.
          DATA(t532) = CAST zcl_lnt_expression_node( t503 ).
          t531 = t532.
          t530 = t531->get_last_token(  ).
          t529 = t530.
          DATA t533 TYPE string.
          DATA(t534) = CAST zcl_lnt_abstract_token( t529 ).
          t533 = t534->str.
          t528 = t533.
          DATA(t535) = strlen( t528 ).
          t527 = t528.
          IF t527 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t527 TO UPPER CASE.
          ELSE.
            t527 = zlnt_runtime_uppe_91169605024d=>full( t527 ).
          ENDIF.
          DATA(t536) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t536->has = abap_true.
          t536->value = t527.
          t525 = t536.
        ELSE.
          DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t537.
          t525 = t537.
        ENDIF.
        me->preferred = t525.
        DATA(t538) = VALUE abap_bool( ).
        DATA t539 TYPE string.
        DATA(t540) = CAST zlnt_runtime_opti_4ba3bdccd169( me->preferred ).
        t539 = t540->value.
        DATA(t541) = |!|.
        DATA(t542) = strlen( t539 ).
        DATA t543 TYPE i.
        DATA(t544) = VALUE i( ).
        DATA(t545) = VALUE string( ).
        t543 = strlen( t541 ).
        IF t543 = 0.
          t538 = abap_true.
        ELSEIF t543 <= t542.
          t544 = 0.
          t545 = t539+t544(t543).
          IF t545 = t541.
            t538 = abap_true.
          ENDIF.
        ENDIF.
        IF t538 = abap_true.
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t546.
          DATA(t547) = abap_true.
          IF t547 = abap_true.
            DATA(t548) = VALUE string( ).
            DATA t549 TYPE string.
            DATA t550 TYPE string.
            DATA(t551) = CAST zlnt_runtime_opti_4ba3bdccd169( me->preferred ).
            t550 = t551->value.
            t549 = t550.
            DATA(t552) = VALUE string( ).
            DATA(t553) = t549.
            DATA(t554) = 1.
            DATA t555 TYPE i.
            DATA(t556) = t549.
            DATA(t557) = strlen( t556 ).
            t555 = t557.
            DATA(t558) = strlen( t553 ).
            t554 = COND i( WHEN t554 < 0 THEN 0 WHEN t554 > t558 THEN t558 ELSE t554 ).
            t555 = COND i( WHEN t555 < 0 THEN 0 WHEN t555 > t558 THEN t558 ELSE t555 ).
            IF t554 > t555.
              t558 = t554.
              t554 = t555.
              t555 = t558.
            ENDIF.
            t558 = t555 - t554.
            t552 = t553+t554(t558).
            t548 = t552.
            DATA(t559) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t559->has = abap_true.
            t559->value = t548.
            t546 = t559.
          ELSE.
            DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t560.
            t546 = t560.
          ENDIF.
          me->preferred = t546.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t561 TYPE REF TO zcl_lnt_expression_node.
    DATA t562 TYPE REF TO zcl_lnt_expression_node.
    DATA(t563) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t564) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a ).
    t562 = t563->find_first_expression( i_type_9913 = t564 ).
    t561 = t562.
    DATA t565 TYPE abap_bool.
    DATA(t566) = CAST zcl_lnt_expression_node( t561 ).
    t565 = xsdbool( t566 IS BOUND ).
    IF t565 = abap_true.
      DATA(t567) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
      DATA t568 TYPE REF TO zcl_lnt_expression_node.
      DATA(t569) = CAST zcl_lnt_expression_node( t561 ).
      t568 = t569.
      DATA(t570) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t571 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t572 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t573 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t573.
      t572 = t573.
      DATA(t574) = CAST zlnt_runtime_arra_8ecd6afe19e0( t572 ).
      DATA(t575) = |exporting|.
      APPEND t575 TO t574->items.
      DATA(t576) = CAST zlnt_runtime_arra_8ecd6afe19e0( t572 ).
      t571 = t576.
      DATA(t577) = t4.
      me->add_51c1( i_target_5f8a = t567 i_source_75cf = t568 i_input_967e = t570 i_meta = t571 i_abstract_method = t577 ).
    ENDIF.
    DATA t578 TYPE REF TO zcl_lnt_expression_node.
    DATA t579 TYPE REF TO zcl_lnt_expression_node.
    DATA(t580) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t581) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99 ).
    t579 = t580->find_first_expression( i_type_9913 = t581 ).
    t578 = t579.
    DATA t582 TYPE abap_bool.
    DATA(t583) = CAST zcl_lnt_expression_node( t578 ).
    t582 = xsdbool( t583 IS BOUND ).
    IF t582 = abap_true.
      DATA(t584) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
      DATA t585 TYPE REF TO zcl_lnt_expression_node.
      DATA(t586) = CAST zcl_lnt_expression_node( t578 ).
      t585 = t586.
      DATA(t587) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t588 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t589 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t590 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t590.
      t589 = t590.
      DATA(t591) = CAST zlnt_runtime_arra_8ecd6afe19e0( t589 ).
      DATA(t592) = |changing|.
      APPEND t592 TO t591->items.
      DATA(t593) = CAST zlnt_runtime_arra_8ecd6afe19e0( t589 ).
      t588 = t593.
      DATA(t594) = t4.
      me->add_51c1( i_target_5f8a = t584 i_source_75cf = t585 i_input_967e = t587 i_meta = t588 i_abstract_method = t594 ).
    ENDIF.
    DATA t595 TYPE REF TO zcl_lnt_expression_node.
    DATA t596 TYPE REF TO zcl_lnt_expression_node.
    DATA(t597) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t598) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384 ).
    t596 = t597->find_first_expression( i_type_9913 = t598 ).
    t595 = t596.
    DATA t599 TYPE abap_bool.
    DATA(t600) = CAST zcl_lnt_expression_node( t595 ).
    t599 = xsdbool( t600 IS BOUND ).
    IF t599 = abap_true.
      DATA t601 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t601.
      DATA(t602) = abap_true.
      IF t602 = abap_true.
        DATA t603 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t604 TYPE REF TO zcl_lnt_expression_node.
        DATA(t605) = CAST zcl_lnt_expression_node( t595 ).
        t604 = t605.
        DATA(t606) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t608 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t609 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t609.
        t608 = t609.
        DATA(t610) = CAST zlnt_runtime_arra_8ecd6afe19e0( t608 ).
        DATA(t611) = |returning|.
        APPEND t611 TO t610->items.
        DATA(t612) = CAST zlnt_runtime_arra_8ecd6afe19e0( t608 ).
        t607 = t612.
        t603 = zcl_lnt_sy_mthd_df_rtrnng=>run_syntax( i_node = t604 i_input_967e = t606 i_meta = t607 ).
        t601 = t603.
      ELSE.
        DATA t613 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t613.
        t601 = t613.
      ENDIF.
      me->returning = t601.
    ENDIF.
    DATA(t614) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t615) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t616) = t3.
    me->workaround_rap( i_node = t614 i_input_967e = t615 i_parent_name = t616 ).
  ENDMETHOD.
  METHOD check_duplicate_names.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t2) = NEW zlnt_runtime_set__1827558fd4c7(  ).
    t1 = t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_all(  ) ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t3->items INTO t5.
      t4 ?= t5.
      DATA(t6) = VALUE string( ).
      DATA(t7) = VALUE string( ).
      DATA(t8) = VALUE string( ).
      DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t10) = CAST zcl_lnt_typed_identifier( t4 ).
      t9 = t10.
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = CAST zcl_lnt_fi_identifier( t9 ).
      t15 = t16->token.
      t14 = t15.
      DATA t17 TYPE string.
      DATA(t18) = CAST zcl_lnt_abstract_token( t14 ).
      t17 = t18->str.
      t13 = t17.
      t12 = t13.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE string( ).
      DATA(t21) = t12.
      DATA(t22) = 0.
      DATA(t23) = 1.
      DATA(t24) = strlen( t21 ).
      IF t22 < 0.
        t22 = t22 + t24.
        IF t22 < 0.
          t22 = 0.
        ENDIF.
      ENDIF.
      IF t22 > t24 OR t23 <= 0.
        CLEAR t20.
      ELSE.
        IF t23 > t24 - t22.
          t23 = t24 - t22.
        ENDIF.
        t20 = t21+t22(t23).
      ENDIF.
      DATA(t25) = |!|.
      t19 = xsdbool( t20 = t25 ).
      IF t19 = abap_true.
        DATA(t26) = VALUE string( ).
        DATA t27 TYPE string.
        DATA(t28) = t12.
        t27 = t28.
        DATA(t29) = VALUE string( ).
        DATA(t30) = t27.
        DATA(t31) = 1.
        DATA t32 TYPE i.
        DATA(t33) = t27.
        DATA(t34) = strlen( t33 ).
        t32 = t34.
        DATA(t35) = strlen( t30 ).
        IF t31 < 0.
          t31 = t31 + t35.
          IF t31 < 0.
            t31 = 0.
          ENDIF.
        ENDIF.
        IF t31 > t35 OR t32 <= 0.
          CLEAR t29.
        ELSE.
          IF t32 > t35 - t31.
            t32 = t35 - t31.
          ENDIF.
          t29 = t30+t31(t32).
        ENDIF.
        t26 = t29.
        t12 = t26.
      ENDIF.
      DATA(t36) = t12.
      t11 = t36.
      t8 = t11.
      DATA(t37) = strlen( t8 ).
      t7 = t8.
      IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t7 TO UPPER CASE.
      ELSE.
        t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
      ENDIF.
      t6 = t7.
      DATA t38 TYPE abap_bool.
      DATA(t39) = CAST zlnt_runtime_set__1827558fd4c7( t1 ).
      DATA(t40) = t6.
      t38 = t39->has( p0 = t40 ).
      IF t38 = abap_true.
        DATA t41 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA t45 TYPE string.
          DATA t46 TYPE string.
          DATA(t47) = |Method parameter "|.
          DATA(t48) = t6.
          DATA(t49) = strlen( t47 ).
          t46 = |{ t47 }{ t48 }|.
          DATA(t50) = |" already defined|.
          DATA(t51) = strlen( t46 ).
          t45 = |{ t46 }{ t50 }|.
          DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t52->has = abap_true.
          t52->value = t45.
          t43 = t52.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          t43 = t53.
        ENDIF.
        t42 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t43 ).
        t41 = NEW #( ).
        t41->payload = t42.
        RAISE EXCEPTION t41.
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t55) = CAST zlnt_runtime_set__1827558fd4c7( t1 ).
      DATA(t56) = t6.
      t54 = t55->add( p0 = t56 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD check_name_lengths.
    DATA(t1) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_all(  ) ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = VALUE i( ).
      DATA(t7) = VALUE string( ).
      DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t9) = CAST zcl_lnt_typed_identifier( t3 ).
      t8 = t9.
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = CAST zcl_lnt_fi_identifier( t8 ).
      t14 = t15->token.
      t13 = t14.
      DATA t16 TYPE string.
      DATA(t17) = CAST zcl_lnt_abstract_token( t13 ).
      t16 = t17->str.
      t12 = t16.
      t11 = t12.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE string( ).
      DATA(t20) = t11.
      DATA(t21) = 0.
      DATA(t22) = 1.
      DATA(t23) = strlen( t20 ).
      IF t21 < 0.
        t21 = t21 + t23.
        IF t21 < 0.
          t21 = 0.
        ENDIF.
      ENDIF.
      IF t21 > t23 OR t22 <= 0.
        CLEAR t19.
      ELSE.
        IF t22 > t23 - t21.
          t22 = t23 - t21.
        ENDIF.
        t19 = t20+t21(t22).
      ENDIF.
      DATA(t24) = |!|.
      t18 = xsdbool( t19 = t24 ).
      IF t18 = abap_true.
        DATA(t25) = VALUE string( ).
        DATA t26 TYPE string.
        DATA(t27) = t11.
        t26 = t27.
        DATA(t28) = VALUE string( ).
        DATA(t29) = t26.
        DATA(t30) = 1.
        DATA t31 TYPE i.
        DATA(t32) = t26.
        DATA(t33) = strlen( t32 ).
        t31 = t33.
        DATA(t34) = strlen( t29 ).
        IF t30 < 0.
          t30 = t30 + t34.
          IF t30 < 0.
            t30 = 0.
          ENDIF.
        ENDIF.
        IF t30 > t34 OR t31 <= 0.
          CLEAR t28.
        ELSE.
          IF t31 > t34 - t30.
            t31 = t34 - t30.
          ENDIF.
          t28 = t29+t30(t31).
        ENDIF.
        t25 = t28.
        t11 = t25.
      ENDIF.
      DATA(t35) = t11.
      t10 = t35.
      t7 = t10.
      DATA(t36) = strlen( t7 ).
      t6 = t36.
      DATA(t37) = 30.
      t5 = xsdbool( t6 > t37 ).
      IF t5 = abap_true.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t39) = CAST zcl_lnt_syntax_input( t1 ).
        t38 = t39->issues.
        DATA t40 TYPE REF TO zcl_lnt_issue.
        DATA(t41) = CAST zcl_lnt_syntax_input( t1 ).
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t44) = CAST zcl_lnt_typed_identifier( t3 ).
        t43 = t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = CAST zcl_lnt_fi_identifier( t43 ).
        t45 = t46->token.
        t42 = t45.
        DATA(t47) = |Method parameter name longer than 30 characters|.
        DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t48.
        t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t41 i_token = t42 i_message_26cb = t47 i_fix = t48 ).
        APPEND t40 TO t38->items.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD workaround_rap.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = i_parent_name.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t7) = |RESULT|.
    t5 = t6->find_expression_after_token( i_text = t7 ).
    t4 = t5.
    DATA(t8) = VALUE string( ).
    DATA t9 TYPE string.
    DATA t10 TYPE string.
    DATA(t11) = CAST zcl_lnt_statement_node( t1 ).
    t10 = t11->concat_tokens(  ).
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
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t18) = |IMPORTING|.
    t16 = t17->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE abap_bool.
    DATA(t21) = CAST zcl_lnt_expression_node( t15 ).
    t20 = xsdbool( t21 IS BOUND ).
    IF t20 = abap_true.
      DATA(t22) = CAST zcl_lnt_expression_node( t15 ).
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
        DATA(t31) = CAST zcl_lnt_statement_node( t1 ).
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
    DATA t34 TYPE abap_bool.
    DATA(t35) = CAST zcl_lnt_expression_node( t13 ).
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
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA(t47) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t48) = |LOCK|.
        t46 = t47->find_expression_after_token( i_text = t48 ).
        t45 = t46.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = CAST zcl_lnt_expression_node( t45 ).
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t49 = t52.
        ELSE.
          DATA t53 TYPE string.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          DATA(t55) = CAST zcl_lnt_expression_node( t45 ).
          t54 = t55.
          t53 = t54->concat_tokens(  ).
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
      DATA(t59) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
      t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      LOOP AT t58->items INTO t62.
        t61 ?= t62.
        DATA(t63) = VALUE abap_bool( ).
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA(t66) = CAST zcl_lnt_expression_node( t61 ).
          t64 = t66.
        ELSE.
          DATA t67 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t67.
          t64 = t67.
        ENDIF.
        DATA(t68) = CAST zcl_lnt_expression_node( t4 ).
        t63 = xsdbool( t64 = t68 ).
        IF t63 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t69 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t70.
        DATA(t71) = VALUE abap_bool( ).
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t73) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
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
          DATA t78 TYPE REF TO zcl_lnt_void_type.
          CLEAR t78.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t80) = abap_true.
          IF t80 = abap_true.
            DATA(t81) = |RapMethodParameter|.
            DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t82->has = abap_true.
            t82->value = t81.
            t79 = t82.
          ELSE.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            t79 = t83.
          ENDIF.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t78 = zcl_lnt_void_type=>get_db65( i_voided = t79 i_qualified_name = t84 ).
          t70 = t78.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_abstract_type.
          DATA t86 TYPE REF TO zcl_lnt_basic_types.
          DATA(t87) = CAST zcl_lnt_syntax_input( t2 ).
          t86 = NEW zcl_lnt_basic_types( i_input_967e = t87 ).
          DATA t88 TYPE string.
          DATA(t89) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
          t88 = t89->value.
          DATA t90 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t90.
          t85 = t86->rap_table_for( i_entity_name = t88 i_options = t90 ).
          t70 = t85.
        ENDIF.
        t69 = t70.
        DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
        DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t92.
        DATA t93 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t94) = CAST zcl_lnt_expression_node( t61 ).
        t93 = t94->get_first_token(  ).
        DATA t95 TYPE string.
        DATA(t96) = CAST zcl_lnt_syntax_input( t2 ).
        t95 = t96->filename.
        DATA(t97) = CAST zcl_lnt_abstract_type( t69 ).
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t102.
          t101 = t102.
          DATA(t103) = CAST zlnt_runtime_arra_8ecd6afe19e0( t101 ).
          DATA(t104) = |importing|.
          APPEND t104 TO t103->items.
          DATA(t105) = CAST zlnt_runtime_arra_8ecd6afe19e0( t101 ).
          t100 = t105.
          t98 = t100.
        ELSE.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t106.
          t98 = t106.
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        t92 = NEW zcl_lnt_typed_identifier( i_token = t93 i_filename = t95 i_type_9913 = t97 i_meta = t98 i_value = t107 ).
        APPEND t92 TO t91->items.
      ENDLOOP.
      DATA(t108) = VALUE abap_bool( ).
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t110) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      t111 = t112.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = VALUE abap_bool( ).
      DATA(t115) = CAST zlnt_runtime_opti_4ba3bdccd169( t109 ).
      IF t115 IS INITIAL.
        t114 = abap_true.
      ELSEIF t115->has = abap_false.
        t114 = abap_true.
      ENDIF.
      t113 = xsdbool( t114 = abap_false ).
      t108 = t113.
      IF t108 = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_abstract_token.
        DATA t118 TYPE REF TO zcl_lnt_expression_node.
        DATA(t119) = CAST zcl_lnt_expression_node( t13 ).
        t118 = t119.
        t117 = t118->get_first_token(  ).
        t116 = t117.
        DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
        DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t121.
        DATA t122 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t123 TYPE REF TO zcl_lnt_position.
        DATA t124 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t125) = CAST zcl_lnt_abstract_token( t116 ).
        t124 = t125.
        DATA t126 TYPE REF TO zcl_lnt_position.
        DATA(t127) = CAST zcl_lnt_abstract_token( t124 ).
        t126 = t127->start.
        t123 = t126.
        DATA(t128) = |failed|.
        t122 = NEW zcl_lnt_lx_identifier( i_start = t123 i_str = t128 ).
        DATA t129 TYPE string.
        DATA(t130) = CAST zcl_lnt_syntax_input( t2 ).
        t129 = t130->filename.
        DATA t131 TYPE REF TO zcl_lnt_void_type.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        DATA(t133) = abap_true.
        IF t133 = abap_true.
          DATA t134 TYPE string.
          DATA t135 TYPE string.
          DATA(t136) = |RESPONSE FOR FAILED EARLY |.
          DATA t137 TYPE string.
          DATA(t138) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
          t137 = t138->value.
          DATA(t139) = strlen( t136 ).
          t135 = |{ t136 }{ t137 }|.
          DATA(t140) = ||.
          DATA(t141) = strlen( t135 ).
          t134 = |{ t135 }{ t140 }|.
          DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t142->has = abap_true.
          t142->value = t134.
          t132 = t142.
        ELSE.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t132 = t143.
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t131 = zcl_lnt_void_type=>get_db65( i_voided = t132 i_qualified_name = t144 ).
        DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t145.
        DATA(t146) = abap_true.
        IF t146 = abap_true.
          DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t149.
          t148 = t149.
          DATA(t150) = CAST zlnt_runtime_arra_8ecd6afe19e0( t148 ).
          DATA(t151) = |exporting|.
          APPEND t151 TO t150->items.
          DATA(t152) = CAST zlnt_runtime_arra_8ecd6afe19e0( t148 ).
          t147 = t152.
          t145 = t147.
        ELSE.
          DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t153.
          t145 = t153.
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        t121 = NEW zcl_lnt_typed_identifier( i_token = t122 i_filename = t129 i_type_9913 = t131 i_meta = t145 i_value = t154 ).
        APPEND t121 TO t120->items.
        DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
        DATA t156 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t156.
        DATA t157 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t158 TYPE REF TO zcl_lnt_position.
        DATA t159 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t160) = CAST zcl_lnt_abstract_token( t116 ).
        t159 = t160.
        DATA t161 TYPE REF TO zcl_lnt_position.
        DATA(t162) = CAST zcl_lnt_abstract_token( t159 ).
        t161 = t162->start.
        t158 = t161.
        DATA(t163) = |reported|.
        t157 = NEW zcl_lnt_lx_identifier( i_start = t158 i_str = t163 ).
        DATA t164 TYPE string.
        DATA(t165) = CAST zcl_lnt_syntax_input( t2 ).
        t164 = t165->filename.
        DATA t166 TYPE REF TO zcl_lnt_void_type.
        CLEAR t166.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        DATA(t168) = abap_true.
        IF t168 = abap_true.
          DATA t169 TYPE string.
          DATA t170 TYPE string.
          DATA(t171) = |RESPONSE FOR REPORTED EARLY |.
          DATA t172 TYPE string.
          DATA(t173) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
          t172 = t173->value.
          DATA(t174) = strlen( t171 ).
          t170 = |{ t171 }{ t172 }|.
          DATA(t175) = ||.
          DATA(t176) = strlen( t170 ).
          t169 = |{ t170 }{ t175 }|.
          DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t177->has = abap_true.
          t177->value = t169.
          t167 = t177.
        ELSE.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          t167 = t178.
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        t166 = zcl_lnt_void_type=>get_db65( i_voided = t167 i_qualified_name = t179 ).
        DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t180.
        DATA(t181) = abap_true.
        IF t181 = abap_true.
          DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t184.
          t183 = t184.
          DATA(t185) = CAST zlnt_runtime_arra_8ecd6afe19e0( t183 ).
          DATA(t186) = |exporting|.
          APPEND t186 TO t185->items.
          DATA(t187) = CAST zlnt_runtime_arra_8ecd6afe19e0( t183 ).
          t182 = t187.
          t180 = t182.
        ELSE.
          DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t188.
          t180 = t188.
        ENDIF.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        t156 = NEW zcl_lnt_typed_identifier( i_token = t157 i_filename = t164 i_type_9913 = t166 i_meta = t180 i_value = t189 ).
        APPEND t156 TO t155->items.
      ELSE.
        DATA(t190) = VALUE abap_bool( ).
        DATA(t191) = VALUE abap_bool( ).
        DATA(t192) = VALUE abap_bool( ).
        DATA(t193) = VALUE abap_bool( ).
        DATA(t194) = VALUE abap_bool( ).
        DATA(t195) = VALUE abap_bool( ).
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = VALUE abap_bool( ).
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = VALUE abap_bool( ).
        DATA(t200) = VALUE abap_bool( ).
        DATA(t201) = VALUE i( ).
        DATA(t202) = t8.
        DATA(t203) = | FOR VALIDATE |.
        DATA(t204) = strlen( t202 ).
        IF t203 IS INITIAL.
          t201 = 0.
        ELSE.
          FIND t203 IN t202 MATCH OFFSET t201.
          IF sy-subrc <> 0.
            t201 = -1.
          ENDIF.
        ENDIF.
        DATA(t205) = 0.
        t200 = xsdbool( t201 >= t205 ).
        t199 = t200.
        IF t200 = abap_false.
          DATA(t206) = VALUE abap_bool( ).
          DATA(t207) = VALUE i( ).
          DATA(t208) = t8.
          DATA(t209) = | FOR BEHAVIOR |.
          DATA(t210) = strlen( t208 ).
          IF t209 IS INITIAL.
            t207 = 0.
          ELSE.
            FIND t209 IN t208 MATCH OFFSET t207.
            IF sy-subrc <> 0.
              t207 = -1.
            ENDIF.
          ENDIF.
          DATA(t211) = 0.
          t206 = xsdbool( t207 >= t211 ).
          t199 = t206.
        ENDIF.
        t198 = t199.
        IF t199 = abap_false.
          DATA(t212) = VALUE abap_bool( ).
          DATA(t213) = VALUE i( ).
          DATA(t214) = t8.
          DATA(t215) = | FOR DETERMINE |.
          DATA(t216) = strlen( t214 ).
          IF t215 IS INITIAL.
            t213 = 0.
          ELSE.
            FIND t215 IN t214 MATCH OFFSET t213.
            IF sy-subrc <> 0.
              t213 = -1.
            ENDIF.
          ENDIF.
          DATA(t217) = 0.
          t212 = xsdbool( t213 >= t217 ).
          t198 = t212.
        ENDIF.
        t197 = t198.
        IF t198 = abap_false.
          DATA(t218) = VALUE abap_bool( ).
          DATA(t219) = VALUE i( ).
          DATA(t220) = t8.
          DATA(t221) = | FOR FEATURES |.
          DATA(t222) = strlen( t220 ).
          IF t221 IS INITIAL.
            t219 = 0.
          ELSE.
            FIND t221 IN t220 MATCH OFFSET t219.
            IF sy-subrc <> 0.
              t219 = -1.
            ENDIF.
          ENDIF.
          DATA(t223) = 0.
          t218 = xsdbool( t219 >= t223 ).
          t197 = t218.
        ENDIF.
        t196 = t197.
        IF t197 = abap_false.
          DATA(t224) = VALUE abap_bool( ).
          DATA(t225) = VALUE i( ).
          DATA(t226) = t8.
          DATA(t227) = | FOR INSTANCE FEATURES |.
          DATA(t228) = strlen( t226 ).
          IF t227 IS INITIAL.
            t225 = 0.
          ELSE.
            FIND t227 IN t226 MATCH OFFSET t225.
            IF sy-subrc <> 0.
              t225 = -1.
            ENDIF.
          ENDIF.
          DATA(t229) = 0.
          t224 = xsdbool( t225 >= t229 ).
          t196 = t224.
        ENDIF.
        t195 = t196.
        IF t196 = abap_false.
          DATA(t230) = VALUE abap_bool( ).
          DATA(t231) = VALUE i( ).
          DATA(t232) = t8.
          DATA(t233) = | FOR GLOBAL AUTHORIZATION |.
          DATA(t234) = strlen( t232 ).
          IF t233 IS INITIAL.
            t231 = 0.
          ELSE.
            FIND t233 IN t232 MATCH OFFSET t231.
            IF sy-subrc <> 0.
              t231 = -1.
            ENDIF.
          ENDIF.
          DATA(t235) = 0.
          t230 = xsdbool( t231 >= t235 ).
          t195 = t230.
        ENDIF.
        t194 = t195.
        IF t195 = abap_false.
          DATA(t236) = VALUE abap_bool( ).
          DATA(t237) = VALUE i( ).
          DATA(t238) = t8.
          DATA(t239) = | FOR PRECHECK |.
          DATA(t240) = strlen( t238 ).
          IF t239 IS INITIAL.
            t237 = 0.
          ELSE.
            FIND t239 IN t238 MATCH OFFSET t237.
            IF sy-subrc <> 0.
              t237 = -1.
            ENDIF.
          ENDIF.
          DATA(t241) = 0.
          t236 = xsdbool( t237 >= t241 ).
          t194 = t236.
        ENDIF.
        t193 = t194.
        IF t194 = abap_false.
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = VALUE i( ).
          DATA(t244) = t8.
          DATA(t245) = | FOR NUMBERING |.
          DATA(t246) = strlen( t244 ).
          IF t245 IS INITIAL.
            t243 = 0.
          ELSE.
            FIND t245 IN t244 MATCH OFFSET t243.
            IF sy-subrc <> 0.
              t243 = -1.
            ENDIF.
          ENDIF.
          DATA(t247) = 0.
          t242 = xsdbool( t243 >= t247 ).
          t193 = t242.
        ENDIF.
        t192 = t193.
        IF t193 = abap_false.
          DATA(t248) = VALUE abap_bool( ).
          DATA(t249) = VALUE i( ).
          DATA(t250) = t8.
          DATA(t251) = | FOR READ |.
          DATA(t252) = strlen( t250 ).
          IF t251 IS INITIAL.
            t249 = 0.
          ELSE.
            FIND t251 IN t250 MATCH OFFSET t249.
            IF sy-subrc <> 0.
              t249 = -1.
            ENDIF.
          ENDIF.
          DATA(t253) = 0.
          t248 = xsdbool( t249 >= t253 ).
          t192 = t248.
        ENDIF.
        t191 = t192.
        IF t192 = abap_false.
          DATA(t254) = VALUE abap_bool( ).
          DATA(t255) = VALUE i( ).
          DATA(t256) = t8.
          DATA(t257) = | FOR VALIDATION |.
          DATA(t258) = strlen( t256 ).
          IF t257 IS INITIAL.
            t255 = 0.
          ELSE.
            FIND t257 IN t256 MATCH OFFSET t255.
            IF sy-subrc <> 0.
              t255 = -1.
            ENDIF.
          ENDIF.
          DATA(t259) = 0.
          t254 = xsdbool( t255 >= t259 ).
          t191 = t254.
        ENDIF.
        t190 = t191.
        IF t191 = abap_false.
          DATA(t260) = VALUE abap_bool( ).
          DATA(t261) = VALUE i( ).
          DATA(t262) = t8.
          DATA(t263) = | FOR MODIFY |.
          DATA(t264) = strlen( t262 ).
          IF t263 IS INITIAL.
            t261 = 0.
          ELSE.
            FIND t263 IN t262 MATCH OFFSET t261.
            IF sy-subrc <> 0.
              t261 = -1.
            ENDIF.
          ENDIF.
          DATA(t265) = 0.
          t260 = xsdbool( t261 >= t265 ).
          t190 = t260.
        ENDIF.
        IF t190 = abap_true.
          DATA t266 TYPE REF TO zcl_lnt_abstract_token.
          DATA t267 TYPE REF TO zcl_lnt_abstract_token.
          DATA t268 TYPE REF TO zcl_lnt_expression_node.
          DATA(t269) = CAST zcl_lnt_expression_node( t13 ).
          t268 = t269.
          t267 = t268->get_first_token(  ).
          t266 = t267.
          DATA(t270) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
          DATA t271 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t271.
          DATA t272 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t273 TYPE REF TO zcl_lnt_position.
          DATA t274 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t275) = CAST zcl_lnt_abstract_token( t266 ).
          t274 = t275.
          DATA t276 TYPE REF TO zcl_lnt_position.
          DATA(t277) = CAST zcl_lnt_abstract_token( t274 ).
          t276 = t277->start.
          t273 = t276.
          DATA(t278) = |failed|.
          t272 = NEW zcl_lnt_lx_identifier( i_start = t273 i_str = t278 ).
          DATA t279 TYPE string.
          DATA(t280) = CAST zcl_lnt_syntax_input( t2 ).
          t279 = t280->filename.
          DATA t281 TYPE REF TO zcl_lnt_void_type.
          CLEAR t281.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          DATA(t283) = abap_true.
          IF t283 = abap_true.
            DATA(t284) = |RapMethodParameter|.
            DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t285->has = abap_true.
            t285->value = t284.
            t282 = t285.
          ELSE.
            DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t286.
            t282 = t286.
          ENDIF.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          t281 = zcl_lnt_void_type=>get_db65( i_voided = t282 i_qualified_name = t287 ).
          DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t288.
          DATA(t289) = abap_true.
          IF t289 = abap_true.
            DATA t290 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t292.
            t291 = t292.
            DATA(t293) = CAST zlnt_runtime_arra_8ecd6afe19e0( t291 ).
            DATA(t294) = |exporting|.
            APPEND t294 TO t293->items.
            DATA(t295) = CAST zlnt_runtime_arra_8ecd6afe19e0( t291 ).
            t290 = t295.
            t288 = t290.
          ELSE.
            DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t296.
            t288 = t296.
          ENDIF.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          t271 = NEW zcl_lnt_typed_identifier( i_token = t272 i_filename = t279 i_type_9913 = t281 i_meta = t288 i_value = t297 ).
          APPEND t271 TO t270->items.
          DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
          DATA t299 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t299.
          DATA t300 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t301 TYPE REF TO zcl_lnt_position.
          DATA t302 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t303) = CAST zcl_lnt_abstract_token( t266 ).
          t302 = t303.
          DATA t304 TYPE REF TO zcl_lnt_position.
          DATA(t305) = CAST zcl_lnt_abstract_token( t302 ).
          t304 = t305->start.
          t301 = t304.
          DATA(t306) = |mapped|.
          t300 = NEW zcl_lnt_lx_identifier( i_start = t301 i_str = t306 ).
          DATA t307 TYPE string.
          DATA(t308) = CAST zcl_lnt_syntax_input( t2 ).
          t307 = t308->filename.
          DATA t309 TYPE REF TO zcl_lnt_void_type.
          CLEAR t309.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t310.
          DATA(t311) = abap_true.
          IF t311 = abap_true.
            DATA(t312) = |RapMethodParameter|.
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t312.
            t310 = t313.
          ELSE.
            DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t314.
            t310 = t314.
          ENDIF.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t315.
          t309 = zcl_lnt_void_type=>get_db65( i_voided = t310 i_qualified_name = t315 ).
          DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t316.
          DATA(t317) = abap_true.
          IF t317 = abap_true.
            DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t320.
            t319 = t320.
            DATA(t321) = CAST zlnt_runtime_arra_8ecd6afe19e0( t319 ).
            DATA(t322) = |exporting|.
            APPEND t322 TO t321->items.
            DATA(t323) = CAST zlnt_runtime_arra_8ecd6afe19e0( t319 ).
            t318 = t323.
            t316 = t318.
          ELSE.
            DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t324.
            t316 = t324.
          ENDIF.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          t299 = NEW zcl_lnt_typed_identifier( i_token = t300 i_filename = t307 i_type_9913 = t309 i_meta = t316 i_value = t325 ).
          APPEND t299 TO t298->items.
          DATA(t326) = CAST zlnt_runtime_arra_c22708faf2e3( me->exporting ).
          DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t327.
          DATA t328 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t329 TYPE REF TO zcl_lnt_position.
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t331) = CAST zcl_lnt_abstract_token( t266 ).
          t330 = t331.
          DATA t332 TYPE REF TO zcl_lnt_position.
          DATA(t333) = CAST zcl_lnt_abstract_token( t330 ).
          t332 = t333->start.
          t329 = t332.
          DATA(t334) = |reported|.
          t328 = NEW zcl_lnt_lx_identifier( i_start = t329 i_str = t334 ).
          DATA t335 TYPE string.
          DATA(t336) = CAST zcl_lnt_syntax_input( t2 ).
          t335 = t336->filename.
          DATA t337 TYPE REF TO zcl_lnt_void_type.
          CLEAR t337.
          DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t338.
          DATA(t339) = abap_true.
          IF t339 = abap_true.
            DATA(t340) = |RapMethodParameter|.
            DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t341->has = abap_true.
            t341->value = t340.
            t338 = t341.
          ELSE.
            DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t342.
            t338 = t342.
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          t337 = zcl_lnt_void_type=>get_db65( i_voided = t338 i_qualified_name = t343 ).
          DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t344.
          DATA(t345) = abap_true.
          IF t345 = abap_true.
            DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t348.
            t347 = t348.
            DATA(t349) = CAST zlnt_runtime_arra_8ecd6afe19e0( t347 ).
            DATA(t350) = |exporting|.
            APPEND t350 TO t349->items.
            DATA(t351) = CAST zlnt_runtime_arra_8ecd6afe19e0( t347 ).
            t346 = t351.
            t344 = t346.
          ELSE.
            DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t352.
            t344 = t352.
          ENDIF.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t353.
          t327 = NEW zcl_lnt_typed_identifier( i_token = t328 i_filename = t335 i_type_9913 = t337 i_meta = t344 i_value = t353 ).
          APPEND t327 TO t326->items.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t354 TYPE abap_bool.
    DATA(t355) = CAST zcl_lnt_expression_node( t4 ).
    t354 = xsdbool( t355 IS BOUND ).
    IF t354 = abap_true.
      DATA t356 TYPE REF TO zcl_lnt_abstract_token.
      DATA t357 TYPE REF TO zcl_lnt_abstract_token.
      DATA t358 TYPE REF TO zcl_lnt_expression_node.
      DATA(t359) = CAST zcl_lnt_expression_node( t4 ).
      t358 = t359.
      t357 = t358->get_first_token(  ).
      t356 = t357.
      DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
      DATA t361 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t361.
      DATA(t362) = CAST zcl_lnt_abstract_token( t356 ).
      DATA t363 TYPE string.
      DATA(t364) = CAST zcl_lnt_syntax_input( t2 ).
      t363 = t364->filename.
      DATA t365 TYPE REF TO zcl_lnt_void_type.
      CLEAR t365.
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t366.
      DATA(t367) = abap_true.
      IF t367 = abap_true.
        DATA(t368) = |RapMethodParameter|.
        DATA(t369) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t369->has = abap_true.
        t369->value = t368.
        t366 = t369.
      ELSE.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        t366 = t370.
      ENDIF.
      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t371.
      t365 = zcl_lnt_void_type=>get_db65( i_voided = t366 i_qualified_name = t371 ).
      DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t372.
      DATA(t373) = abap_true.
      IF t373 = abap_true.
        DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t375 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t376 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t376.
        t375 = t376.
        DATA(t377) = CAST zlnt_runtime_arra_8ecd6afe19e0( t375 ).
        DATA(t378) = |exporting|.
        APPEND t378 TO t377->items.
        DATA(t379) = CAST zlnt_runtime_arra_8ecd6afe19e0( t375 ).
        t374 = t379.
        t372 = t374.
      ELSE.
        DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t380.
        t372 = t380.
      ENDIF.
      DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t381.
      t361 = NEW zcl_lnt_typed_identifier( i_token = t362 i_filename = t363 i_type_9913 = t365 i_meta = t372 i_value = t381 ).
      APPEND t361 TO t360->items.
    ENDIF.
    DATA(t382) = VALUE abap_bool( ).
    DATA t383 TYPE string.
    DATA(t384) = t3.
    DATA(t385) = strlen( t384 ).
    t383 = t384.
    IF t383 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t383 TO UPPER CASE.
    ELSE.
      t383 = zlnt_runtime_uppe_91169605024d=>full( t383 ).
    ENDIF.
    DATA(t386) = |CL_ABAP_BEHAVIOR_SAVER|.
    t382 = xsdbool( t383 = t386 ).
    IF t382 = abap_true.
      DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t387.
      DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t388.
      DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t390 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t390.
      t389 = t390.
      DATA(t391) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
      DATA t392 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      LOOP AT t391->items INTO t393.
        t392 ?= t393.
        DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t389 ).
        DATA t395 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t395.
        DATA t396 TYPE REF TO zcl_lnt_abstract_token.
        DATA t397 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t398) = CAST zcl_lnt_typed_identifier( t392 ).
        t397 = t398.
        DATA t399 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t400) = CAST zcl_lnt_fi_identifier( t397 ).
        t399 = t400->token.
        t396 = t399.
        DATA t401 TYPE string.
        DATA(t402) = CAST zcl_lnt_syntax_input( t2 ).
        t401 = t402->filename.
        DATA t403 TYPE REF TO zcl_lnt_void_type.
        CLEAR t403.
        DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t404.
        DATA(t405) = abap_true.
        IF t405 = abap_true.
          DATA(t406) = |RapMethodParameter|.
          DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t407->has = abap_true.
          t407->value = t406.
          t404 = t407.
        ELSE.
          DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t408.
          t404 = t408.
        ENDIF.
        DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t409.
        t403 = zcl_lnt_void_type=>get_db65( i_voided = t404 i_qualified_name = t409 ).
        DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t410.
        DATA(t411) = abap_true.
        IF t411 = abap_true.
          DATA t412 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t413 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t414) = CAST zcl_lnt_typed_identifier( t392 ).
          t413 = t414.
          DATA t415 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t416) = CAST zcl_lnt_typed_identifier( t413 ).
          t415 = t416->meta.
          t412 = t415.
          t410 = t412.
        ELSE.
          DATA t417 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t417.
          t410 = t417.
        ENDIF.
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t418.
        t395 = NEW zcl_lnt_typed_identifier( i_token = t396 i_filename = t401 i_type_9913 = t403 i_meta = t410 i_value = t418 ).
        APPEND t395 TO t394->items.
      ENDLOOP.
      DATA(t419) = CAST zlnt_runtime_arra_c22708faf2e3( t389 ).
      t388 = t419.
      t387 = t388.
      DO.
        DATA t420 TYPE abap_bool.
        DATA t421 TYPE i.
        DATA(t422) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
        t421 = lines( t422->items ).
        DATA(t423) = 0.
        t420 = xsdbool( t421 > t423 ).
        IF t420 = abap_false.
          EXIT.
        ENDIF.
        DATA t424 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t425) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
        DATA t426 TYPE REF TO object.
        t426 = t425->shift(  ).
        t424 ?= t426.
      ENDDO.
      DATA(t427) = VALUE i( ).
      DATA(t428) = CAST zlnt_runtime_arra_c22708faf2e3( t387 ).
      DATA t429 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t429.
      DATA t430 TYPE REF TO object.
      CLEAR t430.
      LOOP AT t428->items INTO t430.
        t429 ?= t430.
        DATA(t431) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
        DATA(t432) = CAST zcl_lnt_typed_identifier( t429 ).
        APPEND t432 TO t431->items.
      ENDLOOP.
      DATA t433 TYPE i.
      DATA(t434) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
      t433 = lines( t434->items ).
      t427 = t433.
      DATA t435 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t435.
      DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t436.
      DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t438.
      t437 = t438.
      DATA(t439) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
      DATA t440 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t440.
      DATA t441 TYPE REF TO object.
      CLEAR t441.
      LOOP AT t439->items INTO t441.
        t440 ?= t441.
        DATA(t442) = CAST zlnt_runtime_arra_c22708faf2e3( t437 ).
        DATA t443 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t443.
        DATA t444 TYPE REF TO zcl_lnt_abstract_token.
        DATA t445 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t446) = CAST zcl_lnt_typed_identifier( t440 ).
        t445 = t446.
        DATA t447 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t448) = CAST zcl_lnt_fi_identifier( t445 ).
        t447 = t448->token.
        t444 = t447.
        DATA t449 TYPE string.
        DATA(t450) = CAST zcl_lnt_syntax_input( t2 ).
        t449 = t450->filename.
        DATA t451 TYPE REF TO zcl_lnt_void_type.
        CLEAR t451.
        DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t452.
        DATA(t453) = abap_true.
        IF t453 = abap_true.
          DATA(t454) = |RapMethodParameter|.
          DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t455->has = abap_true.
          t455->value = t454.
          t452 = t455.
        ELSE.
          DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t456.
          t452 = t456.
        ENDIF.
        DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t457.
        t451 = zcl_lnt_void_type=>get_db65( i_voided = t452 i_qualified_name = t457 ).
        DATA t458 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t458.
        DATA(t459) = abap_true.
        IF t459 = abap_true.
          DATA t460 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t461 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t462) = CAST zcl_lnt_typed_identifier( t440 ).
          t461 = t462.
          DATA t463 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t464) = CAST zcl_lnt_typed_identifier( t461 ).
          t463 = t464->meta.
          t460 = t463.
          t458 = t460.
        ELSE.
          DATA t465 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t465.
          t458 = t465.
        ENDIF.
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t466.
        t443 = NEW zcl_lnt_typed_identifier( i_token = t444 i_filename = t449 i_type_9913 = t451 i_meta = t458 i_value = t466 ).
        APPEND t443 TO t442->items.
      ENDLOOP.
      DATA(t467) = CAST zlnt_runtime_arra_c22708faf2e3( t437 ).
      t436 = t467.
      t435 = t436.
      DO.
        DATA t468 TYPE abap_bool.
        DATA t469 TYPE i.
        DATA(t470) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
        t469 = lines( t470->items ).
        DATA(t471) = 0.
        t468 = xsdbool( t469 > t471 ).
        IF t468 = abap_false.
          EXIT.
        ENDIF.
        DATA t472 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t473) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
        DATA t474 TYPE REF TO object.
        t474 = t473->shift(  ).
        t472 ?= t474.
      ENDDO.
      DATA(t475) = VALUE i( ).
      DATA(t476) = CAST zlnt_runtime_arra_c22708faf2e3( t435 ).
      DATA t477 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t477.
      DATA t478 TYPE REF TO object.
      CLEAR t478.
      LOOP AT t476->items INTO t478.
        t477 ?= t478.
        DATA(t479) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
        DATA(t480) = CAST zcl_lnt_typed_identifier( t477 ).
        APPEND t480 TO t479->items.
      ENDLOOP.
      DATA t481 TYPE i.
      DATA(t482) = CAST zlnt_runtime_arra_c22708faf2e3( me->importing ).
      t481 = lines( t482->items ).
      t475 = t481.
    ENDIF.
  ENDMETHOD.
  METHOD add_51c1.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_target_5f8a ).
    DATA(t2) = CAST zcl_lnt_expression_node( i_source_75cf ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_meta ).
    DATA(t5) = i_abstract_method.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_expression_node( t2 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb ).
    t6 = t7->find_all_expressions( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t6->items INTO t10.
      t9 ?= t10.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = CAST zcl_lnt_expression_node( t9 ).
      DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62 ).
      t12 = t13->find_direct_expression( i_type_9913 = t14 ).
      t11 = t12.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = CAST zcl_lnt_expression_node( t11 ).
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      t18 = t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = CAST zcl_lnt_expression_node( t16 ).
      IF t21 IS INITIAL.
        t20 = abap_true.
      ENDIF.
      t15 = t20.
      IF t15 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = CAST zcl_lnt_expression_node( t11 ).
      t26 = t27.
      t25 = t26.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = CAST zcl_lnt_expression_node( t25 ).
      t33 = t34->get_first_token(  ).
      t32 = t33.
      DATA t35 TYPE string.
      DATA(t36) = CAST zcl_lnt_abstract_token( t32 ).
      t35 = t36->str.
      t31 = t35.
      DATA(t37) = strlen( t31 ).
      t30 = t31.
      IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t30 TO UPPER CASE.
      ELSE.
        t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
      ENDIF.
      DATA(t38) = |VALUE|.
      t29 = xsdbool( t30 = t38 ).
      t28 = t29.
      IF t29 = abap_true.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t47 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t48) = CAST zcl_lnt_expression_node( t25 ).
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t50) = CAST zcl_lnt_abstract_node( t47 ).
        t49 = t50->children.
        t46 = t49.
        t45 ?= t46.
        DATA(t51) = 1.
        DATA t52 TYPE REF TO object.
        t52 = t45->get( p0 = t51 ).
        t44 ?= t52.
        t43 = t44.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = CAST zif_lnt_union_4cf1d054( t43 ).
        IF t55 IS INITIAL.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t56.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA t58 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t59) = CAST zif_lnt_union_4cf1d054( t43 ).
          t58 = t59.
          t57 = t58->get_first_token(  ).
          t53 = t57.
        ENDIF.
        t42 = t53.
        t41 = t42.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = CAST zcl_lnt_abstract_token( t41 ).
        IF t62 IS INITIAL.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t60 = t63.
        ELSE.
          DATA t64 TYPE string.
          DATA t65 TYPE REF TO zcl_lnt_abstract_token.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t67) = CAST zcl_lnt_abstract_token( t41 ).
          t66 = t67.
          t65 = t66.
          DATA t68 TYPE string.
          DATA(t69) = CAST zcl_lnt_abstract_token( t65 ).
          t68 = t69->str.
          t64 = t68.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = t64.
          t60 = t70.
        ENDIF.
        t40 = t60.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA(t73) = |(|.
          DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t74->has = abap_true.
          t74->value = t73.
          t71 = t74.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t71 = t75.
        ENDIF.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        IF t40 IS BOUND.
          t76 = t40->has.
        ENDIF.
        IF t71 IS BOUND.
          t77 = t71->has.
        ENDIF.
        IF t76 = t77.
          IF t76 = abap_false.
            t39 = abap_true.
          ELSEIF t40->value = t71->value.
            t39 = abap_true.
          ENDIF.
        ENDIF.
        t28 = t39.
      ENDIF.
      t24 = t28.
      IF t24 = abap_true.
        DATA(t78) = CAST zlnt_runtime_arra_8ecd6afe19e0( t22 ).
        DATA(t79) = |pass_by_value|.
        APPEND t79 TO t78->items.
      ELSE.
        DATA t80 TYPE abap_bool.
        DATA(t81) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
        DATA(t82) = |importing|.
        t80 = t81->includes( p0 = t82 ).
        IF t80 = abap_true.
          DATA(t83) = CAST zlnt_runtime_arra_8ecd6afe19e0( t22 ).
          DATA(t84) = |read_only|.
          APPEND t84 TO t83->items.
        ENDIF.
      ENDIF.
      DATA t85 TYPE abap_bool.
      DATA(t86) = t5.
      DATA(t87) = abap_true.
      t85 = xsdbool( t86 = t87 ).
      IF t85 = abap_true.
        DATA(t88) = CAST zlnt_runtime_arra_8ecd6afe19e0( t22 ).
        DATA(t89) = |abstract|.
        APPEND t89 TO t88->items.
      ENDIF.
      DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t91 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t92 TYPE REF TO zcl_lnt_expression_node.
      DATA(t93) = CAST zcl_lnt_expression_node( t11 ).
      t92 = t93.
      DATA(t94) = CAST zcl_lnt_syntax_input( t3 ).
      DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t97.
      t96 = t97.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t100) = CAST zlnt_runtime_arra_8ecd6afe19e0( t96 ).
      DATA(t101) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      t99 = t100->concat( p0 = t101 ).
      t98 = t99.
      DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t104) = CAST zlnt_runtime_arra_8ecd6afe19e0( t98 ).
      DATA(t105) = CAST zlnt_runtime_arra_8ecd6afe19e0( t22 ).
      t103 = t104->concat( p0 = t105 ).
      t102 = t103.
      DATA(t106) = CAST zlnt_runtime_arra_8ecd6afe19e0( t102 ).
      t95 = t106.
      t91 = zcl_lnt_sy_method_param=>run_syntax( i_node = t92 i_input_967e = t94 i_meta = t95 ).
      t90 = t91.
      DATA t107 TYPE REF TO zcl_lnt_current_scope.
      DATA t108 TYPE REF TO zcl_lnt_current_scope.
      DATA(t109) = CAST zcl_lnt_syntax_input( t3 ).
      t108 = t109->scope.
      t107 = t108.
      DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = CAST zcl_lnt_typed_identifier( t90 ).
        t111 = t113.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t114.
        t111 = t114.
      ENDIF.
      t110 = t111.
      DATA(t115) = VALUE abap_bool( ).
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t117) = CAST zcl_lnt_typed_identifier( t110 ).
      t116 = t117.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      t118 = t119.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = CAST zcl_lnt_typed_identifier( t116 ).
      IF t121 IS INITIAL.
        t120 = abap_true.
      ENDIF.
      t115 = t120.
      IF t115 = abap_true.
      ELSE.
        DATA(t122) = CAST zcl_lnt_current_scope( t107 ).
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t126) = CAST zcl_lnt_typed_identifier( t110 ).
        t125 = t126.
        t124 = t125.
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE string.
        DATA t129 TYPE string.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t132) = CAST zcl_lnt_fi_identifier( t124 ).
        t131 = t132->token.
        t130 = t131.
        DATA t133 TYPE string.
        DATA(t134) = CAST zcl_lnt_abstract_token( t130 ).
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
        t123 = t127.
        DATA t153 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t154) = CAST zcl_lnt_typed_identifier( t110 ).
        t153 = t154.
        t122->add_named_identifier( i_name = t123 i_identifier = t153 ).
      ENDIF.
      DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t156) = CAST zcl_lnt_typed_identifier( t90 ).
      APPEND t156 TO t155->items.
      DATA t157 TYPE abap_bool.
      DATA t158 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t159) = CAST zcl_lnt_expression_node( t9 ).
      DATA(t160) = |OPTIONAL|.
      t158 = t159->find_direct_token_by_text( i_text = t160 ).
      t157 = xsdbool( t158 IS BOUND ).
      IF t157 = abap_true.
        DATA(t161) = VALUE string( ).
        DATA(t162) = VALUE string( ).
        DATA(t163) = VALUE string( ).
        DATA t164 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t166) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t167 TYPE i.
        DATA t168 TYPE i.
        DATA(t169) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        t168 = lines( t169->items ).
        DATA(t170) = 1.
        t167 = t168 - t170.
        t167 = t167 + 1.
        DATA t171 TYPE REF TO object.
        CLEAR t171.
        READ TABLE t166->items INDEX t167 INTO t171.
        t165 ?= t171.
        t164 = t165.
        DATA(t172) = VALUE string( ).
        DATA t173 TYPE string.
        DATA t174 TYPE string.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t177) = CAST zcl_lnt_fi_identifier( t164 ).
        t176 = t177->token.
        t175 = t176.
        DATA t178 TYPE string.
        DATA(t179) = CAST zcl_lnt_abstract_token( t175 ).
        t178 = t179->str.
        t174 = t178.
        t173 = t174.
        DATA(t180) = VALUE abap_bool( ).
        DATA(t181) = VALUE string( ).
        DATA(t182) = t173.
        DATA(t183) = 0.
        DATA(t184) = 1.
        DATA(t185) = strlen( t182 ).
        IF t183 < 0.
          t183 = t183 + t185.
          IF t183 < 0.
            t183 = 0.
          ENDIF.
        ENDIF.
        IF t183 > t185 OR t184 <= 0.
          CLEAR t181.
        ELSE.
          IF t184 > t185 - t183.
            t184 = t185 - t183.
          ENDIF.
          t181 = t182+t183(t184).
        ENDIF.
        DATA(t186) = |!|.
        t180 = xsdbool( t181 = t186 ).
        IF t180 = abap_true.
          DATA(t187) = VALUE string( ).
          DATA t188 TYPE string.
          DATA(t189) = t173.
          t188 = t189.
          DATA(t190) = VALUE string( ).
          DATA(t191) = t188.
          DATA(t192) = 1.
          DATA t193 TYPE i.
          DATA(t194) = t188.
          DATA(t195) = strlen( t194 ).
          t193 = t195.
          DATA(t196) = strlen( t191 ).
          IF t192 < 0.
            t192 = t192 + t196.
            IF t192 < 0.
              t192 = 0.
            ENDIF.
          ENDIF.
          IF t192 > t196 OR t193 <= 0.
            CLEAR t190.
          ELSE.
            IF t193 > t196 - t192.
              t193 = t196 - t192.
            ENDIF.
            t190 = t191+t192(t193).
          ENDIF.
          t187 = t190.
          t173 = t187.
        ENDIF.
        DATA(t197) = t173.
        t172 = t197.
        t163 = t172.
        DATA(t198) = strlen( t163 ).
        t162 = t163.
        IF t162 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t162 TO UPPER CASE.
        ELSE.
          t162 = zlnt_runtime_uppe_91169605024d=>full( t162 ).
        ENDIF.
        t161 = t162.
        DATA(t199) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
        DATA(t200) = t161.
        APPEND t200 TO t199->items.
      ELSE.
        DATA t201 TYPE abap_bool.
        DATA t202 TYPE REF TO zcl_lnt_expression_node.
        DATA(t203) = CAST zcl_lnt_expression_node( t9 ).
        DATA(t204) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401 ).
        t202 = t203->find_first_expression( i_type_9913 = t204 ).
        t201 = xsdbool( t202 IS BOUND ).
        IF t201 = abap_true.
          DATA(t205) = VALUE string( ).
          DATA(t206) = VALUE string( ).
          DATA(t207) = VALUE string( ).
          DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          DATA t211 TYPE i.
          DATA t212 TYPE i.
          DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          t212 = lines( t213->items ).
          DATA(t214) = 1.
          t211 = t212 - t214.
          t211 = t211 + 1.
          DATA t215 TYPE REF TO object.
          CLEAR t215.
          READ TABLE t210->items INDEX t211 INTO t215.
          t209 ?= t215.
          t208 = t209.
          DATA(t216) = VALUE string( ).
          DATA t217 TYPE string.
          DATA t218 TYPE string.
          DATA t219 TYPE REF TO zcl_lnt_abstract_token.
          DATA t220 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t221) = CAST zcl_lnt_fi_identifier( t208 ).
          t220 = t221->token.
          t219 = t220.
          DATA t222 TYPE string.
          DATA(t223) = CAST zcl_lnt_abstract_token( t219 ).
          t222 = t223->str.
          t218 = t222.
          t217 = t218.
          DATA(t224) = VALUE abap_bool( ).
          DATA(t225) = VALUE string( ).
          DATA(t226) = t217.
          DATA(t227) = 0.
          DATA(t228) = 1.
          DATA(t229) = strlen( t226 ).
          IF t227 < 0.
            t227 = t227 + t229.
            IF t227 < 0.
              t227 = 0.
            ENDIF.
          ENDIF.
          IF t227 > t229 OR t228 <= 0.
            CLEAR t225.
          ELSE.
            IF t228 > t229 - t227.
              t228 = t229 - t227.
            ENDIF.
            t225 = t226+t227(t228).
          ENDIF.
          DATA(t230) = |!|.
          t224 = xsdbool( t225 = t230 ).
          IF t224 = abap_true.
            DATA(t231) = VALUE string( ).
            DATA t232 TYPE string.
            DATA(t233) = t217.
            t232 = t233.
            DATA(t234) = VALUE string( ).
            DATA(t235) = t232.
            DATA(t236) = 1.
            DATA t237 TYPE i.
            DATA(t238) = t232.
            DATA(t239) = strlen( t238 ).
            t237 = t239.
            DATA(t240) = strlen( t235 ).
            IF t236 < 0.
              t236 = t236 + t240.
              IF t236 < 0.
                t236 = 0.
              ENDIF.
            ENDIF.
            IF t236 > t240 OR t237 <= 0.
              CLEAR t234.
            ELSE.
              IF t237 > t240 - t236.
                t237 = t240 - t236.
              ENDIF.
              t234 = t235+t236(t237).
            ENDIF.
            t231 = t234.
            t217 = t231.
          ENDIF.
          DATA(t241) = t217.
          t216 = t241.
          t207 = t216.
          DATA(t242) = strlen( t207 ).
          t206 = t207.
          IF t206 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t206 TO UPPER CASE.
          ELSE.
            t206 = zlnt_runtime_uppe_91169605024d=>full( t206 ).
          ENDIF.
          t205 = t206.
          DATA(t243) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->optional ).
          DATA(t244) = t205.
          APPEND t244 TO t243->items.
          DATA t245 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t245.
          DATA t246 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t246.
          DATA t247 TYPE REF TO zcl_lnt_expression_node.
          DATA t248 TYPE REF TO zcl_lnt_expression_node.
          DATA(t249) = CAST zcl_lnt_expression_node( t9 ).
          DATA(t250) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401 ).
          t248 = t249->find_first_expression( i_type_9913 = t250 ).
          t247 = t248.
          DATA t251 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t251.
          DATA(t252) = VALUE abap_bool( ).
          DATA(t253) = CAST zcl_lnt_expression_node( t247 ).
          IF t253 IS INITIAL.
            t252 = abap_true.
          ENDIF.
          IF t252 = abap_true.
            DATA t254 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t254.
            t251 = t254.
          ELSE.
            DATA t255 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t255.
            DATA t256 TYPE REF TO zif_lnt_node.
            CLEAR t256.
            DATA t257 TYPE REF TO zcl_lnt_abstract_node.
            DATA t258 TYPE REF TO zcl_lnt_expression_node.
            DATA(t259) = CAST zcl_lnt_expression_node( t247 ).
            t258 = t259.
            t257 = t258.
            DATA t260 TYPE REF TO zif_lnt_node.
            CLEAR t260.
            DATA(t261) = abap_true.
            IF t261 = abap_true.
              DATA t262 TYPE REF TO zif_lnt_node.
              DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t264) = CAST zcl_lnt_abstract_node( t257 ).
              t263 = t264->children.
              DATA t265 TYPE i.
              DATA t266 TYPE i.
              DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t268) = CAST zcl_lnt_abstract_node( t257 ).
              t267 = t268->children.
              t266 = lines( t267->items ).
              DATA(t269) = 1.
              t265 = t266 - t269.
              t265 = t265 + 1.
              DATA t270 TYPE REF TO object.
              CLEAR t270.
              READ TABLE t263->items INDEX t265 INTO t270.
              t262 ?= t270.
              t260 = t262.
            ELSE.
              DATA t271 TYPE REF TO zif_lnt_node.
              CLEAR t271.
              t260 = t271.
            ENDIF.
            t256 = t260.
            t255 ?= t256.
            t251 = t255.
          ENDIF.
          t246 = t251.
          t245 = t246.
          DATA t272 TYPE abap_bool.
          DATA t273 TYPE abap_bool.
          DATA(t274) = CAST zif_lnt_union_4cf1d054( t245 ).
          t273 = xsdbool( t274 IS BOUND ).
          t272 = t273.
          IF t273 = abap_true.
            DATA t275 TYPE abap_bool.
            DATA t276 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t277) = CAST zif_lnt_union_4cf1d054( t245 ).
            t276 = t277.
            t275 = xsdbool( t276 IS BOUND AND t276 IS INSTANCE OF zcl_lnt_expression_node ).
            t272 = t275.
          ENDIF.
          IF t272 = abap_true.
            DATA t278 TYPE REF TO zlnt_runtime_map__b1b44c588059.
            DATA(t279) = CAST zlnt_runtime_map__b1b44c588059( me->defaults ).
            DATA(t280) = t205.
            DATA t281 TYPE REF TO zcl_lnt_expression_node.
            DATA(t282) = CAST zif_lnt_union_4cf1d054( t245 ).
            DATA t283 TYPE REF TO object.
            t283 = t282.
            t281 ?= t283.
            t278 = t279->set( p0 = t280 p1 = t281 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t284 TYPE abap_bool.
    DATA t285 TYPE i.
    DATA(t286) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t285 = lines( t286->items ).
    DATA(t287) = 0.
    t284 = xsdbool( t285 > t287 ).
    IF t284 = abap_true.
      RETURN.
    ENDIF.
    DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t290) = CAST zcl_lnt_expression_node( t2 ).
    DATA(t291) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62 ).
    t289 = t290->find_all_expressions( i_type_9913 = t291 ).
    t288 = t289.
    DATA(t292) = CAST zlnt_runtime_arra_c22708faf2e3( t288 ).
    DATA t293 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t293.
    DATA t294 TYPE REF TO object.
    CLEAR t294.
    LOOP AT t292->items INTO t294.
      t293 ?= t294.
      DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t295.
      DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t296.
      DATA(t297) = VALUE abap_bool( ).
      DATA t298 TYPE REF TO zcl_lnt_expression_node.
      DATA(t299) = CAST zcl_lnt_expression_node( t293 ).
      t298 = t299.
      DATA(t300) = VALUE abap_bool( ).
      DATA(t301) = VALUE abap_bool( ).
      DATA t302 TYPE string.
      DATA t303 TYPE string.
      DATA t304 TYPE REF TO zcl_lnt_abstract_token.
      DATA t305 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t306) = CAST zcl_lnt_expression_node( t298 ).
      t305 = t306->get_first_token(  ).
      t304 = t305.
      DATA t307 TYPE string.
      DATA(t308) = CAST zcl_lnt_abstract_token( t304 ).
      t307 = t308->str.
      t303 = t307.
      DATA(t309) = strlen( t303 ).
      t302 = t303.
      IF t302 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t302 TO UPPER CASE.
      ELSE.
        t302 = zlnt_runtime_uppe_91169605024d=>full( t302 ).
      ENDIF.
      DATA(t310) = |VALUE|.
      t301 = xsdbool( t302 = t310 ).
      t300 = t301.
      IF t301 = abap_true.
        DATA(t311) = VALUE abap_bool( ).
        DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t312.
        DATA t313 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t313.
        DATA t314 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t314.
        DATA t315 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t316 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t319 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t320) = CAST zcl_lnt_expression_node( t298 ).
        t319 = t320.
        DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t322) = CAST zcl_lnt_abstract_node( t319 ).
        t321 = t322->children.
        t318 = t321.
        t317 ?= t318.
        DATA(t323) = 1.
        DATA t324 TYPE REF TO object.
        t324 = t317->get( p0 = t323 ).
        t316 ?= t324.
        t315 = t316.
        DATA t325 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t325.
        DATA(t326) = VALUE abap_bool( ).
        DATA(t327) = CAST zif_lnt_union_4cf1d054( t315 ).
        IF t327 IS INITIAL.
          t326 = abap_true.
        ENDIF.
        IF t326 = abap_true.
          DATA t328 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t328.
          t325 = t328.
        ELSE.
          DATA t329 TYPE REF TO zcl_lnt_abstract_token.
          DATA t330 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t331) = CAST zif_lnt_union_4cf1d054( t315 ).
          t330 = t331.
          t329 = t330->get_first_token(  ).
          t325 = t329.
        ENDIF.
        t314 = t325.
        t313 = t314.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        DATA(t333) = VALUE abap_bool( ).
        DATA(t334) = CAST zcl_lnt_abstract_token( t313 ).
        IF t334 IS INITIAL.
          t333 = abap_true.
        ENDIF.
        IF t333 = abap_true.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          t332 = t335.
        ELSE.
          DATA t336 TYPE string.
          DATA t337 TYPE REF TO zcl_lnt_abstract_token.
          DATA t338 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t339) = CAST zcl_lnt_abstract_token( t313 ).
          t338 = t339.
          t337 = t338.
          DATA t340 TYPE string.
          DATA(t341) = CAST zcl_lnt_abstract_token( t337 ).
          t340 = t341->str.
          t336 = t340.
          DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t342->has = abap_true.
          t342->value = t336.
          t332 = t342.
        ENDIF.
        t312 = t332.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t343.
        DATA(t344) = abap_true.
        IF t344 = abap_true.
          DATA(t345) = |(|.
          DATA(t346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t346->has = abap_true.
          t346->value = t345.
          t343 = t346.
        ELSE.
          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t347.
          t343 = t347.
        ENDIF.
        DATA(t348) = VALUE abap_bool( ).
        DATA(t349) = VALUE abap_bool( ).
        IF t312 IS BOUND.
          t348 = t312->has.
        ENDIF.
        IF t343 IS BOUND.
          t349 = t343->has.
        ENDIF.
        IF t348 = t349.
          IF t348 = abap_false.
            t311 = abap_true.
          ELSEIF t312->value = t343->value.
            t311 = abap_true.
          ENDIF.
        ENDIF.
        t300 = t311.
      ENDIF.
      t297 = t300.
      IF t297 = abap_true.
        DATA t350 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t351 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t352.
        t351 = t352.
        DATA(t353) = CAST zlnt_runtime_arra_8ecd6afe19e0( t351 ).
        DATA(t354) = |pass_by_value|.
        APPEND t354 TO t353->items.
        DATA(t355) = CAST zlnt_runtime_arra_8ecd6afe19e0( t351 ).
        t350 = t355.
        t296 = t350.
      ELSE.
        DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t356.
        t296 = t356.
      ENDIF.
      t295 = t296.
      DATA(t357) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t358 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t359) = CAST zcl_lnt_expression_node( t293 ).
      DATA(t360) = CAST zcl_lnt_syntax_input( t3 ).
      DATA t361 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t363 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t363.
      t362 = t363.
      DATA t364 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t365 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t366) = CAST zlnt_runtime_arra_8ecd6afe19e0( t362 ).
      DATA(t367) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      t365 = t366->concat( p0 = t367 ).
      t364 = t365.
      DATA t368 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t370) = CAST zlnt_runtime_arra_8ecd6afe19e0( t364 ).
      DATA(t371) = CAST zlnt_runtime_arra_8ecd6afe19e0( t295 ).
      t369 = t370->concat( p0 = t371 ).
      t368 = t369.
      DATA(t372) = CAST zlnt_runtime_arra_8ecd6afe19e0( t368 ).
      t361 = t372.
      t358 = zcl_lnt_sy_method_param=>run_syntax( i_node = t359 i_input_967e = t360 i_meta = t361 ).
      APPEND t358 TO t357->items.
    ENDLOOP.
  ENDMETHOD.
  METHOD is_pass_by_value.
    DATA(t1) = CAST zcl_lnt_expression_node( i_param ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = CAST zcl_lnt_expression_node( t1 ).
    t7 = t8->get_first_token(  ).
    t6 = t7.
    DATA t9 TYPE string.
    DATA(t10) = CAST zcl_lnt_abstract_token( t6 ).
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
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t22) = CAST zcl_lnt_expression_node( t1 ).
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = CAST zcl_lnt_abstract_node( t21 ).
      t23 = t24->children.
      t20 = t23.
      t19 ?= t20.
      DATA(t25) = 1.
      DATA t26 TYPE REF TO object.
      t26 = t19->get( p0 = t25 ).
      t18 ?= t26.
      t17 = t18.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = CAST zif_lnt_union_4cf1d054( t17 ).
      IF t29 IS INITIAL.
        t28 = abap_true.
      ENDIF.
      IF t28 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t33) = CAST zif_lnt_union_4cf1d054( t17 ).
        t32 = t33.
        t31 = t32->get_first_token(  ).
        t27 = t31.
      ENDIF.
      t16 = t27.
      t15 = t16.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = CAST zcl_lnt_abstract_token( t15 ).
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t34 = t37.
      ELSE.
        DATA t38 TYPE string.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t41) = CAST zcl_lnt_abstract_token( t15 ).
        t40 = t41.
        t39 = t40.
        DATA t42 TYPE string.
        DATA(t43) = CAST zcl_lnt_abstract_token( t39 ).
        t42 = t43->str.
        t38 = t42.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t38.
        t34 = t44.
      ENDIF.
      t14 = t34.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA(t47) = |(|.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t47.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t45 = t49.
      ENDIF.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      IF t14 IS BOUND.
        t50 = t14->has.
      ENDIF.
      IF t45 IS BOUND.
        t51 = t45->has.
      ENDIF.
      IF t50 = t51.
        IF t50 = abap_false.
          t13 = abap_true.
        ELSEIF t14->value = t45->value.
          t13 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t13.
    ENDIF.
    result = t2.

  ENDMETHOD.
  METHOD get_parameter_default.
    DATA(t1) = i_parameter_5406.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/method_parameters.ts:139|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1043_18fb8ae33dc3.
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_all.
    result = me->get_all(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_importing.
    result = me->get_importing(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_required_parameters.
    result = me->get_required_parameters(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_exporting.
    result = me->get_exporting(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_changing.
    result = me->get_changing(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_optional.
    result = me->get_optional(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_returning.
    result = me->get_returning(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_exceptions.
    result = me->get_exceptions(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_filename.
    result = me->get_filename(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_default_importing.
    result = me->get_default_importing(  ).
  ENDMETHOD.
  METHOD zif_lnt_method_parameters~get_parameter_default.
    result = me->get_parameter_default(  i_parameter_5406 = i_parameter_5406 ).
  ENDMETHOD.
ENDCLASS.
