* TS: src/abap/2_statements/combi.ts:699:1 Expression
CLASS zcl_lnt_expression DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA runnable TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_runnable ABSTRACT RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_name RETURNING VALUE(result) TYPE string.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_expression IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    me->runnable = t1.
  ENDMETHOD.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zif_lnt_statement_runnable( me->runnable ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zif_lnt_statement_runnable( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = CAST zif_lnt_statement_runnable( me->get_runnable(  ) ).
        t11 = t13.
      ELSE.
        DATA t14 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t14.
        t11 = t14.
      ENDIF.
      me->runnable = t11.
    ENDIF.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t16 TYPE REF TO zcl_lnt_st_result.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t15->items INTO t17.
      t16 ?= t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t21) = CAST zif_lnt_statement_runnable( me->runnable ).
      t20 = t21.
      DATA(t22) = CAST zcl_lnt_st_result( t16 ).
      t19 = t20->run_one( i_x = t22 ).
      t18 = t19.
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
      DATA t24 TYPE REF TO zcl_lnt_st_result.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      LOOP AT t23->items INTO t25.
        t24 ?= t25.
        DATA(t26) = VALUE int8( ).
        DATA(t27) = VALUE int8( ).
        DATA(t28) = VALUE int8( ).
        DATA t29 TYPE REF TO zcl_lnt_st_result.
        DATA(t30) = CAST zcl_lnt_st_result( t16 ).
        t29 = t30.
        DATA t31 TYPE int8.
        DATA t32 TYPE int8.
        DATA t33 TYPE i.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t35) = CAST zcl_lnt_st_result( t29 ).
        t34 = t35->tokens.
        t33 = lines( t34->items ).
        t32 = t33.
        DATA t36 TYPE int8.
        DATA t37 TYPE i.
        DATA(t38) = CAST zcl_lnt_st_result( t29 ).
        t37 = t38->token_index.
        t36 = t37.
        t31 = t32 - t36.
        IF t31 < range_int8_bound_min OR t31 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t28 = t31.
        DATA(t39) = VALUE int8( ).
        DATA t40 TYPE REF TO zcl_lnt_st_result.
        DATA(t41) = CAST zcl_lnt_st_result( t24 ).
        t40 = t41.
        DATA t42 TYPE int8.
        DATA t43 TYPE int8.
        DATA t44 TYPE i.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t46) = CAST zcl_lnt_st_result( t40 ).
        t45 = t46->tokens.
        t44 = lines( t45->items ).
        t43 = t44.
        DATA t47 TYPE int8.
        DATA t48 TYPE i.
        DATA(t49) = CAST zcl_lnt_st_result( t40 ).
        t48 = t49->token_index.
        t47 = t48.
        t42 = t43 - t47.
        IF t42 < range_int8_bound_min OR t42 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t39 = t42.
        t27 = t28 - t39.
        IF t27 < range_int8_bound_min OR t27 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t26 = t27.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t26.
        DATA(t52) = CONV int8( 0 ).
        t50 = xsdbool( t51 > t52 ).
        IF t50 = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          DATA(t55) = CAST zcl_lnt_expression( me ).
          t54 = NEW zcl_lnt_expression_node( i_expression = t55 ).
          t53 = t54.
          DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t57 TYPE REF TO zcl_lnt_st_result.
          DATA(t58) = CAST zcl_lnt_st_result( t24 ).
          DATA(t59) = t26.
          DATA(t60) = CAST zcl_lnt_expression_node( t53 ).
          t57 = t58->wrap_consumed( i_consumed_tokens = t59 i_node = t60 ).
          APPEND t57 TO t56->items.
        ELSE.
          DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t62) = CAST zcl_lnt_st_result( t24 ).
          APPEND t62 TO t61->items.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t63.

  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:729|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:734|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:738|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:742|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:746|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CAST zif_lnt_statement_runnable( me->get_runnable(  ) ).
    t1 = t2->first(  ).
    result = t1.

  ENDMETHOD.
  METHOD run_one.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zif_lnt_statement_runnable( me->runnable ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zif_lnt_statement_runnable( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = CAST zif_lnt_statement_runnable( me->get_runnable(  ) ).
        t11 = t13.
      ELSE.
        DATA t14 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t14.
        t11 = t14.
      ENDIF.
      me->runnable = t11.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_st_result.
    DATA(t16) = CAST zcl_lnt_st_result( t1 ).
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zif_lnt_statement_runnable( me->runnable ).
    t19 = t20.
    DATA(t21) = CAST zcl_lnt_st_result( t15 ).
    t18 = t19->run_one( i_x = t21 ).
    t17 = t18.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t23 TYPE REF TO zcl_lnt_st_result.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    LOOP AT t22->items INTO t24.
      t23 ?= t24.
      DATA(t25) = VALUE int8( ).
      DATA(t26) = VALUE int8( ).
      DATA(t27) = VALUE int8( ).
      DATA t28 TYPE REF TO zcl_lnt_st_result.
      DATA(t29) = CAST zcl_lnt_st_result( t15 ).
      t28 = t29.
      DATA t30 TYPE int8.
      DATA t31 TYPE int8.
      DATA t32 TYPE i.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = CAST zcl_lnt_st_result( t28 ).
      t33 = t34->tokens.
      t32 = lines( t33->items ).
      t31 = t32.
      DATA t35 TYPE int8.
      DATA t36 TYPE i.
      DATA(t37) = CAST zcl_lnt_st_result( t28 ).
      t36 = t37->token_index.
      t35 = t36.
      t30 = t31 - t35.
      IF t30 < range_int8_bound_min OR t30 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t27 = t30.
      DATA(t38) = VALUE int8( ).
      DATA t39 TYPE REF TO zcl_lnt_st_result.
      DATA(t40) = CAST zcl_lnt_st_result( t23 ).
      t39 = t40.
      DATA t41 TYPE int8.
      DATA t42 TYPE int8.
      DATA t43 TYPE i.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t45) = CAST zcl_lnt_st_result( t39 ).
      t44 = t45->tokens.
      t43 = lines( t44->items ).
      t42 = t43.
      DATA t46 TYPE int8.
      DATA t47 TYPE i.
      DATA(t48) = CAST zcl_lnt_st_result( t39 ).
      t47 = t48->token_index.
      t46 = t47.
      t41 = t42 - t46.
      IF t41 < range_int8_bound_min OR t41 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t38 = t41.
      t26 = t27 - t38.
      IF t26 < range_int8_bound_min OR t26 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t25 = t26.
      DATA t49 TYPE abap_bool.
      DATA(t50) = t25.
      DATA(t51) = CONV int8( 0 ).
      t49 = xsdbool( t50 > t51 ).
      IF t49 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA(t54) = CAST zcl_lnt_expression( me ).
        t53 = NEW zcl_lnt_expression_node( i_expression = t54 ).
        t52 = t53.
        DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t56 TYPE REF TO zcl_lnt_st_result.
        DATA(t57) = CAST zcl_lnt_st_result( t23 ).
        DATA(t58) = t25.
        DATA(t59) = CAST zcl_lnt_expression_node( t52 ).
        t56 = t57->wrap_consumed( i_consumed_tokens = t58 i_node = t59 ).
        APPEND t56 TO t55->items.
      ELSE.
        DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t61) = CAST zcl_lnt_st_result( t23 ).
        APPEND t61 TO t60->items.
      ENDIF.
    ENDLOOP.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t62.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d74_8cc8f0f34eff40.
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
