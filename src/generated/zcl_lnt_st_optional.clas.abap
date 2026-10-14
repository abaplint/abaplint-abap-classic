* TS: src/abap/2_statements/combi.ts:350:1 Optional
CLASS zcl_lnt_st_optional DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_optional IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_optional ).
    DATA(t2) = CAST zif_lnt_statement_runnable( t1 ).
    me->optional = t2.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:358|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:362|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t8) = CAST zcl_lnt_st_result( t5 ).
      APPEND t8 TO t7->items.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t11) = CAST zif_lnt_statement_runnable( me->optional ).
      DATA(t12) = CAST zcl_lnt_st_result( t5 ).
      t10 = t11->run_one( i_x = t12 ).
      t9 = t10.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE i.
      DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
      t14 = lines( t15->items ).
      DATA(t16) = 1.
      t13 = xsdbool( t14 = t16 ).
      IF t13 = abap_true.
        DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t18 TYPE REF TO zcl_lnt_st_result.
        DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        READ TABLE t19->items INDEX 1 INTO t20.
        t18 ?= t20.
        APPEND t18 TO t17->items.
      ELSE.
        DATA(t21) = VALUE i( ).
        DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
        DATA t23 TYPE REF TO zcl_lnt_st_result.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        LOOP AT t22->items INTO t24.
          t23 ?= t24.
          DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t26) = CAST zcl_lnt_st_result( t23 ).
          APPEND t26 TO t25->items.
        ENDLOOP.
        DATA t27 TYPE i.
        DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t27 = lines( t28->items ).
        t21 = t27.
      ENDIF.
    ENDLOOP.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t29.

  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:382|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:386|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:390|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    DATA(t5) = CAST zcl_lnt_st_result( t1 ).
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA(t7) = CAST zcl_lnt_st_result( t4 ).
    APPEND t7 TO t6->items.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = CAST zif_lnt_statement_runnable( me->optional ).
    DATA(t11) = CAST zcl_lnt_st_result( t4 ).
    t9 = t10->run_one( i_x = t11 ).
    t8 = t9.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE i.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t13 = lines( t14->items ).
    DATA(t15) = 1.
    t12 = xsdbool( t13 = t15 ).
    IF t12 = abap_true.
      DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t17 TYPE REF TO zcl_lnt_st_result.
      DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      READ TABLE t18->items INDEX 1 INTO t19.
      t17 ?= t19.
      APPEND t17 TO t16->items.
    ELSE.
      DATA(t20) = VALUE i( ).
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t22 TYPE REF TO zcl_lnt_st_result.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      LOOP AT t21->items INTO t23.
        t22 ?= t23.
        DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t25) = CAST zcl_lnt_st_result( t22 ).
        APPEND t25 TO t24->items.
      ENDLOOP.
      DATA t26 TYPE i.
      DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t26 = lines( t27->items ).
      t20 = t26.
    ENDIF.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t28.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d67_240fd7d3d1958c.
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~run.
    result = me->run(  i_r_f634 = i_r_f634 ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~first.
    result = me->first(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one(  i_x = i_x ).
  ENDMETHOD.
  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
