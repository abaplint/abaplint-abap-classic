* TS: src/abap/5_syntax/expressions/sql_for_all_entries.ts:7:1 SQLForAllEntries
CLASS zcl_lnt_sy_sql_for_all_entries DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_for_all_entries IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t3 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t8 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t3 = t14.
    ENDIF.
    DATA t17 TYPE abap_bool.
    DATA(t18) = CAST zcl_lnt_expression_node( t3 ).
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = CAST zcl_lnt_expression_node( t3 ).
        t23 = t24.
        t21 = t23.
      ELSE.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t25.
        t21 = t25.
      ENDIF.
      DATA(t26) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      t20 = zcl_lnt_sy_source=>run_syntax( i_node = t21 i_input_967e = t26 i_target_type = t27 i_write_reference = t28 i_allow_generic_deference = t29 i_read_reference = t30 ).
      t19 = t20.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      DATA(t33) = CAST zcl_lnt_abstract_type( t19 ).
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_void_type ).
      t31 = t32.
      IF t32 = abap_false.
        DATA t34 TYPE abap_bool.
        DATA(t35) = CAST zcl_lnt_abstract_type( t19 ).
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_unknown_type ).
        t31 = t34.
      ENDIF.
      IF t31 = abap_true.
        RETURN.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA(t38) = CAST zcl_lnt_abstract_type( t19 ).
      t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t36 = xsdbool( t37 = abap_false ).
      IF t36 = abap_true.
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        DATA(t41) = |FAE parameter must be table type, |.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t48) = CAST zcl_lnt_abstract_type( t19 ).
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = CAST zcl_lnt_abstract_type( t47 ).
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t52.
          t49 = t52.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t55) = CAST zcl_lnt_abstract_type( t47 ).
          t54 = t55.
          t53 = t54->zlnt_builtin_clas_3f891b097658( ).
          t49 = t53.
        ENDIF.
        t46 = t49.
        t45 = t46.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( t45 ).
        IF t58 IS INITIAL.
          t57 = abap_true.
        ENDIF.
        IF t57 = abap_true.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t56 = t59.
        ELSE.
          DATA t60 TYPE string.
          DATA t61 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( t45 ).
          t61 = t62.
          t60 = t61->name.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t60.
          t56 = t63.
        ENDIF.
        t44 = t56.
        t43 = t44.
        DATA(t64) = VALUE string( ).
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
        IF t66 IS INITIAL.
          t65 = abap_true.
        ELSEIF t66->has = abap_false.
          t65 = abap_true.
        ENDIF.
        IF t65 = abap_true.
          DATA(t67) = |undefined|.
          t64 = t67.
        ELSE.
          DATA t68 TYPE string.
          DATA(t69) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
          t68 = t69->value.
          t64 = t68.
        ENDIF.
        t42 = t64.
        DATA(t70) = strlen( t41 ).
        t40 = |{ t41 }{ t42 }|.
        t39 = t40.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t72) = CAST zcl_lnt_syntax_input( t2 ).
        t71 = t72->issues.
        DATA t73 TYPE REF TO zcl_lnt_issue.
        DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t76) = CAST zcl_lnt_expression_node( t1 ).
        t75 = t76->get_first_token(  ).
        DATA(t77) = t39.
        DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t78.
        t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t74 i_token = t75 i_message_26cb = t77 i_fix = t78 ).
        APPEND t73 TO t71->items.
        RETURN.
      ENDIF.
      DATA t79 TYPE string.
      DATA t80 TYPE string.
      DATA t81 TYPE string.
      DATA t82 TYPE REF TO zcl_lnt_expression_node.
      DATA(t83) = CAST zcl_lnt_expression_node( t3 ).
      t82 = t83.
      t81 = t82->concat_tokens(  ).
      DATA(t84) = |[]|.
      DATA(t85) = ||.
      DATA(t86) = strlen( t81 ).
      t80 = t81.
      REPLACE ALL OCCURRENCES OF t84 IN t80 WITH t85.
      t79 = t80.
      DATA t87 TYPE REF TO zcl_lnt_current_scope.
      DATA t88 TYPE REF TO zcl_lnt_current_scope.
      DATA(t89) = CAST zcl_lnt_syntax_input( t2 ).
      t88 = t89->scope.
      t87 = t88.
      DATA t90 TYPE string.
      DATA(t91) = t79.
      t90 = t91.
      DATA(t92) = CAST zcl_lnt_current_scope( t87 ).
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA(t94) = abap_true.
      IF t94 = abap_true.
        DATA(t95) = t90.
        DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t96->has = abap_true.
        t96->value = t95.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t93 = t97.
      ENDIF.
      t92->allow_header_use = t93.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d814_a6463a215095.
  ENDMETHOD.
ENDCLASS.
