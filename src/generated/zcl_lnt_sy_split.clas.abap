* TS: src/abap/5_syntax/statements/split.ts:11:1 Split
CLASS zcl_lnt_sy_split DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_split IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = |INTO|.
    DATA(t9) = |TABLE|.
    t6 = t7->find_token_sequence_position( i_first = t8 i_second = t9 ).
    t5 = t6.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_position( t5 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t12 = xsdbool( t13 = abap_false ).
    t4 = t12.
    t3 = t4.
    DATA t15 TYPE REF TO zif_lnt_union_72e2c467.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_union_72e2c467.
    CLEAR t16.
    DATA(t17) = t3.
    IF t17 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t19 TYPE REF TO zcl_lnt_string_type.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t20.
      t19 = zcl_lnt_string_type=>get_db65( i_input_967e = t20 ).
      DATA t21 TYPE REF TO zcl_lnt_itable_options.
      DATA(t22) = abap_false.
      DATA(t23) = |DEFAULT|.
      DATA t24 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      t21 = NEW zcl_lnt_itable_options( i_with_header = t22 i_key_type = t23 i_primary_key = t24 i_secondary = t25 ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t18 = NEW zcl_lnt_ty_table_type( i_row_type = t19 i_options = t21 i_qualified_name = t26 i_description = t27 ).
      t16 = t18.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_string_type.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t29.
      t28 = zcl_lnt_string_type=>get_db65( i_input_967e = t29 ).
      t16 = t28.
    ENDIF.
    t15 = t16.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t30 = t31->find_all_expressions( i_type_9913 = t32 ).
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    LOOP AT t30->items INTO t34.
      t33 ?= t34.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = CAST zcl_lnt_expression_node( t33 ).
      DATA(t38) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t36 = t37->find_direct_expression( i_type_9913 = t38 ).
      t35 = t36.
      DATA t39 TYPE abap_bool.
      DATA(t40) = CAST zcl_lnt_expression_node( t35 ).
      t39 = xsdbool( t40 IS BOUND ).
      IF t39 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_expression_node.
        DATA(t42) = CAST zcl_lnt_expression_node( t35 ).
        t41 = t42.
        DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t47) = CAST zif_lnt_union_72e2c467( t15 ).
          t46 ?= t47.
          t44 = t46.
        ELSE.
          DATA t48 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t48.
          t44 = t48.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t41 i_input_967e = t43 i_type_9913 = t44 ).
      ELSE.
        DATA t49 TYPE REF TO zcl_lnt_abstract_type.
        DATA t50 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t51) = CAST zcl_lnt_expression_node( t33 ).
        DATA(t52) = CAST zcl_lnt_syntax_input( t2 ).
        t50 = zcl_lnt_sy_target=>run_syntax( i_node = t51 i_input_967e = t52 ).
        t49 = t50.
        DATA(t53) = t3.
        IF t53 = abap_true.
          DATA(t54) = VALUE abap_bool( ).
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE abap_bool.
          DATA t57 TYPE abap_bool.
          DATA(t58) = CAST zcl_lnt_abstract_type( t49 ).
          t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t56 = xsdbool( t57 = abap_false ).
          t55 = t56.
          IF t56 = abap_true.
            DATA t59 TYPE abap_bool.
            DATA t60 TYPE abap_bool.
            DATA(t61) = CAST zcl_lnt_abstract_type( t49 ).
            t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_unknown_type ).
            t59 = xsdbool( t60 = abap_false ).
            t55 = t59.
          ENDIF.
          t54 = t55.
          IF t55 = abap_true.
            DATA t62 TYPE abap_bool.
            DATA t63 TYPE abap_bool.
            DATA(t64) = CAST zcl_lnt_abstract_type( t49 ).
            t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_void_type ).
            t62 = xsdbool( t63 = abap_false ).
            t54 = t62.
          ENDIF.
          IF t54 = abap_true.
            DATA t65 TYPE string.
            DATA(t66) = |Into must be table typed|.
            t65 = t66.
            DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t68) = CAST zcl_lnt_syntax_input( t2 ).
            t67 = t68->issues.
            DATA t69 TYPE REF TO zcl_lnt_issue.
            DATA(t70) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t71 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t72) = CAST zcl_lnt_expression_node( t33 ).
            t71 = t72->get_first_token( ).
            DATA(t73) = t65.
            DATA t74 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t74.
            t69 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t70 i_token = t71 i_message_26cb = t73 i_fix = t74 ).
            APPEND t69 TO t67->items.
            RETURN.
          ENDIF.
          DATA t75 TYPE abap_bool.
          DATA(t76) = CAST zcl_lnt_abstract_type( t49 ).
          t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_ty_table_type ).
          IF t75 = abap_true.
            DATA t77 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t77.
            DATA(t78) = abap_true.
            IF t78 = abap_true.
              DATA t79 TYPE REF TO zcl_lnt_abstract_type.
              DATA t80 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t81 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t82) = CAST zcl_lnt_abstract_type( t49 ).
              t81 ?= t82.
              t80 = t81.
              DATA t83 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t84) = CAST zcl_lnt_ty_table_type( t80 ).
              t83 = t84->row_type.
              t79 = t83.
              t77 = t79.
            ELSE.
              DATA t85 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t85.
              t77 = t85.
            ENDIF.
            t49 = t77.
          ENDIF.
        ENDIF.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE abap_bool.
        DATA t88 TYPE REF TO zcl_lnt_type_utils.
        DATA t89 TYPE REF TO zcl_lnt_current_scope.
        DATA(t90) = CAST zcl_lnt_syntax_input( t2 ).
        t89 = t90->scope.
        t88 = NEW zcl_lnt_type_utils( i_scope = t89 ).
        DATA(t91) = CAST zcl_lnt_abstract_type( t49 ).
        t87 = t88->is_char_like_strict( i_type_9913 = t91 ).
        DATA(t92) = abap_false.
        t86 = xsdbool( t87 = t92 ).
        IF t86 = abap_true.
          DATA t93 TYPE string.
          DATA(t94) = |Incompatible, target not character like|.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t96) = CAST zcl_lnt_syntax_input( t2 ).
          t95 = t96->issues.
          DATA t97 TYPE REF TO zcl_lnt_issue.
          DATA(t98) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t99 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t100) = CAST zcl_lnt_statement_node( t1 ).
          t99 = t100->get_first_token( ).
          DATA(t101) = t93.
          DATA t102 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t102.
          t97 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t98 i_token = t99 i_message_26cb = t101 i_fix = t102 ).
          APPEND t97 TO t95->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t104) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t103 = t104->find_direct_expressions( i_type_9913 = t105 ).
    DATA t106 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t106.
    DATA t107 TYPE REF TO object.
    CLEAR t107.
    LOOP AT t103->items INTO t107.
      t106 ?= t107.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t108.
      DATA t109 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t109.
      DATA(t110) = abap_true.
      IF t110 = abap_true.
        DATA(t111) = CAST zcl_lnt_expression_node( t106 ).
        t109 = t111.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t112.
        t109 = t112.
      ENDIF.
      DATA(t113) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t114 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t115.
      DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t117.
      t108 = zcl_lnt_sy_source=>run_syntax( i_node = t109 i_input_967e = t113 i_target_type = t114 i_write_reference = t115 i_allow_generic_deference = t116 i_read_reference = t117 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d946_11644d65a09a.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
