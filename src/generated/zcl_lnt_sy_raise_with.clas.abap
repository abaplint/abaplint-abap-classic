* TS: src/abap/5_syntax/expressions/raise_with.ts:6:1 RaiseWith
CLASS zcl_lnt_sy_raise_with DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_raise_with IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f ).
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t13.
    t3 = t4->find_all_expressions_multi( i_type_9913 = t5 i_recursive = t13 ).
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
    LOOP AT t3->items INTO t15.
      t14 ?= t15.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = CAST zcl_lnt_expression_node( t14 ).
        t17 = t19.
      ELSE.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t20.
        t17 = t20.
      ENDIF.
      DATA(t21) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t25.
      t16 = zcl_lnt_sy_source=>run_syntax( i_node = t17 i_input_967e = t21 i_target_type = t22 i_write_reference = t23 i_allow_generic_deference = t24 i_read_reference = t25 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d806_031c0d786620.
  ENDMETHOD.
ENDCLASS.
