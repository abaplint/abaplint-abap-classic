* TS: src/abap/2_statements/combi.ts:302:1 OptionalPriority
CLASS zcl_lnt_optional_priority DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_optional_priority IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_optional ).
    DATA(t2) = CAST zif_lnt_statement_runnable( t1 ).
    me->optional = t2.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:310|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:314|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
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
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t9) = CAST zif_lnt_statement_runnable( me->optional ).
      DATA(t10) = CAST zcl_lnt_st_result( t5 ).
      t8 = t9->run_one( i_x = t10 ).
      t7 = t8.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE i.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      t12 = lines( t13->items ).
      DATA(t14) = 1.
      t11 = xsdbool( t12 > t14 ).
      IF t11 = abap_true.
        DATA(t15) = VALUE i( ).
        DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        DATA t17 TYPE REF TO zcl_lnt_st_result.
        CLEAR t17.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        LOOP AT t16->items INTO t18.
          t17 ?= t18.
          DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t20) = CAST zcl_lnt_st_result( t17 ).
          APPEND t20 TO t19->items.
        ENDLOOP.
        DATA t21 TYPE i.
        DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t21 = lines( t22->items ).
        t15 = t21.
      ELSE.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE i.
        DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        t24 = lines( t25->items ).
        DATA(t26) = 0.
        t23 = xsdbool( t24 = t26 ).
        IF t23 = abap_true.
          DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t28) = CAST zcl_lnt_st_result( t5 ).
          APPEND t28 TO t27->items.
        ELSE.
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = VALUE int8( ).
          DATA t31 TYPE REF TO zcl_lnt_st_result.
          DATA t32 TYPE REF TO zcl_lnt_st_result.
          DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
          DATA t34 TYPE REF TO object.
          CLEAR t34.
          READ TABLE t33->items INDEX 1 INTO t34.
          t32 ?= t34.
          t31 = t32.
          DATA t35 TYPE int8.
          DATA t36 TYPE int8.
          DATA t37 TYPE i.
          DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t39) = CAST zcl_lnt_st_result( t31 ).
          t38 = t39->tokens.
          t37 = lines( t38->items ).
          t36 = t37.
          DATA t40 TYPE int8.
          DATA t41 TYPE i.
          DATA(t42) = CAST zcl_lnt_st_result( t31 ).
          t41 = t42->token_index.
          t40 = t41.
          t35 = t36 - t40.
          IF t35 < range_int8_bound_min OR t35 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t30 = t35.
          DATA(t43) = VALUE int8( ).
          DATA t44 TYPE REF TO zcl_lnt_st_result.
          DATA(t45) = CAST zcl_lnt_st_result( t5 ).
          t44 = t45.
          DATA t46 TYPE int8.
          DATA t47 TYPE int8.
          DATA t48 TYPE i.
          DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t50) = CAST zcl_lnt_st_result( t44 ).
          t49 = t50->tokens.
          t48 = lines( t49->items ).
          t47 = t48.
          DATA t51 TYPE int8.
          DATA t52 TYPE i.
          DATA(t53) = CAST zcl_lnt_st_result( t44 ).
          t52 = t53->token_index.
          t51 = t52.
          t46 = t47 - t51.
          IF t46 < range_int8_bound_min OR t46 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t43 = t46.
          t29 = xsdbool( t30 < t43 ).
          IF t29 = abap_true.
            DATA(t54) = VALUE i( ).
            DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
            DATA t56 TYPE REF TO zcl_lnt_st_result.
            CLEAR t56.
            DATA t57 TYPE REF TO object.
            CLEAR t57.
            LOOP AT t55->items INTO t57.
              t56 ?= t57.
              DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              DATA(t59) = CAST zcl_lnt_st_result( t56 ).
              APPEND t59 TO t58->items.
            ENDLOOP.
            DATA t60 TYPE i.
            DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            t60 = lines( t61->items ).
            t54 = t60.
          ELSE.
            DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t63) = CAST zcl_lnt_st_result( t5 ).
            APPEND t63 TO t62->items.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t64.

  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:337|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:341|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:345|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run_one.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    DATA(t5) = CAST zcl_lnt_st_result( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zif_lnt_statement_runnable( me->optional ).
    DATA(t9) = CAST zcl_lnt_st_result( t4 ).
    t7 = t8->run_one( i_x = t9 ).
    t6 = t7.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE i.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t11 = lines( t12->items ).
    DATA(t13) = 1.
    t10 = xsdbool( t11 > t13 ).
    IF t10 = abap_true.
      DATA(t14) = VALUE i( ).
      DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      DATA t16 TYPE REF TO zcl_lnt_st_result.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      LOOP AT t15->items INTO t17.
        t16 ?= t17.
        DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t19) = CAST zcl_lnt_st_result( t16 ).
        APPEND t19 TO t18->items.
      ENDLOOP.
      DATA t20 TYPE i.
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t20 = lines( t21->items ).
      t14 = t20.
    ELSE.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE i.
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t23 = lines( t24->items ).
      DATA(t25) = 0.
      t22 = xsdbool( t23 = t25 ).
      IF t22 = abap_true.
        DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t27) = CAST zcl_lnt_st_result( t4 ).
        APPEND t27 TO t26->items.
      ELSE.
        DATA(t28) = VALUE abap_bool( ).
        DATA(t29) = VALUE int8( ).
        DATA t30 TYPE REF TO zcl_lnt_st_result.
        DATA t31 TYPE REF TO zcl_lnt_st_result.
        DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        READ TABLE t32->items INDEX 1 INTO t33.
        t31 ?= t33.
        t30 = t31.
        DATA t34 TYPE int8.
        DATA t35 TYPE int8.
        DATA t36 TYPE i.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t38) = CAST zcl_lnt_st_result( t30 ).
        t37 = t38->tokens.
        t36 = lines( t37->items ).
        t35 = t36.
        DATA t39 TYPE int8.
        DATA t40 TYPE i.
        DATA(t41) = CAST zcl_lnt_st_result( t30 ).
        t40 = t41->token_index.
        t39 = t40.
        t34 = t35 - t39.
        IF t34 < range_int8_bound_min OR t34 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t29 = t34.
        DATA(t42) = VALUE int8( ).
        DATA t43 TYPE REF TO zcl_lnt_st_result.
        DATA(t44) = CAST zcl_lnt_st_result( t4 ).
        t43 = t44.
        DATA t45 TYPE int8.
        DATA t46 TYPE int8.
        DATA t47 TYPE i.
        DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t49) = CAST zcl_lnt_st_result( t43 ).
        t48 = t49->tokens.
        t47 = lines( t48->items ).
        t46 = t47.
        DATA t50 TYPE int8.
        DATA t51 TYPE i.
        DATA(t52) = CAST zcl_lnt_st_result( t43 ).
        t51 = t52->token_index.
        t50 = t51.
        t45 = t46 - t50.
        IF t45 < range_int8_bound_min OR t45 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t42 = t45.
        t28 = xsdbool( t29 < t42 ).
        IF t28 = abap_true.
          DATA(t53) = VALUE i( ).
          DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
          DATA t55 TYPE REF TO zcl_lnt_st_result.
          CLEAR t55.
          DATA t56 TYPE REF TO object.
          CLEAR t56.
          LOOP AT t54->items INTO t56.
            t55 ?= t56.
            DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t58) = CAST zcl_lnt_st_result( t55 ).
            APPEND t58 TO t57->items.
          ENDLOOP.
          DATA t59 TYPE i.
          DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t59 = lines( t60->items ).
          t53 = t59.
        ELSE.
          DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t62) = CAST zcl_lnt_st_result( t4 ).
          APPEND t62 TO t61->items.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t63.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d66_25912bd6fcb4eb.
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
