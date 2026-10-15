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
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t3 = t4.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE i.
    DATA(t12) = t3.
    t12->load( ).
    t11 = lines( t12->items ).
    DATA(t13) = 2.
    t10 = xsdbool( t11 = t13 ).
    IF t10 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t16.
      DATA(t17) = t3.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      t17->load( ).
      CLEAR t18.
      READ TABLE t17->items INDEX 1 INTO t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t18.
      ENDIF.
      t15 ?= t16.
      t14 = t15.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t22) = t14.
      DATA(t23) = t2.
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t24.
      t21 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t22 i_input_967e = t23 i_target_type = t24 ).
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t27.
    DATA(t28) = t3.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    t28->load( ).
    CLEAR t29.
    READ TABLE t28->items INDEX 3 INTO t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    CLEAR t27.
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
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA(t34) = t25.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t32 = t37.
    IF t32 = abap_true.
      DATA t39 TYPE string.
      DATA(t40) = |Call, child MethodSource not found|.
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t2.
      t41 = t42->issues.
      DATA t43 TYPE REF TO zcl_lnt_issue.
      DATA(t44) = t2.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t1.
      t45 = t46->get_first_token( ).
      DATA(t47) = t39.
      DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t48.
      t43 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t44 i_token = t45 i_message_26cb = t47 i_fix = t48 ).
      t41->load( ).
      APPEND t43 TO t41->items.
      t41->save( ).
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA t50 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA(t51) = t25.
    DATA(t52) = t2.
    t50 = zcl_lnt_sy_method_source=>run_syntax( i_node = t51 i_input_967e = t52 ).
    t49 = t50.
    DATA t53 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t54.
    DATA(t55) = t3.
    DATA t56 TYPE REF TO object.
    CLEAR t56.
    t55->load( ).
    CLEAR t56.
    READ TABLE t55->items INDEX 4 INTO t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    CLEAR t54.
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
    DATA(t60) = t53.
    t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_expression_node ).
    IF t59 = abap_true.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      DATA(t62) = t53.
      DATA t63 TYPE REF TO object.
      t63 = t62.
      t61 ?= t63.
      DATA(t64) = t2.
      DATA t65 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t65.
      DATA t66 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t67) = t49.
      t66 = t67.
      DATA t68 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t68.
      DATA t69 TYPE abap_bool.
      DATA(t70) = t66.
      t69 = xsdbool( t70 IS BOUND ).
      IF t69 = abap_true.
        DATA t71 TYPE REF TO zif_lnt_union_8cd68e5e.
        DATA(t72) = t66.
        t71 = t72.
        t68 = t71.
      ELSE.
        DATA t73 TYPE REF TO zcl_lnt_void_type.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA(t76) = |CallTODO|.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t76.
          t74 = t77.
        ELSE.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          t74 = t78.
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t73 = zcl_lnt_void_type=>get_db65( i_voided = t74 i_qualified_name = t79 ).
        t68 = t73.
      ENDIF.
      t65 = t68.
      zcl_lnt_sy_method_call_body=>run_syntax( i_node = t61 i_input_967e = t64 i_method = t65 ).
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
