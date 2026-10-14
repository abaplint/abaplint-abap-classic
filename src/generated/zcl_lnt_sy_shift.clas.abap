* TS: src/abap/5_syntax/statements/shift.ts:9:1 Shift
CLASS zcl_lnt_sy_shift DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_shift IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = t6.
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = t2.
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = t1.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    t19 = t20->find_direct_expression( i_type_9913 = t21 ).
    t18 = t19.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = t18.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA t29 TYPE string.
      DATA(t30) = |Shift, Target not found|.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t2.
      t31 = t32->issues.
      DATA t33 TYPE REF TO zcl_lnt_issue.
      DATA(t34) = t2.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t36) = t1.
      t35 = t36->get_first_token( ).
      DATA(t37) = t29.
      DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t38.
      t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t34 i_token = t35 i_message_26cb = t37 i_fix = t38 ).
      APPEND t33 TO t31->items.
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zcl_lnt_abstract_type.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA(t42) = t18.
    t41 = t42.
    DATA(t43) = t2.
    t40 = zcl_lnt_sy_target=>run_syntax( i_node = t41 i_input_967e = t43 ).
    t39 = t40.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE i( ).
    DATA t46 TYPE string.
    DATA t47 TYPE string.
    DATA(t48) = t1.
    t47 = t48->concat_tokens( ).
    DATA(t49) = strlen( t47 ).
    t46 = t47.
    IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t46 TO UPPER CASE.
    ELSE.
      t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
    ENDIF.
    DATA(t50) = | IN BYTE MODE|.
    DATA(t51) = strlen( t46 ).
    IF t50 IS INITIAL.
      t45 = 0.
    ELSE.
      FIND t50 IN t46 MATCH OFFSET t45.
      IF sy-subrc <> 0.
        t45 = -1.
      ENDIF.
    ENDIF.
    DATA(t52) = 0.
    t44 = xsdbool( t45 >= t52 ).
    IF t44 = abap_true.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE REF TO zcl_lnt_type_utils.
      DATA t56 TYPE REF TO zcl_lnt_current_scope.
      DATA(t57) = t2.
      t56 = t57->scope.
      t55 = NEW zcl_lnt_type_utils( i_scope = t56 ).
      DATA(t58) = t39.
      t54 = t55->is_hex_like( i_type_9913 = t58 ).
      DATA(t59) = abap_false.
      t53 = xsdbool( t54 = t59 ).
      IF t53 = abap_true.
        DATA t60 TYPE string.
        DATA(t61) = |Shift, Target not hex like|.
        t60 = t61.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t63) = t2.
        t62 = t63->issues.
        DATA t64 TYPE REF TO zcl_lnt_issue.
        DATA(t65) = t2.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t67) = t1.
        t66 = t67->get_first_token( ).
        DATA(t68) = t60.
        DATA t69 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t69.
        t64 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t65 i_token = t66 i_message_26cb = t68 i_fix = t69 ).
        APPEND t64 TO t62->items.
        RETURN.
      ENDIF.
    ELSE.
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      DATA t72 TYPE REF TO zcl_lnt_type_utils.
      DATA t73 TYPE REF TO zcl_lnt_current_scope.
      DATA(t74) = t2.
      t73 = t74->scope.
      t72 = NEW zcl_lnt_type_utils( i_scope = t73 ).
      DATA(t75) = t39.
      t71 = t72->is_char_like( i_type_9913 = t75 ).
      DATA(t76) = abap_false.
      t70 = xsdbool( t71 = t76 ).
      IF t70 = abap_true.
        DATA t77 TYPE string.
        DATA(t78) = |Shift, Target not char like|.
        t77 = t78.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t80) = t2.
        t79 = t80->issues.
        DATA t81 TYPE REF TO zcl_lnt_issue.
        DATA(t82) = t2.
        DATA t83 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t84) = t1.
        t83 = t84->get_first_token( ).
        DATA(t85) = t77.
        DATA t86 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t86.
        t81 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t82 i_token = t83 i_message_26cb = t85 i_fix = t86 ).
        APPEND t81 TO t79->items.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d944_8d23073c621c.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
