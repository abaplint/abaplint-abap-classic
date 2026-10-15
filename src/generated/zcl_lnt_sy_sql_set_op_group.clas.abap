* TS: src/abap/5_syntax/expressions/sql_set_op_group.ts:6:1 SQLSetOpGroup
CLASS zcl_lnt_sy_sql_set_op_group DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_set_op_group IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA(t7) = t1.
      DATA(t8) = t2.
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = abap_true.
        DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t14.
      zcl_lnt_sy_expres_select=>run_syntax( i_node = t7 i_input_967e = t8 i_skip_implicit_into = t9 i_select_loop_6767 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t1.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    t15 = t16->find_direct_expressions( i_type_9913 = t17 ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t15->load( ).
      IF t20 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t15->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA(t23) = t18.
      DATA(t24) = t2.
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t23 i_input_967e = t24 ).
    ENDDO.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t1.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    t25 = t26->find_direct_expressions( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t25->load( ).
      IF t30 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t25->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA(t33) = t28.
      DATA(t34) = t2.
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t33 i_input_967e = t34 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d840_cd1c20458c1b.
  ENDMETHOD.
ENDCLASS.
