* TS: src/abap/2_statements/combi.ts:97:1 Token
CLASS zcl_lnt_st_token DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA name TYPE string.
    DATA token_type TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS constructor IMPORTING i_t TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
CLASS zcl_lnt_st_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_t ).
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    me->token_type = t2.
    DATA t3 TYPE string.
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    t3 = t4->name.
    me->name = t3.
  ENDMETHOD.

  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:107|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:111|.
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
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE int8( ).
      DATA t10 TYPE REF TO zcl_lnt_st_result.
      DATA(t11) = CAST zcl_lnt_st_result( t5 ).
      t10 = t11.
      DATA t12 TYPE int8.
      DATA t13 TYPE int8.
      DATA t14 TYPE i.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = CAST zcl_lnt_st_result( t10 ).
      t15 = t16->tokens.
      t14 = lines( t15->items ).
      t13 = t14.
      DATA t17 TYPE int8.
      DATA t18 TYPE i.
      DATA(t19) = CAST zcl_lnt_st_result( t10 ).
      t18 = t19->token_index.
      t17 = t18.
      t12 = t13 - t17.
      IF t12 < range_int8_bound_min OR t12 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t9 = t12.
      DATA(t20) = CONV int8( 0 ).
      t8 = xsdbool( t9 <> t20 ).
      t7 = t8.
      IF t8 = abap_true.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        DATA t24 TYPE REF TO zcl_lnt_st_result.
        DATA(t25) = CAST zcl_lnt_st_result( t5 ).
        t24 = t25.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t28) = CAST zcl_lnt_st_result( t24 ).
        t27 = t28->tokens.
        DATA t29 TYPE i.
        DATA(t30) = CAST zcl_lnt_st_result( t24 ).
        t29 = t30->token_index.
        t29 = t29 + 1.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        READ TABLE t27->items INDEX t29 INTO t31.
        t26 ?= t31.
        t23 = t26.
        t22 = t23->zlnt_builtin_clas_3f891b097658( ).
        DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( me->token_type ).
        t21 = xsdbool( t22 = t32 ).
        t7 = t21.
      ENDIF.
      IF t7 = abap_true.
        DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t34 TYPE REF TO zcl_lnt_st_result.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_st_result.
        DATA(t36) = CAST zcl_lnt_st_result( t5 ).
        t35 = t36.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t38 TYPE REF TO zcl_lnt_token_node.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        DATA t40 TYPE REF TO zcl_lnt_st_result.
        DATA(t41) = CAST zcl_lnt_st_result( t5 ).
        t40 = t41.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t44) = CAST zcl_lnt_st_result( t40 ).
        t43 = t44->tokens.
        DATA t45 TYPE i.
        DATA(t46) = CAST zcl_lnt_st_result( t40 ).
        t45 = t46->token_index.
        t45 = t45 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        READ TABLE t43->items INDEX t45 INTO t47.
        t42 ?= t47.
        t39 = t42.
        t38 = NEW zcl_lnt_token_node( i_token = t39 ).
        t37 = t38.
        DATA t48 TYPE REF TO zcl_lnt_st_result.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t50) = CAST zcl_lnt_st_result( t35 ).
        t49 = t50->tokens.
        DATA t51 TYPE int8.
        DATA t52 TYPE int8.
        DATA t53 TYPE i.
        DATA(t54) = CAST zcl_lnt_st_result( t35 ).
        t53 = t54->token_index.
        t52 = t53.
        DATA(t55) = CONV int8( 1 ).
        t51 = t52 + t55.
        IF t51 < range_int8_bound_min OR t51 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        DATA t56 TYPE REF TO zcl_lnt_result_node.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE REF TO zcl_lnt_result_node.
          DATA(t59) = CAST zif_lnt_union_4cf1d054( t37 ).
          DATA t60 TYPE REF TO zcl_lnt_result_node.
          DATA(t61) = CAST zcl_lnt_st_result( t35 ).
          t60 = t61->nodes_0226.
          t58 = NEW zcl_lnt_result_node( i_node = t59 i_previous = t60 ).
          t56 = t58.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_result_node.
          CLEAR t62.
          t56 = t62.
        ENDIF.
        DATA t63 TYPE int8.
        DATA t64 TYPE int8.
        DATA(t65) = CAST zcl_lnt_st_result( t35 ).
        t64 = t65->node_count.
        DATA(t66) = CONV int8( 1 ).
        t63 = t64 + t66.
        IF t63 < range_int8_bound_min OR t63 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t48 = zcl_lnt_st_result=>from_chain( i_tokens = t49 i_token_index = t51 i_nodes_5198 = t56 i_node_count = t63 ).
        t34 = t48.
        APPEND t34 TO t33->items.
      ENDIF.
    ENDLOOP.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t67.

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:127|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:140|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:144|.
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
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE int8( ).
    DATA t9 TYPE REF TO zcl_lnt_st_result.
    DATA(t10) = CAST zcl_lnt_st_result( t4 ).
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
    t7 = xsdbool( t8 <> t19 ).
    t6 = t7.
    IF t7 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_st_result.
      DATA(t24) = CAST zcl_lnt_st_result( t4 ).
      t23 = t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = CAST zcl_lnt_st_result( t23 ).
      t26 = t27->tokens.
      DATA t28 TYPE i.
      DATA(t29) = CAST zcl_lnt_st_result( t23 ).
      t28 = t29->token_index.
      t28 = t28 + 1.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      READ TABLE t26->items INDEX t28 INTO t30.
      t25 ?= t30.
      t22 = t25.
      t21 = t22->zlnt_builtin_clas_3f891b097658( ).
      DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( me->token_type ).
      t20 = xsdbool( t21 = t31 ).
      t6 = t20.
    ENDIF.
    IF t6 = abap_true.
      DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t33 TYPE REF TO zcl_lnt_st_result.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_st_result.
      DATA(t35) = CAST zcl_lnt_st_result( t4 ).
      t34 = t35.
      DATA t36 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t37 TYPE REF TO zcl_lnt_token_node.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA t39 TYPE REF TO zcl_lnt_st_result.
      DATA(t40) = CAST zcl_lnt_st_result( t4 ).
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = CAST zcl_lnt_st_result( t39 ).
      t42 = t43->tokens.
      DATA t44 TYPE i.
      DATA(t45) = CAST zcl_lnt_st_result( t39 ).
      t44 = t45->token_index.
      t44 = t44 + 1.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      READ TABLE t42->items INDEX t44 INTO t46.
      t41 ?= t46.
      t38 = t41.
      t37 = NEW zcl_lnt_token_node( i_token = t38 ).
      t36 = t37.
      DATA t47 TYPE REF TO zcl_lnt_st_result.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t49) = CAST zcl_lnt_st_result( t34 ).
      t48 = t49->tokens.
      DATA t50 TYPE int8.
      DATA t51 TYPE int8.
      DATA t52 TYPE i.
      DATA(t53) = CAST zcl_lnt_st_result( t34 ).
      t52 = t53->token_index.
      t51 = t52.
      DATA(t54) = CONV int8( 1 ).
      t50 = t51 + t54.
      IF t50 < range_int8_bound_min OR t50 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      DATA t55 TYPE REF TO zcl_lnt_result_node.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA t57 TYPE REF TO zcl_lnt_result_node.
        DATA(t58) = CAST zif_lnt_union_4cf1d054( t36 ).
        DATA t59 TYPE REF TO zcl_lnt_result_node.
        DATA(t60) = CAST zcl_lnt_st_result( t34 ).
        t59 = t60->nodes_0226.
        t57 = NEW zcl_lnt_result_node( i_node = t58 i_previous = t59 ).
        t55 = t57.
      ELSE.
        DATA t61 TYPE REF TO zcl_lnt_result_node.
        CLEAR t61.
        t55 = t61.
      ENDIF.
      DATA t62 TYPE int8.
      DATA t63 TYPE int8.
      DATA(t64) = CAST zcl_lnt_st_result( t34 ).
      t63 = t64->node_count.
      DATA(t65) = CONV int8( 1 ).
      t62 = t63 + t65.
      IF t62 < range_int8_bound_min OR t62 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t47 = zcl_lnt_st_result=>from_chain( i_tokens = t48 i_token_index = t50 i_nodes_5198 = t55 i_node_count = t62 ).
      t33 = t47.
      APPEND t33 TO t32->items.
    ENDIF.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t66.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d61_558ec3353ed9dc.
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
