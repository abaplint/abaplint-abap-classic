* TS: src/abap/5_syntax/expressions/sql_for_all_entries.ts:7:1 SQLForAllEntries
CLASS zcl_lnt_sy_sql_for_all_entries DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_for_all_entries IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t14 = t1->find_first_expression( i_type_9913 = t16 ).
      t3 = t14.
    ENDIF.
    DATA t17 TYPE abap_bool.
    t17 = xsdbool( t3 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      t21 = t3.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t20 = zcl_lnt_sy_source=>run_syntax( i_node = t21 i_input_967e = t2 i_target_type = t27 i_write_reference = t28 i_allow_generic_deference = t29 i_read_reference = t30 ).
      t19 = t20.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_void_type ).
      t31 = t32.
      IF t32 = abap_false.
        DATA t34 TYPE abap_bool.
        t34 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_unknown_type ).
        t31 = t34.
      ENDIF.
      IF t31 = abap_true.
        RETURN.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      t37 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t36 = xsdbool( t37 = abap_false ).
      IF t36 = abap_true.
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        DATA(t41) = |FAE parameter must be table type, |.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t45 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t47 TYPE REF TO zcl_lnt_abstract_type.
        t47 = t19.
        DATA t49 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t50) = xsdbool( t47 IS INITIAL ).
        IF t50 = abap_true.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          t54 = t47.
          t53 = t54->zlnt_builtin_clas_3f891b097658( ).
          t49 = t53.
        ENDIF.
        t45 = t49.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t57) = xsdbool( t45 IS INITIAL ).
        IF t57 = abap_true.
        ELSE.
          DATA t60 TYPE string.
          DATA t61 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          t61 = t45.
          t60 = t61->name.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t60.
          t56 = t63.
        ENDIF.
        t43 = t56.
        DATA(t64) = VALUE string( ).
        DATA(t65) = VALUE abap_bool( ).
        IF t43 IS INITIAL.
          t65 = abap_true.
        ELSEIF t43->has = abap_false.
          t65 = abap_true.
        ENDIF.
        IF t65 = abap_true.
          t64 = |undefined|.
        ELSE.
          DATA t68 TYPE string.
          t68 = t43->value.
          t64 = t68.
        ENDIF.
        t42 = t64.
        DATA(t70) = strlen( t41 ).
        t40 = |{ t41 }{ t42 }|.
        t39 = t40.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t71 = t2->issues.
        DATA t73 TYPE REF TO zcl_lnt_issue.
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        t75 = t1->get_first_token( ).
        DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t75 i_message_26cb = t39 i_fix = t78 ).
        t71->load( ).
        APPEND t73 TO t71->items.
        t71->save( ).
        RETURN.
      ENDIF.
      DATA t80 TYPE string.
      DATA t81 TYPE string.
      DATA t82 TYPE REF TO zcl_lnt_expression_node.
      t82 = t3.
      t81 = t82->concat_tokens( ).
      DATA(t84) = |[]|.
      DATA(t85) = ||.
      DATA(t86) = strlen( t81 ).
      t80 = t81.
      REPLACE ALL OCCURRENCES OF t84 IN t80 WITH t85.
      DATA t87 TYPE REF TO zcl_lnt_current_scope.
      DATA t88 TYPE REF TO zcl_lnt_current_scope.
      t88 = t2->scope.
      t87 = t88.
      DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t96->has = abap_true.
      t96->value = t80.
      t87->allow_header_use = t96.
      DELETE t87->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowHeaderUse`.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d836_ae6768e2c02b.
  ENDMETHOD.
ENDCLASS.
