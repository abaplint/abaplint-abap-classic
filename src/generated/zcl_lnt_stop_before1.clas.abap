* TS: src/abap/2_statements/combi.ts:1240:1 StopBefore1
CLASS zcl_lnt_stop_before1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA words TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_words TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_stop_before1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_words.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = t1.
    DATA(t6) = VALUE string( ).
    t5->dense( ).
    DATA(t7) = VALUE i( ).
    DO.
      t5->load( ).
      IF t7 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t5->items INDEX t7 + 1 INTO t6.
      IF t5->has( t7 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t7 = t7 + 1.
      DATA(t8) = t3.
      DATA t9 TYPE string.
      DATA(t10) = t6.
      DATA(t11) = strlen( t10 ).
      t9 = t10.
      IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t9 TO UPPER CASE.
      ELSE.
        t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
      ENDIF.
      t8->load( ).
      APPEND t9 TO t8->items.
      t8->save( ).
    ENDDO.
    DATA(t12) = t3.
    t2 = t12.
    me->words = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `words`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_st_result.
      DATA(t15) = t5.
      t14 = t15.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t14.
      t17 = t18->tokens.
      DATA t19 TYPE i.
      DATA(t20) = t14.
      t19 = t20->token_index.
      t19 = t19 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t17->load( ).
      CLEAR t21.
      READ TABLE t17->items INDEX t19 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t16.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t16 ?= t23.
      ELSE.
        t16 ?= t21.
      ENDIF.
      t13 = t16.
      t12 = t13.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t12.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        t24 = t27.
      ELSE.
        DATA t28 TYPE string.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t30) = t12.
        t29 = t30.
        DATA t31 TYPE string.
        DATA(t32) = t29.
        t31 = t32->str_upper.
        t28 = t31.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t28.
        t24 = t33.
      ENDIF.
      t11 = t24.
      t10 = t11.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t37) = t10.
      t36 = t37.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t38 = t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t36.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ELSEIF t42->has = abap_false.
        t41 = abap_true.
      ENDIF.
      t40 = xsdbool( t41 = abap_false ).
      t35 = t40.
      t34 = t35.
      IF t35 = abap_true.
        DATA t43 TYPE abap_bool.
        DATA(t44) = me->words.
        DATA t45 TYPE string.
        DATA(t46) = t10.
        t45 = t46->value.
        t43 = t44->includes( p0 = t45 ).
        t34 = t43.
      ENDIF.
      IF t34 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t47) = t2.
      DATA(t48) = t5.
      t47->load( ).
      APPEND t48 TO t47->items.
      t47->save( ).
    ENDDO.
    DATA(t49) = t2.
    result = t49.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Terminal('stopBefore(|.
    DATA t4 TYPE string.
    DATA(t5) = me->words.
    DATA(t6) = |\||.
    DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t7->has = abap_true.
    t7->value = t6.
    t4 = t5->join( p0 = t7 ).
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t9) = |)')|.
    DATA(t10) = strlen( t2 ).
    t1 = |{ t2 }{ t9 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |stopBefore(|.
    DATA t4 TYPE string.
    DATA(t5) = me->words.
    DATA(t6) = |,|.
    DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t7->has = abap_true.
    t7->value = t6.
    t4 = t5->join( p0 = t7 ).
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t9) = |)|.
    DATA(t10) = strlen( t2 ).
    t1 = |{ t2 }{ t9 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = ||.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t4.
    t3 = t8.
    t2 = me->run( i_r_f634 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d83_c58d804fe3d16b.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
