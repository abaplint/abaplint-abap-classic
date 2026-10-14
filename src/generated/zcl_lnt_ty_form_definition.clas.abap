* TS: src/abap/types/form_definition.ts:13:1 FormDefinition
CLASS zcl_lnt_ty_form_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_form_definition.
    DATA node TYPE REF TO zcl_lnt_statement_node.
    DATA table_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA using_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA changing_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_node TYPE REF TO zif_lnt_union_8249fcb1 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_tables_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_using_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_changing_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_tables IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_type IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_params IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_form_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_structure_node ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_statement_node.
      DATA t8 TYPE REF TO zcl_lnt_statement_node.
      DATA t9 TYPE REF TO zcl_lnt_structure_node.
      DATA(t10) = t1.
      DATA t11 TYPE REF TO object.
      t11 = t10.
      t9 ?= t11.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d483_dd45e766f6bf.
      t8 = t9->find_first_statement( i_type_9913 = t12 ).
      t7 = t8.
      t4 = t7.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      DATA(t14) = t1.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t4 = t13.
    ENDIF.
    t3 = t4.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = t3.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82.
    t17 = t18->find_first_expression( i_type_9913 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = t16.
    t24 = t25.
    t23 = t24->get_first_token( ).
    t22 = t23.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA(t27) = t22.
    t26 = t27->start.
    t21 = t26.
    t20 = t21.
    DATA t28 TYPE string.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = t16.
    t30 = t31.
    t29 = t30->concat_tokens( ).
    t28 = t29.
    DATA t32 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t33 TYPE REF TO zcl_lnt_lx_identifier.
    DATA(t34) = t20.
    DATA(t35) = t28.
    t33 = NEW zcl_lnt_lx_identifier( i_start = t34 i_str = t35 ).
    t32 = t33.
    DATA(t36) = t32.
    DATA t37 TYPE string.
    DATA(t38) = t2.
    t37 = t38->filename.
    super->constructor( i_token = t36 i_filename = t37 ).
    DATA(t39) = t3.
    me->node = t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t41) = t2.
    t40 = me->find_tables( i_input_967e = t41 ).
    me->table_parameters = t40.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    t43 = t44.
    DATA t45 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t46) = t2.
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA(t50) = me->node.
    DATA(t51) = t43.
    t49 = t50->find_first_expression( i_type_9913 = t51 ).
    t48 = t49.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA(t55) = t48.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    t56 = t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = t54.
    IF t59 IS INITIAL.
      t58 = abap_true.
    ENDIF.
    t53 = t58.
    IF t53 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t60.
      t52 = t60.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA(t63) = t48.
      t62 = t63.
      DATA(t64) = t45.
      t61 = me->find_params( i_node = t62 i_input_967e = t64 ).
      t52 = t61.
    ENDIF.
    t47 = t52.
    t42 = t47.
    me->using_parameters = t42.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d174_c8ac82068417.
    t66 = t67.
    DATA t68 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t69) = t2.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zcl_lnt_expression_node.
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    DATA(t73) = me->node.
    DATA(t74) = t66.
    t72 = t73->find_first_expression( i_type_9913 = t74 ).
    t71 = t72.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zcl_lnt_expression_node.
    DATA(t78) = t71.
    t77 = t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    t79 = t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA(t82) = t77.
    IF t82 IS INITIAL.
      t81 = abap_true.
    ENDIF.
    t76 = t81.
    IF t76 = abap_true.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t83.
      t75 = t83.
    ELSE.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      DATA(t86) = t71.
      t85 = t86.
      DATA(t87) = t68.
      t84 = me->find_params( i_node = t85 i_input_967e = t87 ).
      t75 = t84.
    ENDIF.
    t70 = t75.
    t65 = t70.
    me->changing_parameters = t65.
  ENDMETHOD.

  METHOD get_tables_parameters.
    DATA(t1) = me->table_parameters.
    result = t1.

  ENDMETHOD.

  METHOD get_using_parameters.
    DATA(t1) = me->using_parameters.
    result = t1.

  ENDMETHOD.

  METHOD get_changing_parameters.
    DATA(t1) = me->changing_parameters.
    result = t1.

  ENDMETHOD.

  METHOD find_tables.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = me->node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = t4.
    t17 = t18.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    t16 = t17->find_all_expressions( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t16->items INTO t21.
      t20 ?= t21.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE i.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t27) = t20.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = t26.
      t28 = t29->children.
      t25 = t28.
      t24 ?= t25.
      t23 = lines( t24->items ).
      DATA(t30) = 1.
      t22 = xsdbool( t23 = t30 ).
      IF t22 = abap_true.
        DATA(t31) = t2.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t34) = t20.
        t33 = t34->get_first_token( ).
        DATA t35 TYPE string.
        DATA(t36) = t1.
        t35 = t36->filename.
        DATA t37 TYPE REF TO zcl_lnt_void_type.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        DATA(t39) = abap_true.
        IF t39 = abap_true.
          DATA(t40) = |FORM:UNTYPED|.
          DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t41->has = abap_true.
          t41->value = t40.
          t38 = t41.
        ELSE.
          DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t42.
          t38 = t42.
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t37 = zcl_lnt_void_type=>get_db65( i_voided = t38 i_qualified_name = t43 ).
        DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t48.
          t47 = t48.
          DATA(t49) = t47.
          DATA(t50) = |form_parameter|.
          APPEND t50 TO t49->items.
          DATA(t51) = t47.
          t46 = t51.
          t44 = t46.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t52.
          t44 = t52.
        ENDIF.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        t32 = NEW zcl_lnt_typed_identifier( i_token = t33 i_filename = t35 i_type_9913 = t37 i_meta = t44 i_value = t53 ).
        APPEND t32 TO t31->items.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t56) = t20.
        DATA(t57) = t1.
        t55 = zcl_lnt_sy_form_param=>run_syntax( i_node = t56 i_input_967e = t57 ).
        t54 = t55.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t61) = t54.
        t60 = t61.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t63) = t60.
        t62 = t63->type_cba0.
        t59 = t62.
        t58 = t59.
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = VALUE abap_bool( ).
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t68) = t20.
        DATA(t69) = |STRUCTURE|.
        t67 = t68->find_direct_token_by_text( i_text = t69 ).
        t66 = t67.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        t70 = t71.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t66.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        t72 = xsdbool( t73 = abap_false ).
        t65 = t72.
        t64 = t65.
        DATA(t75) = t64.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t77) = t58.
          DATA t78 TYPE REF TO zcl_lnt_itable_options.
          DATA(t79) = abap_true.
          DATA(t80) = |DEFAULT|.
          DATA t81 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t82.
          t78 = NEW zcl_lnt_itable_options( i_with_header = t79 i_key_type = t80 i_primary_key = t81 i_secondary = t82 ).
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t76 = NEW zcl_lnt_ty_table_type( i_row_type = t77 i_options = t78 i_qualified_name = t83 i_description = t84 ).
          t58 = t76.
        ENDIF.
        DATA t85 TYPE abap_bool.
        DATA(t86) = t58.
        t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t85 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t88 TYPE REF TO zcl_lnt_abstract_type.
          DATA t89 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t90 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t91) = t58.
          t90 ?= t91.
          t89 = t90.
          DATA t92 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t93) = t89.
          t92 = t93->row_type.
          t88 = t92.
          DATA t94 TYPE REF TO zcl_lnt_itable_options.
          DATA(t95) = abap_true.
          DATA(t96) = |DEFAULT|.
          DATA t97 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t97.
          DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t98.
          t94 = NEW zcl_lnt_itable_options( i_with_header = t95 i_key_type = t96 i_primary_key = t97 i_secondary = t98 ).
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t87 = NEW zcl_lnt_ty_table_type( i_row_type = t88 i_options = t94 i_qualified_name = t99 i_description = t100 ).
          t58 = t87.
        ELSE.
          DATA t101 TYPE abap_bool.
          DATA t102 TYPE abap_bool.
          DATA t103 TYPE abap_bool.
          DATA(t104) = t58.
          t103 = xsdbool( t104 IS BOUND AND t104 IS INSTANCE OF zcl_lnt_unknown_type ).
          t102 = xsdbool( t103 = abap_false ).
          t101 = t102.
          IF t102 = abap_true.
            DATA t105 TYPE abap_bool.
            DATA t106 TYPE abap_bool.
            DATA(t107) = t58.
            t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_void_type ).
            t105 = xsdbool( t106 = abap_false ).
            t101 = t105.
          ENDIF.
          IF t101 = abap_true.
            DATA t108 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t109) = |FORM TABLES type must be table type|.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t108 = NEW zcl_lnt_unknown_type( i_error = t109 i_qualified_name = t110 ).
            t58 = t108.
          ENDIF.
        ENDIF.
        DATA(t111) = t2.
        DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t112.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA t114 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t115) = t54.
        t114 = t115.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t117) = t114.
        t116 = t117->token.
        t113 = t116.
        DATA t118 TYPE string.
        DATA(t119) = t1.
        t118 = t119->filename.
        DATA(t120) = t58.
        DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t125) = t54.
          t124 = t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t127) = t124.
          t126 = t127->meta.
          t123 = t126.
          t121 = t123.
        ELSE.
          DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t128.
          t121 = t128.
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        t112 = NEW zcl_lnt_typed_identifier( i_token = t113 i_filename = t118 i_type_9913 = t120 i_meta = t121 i_value = t129 ).
        APPEND t112 TO t111->items.
      ENDIF.
    ENDLOOP.
    DATA(t130) = t2.
    result = t130.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = me->node.
    DATA(t6) = t1.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t3.
    t16 = t17.
    DATA(t18) = t2.
    t15 = me->find_params( i_node = t16 i_input_967e = t18 ).
    result = t15.

  ENDMETHOD.

  METHOD find_params.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    t5 = t6->find_all_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t5->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t12) = t8.
      DATA(t13) = t2.
      t11 = zcl_lnt_sy_form_param=>run_syntax( i_node = t12 i_input_967e = t13 ).
      t10 = t11.
      DATA(t14) = t3.
      DATA(t15) = t10.
      APPEND t15 TO t14->items.
    ENDLOOP.
    DATA(t16) = t3.
    result = t16.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1035_3d4f282d9a47.
  ENDMETHOD.

  METHOD zif_lnt_form_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_tables_parameters.
    result = me->get_tables_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_using_parameters.
    result = me->get_using_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_changing_parameters.
    result = me->get_changing_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.
ENDCLASS.
