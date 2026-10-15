* TS: src/abap/5_syntax/expressions/conv_body.ts:9:1 ConvBody
CLASS zcl_lnt_sy_conv_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_conv_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA(t4) = abap_false.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t6 = t7->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t5.
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        DATA(t15) = t5.
        t14 = t15.
        t12 = t14.
      ELSE.
        DATA t16 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t16.
        t12 = t16.
      ENDIF.
      DATA(t17) = t2.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      t11 = zcl_lnt_sy_let=>run_syntax( i_node = t12 i_input_967e = t17 i_skip_scope = t18 ).
      t3 = t11.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = t1.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t20 = t21->find_direct_expression( i_type_9913 = t22 ).
    t19 = t20.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = t19.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t24.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t23 = t28.
    IF t23 = abap_true.
      DATA t30 TYPE string.
      DATA(t31) = |ConvBody, no source found|.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = t2.
      t32 = t33->issues.
      DATA t34 TYPE REF TO zcl_lnt_issue.
      DATA(t35) = t2.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t37) = t1.
      t36 = t37->get_first_token( ).
      DATA(t38) = t30.
      DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t39.
      t34 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t35 i_token = t36 i_message_26cb = t38 i_fix = t39 ).
      t32->load( ).
      APPEND t34 TO t32->items.
      t32->save( ).
      DATA t40 TYPE REF TO zcl_lnt_void_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t42) = abap_true.
      IF t42 = abap_true.
        DATA(t43) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t43.
        t41 = t44.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        t41 = t45.
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
      result = t40.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = t19.
      t51 = t52.
      t49 = t51.
    ELSE.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t53.
      t49 = t53.
    ENDIF.
    DATA(t54) = t2.
    DATA t55 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t58.
    t48 = zcl_lnt_sy_source=>run_syntax( i_node = t49 i_input_967e = t54 i_target_type = t55 i_write_reference = t56 i_allow_generic_deference = t57 i_read_reference = t58 ).
    t47 = t48.
    DATA t59 TYPE abap_bool.
    DATA(t60) = t3.
    DATA(t61) = abap_true.
    t59 = xsdbool( t60 = t61 ).
    IF t59 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t63 TYPE REF TO zcl_lnt_current_scope.
      DATA(t64) = t2.
      t63 = t64->scope.
      DATA t65 TYPE REF TO zcl_lnt_position.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t68) = t1.
      t67 = t68->get_last_token( ).
      t66 = t67.
      DATA t69 TYPE REF TO zcl_lnt_position.
      DATA t70 TYPE f.
      DATA t71 TYPE REF TO zcl_lnt_position.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA(t73) = t66.
      t72 = t73->start.
      t71 = t72.
      DATA t74 TYPE f.
      DATA(t75) = t71.
      t74 = t75->row.
      t70 = t74.
      DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zcl_lnt_position.
      DATA t79 TYPE REF TO zcl_lnt_position.
      DATA(t80) = t66.
      t79 = t80->start.
      t78 = t79.
      DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t82) = t78.
      t81 = t82->col.
      t77 = t81.
      DATA t83 TYPE f.
      DATA t84 TYPE i.
      DATA t85 TYPE string.
      DATA(t86) = t66.
      t85 = t86->str.
      DATA(t87) = strlen( t85 ).
      t84 = t87.
      t83 = t84.
      DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t88->has = abap_true.
      t88->value = t83.
      t76 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ).
      t69 = NEW zcl_lnt_position( i_row = t70 i_col = t76 ).
      t65 = t69.
      t62 = t63->pop( i_end = t65 ).
    ENDIF.
    DATA(t89) = t47.
    result = t89.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d795_e406b9e872b1.
  ENDMETHOD.
ENDCLASS.
