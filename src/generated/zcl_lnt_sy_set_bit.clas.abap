* TS: src/abap/5_syntax/statements/set_bit.ts:9:1 SetBit
CLASS zcl_lnt_sy_set_bit DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_set_bit IMPLEMENTATION.
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
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t31) = t24.
      DATA(t32) = t2.
      t30 = zcl_lnt_sy_target=>run_syntax( i_node = t31 i_input_967e = t32 ).
      t29 = t30.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t29.
      t34 = xsdbool( t35 IS BOUND ).
      t33 = t34.
      IF t34 = abap_true.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zcl_lnt_type_utils.
        DATA t39 TYPE REF TO zcl_lnt_current_scope.
        DATA(t40) = t2.
        t39 = t40->scope.
        t38 = NEW zcl_lnt_type_utils( i_scope = t39 ).
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t44) = t29.
          t43 = t44.
          t41 = t43.
        ELSE.
          DATA t45 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t45.
          t41 = t45.
        ENDIF.
        t37 = t38->is_hex_like( i_type_9913 = t41 ).
        DATA(t46) = abap_false.
        t36 = xsdbool( t37 = t46 ).
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        DATA t47 TYPE string.
        DATA(t48) = |Input must be byte-like|.
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t50) = t2.
        t49 = t50->issues.
        DATA t51 TYPE REF TO zcl_lnt_issue.
        DATA(t52) = t2.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t24.
        t53 = t54->get_first_token( ).
        DATA(t55) = t47.
        DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t56.
        t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t52 i_token = t53 i_message_26cb = t55 i_fix = t56 ).
        t49->load( ).
        APPEND t51 TO t49->items.
        t49->save( ).
        RETURN.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d960_86c6c4bba2f7.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
