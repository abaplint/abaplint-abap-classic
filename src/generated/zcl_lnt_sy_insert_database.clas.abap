* TS: src/abap/5_syntax/statements/insert_database.ts:9:1 InsertDatabase
CLASS zcl_lnt_sy_insert_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_insert_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t18 = t19->find_all_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t18->items INTO t22.
      t21 ?= t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = CAST zcl_lnt_expression_node( t21 ).
        t24 = t26.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t27.
        t24 = t27.
      ENDIF.
      DATA(t28) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t32.
      t23 = zcl_lnt_sy_source=>run_syntax( i_node = t24 i_input_967e = t28 i_target_type = t29 i_write_reference = t30 i_allow_generic_deference = t31 i_read_reference = t32 ).
    ENDLOOP.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t34) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t33 = t34->find_all_expressions( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    LOOP AT t33->items INTO t37.
      t36 ?= t37.
      DATA(t38) = CAST zcl_lnt_expression_node( t36 ).
      DATA(t39) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t38 i_input_967e = t39 ).
    ENDLOOP.
    DATA t40 TYPE REF TO zcl_lnt_expression_node.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA(t42) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    t41 = t42->find_first_expression( i_type_9913 = t43 ).
    t40 = t41.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA(t46) = CAST zcl_lnt_expression_node( t40 ).
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    t47 = t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = CAST zcl_lnt_expression_node( t45 ).
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    t49 = xsdbool( t50 = abap_false ).
    t44 = t49.
    IF t44 = abap_true.
      DATA t52 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      DATA(t54) = CAST zcl_lnt_expression_node( t40 ).
      t53 = t54.
      DATA(t55) = CAST zcl_lnt_syntax_input( t2 ).
      t52 = zcl_lnt_sy_database_table=>run_syntax( i_node = t53 i_input_967e = t55 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d897_ae3a80d75eac.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
