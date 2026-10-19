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
    t3 = abap_false.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t6 = t1->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t5 IS BOUND ).
    IF t9 = abap_true.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      t12 = t5.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t11 = zcl_lnt_sy_let=>run_syntax( i_node = t12 i_input_967e = t2 i_skip_scope = t18 ).
      t3 = t11.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t20 = t1->find_direct_expression( i_type_9913 = t22 ).
    t19 = t20.
    DATA(t23) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23 = xsdbool( t19 IS INITIAL ).
    IF t23 = abap_true.
      DATA(t31) = |ConvBody, no source found|.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t32 = t2->issues.
      DATA t34 TYPE REF TO zcl_lnt_issue.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      t36 = t1->get_first_token( ).
      DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t34 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t36 i_message_26cb = t31 i_fix = t39 ).
      t32->load( ).
      APPEND t34 TO t32->items.
      t32->save( ).
      DATA t40 TYPE REF TO zcl_lnt_void_type.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t43) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
      result = t40.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    t49 = t19.
    DATA t55 TYPE REF TO zcl_lnt_abstract_type.
    DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t48 = zcl_lnt_sy_source=>run_syntax( i_node = t49 i_input_967e = t2 i_target_type = t55 i_write_reference = t56 i_allow_generic_deference = t57 i_read_reference = t58 ).
    DATA t59 TYPE abap_bool.
    t59 = xsdbool( t3 = abap_true ).
    IF t59 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t63 TYPE REF TO zcl_lnt_current_scope.
      t63 = t2->scope.
      DATA t65 TYPE REF TO zcl_lnt_position.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      t67 = t1->get_last_token( ).
      t66 = t67.
      DATA t69 TYPE REF TO zcl_lnt_position.
      DATA t70 TYPE f.
      DATA t72 TYPE REF TO zcl_lnt_position.
      t72 = t66->start.
      DATA t74 TYPE f.
      t74 = t72->row.
      t70 = t74.
      DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t79 TYPE REF TO zcl_lnt_position.
      t79 = t66->start.
      DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t81 = t79->col.
      t77 = t81.
      DATA t83 TYPE f.
      DATA t85 TYPE string.
      t85 = t66->str.
      t83 = strlen( t85 ).
      DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t88->has = abap_true.
      t88->value = t83.
      t76 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ).
      t69 = NEW zcl_lnt_position( i_row = t70 i_col = t76 ).
      t65 = t69.
      t62 = t63->pop( i_end = t65 ).
    ENDIF.
    result = t48.

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
