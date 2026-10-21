* TS: src/abap/5_syntax/statements/select.ts:7:1 Select
CLASS zcl_lnt_sy_statem_select DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_statem_select IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    t3 = i_node->find_direct_expressions( i_type_9913 = t6 ).
    DATA t7 TYPE i.
    t7 = 0.
    DO.
      t3->load( ).
      IF xsdbool( t7 < lines( t3->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t16 TYPE i.
      DATA t17 TYPE i.
      t3->load( ).
      t17 = lines( t3->items ).
      DATA(t19) = 1.
      t16 = t17 - t19.
      t14 = xsdbool( t7 = t16 ).
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t21.
      DATA(t23) = t7.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t3->load( ).
      CLEAR t24.
      READ TABLE t3->items INDEX t23 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t21.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t21 ?= t26.
      ELSE.
        t21 ?= t24.
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t29.
      DATA t31 TYPE abap_bool.
      t31 = xsdbool( t14 = abap_false ).
      DATA(t34) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t34->has = abap_true.
      t34->value = t31.
      t29 = t34.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      zcl_lnt_sy_expres_select=>run_syntax( i_node = t21 i_input_967e = t2 i_skip_implicit_into = t29 i_select_loop_6767 = t36 ).
      DATA(t39) = 1.
      t7 = t7 + t39.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d956_817e1e79f1df.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
