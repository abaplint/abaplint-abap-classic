* TS: src/abap/5_syntax/statements/shift.ts:9:1 Shift
CLASS zcl_lnt_sy_shift DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_shift IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = t1.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t22 = t23->find_direct_expression( i_type_9913 = t24 ).
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = t21.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    t28 = t29.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t26.
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    t25 = t30.
    IF t25 = abap_true.
      DATA t32 TYPE string.
      DATA(t33) = |Shift, Target not found|.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t35) = t2.
      t34 = t35->issues.
      DATA t36 TYPE REF TO zcl_lnt_issue.
      DATA(t37) = t2.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t39) = t1.
      t38 = t39->get_first_token( ).
      DATA(t40) = t32.
      DATA t41 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t41.
      t36 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t37 i_token = t38 i_message_26cb = t40 i_fix = t41 ).
      t34->load( ).
      APPEND t36 TO t34->items.
      t34->save( ).
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_abstract_type.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    DATA(t45) = t21.
    t44 = t45.
    DATA(t46) = t2.
    t43 = zcl_lnt_sy_target=>run_syntax( i_node = t44 i_input_967e = t46 ).
    t42 = t43.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE i( ).
    DATA t49 TYPE string.
    DATA t50 TYPE string.
    DATA(t51) = t1.
    t50 = t51->concat_tokens( ).
    DATA(t52) = strlen( t50 ).
    t49 = t50.
    IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t49 TO UPPER CASE.
    ELSE.
      t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
    ENDIF.
    DATA(t53) = | IN BYTE MODE|.
    DATA(t54) = strlen( t49 ).
    IF t53 IS INITIAL.
      t48 = 0.
    ELSE.
      FIND t53 IN t49 MATCH OFFSET t48.
      IF sy-subrc <> 0.
        t48 = -1.
      ENDIF.
    ENDIF.
    DATA(t55) = 0.
    t47 = xsdbool( t48 >= t55 ).
    IF t47 = abap_true.
      DATA t56 TYPE abap_bool.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE REF TO zcl_lnt_type_utils.
      DATA t59 TYPE REF TO zcl_lnt_current_scope.
      DATA(t60) = t2.
      t59 = t60->scope.
      t58 = NEW zcl_lnt_type_utils( i_scope = t59 ).
      DATA(t61) = t42.
      t57 = t58->is_hex_like( i_type_9913 = t61 ).
      DATA(t62) = abap_false.
      t56 = xsdbool( t57 = t62 ).
      IF t56 = abap_true.
        DATA t63 TYPE string.
        DATA(t64) = |Shift, Target not hex like|.
        t63 = t64.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t66) = t2.
        t65 = t66->issues.
        DATA t67 TYPE REF TO zcl_lnt_issue.
        DATA(t68) = t2.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t70) = t1.
        t69 = t70->get_first_token( ).
        DATA(t71) = t63.
        DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t72.
        t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t68 i_token = t69 i_message_26cb = t71 i_fix = t72 ).
        t65->load( ).
        APPEND t67 TO t65->items.
        t65->save( ).
        RETURN.
      ENDIF.
    ELSE.
      DATA t73 TYPE abap_bool.
      DATA t74 TYPE abap_bool.
      DATA t75 TYPE REF TO zcl_lnt_type_utils.
      DATA t76 TYPE REF TO zcl_lnt_current_scope.
      DATA(t77) = t2.
      t76 = t77->scope.
      t75 = NEW zcl_lnt_type_utils( i_scope = t76 ).
      DATA(t78) = t42.
      t74 = t75->is_char_like( i_type_9913 = t78 ).
      DATA(t79) = abap_false.
      t73 = xsdbool( t74 = t79 ).
      IF t73 = abap_true.
        DATA t80 TYPE string.
        DATA(t81) = |Shift, Target not char like|.
        t80 = t81.
        DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t83) = t2.
        t82 = t83->issues.
        DATA t84 TYPE REF TO zcl_lnt_issue.
        DATA(t85) = t2.
        DATA t86 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t87) = t1.
        t86 = t87->get_first_token( ).
        DATA(t88) = t80.
        DATA t89 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t89.
        t84 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t85 i_token = t86 i_message_26cb = t88 i_fix = t89 ).
        t82->load( ).
        APPEND t84 TO t82->items.
        t82->save( ).
        RETURN.
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d966_baad0ff2b85d.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
