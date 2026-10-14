* TS: src/abap/5_syntax/statements/while.ts:9:1 While
CLASS zcl_lnt_sy_while DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_while IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA(t8) = CAST zcl_lnt_expression_node( t6 ).
      DATA(t9) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_cond=>run_syntax( i_node = t8 i_input_967e = t9 ).
    ENDLOOP.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t10 = t11->find_direct_expressions( i_type_9913 = t12 ).
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    LOOP AT t10->items INTO t14.
      t13 ?= t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = CAST zcl_lnt_expression_node( t13 ).
        t16 = t18.
      ELSE.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t19.
        t16 = t19.
      ENDIF.
      DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      t15 = zcl_lnt_sy_source=>run_syntax( i_node = t16 i_input_967e = t20 i_target_type = t21 i_write_reference = t22 i_allow_generic_deference = t23 i_read_reference = t24 ).
    ENDLOOP.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t25 = t26->find_direct_expressions( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    LOOP AT t25->items INTO t29.
      t28 ?= t29.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t31) = CAST zcl_lnt_expression_node( t28 ).
      DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
      t30 = zcl_lnt_sy_target=>run_syntax( i_node = t31 i_input_967e = t32 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d964_a967ba77e87a.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
