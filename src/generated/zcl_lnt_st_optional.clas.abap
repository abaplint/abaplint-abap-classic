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
    me->optional = i_optional.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
  ENDMETHOD.

  METHOD list_keywords.
    result = me->optional->list_keywords( ).

  ENDMETHOD.

  METHOD get_using.
    result = me->optional->get_using( ).

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
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
      t2->load( ).
      APPEND t5 TO t2->items.
      t2->save( ).
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t12 = me->optional->run_one( i_x = t5 ).
      t12->load( ).
      IF xsdbool( lines( t12->items ) = 1 ) = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_st_result.
        CLEAR t21.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t12->load( ).
        CLEAR t23.
        READ TABLE t12->items INDEX 1 INTO t23.
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
        t2->load( ).
        APPEND t21 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t26) = VALUE i( ).
        DATA t28 TYPE REF TO zcl_lnt_st_result.
        CLEAR t28.
        DATA t29 TYPE REF TO object.
        CLEAR t29.
        DATA(t30) = VALUE i( ).
        DO.
          t12->load( ).
          IF t30 >= lines( t12->items ).
            EXIT.
          ENDIF.
          CLEAR t29.
          READ TABLE t12->items INDEX t30 + 1 INTO t29.
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
          t2->load( ).
          APPEND t28 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t26 = lines( t2->items ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Optional(|.
    DATA t4 TYPE string.
    t4 = me->optional->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t2 TYPE string.
    DATA(t3) = |opt(|.
    DATA t4 TYPE string.
    t4 = me->optional->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND || TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    t4 = t1.
    t2->load( ).
    APPEND t4 TO t2->items.
    t2->save( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = me->optional->run_one( i_x = t4 ).
    t8->load( ).
    IF xsdbool( lines( t8->items ) = 1 ) = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_st_result.
      DATA t19 TYPE REF TO object.
      t8->load( ).
      READ TABLE t8->items INDEX 1 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t19.
      ENDIF.
      t2->load( ).
      APPEND t17 TO t2->items.
      t2->save( ).
    ELSE.
      DATA(t22) = VALUE i( ).
      DATA t24 TYPE REF TO zcl_lnt_st_result.
      DATA t25 TYPE REF TO object.
      DATA(t26) = VALUE i( ).
      DO.
        t8->load( ).
        IF t26 >= lines( t8->items ).
          EXIT.
        ENDIF.
        CLEAR t25.
        READ TABLE t8->items INDEX t26 + 1 INTO t25.
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
        t2->load( ).
        APPEND t24 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t22 = lines( t2->items ).
    ENDIF.
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
