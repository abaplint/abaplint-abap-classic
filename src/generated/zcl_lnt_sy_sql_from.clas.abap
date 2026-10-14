* TS: src/abap/5_syntax/expressions/sql_from.ts:7:1 SQLFrom
CLASS zcl_lnt_sy_sql_from DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_from IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    DATA t4 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d ).
    t6 = t7->find_all_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t9->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t13) = CAST zcl_lnt_expression_node( t10 ).
      DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
      t12 = t13->find_all_expressions( i_type_9913 = t14 ).
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      LOOP AT t12->items INTO t16.
        t15 ?= t16.
        DATA(t17) = CAST zcl_lnt_expression_node( t15 ).
        DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
        zcl_lnt_sy_dynamic=>run_syntax( i_node = t17 i_input_967e = t18 ).
      ENDLOOP.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = CAST zcl_lnt_expression_node( t10 ).
      DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
      t20 = t21->find_first_expression( i_type_9913 = t22 ).
      t19 = t20.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = CAST zcl_lnt_expression_node( t19 ).
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      t26 = t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = CAST zcl_lnt_expression_node( t24 ).
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      t28 = xsdbool( t29 = abap_false ).
      t23 = t28.
      IF t23 = abap_true.
        DATA(t31) = CAST zlnt_runtime_arra_b72089862d0f( t3 ).
        DATA t32 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        DATA(t34) = CAST zcl_lnt_expression_node( t19 ).
        t33 = t34.
        DATA(t35) = CAST zcl_lnt_syntax_input( t2 ).
        t32 = zcl_lnt_sy_database_table=>run_syntax( i_node = t33 i_input_967e = t35 ).
        APPEND t32 TO t31->items.
      ENDIF.
    ENDLOOP.
    DATA(t36) = CAST zlnt_runtime_arra_b72089862d0f( t3 ).
    result = t36.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d815_2ab51eeb69fc.
  ENDMETHOD.
ENDCLASS.
