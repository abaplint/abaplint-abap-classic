* TS: src/abap/5_syntax/expressions/sql_from.ts:7:1 SQLFrom
CLASS zcl_lnt_sy_sql_from DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_from IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    DATA t4 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
    t6 = t7->find_all_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = t10.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t15 = t16->find_all_expressions( i_type_9913 = t17 ).
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
        zcl_lnt_sy_dynamic=>run_syntax( i_node = t23 i_input_967e = t24 ).
      ENDDO.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = t10.
      DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
      t26 = t27->find_first_expression( i_type_9913 = t28 ).
      t25 = t26.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = t25.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t32 = t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t30.
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      t34 = xsdbool( t35 = abap_false ).
      t29 = t34.
      IF t29 = abap_true.
        DATA(t37) = t3.
        DATA t38 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t39 TYPE REF TO zcl_lnt_expression_node.
        DATA(t40) = t25.
        t39 = t40.
        DATA(t41) = t2.
        t38 = zcl_lnt_sy_database_table=>run_syntax( i_node = t39 i_input_967e = t41 ).
        t37->load( ).
        APPEND t38 TO t37->items.
        t37->save( ).
      ENDIF.
    ENDDO.
    DATA(t42) = t3.
    result = t42.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d837_caba46d11f35.
  ENDMETHOD.
ENDCLASS.
