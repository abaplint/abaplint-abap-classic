* TS: src/abap/5_syntax/statements/get_bit.ts:12:1 GetBit
CLASS zcl_lnt_sy_get_bit DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_get_bit IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t5 = t6->find_direct_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
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
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = t8.
        t14 = t16.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t17.
        t14 = t17.
      ENDIF.
      DATA(t18) = t2.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t22.
      t13 = zcl_lnt_sy_source=>run_syntax( i_node = t14 i_input_967e = t18 i_target_type = t19 i_write_reference = t20 i_allow_generic_deference = t21 i_read_reference = t22 ).
      t3 = t13.
    ENDDO.
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t3.
    t24 = xsdbool( t25 IS BOUND ).
    t23 = t24.
    IF t24 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zcl_lnt_type_utils.
      DATA t29 TYPE REF TO zcl_lnt_current_scope.
      DATA(t30) = t2.
      t29 = t30->scope.
      t28 = NEW zcl_lnt_type_utils( i_scope = t29 ).
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t34) = t3.
        t33 = t34.
        t31 = t33.
      ELSE.
        DATA t35 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t35.
        t31 = t35.
      ENDIF.
      t27 = t28->is_hex_like( i_type_9913 = t31 ).
      DATA(t36) = abap_false.
      t26 = xsdbool( t27 = t36 ).
      t23 = t26.
    ENDIF.
    IF t23 = abap_true.
      DATA t37 TYPE string.
      DATA(t38) = |Input must be byte-like|.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = t2.
      t39 = t40->issues.
      DATA t41 TYPE REF TO zcl_lnt_issue.
      DATA(t42) = t2.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t44) = t1.
      t43 = t44->get_first_token( ).
      DATA(t45) = t37.
      DATA t46 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t46.
      t41 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t42 i_token = t43 i_message_26cb = t45 i_fix = t46 ).
      t39->load( ).
      APPEND t41 TO t39->items.
      t39->save( ).
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t48) = t1.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t47 = t48->find_direct_expressions( i_type_9913 = t49 ).
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t50.
    DATA t51 TYPE REF TO object.
    CLEAR t51.
    DATA(t52) = VALUE i( ).
    DO.
      t47->load( ).
      IF t52 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t51.
      READ TABLE t47->items INDEX t52 + 1 INTO t51.
      t52 = t52 + 1.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t50.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t51.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t50 ?= t54.
      ELSE.
        t50 ?= t51.
      ENDIF.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = t50.
      t57 = t58.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t57.
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t62.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_expression_node.
        DATA(t64) = t57.
        DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t63 = t64->find_direct_expression( i_type_9913 = t65 ).
        t59 = t63.
      ENDIF.
      t56 = t59.
      t55 = t56.
      DATA t66 TYPE abap_bool.
      DATA(t67) = t55.
      t66 = xsdbool( t67 IS BOUND ).
      IF t66 = abap_true.
        DATA(t68) = t50.
        DATA(t69) = t2.
        DATA t70 TYPE REF TO zcl_lnt_integer_type.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t71.
        t70 = zcl_lnt_integer_type=>get_db65( i_input_967e = t71 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t68 i_input_967e = t69 i_type_9913 = t70 ).
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t73) = t50.
        DATA(t74) = t2.
        t72 = zcl_lnt_sy_target=>run_syntax( i_node = t73 i_input_967e = t74 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d906_2d2a73eda936.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
