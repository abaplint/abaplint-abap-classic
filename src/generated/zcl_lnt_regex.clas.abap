* TS: src/abap/2_statements/combi.ts:10:1 Regex
CLASS zcl_lnt_regex DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA regexp TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    METHODS constructor IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
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
CLASS zcl_lnt_regex IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_rege_5a210f82384e( i_r_f634 ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( t1 ).
    me->regexp = t2.
  ENDMETHOD.

  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:22|.
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
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = VALUE int8( ).
      DATA t9 TYPE REF TO zcl_lnt_st_result.
      DATA(t10) = CAST zcl_lnt_st_result( t5 ).
      t9 = t10.
      DATA t11 TYPE int8.
      DATA t12 TYPE int8.
      DATA t13 TYPE i.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = CAST zcl_lnt_st_result( t9 ).
      t14 = t15->tokens.
      t13 = lines( t14->items ).
      t12 = t13.
      DATA t16 TYPE int8.
      DATA t17 TYPE i.
      DATA(t18) = CAST zcl_lnt_st_result( t9 ).
      t17 = t18->token_index.
      t16 = t17.
      t11 = t12 - t16.
      IF t11 < range_int8_bound_min OR t11 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t8 = t11.
      DATA(t19) = CONV int8( 0 ).
      t7 = xsdbool( t8 = t19 ).
      IF t7 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zcl_lnt_st_result.
      DATA(t23) = CAST zcl_lnt_st_result( t5 ).
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = CAST zcl_lnt_st_result( t22 ).
      t25 = t26->tokens.
      DATA t27 TYPE i.
      DATA(t28) = CAST zcl_lnt_st_result( t22 ).
      t27 = t28->token_index.
      t27 = t27 + 1.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      READ TABLE t25->items INDEX t27 INTO t29.
      t24 ?= t29.
      t21 = t24.
      t20 = t21.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE abap_bool.
      DATA(t32) = CAST zlnt_runtime_rege_5a210f82384e( me->regexp ).
      DATA t33 TYPE string.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = CAST zcl_lnt_abstract_token( t20 ).
      t34 = t35.
      DATA t36 TYPE string.
      DATA(t37) = CAST zcl_lnt_abstract_token( t34 ).
      t36 = t37->str.
      t33 = t36.
      t31 = t32->test( p0 = t33 ).
      DATA(t38) = abap_true.
      t30 = xsdbool( t31 = t38 ).
      IF t30 = abap_true.
        DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t40 TYPE REF TO zcl_lnt_st_result.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_st_result.
        DATA(t42) = CAST zcl_lnt_st_result( t5 ).
        t41 = t42.
        DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t44 TYPE REF TO zcl_lnt_token_node_regex.
        DATA(t45) = CAST zcl_lnt_abstract_token( t20 ).
        t44 = NEW zcl_lnt_token_node_regex( i_token = t45 ).
        t43 = t44.
        DATA t46 TYPE REF TO zcl_lnt_st_result.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t48) = CAST zcl_lnt_st_result( t41 ).
        t47 = t48->tokens.
        DATA t49 TYPE int8.
        DATA t50 TYPE int8.
        DATA t51 TYPE i.
        DATA(t52) = CAST zcl_lnt_st_result( t41 ).
        t51 = t52->token_index.
        t50 = t51.
        DATA(t53) = CONV int8( 1 ).
        t49 = t50 + t53.
        IF t49 < range_int8_bound_min OR t49 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        DATA t54 TYPE REF TO zcl_lnt_result_node.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_result_node.
          DATA(t57) = CAST zif_lnt_union_4cf1d054( t43 ).
          DATA t58 TYPE REF TO zcl_lnt_result_node.
          DATA(t59) = CAST zcl_lnt_st_result( t41 ).
          t58 = t59->nodes_0226.
          t56 = NEW zcl_lnt_result_node( i_node = t57 i_previous = t58 ).
          t54 = t56.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_result_node.
          CLEAR t60.
          t54 = t60.
        ENDIF.
        DATA t61 TYPE int8.
        DATA t62 TYPE int8.
        DATA(t63) = CAST zcl_lnt_st_result( t41 ).
        t62 = t63->node_count.
        DATA(t64) = CONV int8( 1 ).
        t61 = t62 + t64.
        IF t61 < range_int8_bound_min OR t61 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t46 = zcl_lnt_st_result=>from_chain( i_tokens = t47 i_token_index = t49 i_nodes_5198 = t54 i_node_count = t61 ).
        t40 = t46.
        APPEND t40 TO t39->items.
      ENDIF.
    ENDLOOP.
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t65.

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:42|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:46|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:50|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA(t7) = CAST zcl_lnt_st_result( t1 ).
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t3 = t8.
    t2 = me->run( i_r_f634 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d59_2e4f9aa68d37c4.
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
