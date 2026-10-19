* TS: src/abap/5_syntax/statements/call.ts:9:1 Call
CLASS zcl_lnt_sy_call DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_call IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t1.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    t3 = t4.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE i.
    t3->load( ).
    t11 = lines( t3->items ).
    DATA(t13) = 2.
    t10 = xsdbool( t11 = t13 ).
    IF t10 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t18 TYPE REF TO object.
      t3->load( ).
      READ TABLE t3->items INDEX 1 INTO t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t18.
      ENDIF.
      t15 ?= t16.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      t21 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t15 i_input_967e = t2 i_target_type = t24 ).
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t29 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 3 INTO t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t30 ?= t29.
      DATA t31 TYPE REF TO object.
      t31 = t30->as_ref( ).
      t27 ?= t31.
    ELSE.
      t27 ?= t29.
    ENDIF.
    t26 ?= t27.
    t25 = t26.
    DATA(t32) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t32 = xsdbool( t25 IS INITIAL ).
    IF t32 = abap_true.
      DATA(t40) = |Call, child MethodSource not found|.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t41 = t2->issues.
      DATA t43 TYPE REF TO zcl_lnt_issue.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      t45 = t1->get_first_token( ).
      DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t43 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t45 i_message_26cb = t40 i_fix = t48 ).
      t41->load( ).
      APPEND t43 TO t41->items.
      t41->save( ).
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zif_lnt_union_8cd68e5e.
    t50 = zcl_lnt_sy_method_source=>run_syntax( i_node = t25 i_input_967e = t2 ).
    DATA t53 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t56 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 4 INTO t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t57 ?= t56.
      DATA t58 TYPE REF TO object.
      t58 = t57->as_ref( ).
      t54 ?= t58.
    ELSE.
      t54 ?= t56.
    ENDIF.
    t53 = t54.
    DATA t59 TYPE abap_bool.
    t59 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_expression_node ).
    IF t59 = abap_true.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      DATA t63 TYPE REF TO object.
      t63 = t53.
      t61 ?= t63.
      DATA t65 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA t66 TYPE REF TO zif_lnt_union_8cd68e5e.
      t66 = t50.
      DATA t68 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA t69 TYPE abap_bool.
      t69 = xsdbool( t66 IS BOUND ).
      IF t69 = abap_true.
        t68 = t66.
      ELSE.
        DATA t73 TYPE REF TO zcl_lnt_void_type.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t76) = |CallTODO|.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t76.
        t74 = t77.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t73 = zcl_lnt_void_type=>get_db65( i_voided = t74 i_qualified_name = t79 ).
        t68 = t73.
      ENDIF.
      t65 = t68.
      zcl_lnt_sy_method_call_body=>run_syntax( i_node = t61 i_input_967e = t2 i_method = t65 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d860_4a886b2c3fc4.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
