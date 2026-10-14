* TS: src/abap/5_syntax/expressions/default.ts:8:1 Default
CLASS zcl_lnt_sy_default DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_default IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = CAST zcl_lnt_expression_node( t3 ).
      t10 = t11.
      DATA(t12) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t16) = |Read From|.
        CREATE OBJECT t15.
        t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t15->sval = t16.
        t13 = t15.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      t9 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t10 i_input_967e = t12 i_ref_type = t13 i_allow_generic_deference = t18 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    t20 = t21->find_direct_expression( i_type_9913 = t22 ).
    t19 = t20.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zcl_lnt_expression_node( t19 ).
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        DATA(t29) = CAST zcl_lnt_expression_node( t19 ).
        t28 = t29.
        t27 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t28 ).
        t25 = t27.
      ELSE.
        DATA t30 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t30.
        t25 = t30.
      ENDIF.
      result = t25.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t31.
    result = t31.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d777_7c002ad3f1af.
  ENDMETHOD.
ENDCLASS.
