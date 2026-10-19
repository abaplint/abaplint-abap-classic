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
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
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
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t22 = t1->find_direct_expression( i_type_9913 = t24 ).
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = xsdbool( t21 IS INITIAL ).
    IF t25 = abap_true.
      DATA(t33) = |Shift, Target not found|.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t34 = t2->issues.
      DATA t36 TYPE REF TO zcl_lnt_issue.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      t38 = t1->get_first_token( ).
      DATA t41 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t36 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t38 i_message_26cb = t33 i_fix = t41 ).
      t34->load( ).
      APPEND t36 TO t34->items.
      t34->save( ).
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_abstract_type.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    t44 = t21.
    t43 = zcl_lnt_sy_target=>run_syntax( i_node = t44 i_input_967e = t2 ).
    t42 = t43.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE i( ).
    DATA t49 TYPE string.
    DATA t50 TYPE string.
    t50 = t1->concat_tokens( ).
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
      t59 = t2->scope.
      t58 = NEW zcl_lnt_type_utils( i_scope = t59 ).
      t57 = t58->is_hex_like( i_type_9913 = t42 ).
      t56 = xsdbool( t57 = abap_false ).
      IF t56 = abap_true.
        DATA(t64) = |Shift, Target not hex like|.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t65 = t2->issues.
        DATA t67 TYPE REF TO zcl_lnt_issue.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        t69 = t1->get_first_token( ).
        DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t69 i_message_26cb = t64 i_fix = t72 ).
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
      t76 = t2->scope.
      t75 = NEW zcl_lnt_type_utils( i_scope = t76 ).
      t74 = t75->is_char_like( i_type_9913 = t42 ).
      t73 = xsdbool( t74 = abap_false ).
      IF t73 = abap_true.
        DATA(t81) = |Shift, Target not char like|.
        DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t82 = t2->issues.
        DATA t84 TYPE REF TO zcl_lnt_issue.
        DATA t86 TYPE REF TO zcl_lnt_abstract_token.
        t86 = t1->get_first_token( ).
        DATA t89 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t84 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t86 i_message_26cb = t81 i_fix = t89 ).
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
