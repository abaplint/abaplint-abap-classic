* TS: src/abap/2_statements/combi.ts:55:1 Word
CLASS zcl_lnt_word DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA s TYPE string.
    METHODS constructor IMPORTING i_s TYPE string.
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
CLASS zcl_lnt_word IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_s.
    DATA t2 TYPE string.
    DATA(t3) = t1.
    DATA(t4) = strlen( t3 ).
    t2 = t3.
    IF t2 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t2 TO UPPER CASE.
    ELSE.
      t2 = zlnt_runtime_uppe_91169605024d=>full( t2 ).
    ENDIF.
    me->s = t2.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:63|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:67|.
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
        DATA t22 TYPE string.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_st_result.
        DATA(t26) = CAST zcl_lnt_st_result( t5 ).
        t25 = t26.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t29) = CAST zcl_lnt_st_result( t25 ).
        t28 = t29->tokens.
        DATA t30 TYPE i.
        DATA(t31) = CAST zcl_lnt_st_result( t25 ).
        t30 = t31->token_index.
        t30 = t30 + 1.
        DATA t32 TYPE REF TO object.
        CLEAR t32.
        READ TABLE t28->items INDEX t30 INTO t32.
        t27 ?= t32.
        t24 = t27.
        t23 = t24.
        DATA t33 TYPE string.
        DATA(t34) = CAST zcl_lnt_abstract_token( t23 ).
        t33 = t34->str_upper.
        t22 = t33.
        DATA(t35) = CONV string( me->s ).
        t21 = xsdbool( t22 = t35 ).
        t7 = t21.
      ENDIF.
      IF t7 = abap_true.
        DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t37 TYPE REF TO zcl_lnt_st_result.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_st_result.
        DATA(t39) = CAST zcl_lnt_st_result( t5 ).
        t38 = t39.
        DATA t40 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t41 TYPE REF TO zcl_lnt_token_node.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zcl_lnt_st_result.
        DATA(t44) = CAST zcl_lnt_st_result( t5 ).
        t43 = t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t47) = CAST zcl_lnt_st_result( t43 ).
        t46 = t47->tokens.
        DATA t48 TYPE i.
        DATA(t49) = CAST zcl_lnt_st_result( t43 ).
        t48 = t49->token_index.
        t48 = t48 + 1.
        DATA t50 TYPE REF TO object.
        CLEAR t50.
        READ TABLE t46->items INDEX t48 INTO t50.
        t45 ?= t50.
        t42 = t45.
        t41 = NEW zcl_lnt_token_node( i_token = t42 ).
        t40 = t41.
        DATA t51 TYPE REF TO zcl_lnt_st_result.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t53) = CAST zcl_lnt_st_result( t38 ).
        t52 = t53->tokens.
        DATA t54 TYPE int8.
        DATA t55 TYPE int8.
        DATA t56 TYPE i.
        DATA(t57) = CAST zcl_lnt_st_result( t38 ).
        t56 = t57->token_index.
        t55 = t56.
        DATA(t58) = CONV int8( 1 ).
        t54 = t55 + t58.
        IF t54 < range_int8_bound_min OR t54 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        DATA t59 TYPE REF TO zcl_lnt_result_node.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_result_node.
          DATA(t62) = CAST zif_lnt_union_4cf1d054( t40 ).
          DATA t63 TYPE REF TO zcl_lnt_result_node.
          DATA(t64) = CAST zcl_lnt_st_result( t38 ).
          t63 = t64->nodes_0226.
          t61 = NEW zcl_lnt_result_node( i_node = t62 i_previous = t63 ).
          t59 = t61.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_result_node.
          CLEAR t65.
          t59 = t65.
        ENDIF.
        DATA t66 TYPE int8.
        DATA t67 TYPE int8.
        DATA(t68) = CAST zcl_lnt_st_result( t38 ).
        t67 = t68->node_count.
        DATA(t69) = CONV int8( 1 ).
        t66 = t67 + t69.
        IF t66 < range_int8_bound_min OR t66 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t51 = zcl_lnt_st_result=>from_chain( i_tokens = t52 i_token_index = t54 i_nodes_5198 = t59 i_node_count = t66 ).
        t37 = t51.
        APPEND t37 TO t36->items.
      ENDIF.
    ENDLOOP.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t70.

  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:84|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:88|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = CONV string( me->s ).
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t6.
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
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_st_result.
      DATA(t25) = CAST zcl_lnt_st_result( t4 ).
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
      t22 = t23.
      DATA t32 TYPE string.
      DATA(t33) = CAST zcl_lnt_abstract_token( t22 ).
      t32 = t33->str_upper.
      t21 = t32.
      DATA(t34) = CONV string( me->s ).
      t20 = xsdbool( t21 = t34 ).
      t6 = t20.
    ENDIF.
    IF t6 = abap_true.
      DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t36 TYPE REF TO zcl_lnt_st_result.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_st_result.
      DATA(t38) = CAST zcl_lnt_st_result( t4 ).
      t37 = t38.
      DATA t39 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t40 TYPE REF TO zcl_lnt_token_node.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA t42 TYPE REF TO zcl_lnt_st_result.
      DATA(t43) = CAST zcl_lnt_st_result( t4 ).
      t42 = t43.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t46) = CAST zcl_lnt_st_result( t42 ).
      t45 = t46->tokens.
      DATA t47 TYPE i.
      DATA(t48) = CAST zcl_lnt_st_result( t42 ).
      t47 = t48->token_index.
      t47 = t47 + 1.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      READ TABLE t45->items INDEX t47 INTO t49.
      t44 ?= t49.
      t41 = t44.
      t40 = NEW zcl_lnt_token_node( i_token = t41 ).
      t39 = t40.
      DATA t50 TYPE REF TO zcl_lnt_st_result.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = CAST zcl_lnt_st_result( t37 ).
      t51 = t52->tokens.
      DATA t53 TYPE int8.
      DATA t54 TYPE int8.
      DATA t55 TYPE i.
      DATA(t56) = CAST zcl_lnt_st_result( t37 ).
      t55 = t56->token_index.
      t54 = t55.
      DATA(t57) = CONV int8( 1 ).
      t53 = t54 + t57.
      IF t53 < range_int8_bound_min OR t53 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      DATA t58 TYPE REF TO zcl_lnt_result_node.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_result_node.
        DATA(t61) = CAST zif_lnt_union_4cf1d054( t39 ).
        DATA t62 TYPE REF TO zcl_lnt_result_node.
        DATA(t63) = CAST zcl_lnt_st_result( t37 ).
        t62 = t63->nodes_0226.
        t60 = NEW zcl_lnt_result_node( i_node = t61 i_previous = t62 ).
        t58 = t60.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_result_node.
        CLEAR t64.
        t58 = t64.
      ENDIF.
      DATA t65 TYPE int8.
      DATA t66 TYPE int8.
      DATA(t67) = CAST zcl_lnt_st_result( t37 ).
      t66 = t67->node_count.
      DATA(t68) = CONV int8( 1 ).
      t65 = t66 + t68.
      IF t65 < range_int8_bound_min OR t65 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t50 = zcl_lnt_st_result=>from_chain( i_tokens = t51 i_token_index = t53 i_nodes_5198 = t58 i_node_count = t65 ).
      t36 = t50.
      APPEND t36 TO t35->items.
    ENDIF.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t69.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d60_29c3968778af84.
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
