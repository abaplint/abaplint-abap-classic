* TS: src/abap/nodes/expression_node.ts:8:1 ExpressionNode
CLASS zcl_lnt_expression_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_node CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_bb14dc41.
    INTERFACES zif_lnt_union_4cf1d054.
    INTERFACES zif_lnt_union_1e9858bf.
    DATA expression TYPE REF TO zif_lnt_statement_runnable.
    DATA token_count TYPE int8.
    METHODS constructor IMPORTING i_expression TYPE REF TO zif_lnt_statement_runnable.
    METHODS a_c_in_sr_ab_nd_ex_nd_ts_ex_nd IMPORTING i_n_2941 TYPE REF TO zif_lnt_union_4cf1d054.
    METHODS gt_in_sr_ab_nd_ex_nd_ts_exp_nd RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS s_c_in_sr_ab_nd_ex_nd_ts_ex_nd IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS count_tokens RETURNING VALUE(result) TYPE int8.
    METHODS get_first_token REDEFINITION.
    METHODS concat_tokens_with_linebreaks RETURNING VALUE(result) TYPE string.
    METHODS concat_tokens RETURNING VALUE(result) TYPE string.
    METHODS cnct_tkns_wtht_strng_and_cmmnt RETURNING VALUE(result) TYPE string.
    METHODS get_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS to_tokens IMPORTING i_b TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_last_token REDEFINITION.
    METHODS get_all_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_direct_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_expression_after_token IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_direct_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_token_by_text IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS find_all_expressions_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_first_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS add_child REDEFINITION.
    METHODS get_db65 REDEFINITION.
    METHODS set_children_value IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS set_children REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_expression_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_expression ).
    super->constructor( ).
    DATA(t2) = CONV int8( 0 ).
    me->token_count = t2.
    DATA(t3) = CAST zif_lnt_statement_runnable( t1 ).
    me->expression = t3.
  ENDMETHOD.
  METHOD a_c_in_sr_ab_nd_ex_nd_ts_ex_nd.
    DATA(t1) = CAST zif_lnt_union_4cf1d054( i_n_2941 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/expression_node.ts:17|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD gt_in_sr_ab_nd_ex_nd_ts_exp_nd.
    DATA(t1) = CAST zif_lnt_statement_runnable( me->expression ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_in_sr_ab_nd_ex_nd_ts_ex_nd.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t3 TYPE REF TO object.
    t3 = me->set_children( i_children_9020 = t2 ).
    result ?= t3.

  ENDMETHOD.
  METHOD count_tokens.
    DATA(t1) = CONV int8( me->token_count ).
    result = t1.

  ENDMETHOD.
  METHOD get_first_token.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t4) = CAST zcl_lnt_expression_node( me ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zcl_lnt_abstract_node( t3 ).
    t5 = t6->children.
    t2 = t5.
    t1 ?= t2.
    DATA t7 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t1->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t10) = CAST zif_lnt_union_4cf1d054( t7 ).
      t9 = t10->get_first_token( ).
      result = t9.
      RETURN.
    ENDLOOP.
    DATA t11 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = |ExpressionNode, getFirstToken, no children|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t13 = t17.
    ENDIF.
    t12 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t13 ).
    t11 = NEW #( ).
    t11->payload = t12.
    RAISE EXCEPTION t11.
  ENDMETHOD.
  METHOD concat_tokens_with_linebreaks.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/expression_node.ts:46|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD concat_tokens.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE string.
    DATA(t2) = ||.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE abap_bool.
      DATA(t8) = CAST zcl_lnt_abstract_token( t5 ).
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_pragma ).
      IF t7 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      DATA(t11) = ||.
      t9 = xsdbool( t10 = t11 ).
      IF t9 = abap_true.
        DATA t12 TYPE string.
        DATA t13 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t14) = CAST zcl_lnt_abstract_token( t5 ).
        t13 = t14.
        DATA t15 TYPE string.
        DATA(t16) = CAST zcl_lnt_abstract_token( t13 ).
        t15 = t16->str.
        t12 = t15.
        t1 = t12.
      ELSE.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE abap_bool.
        DATA(t20) = CAST zcl_lnt_abstract_token( t3 ).
        t19 = xsdbool( t20 IS BOUND ).
        t18 = t19.
        IF t19 = abap_true.
          DATA(t21) = VALUE abap_bool( ).
          DATA t22 TYPE int8.
          DATA t23 TYPE int8.
          DATA t24 TYPE i.
          DATA t25 TYPE string.
          DATA t26 TYPE REF TO zcl_lnt_abstract_token.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t28) = CAST zcl_lnt_abstract_token( t3 ).
          t27 = t28.
          t26 = t27.
          DATA t29 TYPE string.
          DATA(t30) = CAST zcl_lnt_abstract_token( t26 ).
          t29 = t30->str.
          t25 = t29.
          DATA(t31) = strlen( t25 ).
          t24 = t31.
          t23 = t24.
          DATA t32 TYPE int8.
          DATA t33 TYPE REF TO zcl_lnt_abstract_token.
          DATA t34 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t35) = CAST zcl_lnt_abstract_token( t3 ).
          t34 = t35.
          t33 = t34.
          DATA t36 TYPE int8.
          DATA t37 TYPE REF TO zcl_lnt_position.
          DATA t38 TYPE REF TO zcl_lnt_position.
          DATA(t39) = CAST zcl_lnt_abstract_token( t33 ).
          t38 = t39->start.
          t37 = t38.
          DATA t40 TYPE int8.
          DATA(t41) = CAST zcl_lnt_position( t37 ).
          t40 = t41->col.
          t36 = t40.
          t32 = t36.
          t22 = t23 + t32.
          IF t22 < range_int8_bound_min OR t22 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          DATA t42 TYPE int8.
          DATA t43 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t44) = CAST zcl_lnt_abstract_token( t5 ).
          t43 = t44.
          DATA t45 TYPE int8.
          DATA t46 TYPE REF TO zcl_lnt_position.
          DATA t47 TYPE REF TO zcl_lnt_position.
          DATA(t48) = CAST zcl_lnt_abstract_token( t43 ).
          t47 = t48->start.
          t46 = t47.
          DATA t49 TYPE int8.
          DATA(t50) = CAST zcl_lnt_position( t46 ).
          t49 = t50->col.
          t45 = t49.
          t42 = t45.
          t21 = xsdbool( t22 = t42 ).
          t18 = t21.
        ENDIF.
        t17 = t18.
        IF t18 = abap_true.
          DATA t51 TYPE abap_bool.
          DATA t52 TYPE int8.
          DATA t53 TYPE REF TO zcl_lnt_abstract_token.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t55) = CAST zcl_lnt_abstract_token( t3 ).
          t54 = t55.
          t53 = t54.
          DATA t56 TYPE int8.
          DATA t57 TYPE REF TO zcl_lnt_position.
          DATA t58 TYPE REF TO zcl_lnt_position.
          DATA(t59) = CAST zcl_lnt_abstract_token( t53 ).
          t58 = t59->start.
          t57 = t58.
          DATA t60 TYPE int8.
          DATA(t61) = CAST zcl_lnt_position( t57 ).
          t60 = t61->row.
          t56 = t60.
          t52 = t56.
          DATA t62 TYPE int8.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t64) = CAST zcl_lnt_abstract_token( t5 ).
          t63 = t64.
          DATA t65 TYPE int8.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA t67 TYPE REF TO zcl_lnt_position.
          DATA(t68) = CAST zcl_lnt_abstract_token( t63 ).
          t67 = t68->start.
          t66 = t67.
          DATA t69 TYPE int8.
          DATA(t70) = CAST zcl_lnt_position( t66 ).
          t69 = t70->row.
          t65 = t69.
          t62 = t65.
          t51 = xsdbool( t52 = t62 ).
          t17 = t51.
        ENDIF.
        IF t17 = abap_true.
          DATA t71 TYPE string.
          DATA(t72) = t1.
          DATA t73 TYPE string.
          DATA t74 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t75) = CAST zcl_lnt_abstract_token( t5 ).
          t74 = t75.
          DATA t76 TYPE string.
          DATA(t77) = CAST zcl_lnt_abstract_token( t74 ).
          t76 = t77->str.
          t73 = t76.
          DATA(t78) = strlen( t72 ).
          t71 = |{ t72 }{ t73 }|.
          t1 = t71.
        ELSE.
          DATA t79 TYPE string.
          DATA t80 TYPE string.
          DATA(t81) = t1.
          DATA(t82) = | |.
          DATA(t83) = strlen( t81 ).
          t80 = |{ t81 }{ t82 }|.
          DATA t84 TYPE string.
          DATA t85 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t86) = CAST zcl_lnt_abstract_token( t5 ).
          t85 = t86.
          DATA t87 TYPE string.
          DATA(t88) = CAST zcl_lnt_abstract_token( t85 ).
          t87 = t88->str.
          t84 = t87.
          DATA(t89) = strlen( t80 ).
          t79 = |{ t80 }{ t84 }|.
          t1 = t79.
        ENDIF.
      ENDIF.
      DATA t90 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t90.
      DATA(t91) = abap_true.
      IF t91 = abap_true.
        DATA(t92) = CAST zcl_lnt_abstract_token( t5 ).
        t90 = t92.
      ELSE.
        DATA t93 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t93.
        t90 = t93.
      ENDIF.
      t3 = t90.
    ENDLOOP.
    DATA(t94) = t1.
    result = t94.

  ENDMETHOD.
  METHOD cnct_tkns_wtht_strng_and_cmmnt.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/expression_node.ts:90|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = CAST zcl_lnt_expression_node( me ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_abstract_node( t5 ).
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t3->items INTO t10.
      t9 ?= t10.
      DATA(t11) = VALUE i( ).
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zif_lnt_node.
      DATA(t14) = CAST zif_lnt_union_4cf1d054( t9 ).
      t13 ?= t14.
      t12 = me->to_tokens( i_b = t13 ).
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      LOOP AT t12->items INTO t16.
        t15 ?= t16.
        DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA(t18) = CAST zcl_lnt_abstract_token( t15 ).
        APPEND t18 TO t17->items.
      ENDLOOP.
      DATA t19 TYPE i.
      DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t19 = lines( t20->items ).
      t11 = t19.
    ENDLOOP.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t21.

  ENDMETHOD.
  METHOD to_tokens.
    DATA(t1) = CAST zif_lnt_node( i_b ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = CAST zif_lnt_node( t1 ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_token_node ).
    IF t4 = abap_true.
      DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_token_node.
      DATA(t9) = CAST zif_lnt_node( t1 ).
      DATA t10 TYPE REF TO object.
      t10 = t9.
      t8 ?= t10.
      t7 = t8->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      APPEND t7 TO t6->items.
      DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = CAST zif_lnt_node( t1 ).
    t12 = t13->get_children( ).
    DATA t14 TYPE REF TO zif_lnt_node.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
    LOOP AT t12->items INTO t15.
      t14 ?= t15.
      DATA t16 TYPE abap_bool.
      DATA(t17) = CAST zif_lnt_node( t14 ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_token_node ).
      IF t16 = abap_true.
        DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t19 TYPE REF TO zcl_lnt_abstract_token.
        DATA t20 TYPE REF TO zcl_lnt_token_node.
        DATA(t21) = CAST zif_lnt_node( t14 ).
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        APPEND t19 TO t18->items.
      ELSE.
        DATA(t23) = VALUE i( ).
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t25) = CAST zif_lnt_node( t14 ).
        t24 = me->to_tokens( i_b = t25 ).
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t26.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        LOOP AT t24->items INTO t27.
          t26 ?= t27.
          DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t29) = CAST zcl_lnt_abstract_token( t26 ).
          APPEND t29 TO t28->items.
        ENDLOOP.
        DATA t30 TYPE i.
        DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t30 = lines( t31->items ).
        t23 = t30.
      ENDIF.
    ENDLOOP.
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t32.

  ENDMETHOD.
  METHOD get_last_token.
    DATA t1 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = CAST zcl_lnt_expression_node( me ).
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_node.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_node.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t10) = CAST zcl_lnt_abstract_node( t4 ).
      t9 = t10->children.
      DATA t11 TYPE i.
      DATA t12 TYPE i.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = CAST zcl_lnt_abstract_node( t4 ).
      t13 = t14->children.
      t12 = lines( t13->items ).
      DATA(t15) = 1.
      t11 = t12 - t15.
      t11 = t11 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      READ TABLE t9->items INDEX t11 INTO t16.
      t8 ?= t16.
      t6 = t8.
    ELSE.
      DATA t17 TYPE REF TO zif_lnt_node.
      CLEAR t17.
      t6 = t17.
    ENDIF.
    t3 = t6.
    t2 ?= t3.
    t1 = t2.
    DATA t18 TYPE abap_bool.
    DATA(t19) = CAST zif_lnt_union_4cf1d054( t1 ).
    t18 = xsdbool( t19 IS BOUND ).
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t22) = CAST zif_lnt_union_4cf1d054( t1 ).
      t21 = t22.
      t20 = t21->get_last_token( ).
      result = t20.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |ExpressionNode, getLastToken, no children|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t25 ).
    t23 = NEW #( ).
    t23->payload = t24.
    RAISE EXCEPTION t23.
  ENDMETHOD.
  METHOD get_all_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = CAST zcl_lnt_expression_node( me ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_abstract_node( t5 ).
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t3->items INTO t10.
      t9 ?= t10.
      DATA t11 TYPE abap_bool.
      DATA(t12) = CAST zif_lnt_union_4cf1d054( t9 ).
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_token_node ).
      IF t11 = abap_true.
        DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t14 TYPE REF TO zcl_lnt_abstract_token.
        DATA t15 TYPE REF TO zcl_lnt_token_node.
        DATA(t16) = CAST zif_lnt_union_4cf1d054( t9 ).
        DATA t17 TYPE REF TO object.
        t17 = t16.
        t15 ?= t17.
        t14 = t15->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        APPEND t14 TO t13->items.
      ELSE.
        DATA(t18) = VALUE i( ).
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA(t21) = CAST zif_lnt_union_4cf1d054( t9 ).
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20 ?= t22.
        t19 = t20->get_all_tokens( ).
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        LOOP AT t19->items INTO t24.
          t23 ?= t24.
          DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          DATA(t26) = CAST zcl_lnt_abstract_token( t23 ).
          APPEND t26 TO t25->items.
        ENDLOOP.
        DATA t27 TYPE i.
        DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        t27 = lines( t28->items ).
        t18 = t27.
      ENDIF.
    ENDLOOP.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t29.

  ENDMETHOD.
  METHOD get_direct_tokens.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/expression_node.ts:169|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_direct_expression.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = CAST zcl_lnt_expression_node( me ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_abstract_node( t4 ).
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t2->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA(t12) = CAST zif_lnt_union_4cf1d054( t8 ).
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_expression_node ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t13) = VALUE abap_bool( ).
        DATA t14 TYPE REF TO zif_lnt_statement_runnable.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        DATA(t16) = CAST zif_lnt_union_4cf1d054( t8 ).
        DATA t17 TYPE REF TO object.
        t17 = t16.
        t15 ?= t17.
        t14 = t15->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t19 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t19.
        IF t14 IS BOUND.
          t19 = t14->zlnt_builtin_clas_3f891b097658( ).
          WHILE t19 IS BOUND.
            IF t19 = t18.
              t13 = abap_true.
              EXIT.
            ENDIF.
            t19 = t19->parent.
          ENDWHILE.
        ENDIF.
        t10 = t13.
      ENDIF.
      IF t10 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t20.
        DATA(t21) = abap_true.
        IF t21 = abap_true.
          DATA t22 TYPE REF TO zcl_lnt_expression_node.
          DATA(t23) = CAST zif_lnt_union_4cf1d054( t8 ).
          DATA t24 TYPE REF TO object.
          t24 = t23.
          t22 ?= t24.
          t20 = t22.
        ELSE.
          DATA t25 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t25.
          t20 = t25.
        ENDIF.
        result = t20.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t26.
    result = t26.

  ENDMETHOD.
  METHOD find_expression_after_token.
    DATA(t1) = i_text.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = CAST zcl_lnt_expression_node( me ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_abstract_node( t5 ).
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t14 = lines( t15->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      READ TABLE t19->items INDEX t20 INTO t21.
      t18 ?= t21.
      t17 = t18.
      DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t25 TYPE i.
      DATA(t26) = t9.
      DATA(t27) = 1.
      t25 = t26 + t27.
      t25 = t25 + 1.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      READ TABLE t24->items INDEX t25 INTO t28.
      t23 ?= t28.
      t22 = t23.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE abap_bool.
      DATA(t32) = CAST zif_lnt_union_4cf1d054( t17 ).
      t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_token_node ).
      t30 = t31.
      IF t31 = abap_true.
        DATA(t33) = VALUE abap_bool( ).
        DATA t34 TYPE string.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA t38 TYPE REF TO zcl_lnt_token_node.
        DATA(t39) = CAST zif_lnt_union_4cf1d054( t17 ).
        DATA t40 TYPE REF TO object.
        t40 = t39.
        t38 ?= t40.
        t37 = t38->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t36 = t37.
        DATA t41 TYPE string.
        DATA(t42) = CAST zcl_lnt_abstract_token( t36 ).
        t41 = t42->str.
        t35 = t41.
        DATA(t43) = strlen( t35 ).
        t34 = t35.
        IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t34 TO UPPER CASE.
        ELSE.
          t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
        ENDIF.
        DATA t44 TYPE string.
        DATA(t45) = t1.
        DATA(t46) = strlen( t45 ).
        t44 = t45.
        IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t44 TO UPPER CASE.
        ELSE.
          t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
        ENDIF.
        t33 = xsdbool( t34 = t44 ).
        t30 = t33.
      ENDIF.
      t29 = t30.
      IF t30 = abap_true.
        DATA t47 TYPE abap_bool.
        DATA(t48) = CAST zif_lnt_union_4cf1d054( t22 ).
        t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_expression_node ).
        t29 = t47.
      ENDIF.
      IF t29 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t49.
        DATA(t50) = abap_true.
        IF t50 = abap_true.
          DATA t51 TYPE REF TO zcl_lnt_expression_node.
          DATA(t52) = CAST zif_lnt_union_4cf1d054( t22 ).
          DATA t53 TYPE REF TO object.
          t53 = t52.
          t51 ?= t53.
          t49 = t51.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t54.
          t49 = t54.
        ENDIF.
        result = t49.
        RETURN.
      ENDIF.
      DATA t55 TYPE i.
      DATA(t56) = t9.
      DATA(t57) = 1.
      t55 = t56 + t57.
      t9 = t55.
    ENDDO.
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t58.
    result = t58.

  ENDMETHOD.
  METHOD find_direct_expressions.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_expression_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zif_lnt_union_4cf1d054( t10 ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_expression_node ).
      t12 = t13.
      IF t13 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zif_lnt_statement_runnable.
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        DATA(t18) = CAST zif_lnt_union_4cf1d054( t10 ).
        DATA t19 TYPE REF TO object.
        t19 = t18.
        t17 ?= t19.
        t16 = t17->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t21.
        IF t16 IS BOUND.
          t21 = t16->zlnt_builtin_clas_3f891b097658( ).
          WHILE t21 IS BOUND.
            IF t21 = t20.
              t15 = abap_true.
              EXIT.
            ENDIF.
            t21 = t21->parent.
          ENDWHILE.
        ENDIF.
        t12 = t15.
      ENDIF.
      IF t12 = abap_true.
        DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = CAST zif_lnt_union_4cf1d054( t10 ).
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        APPEND t23 TO t22->items.
      ENDIF.
    ENDLOOP.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t26.

  ENDMETHOD.
  METHOD find_direct_expressions_multi.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_expression_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zif_lnt_union_4cf1d054( t10 ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t12 = abap_true.
        DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t15 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t15.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        LOOP AT t14->items INTO t16.
          t15 ?= t16.
          DATA(t17) = VALUE abap_bool( ).
          DATA t18 TYPE REF TO zif_lnt_statement_runnable.
          DATA t19 TYPE REF TO zcl_lnt_expression_node.
          DATA(t20) = CAST zif_lnt_union_4cf1d054( t10 ).
          DATA t21 TYPE REF TO object.
          t21 = t20.
          t19 ?= t21.
          t18 = t19->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( t15 ).
          DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t23.
          IF t18 IS BOUND.
            t23 = t18->zlnt_builtin_clas_3f891b097658( ).
            WHILE t23 IS BOUND.
              IF t23 = t22.
                t17 = abap_true.
                EXIT.
              ENDIF.
              t23 = t23->parent.
            ENDWHILE.
          ENDIF.
          IF t17 = abap_true.
            DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA t25 TYPE REF TO zcl_lnt_expression_node.
            DATA(t26) = CAST zif_lnt_union_4cf1d054( t10 ).
            DATA t27 TYPE REF TO object.
            t27 = t26.
            t25 ?= t27.
            APPEND t25 TO t24->items.
            EXIT.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ENDLOOP.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t28.

  ENDMETHOD.
  METHOD find_direct_token_by_text.
    DATA(t1) = i_text.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = CAST zcl_lnt_expression_node( me ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = CAST zcl_lnt_abstract_node( t8 ).
    t10 = t11->children.
    t7 = t10.
    t6 ?= t7.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    LOOP AT t6->items INTO t13.
      t12 ?= t13.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zif_lnt_union_4cf1d054( t12 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_token_node ).
      t14 = t15.
      IF t15 = abap_true.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE string.
        DATA t19 TYPE string.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        DATA t22 TYPE REF TO zcl_lnt_token_node.
        DATA(t23) = CAST zif_lnt_union_4cf1d054( t12 ).
        DATA t24 TYPE REF TO object.
        t24 = t23.
        t22 ?= t24.
        t21 = t22->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t20 = t21.
        DATA t25 TYPE string.
        DATA(t26) = CAST zcl_lnt_abstract_token( t20 ).
        t25 = t26->str.
        t19 = t25.
        DATA(t27) = strlen( t19 ).
        t18 = t19.
        IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t18 TO UPPER CASE.
        ELSE.
          t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
        ENDIF.
        DATA(t28) = t2.
        t17 = xsdbool( t18 = t28 ).
        t14 = t17.
      ENDIF.
      IF t14 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t29.
        DATA(t30) = abap_true.
        IF t30 = abap_true.
          DATA t31 TYPE REF TO zcl_lnt_abstract_token.
          DATA t32 TYPE REF TO zcl_lnt_token_node.
          DATA(t33) = CAST zif_lnt_union_4cf1d054( t12 ).
          DATA t34 TYPE REF TO object.
          t34 = t33.
          t32 ?= t34.
          t31 = t32->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t29 = t31.
        ELSE.
          DATA t35 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t35.
          t29 = t35.
        ENDIF.
        result = t29.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t36.
    result = t36.

  ENDMETHOD.
  METHOD find_all_expressions_recursive.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_expression_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zif_lnt_union_4cf1d054( t10 ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_token_node ).
      IF t12 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t14) = VALUE abap_bool( ).
        DATA t15 TYPE REF TO zif_lnt_statement_runnable.
        DATA t16 TYPE REF TO zcl_lnt_expression_node.
        DATA(t17) = CAST zif_lnt_union_4cf1d054( t10 ).
        DATA t18 TYPE REF TO object.
        t18 = t17.
        t16 ?= t18.
        t15 = t16->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t20 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t20.
        IF t15 IS BOUND.
          t20 = t15->zlnt_builtin_clas_3f891b097658( ).
          WHILE t20 IS BOUND.
            IF t20 = t19.
              t14 = abap_true.
              EXIT.
            ENDIF.
            t20 = t20->parent.
          ENDWHILE.
        ENDIF.
        IF t14 = abap_true.
          DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t22 TYPE REF TO zcl_lnt_expression_node.
          DATA(t23) = CAST zif_lnt_union_4cf1d054( t10 ).
          DATA t24 TYPE REF TO object.
          t24 = t23.
          t22 ?= t24.
          APPEND t22 TO t21->items.
        ENDIF.
      ENDIF.
      DATA(t25) = VALUE i( ).
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = CAST zif_lnt_union_4cf1d054( t10 ).
      DATA t29 TYPE REF TO object.
      t29 = t28.
      t27 ?= t29.
      DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
      t26 = t27->find_all_expressions_recursive( i_type_9913 = t30 ).
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      LOOP AT t26->items INTO t32.
        t31 ?= t32.
        DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t34) = CAST zcl_lnt_expression_node( t31 ).
        APPEND t34 TO t33->items.
      ENDLOOP.
      DATA t35 TYPE i.
      DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t35 = lines( t36->items ).
      t25 = t35.
    ENDLOOP.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t37.

  ENDMETHOD.
  METHOD find_all_expressions.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_expression_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zif_lnt_union_4cf1d054( t10 ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_token_node ).
      IF t12 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t14) = VALUE abap_bool( ).
        DATA t15 TYPE REF TO zif_lnt_statement_runnable.
        DATA t16 TYPE REF TO zcl_lnt_expression_node.
        DATA(t17) = CAST zif_lnt_union_4cf1d054( t10 ).
        DATA t18 TYPE REF TO object.
        t18 = t17.
        t16 ?= t18.
        t15 = t16->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t20 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t20.
        IF t15 IS BOUND.
          t20 = t15->zlnt_builtin_clas_3f891b097658( ).
          WHILE t20 IS BOUND.
            IF t20 = t19.
              t14 = abap_true.
              EXIT.
            ENDIF.
            t20 = t20->parent.
          ENDWHILE.
        ENDIF.
        IF t14 = abap_true.
          DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t22 TYPE REF TO zcl_lnt_expression_node.
          DATA(t23) = CAST zif_lnt_union_4cf1d054( t10 ).
          DATA t24 TYPE REF TO object.
          t24 = t23.
          t22 ?= t24.
          APPEND t22 TO t21->items.
        ELSE.
          DATA(t25) = VALUE i( ).
          DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t27 TYPE REF TO zcl_lnt_expression_node.
          DATA(t28) = CAST zif_lnt_union_4cf1d054( t10 ).
          DATA t29 TYPE REF TO object.
          t29 = t28.
          t27 ?= t29.
          DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
          t26 = t27->find_all_expressions( i_type_9913 = t30 ).
          DATA t31 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t31.
          DATA t32 TYPE REF TO object.
          CLEAR t32.
          LOOP AT t26->items INTO t32.
            t31 ?= t32.
            DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t34) = CAST zcl_lnt_expression_node( t31 ).
            APPEND t34 TO t33->items.
          ENDLOOP.
          DATA t35 TYPE i.
          DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t35 = lines( t36->items ).
          t25 = t35.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t37.

  ENDMETHOD.
  METHOD find_all_expressions_multi.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_type_9913 ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_recursive ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/nodes/expression_node.ts:268|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD find_first_expression.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_statement_runnable( me->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ) ).
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t5.
    IF t3 IS BOUND.
      t5 = t3->zlnt_builtin_clas_3f891b097658( ).
      WHILE t5 IS BOUND.
        IF t5 = t4.
          t2 = abap_true.
          EXIT.
        ENDIF.
        t5 = t5->parent.
      ENDWHILE.
    ENDIF.
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = CAST zcl_lnt_expression_node( me ).
        t6 = t8.
      ELSE.
        DATA t9 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t9.
        t6 = t9.
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t13) = CAST zcl_lnt_expression_node( me ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = CAST zcl_lnt_abstract_node( t12 ).
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t10->items INTO t17.
      t16 ?= t17.
      DATA t18 TYPE abap_bool.
      DATA(t19) = CAST zif_lnt_union_4cf1d054( t16 ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_token_node ).
      IF t18 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE REF TO zif_lnt_statement_runnable.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        DATA(t23) = CAST zif_lnt_union_4cf1d054( t16 ).
        DATA t24 TYPE REF TO object.
        t24 = t23.
        t22 ?= t24.
        t21 = t22->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t26.
        IF t21 IS BOUND.
          t26 = t21->zlnt_builtin_clas_3f891b097658( ).
          WHILE t26 IS BOUND.
            IF t26 = t25.
              t20 = abap_true.
              EXIT.
            ENDIF.
            t26 = t26->parent.
          ENDWHILE.
        ENDIF.
        IF t20 = abap_true.
          DATA t27 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t27.
          DATA(t28) = abap_true.
          IF t28 = abap_true.
            DATA t29 TYPE REF TO zcl_lnt_expression_node.
            DATA(t30) = CAST zif_lnt_union_4cf1d054( t16 ).
            DATA t31 TYPE REF TO object.
            t31 = t30.
            t29 ?= t31.
            t27 = t29.
          ELSE.
            DATA t32 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t32.
            t27 = t32.
          ENDIF.
          result = t27.
          RETURN.
        ELSE.
          DATA t33 TYPE REF TO zcl_lnt_expression_node.
          DATA t34 TYPE REF TO zcl_lnt_expression_node.
          DATA t35 TYPE REF TO zcl_lnt_expression_node.
          DATA(t36) = CAST zif_lnt_union_4cf1d054( t16 ).
          DATA t37 TYPE REF TO object.
          t37 = t36.
          t35 ?= t37.
          DATA(t38) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
          t34 = t35->find_first_expression( i_type_9913 = t38 ).
          t33 = t34.
          DATA t39 TYPE abap_bool.
          DATA(t40) = CAST zcl_lnt_expression_node( t33 ).
          t39 = xsdbool( t40 IS BOUND ).
          IF t39 = abap_true.
            DATA t41 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t41.
            DATA(t42) = abap_true.
            IF t42 = abap_true.
              DATA t43 TYPE REF TO zcl_lnt_expression_node.
              DATA(t44) = CAST zcl_lnt_expression_node( t33 ).
              t43 = t44.
              t41 = t43.
            ELSE.
              DATA t45 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t45.
              t41 = t45.
            ENDIF.
            result = t41.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t46.
    result = t46.

  ENDMETHOD.
  METHOD add_child.
    DATA t1 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t1.
    t1 ?= i_n_0c97.
    me->a_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_n_2941 = t1 ).

  ENDMETHOD.
  METHOD get_db65.
    DATA(t1) = CAST zif_lnt_statement_runnable( me->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_children_value.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 ?= t4.
    t2 = me->s_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_children_9020 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD set_children.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    super->set_children( i_children_9020 = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = CAST zcl_lnt_expression_node( me ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_abstract_node( t5 ).
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t3->items INTO t10.
      t9 ?= t10.
      DATA t11 TYPE int8.
      DATA(t12) = CONV int8( me->token_count ).
      DATA t13 TYPE int8.
      DATA(t14) = CAST zif_lnt_union_4cf1d054( t9 ).
      t13 = t14->count_tokens( ).
      t11 = t12 + t13.
      IF t11 < range_int8_bound_min OR t11 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      me->token_count = t11.
    ENDLOOP.
    DATA(t15) = CAST zcl_lnt_expression_node( me ).
    result = t15.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d985_a5bb0f4f58f1.
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~cnct_tkns_wtht_strng_and_cmmnt.
    result = me->cnct_tkns_wtht_strng_and_cmmnt( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_direct_expression.
    result = me->find_direct_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_direct_expressions.
    result = me->find_direct_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_direct_expressions_multi.
    result = me->find_direct_expressions_multi( i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_direct_token_by_text.
    result = me->find_direct_token_by_text( i_text = i_text ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_expression_after_token.
    result = me->find_expression_after_token( i_text = i_text ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_children.
    result = me->get_children( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~get_tokens.
    result = me->get_tokens( ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
  METHOD zif_lnt_union_bb14dc41~set_children_value.
    result = me->set_children_value( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~count_tokens.
    result = me->count_tokens( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~get_children.
    result = me->get_children( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.
  METHOD zif_lnt_union_4cf1d054~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~get_children.
    result = me->get_children( ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.
  METHOD zif_lnt_union_1e9858bf~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
ENDCLASS.
