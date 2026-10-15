* TS: src/abap/5_syntax/statements/split.ts:11:1 Split
CLASS zcl_lnt_sy_split DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_split IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = t1.
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
    DATA(t14) = t5.
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
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_string_type.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t20.
      t19 = zcl_lnt_string_type=>get_db65( i_input_967e = t20 ).
      DATA t21 TYPE REF TO zcl_lnt_itable_options.
      DATA t22 TYPE abap_bool.
      DATA(t23) = abap_false.
      t22 = t23.
      DATA t24 TYPE string.
      DATA(t25) = |DEFAULT|.
      t24 = t25.
      DATA t26 TYPE REF TO zcl_lnt_itable_key.
      DATA t27 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      t28 = t29.
      t21 = NEW zcl_lnt_itable_options( i_with_header = t22 i_key_type = t24 i_primary_key = t26 i_secondary = t28 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t30 ).
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t31 ).
      ENDIF.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t32) = |withHeader|.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
      ENDIF.
      DATA(t34) = |keyType|.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t18 = NEW zcl_lnt_ty_table_type( i_row_type = t19 i_options = t21 i_qualified_name = t36 i_description = t37 ).
      t16 = t18.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_string_type.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t39.
      t38 = zcl_lnt_string_type=>get_db65( i_input_967e = t39 ).
      t16 = t38.
    ENDIF.
    t15 = t16.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t41) = t1.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t40 = t41->find_all_expressions( i_type_9913 = t42 ).
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t43.
    DATA t44 TYPE REF TO object.
    CLEAR t44.
    DATA(t45) = VALUE i( ).
    DO.
      t40->load( ).
      IF t45 >= lines( t40->items ).
        EXIT.
      ENDIF.
      CLEAR t44.
      READ TABLE t40->items INDEX t45 + 1 INTO t44.
      t45 = t45 + 1.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      CLEAR t43.
      IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t44.
        DATA t47 TYPE REF TO object.
        t47 = t46->as_ref( ).
        t43 ?= t47.
      ELSE.
        t43 ?= t44.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA(t50) = t43.
      DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t49 = t50->find_direct_expression( i_type_9913 = t51 ).
      t48 = t49.
      DATA t52 TYPE abap_bool.
      DATA(t53) = t48.
      t52 = xsdbool( t53 IS BOUND ).
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        DATA(t55) = t48.
        t54 = t55.
        DATA(t56) = t2.
        DATA t57 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t60) = t15.
          t59 ?= t60.
          t57 = t59.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t61.
          t57 = t61.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t54 i_input_967e = t56 i_type_9913 = t57 ).
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t64) = t43.
        DATA(t65) = t2.
        t63 = zcl_lnt_sy_target=>run_syntax( i_node = t64 i_input_967e = t65 ).
        t62 = t63.
        DATA(t66) = t3.
        IF t66 = abap_true.
          DATA(t67) = VALUE abap_bool( ).
          DATA t68 TYPE abap_bool.
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE abap_bool.
          DATA(t71) = t62.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t69 = xsdbool( t70 = abap_false ).
          t68 = t69.
          IF t69 = abap_true.
            DATA t72 TYPE abap_bool.
            DATA t73 TYPE abap_bool.
            DATA(t74) = t62.
            t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_unknown_type ).
            t72 = xsdbool( t73 = abap_false ).
            t68 = t72.
          ENDIF.
          t67 = t68.
          IF t68 = abap_true.
            DATA t75 TYPE abap_bool.
            DATA t76 TYPE abap_bool.
            DATA(t77) = t62.
            t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_void_type ).
            t75 = xsdbool( t76 = abap_false ).
            t67 = t75.
          ENDIF.
          IF t67 = abap_true.
            DATA t78 TYPE string.
            DATA(t79) = |Into must be table typed|.
            t78 = t79.
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t81) = t2.
            t80 = t81->issues.
            DATA t82 TYPE REF TO zcl_lnt_issue.
            DATA(t83) = t2.
            DATA t84 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t85) = t43.
            t84 = t85->get_first_token( ).
            DATA(t86) = t78.
            DATA t87 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t87.
            t82 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t83 i_token = t84 i_message_26cb = t86 i_fix = t87 ).
            t80->load( ).
            APPEND t82 TO t80->items.
            t80->save( ).
            RETURN.
          ENDIF.
          DATA t88 TYPE abap_bool.
          DATA(t89) = t62.
          t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_ty_table_type ).
          IF t88 = abap_true.
            DATA t90 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t90.
            DATA(t91) = abap_true.
            IF t91 = abap_true.
              DATA t92 TYPE REF TO zcl_lnt_abstract_type.
              DATA t93 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t94 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t95) = t62.
              t94 ?= t95.
              t93 = t94.
              DATA t96 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t97) = t93.
              t96 = t97->row_type.
              t92 = t96.
              t90 = t92.
            ELSE.
              DATA t98 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t98.
              t90 = t98.
            ENDIF.
            t62 = t90.
          ENDIF.
        ENDIF.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE REF TO zcl_lnt_type_utils.
        DATA t102 TYPE REF TO zcl_lnt_current_scope.
        DATA(t103) = t2.
        t102 = t103->scope.
        t101 = NEW zcl_lnt_type_utils( i_scope = t102 ).
        DATA(t104) = t62.
        t100 = t101->is_char_like_strict( i_type_9913 = t104 ).
        DATA(t105) = abap_false.
        t99 = xsdbool( t100 = t105 ).
        IF t99 = abap_true.
          DATA t106 TYPE string.
          DATA(t107) = |Incompatible, target not character like|.
          t106 = t107.
          DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t109) = t2.
          t108 = t109->issues.
          DATA t110 TYPE REF TO zcl_lnt_issue.
          DATA(t111) = t2.
          DATA t112 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t113) = t1.
          t112 = t113->get_first_token( ).
          DATA(t114) = t106.
          DATA t115 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t115.
          t110 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t111 i_token = t112 i_message_26cb = t114 i_fix = t115 ).
          t108->load( ).
          APPEND t110 TO t108->items.
          t108->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t117) = t1.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t116 = t117->find_direct_expressions( i_type_9913 = t118 ).
    DATA t119 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t119.
    DATA t120 TYPE REF TO object.
    CLEAR t120.
    DATA(t121) = VALUE i( ).
    DO.
      t116->load( ).
      IF t121 >= lines( t116->items ).
        EXIT.
      ENDIF.
      CLEAR t120.
      READ TABLE t116->items INDEX t121 + 1 INTO t120.
      t121 = t121 + 1.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      CLEAR t119.
      IF t120 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t120.
        DATA t123 TYPE REF TO object.
        t123 = t122->as_ref( ).
        t119 ?= t123.
      ELSE.
        t119 ?= t120.
      ENDIF.
      DATA t124 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t124.
      DATA t125 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t125.
      DATA(t126) = abap_true.
      IF t126 = abap_true.
        DATA(t127) = t119.
        t125 = t127.
      ELSE.
        DATA t128 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t128.
        t125 = t128.
      ENDIF.
      DATA(t129) = t2.
      DATA t130 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t131.
      DATA t132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t133.
      t124 = zcl_lnt_sy_source=>run_syntax( i_node = t125 i_input_967e = t129 i_target_type = t130 i_write_reference = t131 i_allow_generic_deference = t132 i_read_reference = t133 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d968_6e73915b28ea.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
