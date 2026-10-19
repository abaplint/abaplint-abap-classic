* TS: src/abap/5_syntax/expressions/fstarget.ts:8:1 FSTarget
CLASS zcl_lnt_sy_fs_target DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_fs_target IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    t6 = t1.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = xsdbool( t6 IS INITIAL ).
    IF t9 = abap_true.
    ELSE.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
      t12 = t6->find_direct_expression( i_type_9913 = t14 ).
      t8 = t12.
    ENDIF.
    t4 = t8.
    DATA t15 TYPE abap_bool.
    t15 = xsdbool( t4 IS BOUND ).
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      t17 = t4.
      zcl_lnt_sy_inline_fs=>run_syntax( i_node = t17 i_input_967e = t2 i_type_9913 = t3 ).
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    t23 = t1.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t26) = xsdbool( t23 IS INITIAL ).
    IF t26 = abap_true.
    ELSE.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t29 = t23->find_direct_expression( i_type_9913 = t31 ).
      t25 = t29.
    ENDIF.
    t21 = t25.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t21 IS BOUND ).
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      t36 = t21.
      t35 = t36->get_first_token( ).
      t34 = t35.
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t40 TYPE REF TO zcl_lnt_current_scope.
      DATA t41 TYPE REF TO zcl_lnt_current_scope.
      t41 = t2->scope.
      t40 = t41.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t49 TYPE string.
      t49 = t34->str.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t49.
      t43 = t51.
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t55 = t43.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t59) = VALUE abap_bool( ).
      IF t55 IS INITIAL.
        t59 = abap_true.
      ELSEIF t55->has = abap_false.
        t59 = abap_true.
      ENDIF.
      t54 = t59.
      IF t54 = abap_true.
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t66 = t40->current.
        t65 = t66.
        DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t69) = xsdbool( t65 IS INITIAL ).
        IF t69 = abap_true.
        ELSE.
          DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t73 = t65.
          DATA t75 TYPE string.
          t75 = t43->value.
          t72 = t73->find_variable( i_name = t75 ).
          t68 = t72.
        ENDIF.
        t63 = t68.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t78 TYPE abap_bool.
        t78 = xsdbool( t63 IS BOUND ).
        IF t78 = abap_true.
          t77 = t63.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t89 TYPE string.
          t89 = t43->value.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t89.
          t87 = t91.
          t85 = t40->find_type_pool_constant( i_name = t87 ).
          t77 = t85.
        ENDIF.
        t53 = t77.
      ENDIF.
      t38 = t53.
      DATA(t93) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t93 = xsdbool( t38 IS INITIAL ).
      IF t93 = abap_true.
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        DATA(t103) = |"|.
        DATA t104 TYPE string.
        DATA t107 TYPE string.
        t107 = t34->str.
        t104 = t107.
        DATA(t109) = strlen( t103 ).
        t102 = |{ t103 }{ t104 }|.
        DATA(t110) = |" not found, FSTarget|.
        DATA(t111) = strlen( t102 ).
        t101 = |{ t102 }{ t110 }|.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t112 = t2->issues.
        DATA t114 TYPE REF TO zcl_lnt_issue.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        t116 = t1->get_first_token( ).
        DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t114 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t116 i_message_26cb = t101 i_fix = t119 ).
        t112->load( ).
        APPEND t114 TO t112->items.
        t112->save( ).
        RETURN.
      ENDIF.
      DATA t120 TYPE REF TO zcl_lnt_current_scope.
      t120 = t2->scope.
      DATA t122 TYPE REF TO zcl_lnt_abstract_token.
      t122 = t34.
      DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
      t126 = t38.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t129) = |Write To|.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t128->sval = t129.
      DATA t130 TYPE string.
      t130 = t2->filename.
      DATA t132 TYPE REF TO zcl_lnt_ireference_extras.
      t120->add_reference( i_usage = t122 i_referencing = t126 i_type_9913 = t128 i_filename = t130 i_extra = t132 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d809_d949ed5547d5.
  ENDMETHOD.
ENDCLASS.
