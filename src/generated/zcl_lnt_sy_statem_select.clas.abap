* TS: src/abap/5_syntax/statements/select.ts:7:1 Select
CLASS zcl_lnt_sy_statem_select DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_select IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3.
    t4 = t5->find_direct_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE i.
    DATA(t8) = 0.
    t7 = t8.
    DO.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t7.
      DATA t11 TYPE i.
      DATA(t12) = t3.
      t11 = lines( t12->items ).
      t9 = xsdbool( t10 < t11 ).
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t7.
      DATA t16 TYPE i.
      DATA t17 TYPE i.
      DATA(t18) = t3.
      t17 = lines( t18->items ).
      DATA(t19) = 1.
      t16 = t17 - t19.
      t14 = xsdbool( t15 = t16 ).
      t13 = t14.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t22) = t3.
      DATA(t23) = t7.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      READ TABLE t22->items INDEX t23 INTO t24.
      t21 ?= t24.
      t20 = t21.
      DATA(t25) = t20.
      DATA(t26) = t2.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA t29 TYPE abap_bool.
        DATA(t30) = t13.
        DATA(t31) = abap_false.
        t29 = xsdbool( t30 = t31 ).
        DATA(t32) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t32->has = abap_true.
        t32->value = t29.
        t27 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t33.
        t27 = t33.
      ENDIF.
      DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t34.
      zcl_lnt_sy_expres_select=>run_syntax( i_node = t25 i_input_967e = t26 i_skip_implicit_into = t27 i_select_loop_6767 = t34 ).
      DATA t35 TYPE i.
      DATA(t36) = t7.
      DATA(t37) = 1.
      t35 = t36 + t37.
      t7 = t35.
    ENDDO.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d934_98952bc1b50e.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
