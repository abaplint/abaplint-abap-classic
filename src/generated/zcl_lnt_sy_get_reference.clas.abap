* TS: src/abap/5_syntax/statements/get_reference.ts:10:1 GetReference
CLASS zcl_lnt_sy_get_reference DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_get_reference IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA t8 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t9) = t3.
    DATA(t10) = t2.
    DATA t11 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t14.
    t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t10 i_target_type = t11 i_write_reference = t12 i_allow_generic_deference = t13 i_read_reference = t14 ).
    t7 = t8.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t16 = t17->find_direct_expression( i_type_9913 = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = t15.
    t21 = t22.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t21.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t21.
      t28 = t29.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t27 = t28->find_direct_expression( i_type_9913 = t30 ).
      t23 = t27.
    ENDIF.
    t20 = t23.
    t19 = t20.
    DATA t31 TYPE abap_bool.
    DATA(t32) = t19.
    t31 = xsdbool( t32 IS BOUND ).
    IF t31 = abap_true.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t7.
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_any_type ).
      IF t33 = abap_true.
        DATA t35 TYPE string.
        DATA(t36) = |GET REFERENCE generic and inline declaration not possible|.
        t35 = t36.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t38) = t2.
        t37 = t38->issues.
        DATA t39 TYPE REF TO zcl_lnt_issue.
        DATA(t40) = t2.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t42) = t1.
        t41 = t42->get_first_token( ).
        DATA(t43) = t35.
        DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t44.
        t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t40 i_token = t41 i_message_26cb = t43 i_fix = t44 ).
        t37->load( ).
        APPEND t39 TO t37->items.
        t37->save( ).
        RETURN.
      ENDIF.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA(t46) = t19.
      t45 = t46.
      DATA(t47) = t2.
      DATA t48 TYPE REF TO zcl_lnt_data_reference.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t49.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t7.
      t50 = xsdbool( t51 IS BOUND ).
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_data_reference.
        DATA t53 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t54) = t7.
        t53 = t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t52 = NEW zcl_lnt_data_reference( i_type_9913 = t53 i_qualified_name = t55 ).
        t49 = t52.
      ELSE.
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t56.
        t49 = t56.
      ENDIF.
      t48 ?= t49.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t45 i_input_967e = t47 i_type_9913 = t48 ).
    ELSE.
      DATA t57 TYPE abap_bool.
      DATA(t58) = t15.
      t57 = xsdbool( t58 IS BOUND ).
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        DATA(t61) = t15.
        t60 = t61.
        DATA(t62) = t2.
        t59 = zcl_lnt_sy_target=>run_syntax( i_node = t60 i_input_967e = t62 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d912_191cc66f9dba.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
