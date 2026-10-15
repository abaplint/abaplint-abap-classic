* TS: src/abap/2_statements/combi.ts:350:1 Optional
CLASS zcl_lnt_st_optional DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA optional TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_optional TYPE REF TO zif_lnt_statement_runnable.
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
CLASS zcl_lnt_st_optional IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_optional.
    DATA(t2) = t1.
    me->optional = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->optional.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->optional.
    t1 = t2->get_using( ).
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
      DATA(t10) = t2.
      DATA(t11) = t5.
      t10->load( ).
      APPEND t11 TO t10->items.
      t10->save( ).
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = me->optional.
      DATA(t15) = t5.
      t13 = t14->run_one( i_x = t15 ).
      t12 = t13.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE i.
      DATA(t18) = t12.
      t18->load( ).
      t17 = lines( t18->items ).
      DATA(t19) = 1.
      t16 = xsdbool( t17 = t19 ).
      IF t16 = abap_true.
        DATA(t20) = t2.
        DATA t21 TYPE REF TO zcl_lnt_st_result.
        CLEAR t21.
        DATA(t22) = t12.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t22->load( ).
        CLEAR t23.
        READ TABLE t22->items INDEX 1 INTO t23.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        CLEAR t21.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t24 ?= t23.
          DATA t25 TYPE REF TO object.
          t25 = t24->as_ref( ).
          t21 ?= t25.
        ELSE.
          t21 ?= t23.
        ENDIF.
        t20->load( ).
        APPEND t21 TO t20->items.
        t20->save( ).
      ELSE.
        DATA(t26) = VALUE i( ).
        DATA(t27) = t12.
        DATA t28 TYPE REF TO zcl_lnt_st_result.
        CLEAR t28.
        DATA t29 TYPE REF TO object.
        CLEAR t29.
        DATA(t30) = VALUE i( ).
        DO.
          t27->load( ).
          IF t30 >= lines( t27->items ).
            EXIT.
          ENDIF.
          CLEAR t29.
          READ TABLE t27->items INDEX t30 + 1 INTO t29.
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
          DATA(t33) = t2.
          DATA(t34) = t28.
          t33->load( ).
          APPEND t34 TO t33->items.
          t33->save( ).
        ENDDO.
        DATA t35 TYPE i.
        DATA(t36) = t2.
        t36->load( ).
        t35 = lines( t36->items ).
        t26 = t35.
      ENDIF.
    ENDDO.
    DATA(t37) = t2.
    result = t37.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Optional(|.
    DATA t4 TYPE string.
    DATA(t5) = me->optional.
    t4 = t5->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |opt(|.
    DATA t4 TYPE string.
    DATA(t5) = me->optional.
    t4 = t5->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
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
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    DATA(t5) = t1.
    t4 = t5.
    DATA(t6) = t2.
    DATA(t7) = t4.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = me->optional.
    DATA(t11) = t4.
    t9 = t10->run_one( i_x = t11 ).
    t8 = t9.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE i.
    DATA(t14) = t8.
    t14->load( ).
    t13 = lines( t14->items ).
    DATA(t15) = 1.
    t12 = xsdbool( t13 = t15 ).
    IF t12 = abap_true.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_st_result.
      CLEAR t17.
      DATA(t18) = t8.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t18->load( ).
      CLEAR t19.
      READ TABLE t18->items INDEX 1 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t19.
      ENDIF.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
    ELSE.
      DATA(t22) = VALUE i( ).
      DATA(t23) = t8.
      DATA t24 TYPE REF TO zcl_lnt_st_result.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      DATA(t26) = VALUE i( ).
      DO.
        t23->load( ).
        IF t26 >= lines( t23->items ).
          EXIT.
        ENDIF.
        CLEAR t25.
        READ TABLE t23->items INDEX t26 + 1 INTO t25.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        CLEAR t24.
        IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t27 ?= t25.
          DATA t28 TYPE REF TO object.
          t28 = t27->as_ref( ).
          t24 ?= t28.
        ELSE.
          t24 ?= t25.
        ENDIF.
        DATA(t29) = t2.
        DATA(t30) = t24.
        t29->load( ).
        APPEND t30 TO t29->items.
        t29->save( ).
      ENDDO.
      DATA t31 TYPE i.
      DATA(t32) = t2.
      t32->load( ).
      t31 = lines( t32->items ).
      t22 = t31.
    ENDIF.
    DATA(t33) = t2.
    result = t33.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d68_74cc3058560819.
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
