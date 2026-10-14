* TS: src/abap/5_syntax/statements/collect.ts:9:1 Collect
CLASS zcl_lnt_sy_collect DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_collect IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        DATA(t13) = CAST zcl_lnt_expression_node( t3 ).
        t12 = t13.
        t10 = t12.
      ELSE.
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      DATA(t15) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t9 = zcl_lnt_sy_source=>run_syntax( i_node = t10 i_input_967e = t15 i_target_type = t16 i_write_reference = t17 i_allow_generic_deference = t18 i_read_reference = t19 ).
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t21 = t22->find_direct_expression( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE abap_bool.
    DATA(t25) = CAST zcl_lnt_expression_node( t20 ).
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = CAST zcl_lnt_expression_node( t20 ).
      t27 = t28.
      DATA(t29) = CAST zcl_lnt_syntax_input( t2 ).
      t26 = zcl_lnt_sy_target=>run_syntax( i_node = t27 i_input_967e = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA(t32) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
    t31 = t32->find_direct_expression( i_type_9913 = t33 ).
    t30 = t31.
    DATA t34 TYPE abap_bool.
    DATA(t35) = CAST zcl_lnt_expression_node( t30 ).
    t34 = xsdbool( t35 IS BOUND ).
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = CAST zcl_lnt_expression_node( t30 ).
      t36 = t37.
      DATA(t38) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t36 i_input_967e = t38 i_type_9913 = t39 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d855_ef5af09e4b1c.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
