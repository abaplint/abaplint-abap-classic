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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA t11 TYPE REF TO zcl_lnt_abstract_type.
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t7 = zcl_lnt_sy_source=>run_syntax( i_node = t1->find_direct_expression( i_type_9913 = t6 ) i_input_967e = t2 i_target_type = t11 i_write_reference = t12 i_allow_generic_deference = t13 i_read_reference = t14 ).
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t15 = t1->find_direct_expression( i_type_9913 = t18 ).
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    t21 = t15.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t21 IS INITIAL ) = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t21.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t23 = t28->find_direct_expression( i_type_9913 = t30 ).
    ENDIF.
    t19 = t23.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_any_type ) = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t37 = t2->issues.
        DATA t39 TYPE REF TO zcl_lnt_issue.
        DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |GET REFERENCE generic and inline declaration not possible| i_fix = t44 ).
        t37->load( ).
        APPEND t39 TO t37->items.
        t37->save( ).
        RETURN.
      ENDIF.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      t45 = t19.
      DATA t48 TYPE REF TO zcl_lnt_data_reference.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t7 IS BOUND ) = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t49 = NEW zcl_lnt_data_reference( i_type_9913 = t7 i_qualified_name = t55 ).
      ELSE.
        CLEAR t49.
      ENDIF.
      t48 ?= t49.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t45 i_input_967e = t2 i_type_9913 = t48 ).
    ELSE.
      IF xsdbool( t15 IS BOUND ) = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        t59 = zcl_lnt_sy_target=>run_syntax( i_node = t15 i_input_967e = t2 ).
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
