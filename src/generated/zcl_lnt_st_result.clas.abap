* TS: src/abap/2_statements/result.ts:10:1 Result
CLASS zcl_lnt_st_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA token_index TYPE i.
    DATA nodes_0226 TYPE REF TO zcl_lnt_result_node.
    DATA node_count TYPE int8.
    METHODS constructor IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_token_index TYPE int8 i_nodes_5198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    CLASS-METHODS from_chain IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_token_index TYPE int8 i_nodes_5198 TYPE REF TO zcl_lnt_result_node i_node_count TYPE int8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_st_result.
    METHODS peek RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS peek_at IMPORTING i_offset TYPE int8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS shift_f196 IMPORTING i_node TYPE REF TO zif_lnt_union_4cf1d054 RETURNING VALUE(result) TYPE REF TO zcl_lnt_st_result.
    METHODS wrap_consumed IMPORTING i_consumed_tokens TYPE int8 i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_st_result.
    METHODS pop_node RETURNING VALUE(result) TYPE REF TO zif_lnt_union_4cf1d054.
    METHODS get_nodes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS set_nodes IMPORTING i_n_0c97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_token_index RETURNING VALUE(result) TYPE int8.
    METHODS remaining_length RETURNING VALUE(result) TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_result IMPLEMENTATION.
  METHOD constructor.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t2) = i_token_index.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_nodes_5198 ).
    DATA(t4) = VALUE i( ).
    DATA(t5) = VALUE i( ).
    DATA(t6) = t2.
    IF t6 < range_int_check_lo_nzik0zk OR t6 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t5 = t6.
    t4 = t5.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->tokens = t7.
    DATA(t8) = t4.
    me->token_index = t8.
    DATA(t9) = CONV int8( 0 ).
    me->node_count = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    IF t10 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t18 = t19.
      me->set_nodes( i_n_0c97 = t18 ).
    ENDIF.
  ENDMETHOD.
  METHOD from_chain.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t2) = i_token_index.
    DATA(t3) = CAST zcl_lnt_result_node( i_nodes_5198 ).
    DATA(t4) = i_node_count.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    DATA t6 TYPE REF TO zcl_lnt_st_result.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA(t8) = t2.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    t6 = NEW zcl_lnt_st_result( i_tokens = t7 i_token_index = t8 i_nodes_5198 = t9 ).
    t5 = t6.
    DATA(t10) = CAST zcl_lnt_st_result( t5 ).
    DATA(t11) = CAST zcl_lnt_result_node( t3 ).
    t10->nodes_0226 = t11.
    DATA(t12) = CAST zcl_lnt_st_result( t5 ).
    DATA(t13) = t4.
    t12->node_count = t13.
    DATA(t14) = CAST zcl_lnt_st_result( t5 ).
    result = t14.
    
  ENDMETHOD.
  METHOD peek.
    DATA t1 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
    DATA(t3) = CONV i( me->token_index ).
    t3 = t3 + 1.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    READ TABLE t2->items INDEX t3 INTO t4.
    t1 ?= t4.
    result = t1.
    
  ENDMETHOD.
  METHOD peek_at.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = i_offset.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t4.
      DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
      DATA(t6) = VALUE i( ).
      DATA t7 TYPE int8.
      DATA t8 TYPE int8.
      DATA(t9) = CONV i( me->token_index ).
      t8 = t9.
      DATA(t10) = t1.
      t7 = t8 + t10.
      IF t7 < range_int8_bound_min OR t7 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      IF t7 < range_int_check_lo_nzik0zk OR t7 > range_int_check_hi_zik0zj.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t6 = t7.
      t6 = t6 + 1.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      READ TABLE t5->items INDEX t6 INTO t11.
      t4 ?= t11.
      t2 = t4.
    ELSE.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t2 = t12.
    ENDIF.
    result = t2.
    
  ENDMETHOD.
  METHOD shift_f196.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_union_4cf1d054( i_node ).
    DATA t2 TYPE REF TO zcl_lnt_st_result.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
    DATA t4 TYPE int8.
    DATA t5 TYPE int8.
    DATA(t6) = CONV i( me->token_index ).
    t5 = t6.
    DATA(t7) = CONV int8( 1 ).
    t4 = t5 + t7.
    IF t4 < range_int8_bound_min OR t4 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_result_node.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_result_node.
      DATA(t11) = CAST zif_lnt_union_4cf1d054( t1 ).
      DATA(t12) = CAST zcl_lnt_result_node( me->nodes_0226 ).
      t10 = NEW zcl_lnt_result_node( i_node = t11 i_previous = t12 ).
      t8 = t10.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_result_node.
      CLEAR t13.
      t8 = t13.
    ENDIF.
    DATA t14 TYPE int8.
    DATA(t15) = CONV int8( me->node_count ).
    DATA(t16) = CONV int8( 1 ).
    t14 = t15 + t16.
    IF t14 < range_int8_bound_min OR t14 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t2 = zcl_lnt_st_result=>from_chain( i_tokens = t3 i_token_index = t4 i_nodes_5198 = t8 i_node_count = t14 ).
    result = t2.
    
  ENDMETHOD.
  METHOD wrap_consumed.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_consumed_tokens.
    DATA(t2) = CAST zcl_lnt_expression_node( i_node ).
    DATA t3 TYPE REF TO zcl_lnt_result_node.
    DATA(t4) = CAST zcl_lnt_result_node( me->nodes_0226 ).
    t3 = t4.
    DATA t5 TYPE int8.
    DATA(t6) = CONV int8( me->node_count ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DO.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      DATA(t11) = CONV int8( 0 ).
      t9 = xsdbool( t10 > t11 ).
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_result_node.
      DATA(t14) = CAST zcl_lnt_result_node( t3 ).
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t15 = t16.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zcl_lnt_result_node( t13 ).
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t12 = t17.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t21 TYPE REF TO zcl_lnt_result_node.
      DATA(t22) = CAST zcl_lnt_result_node( t3 ).
      t21 = t22.
      t20 = t21->node.
      APPEND t20 TO t19->items.
      DATA t23 TYPE int8.
      DATA(t24) = t1.
      DATA t25 TYPE int8.
      DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t27 TYPE REF TO zcl_lnt_result_node.
      DATA(t28) = CAST zcl_lnt_result_node( t3 ).
      t27 = t28.
      t26 = t27->node.
      t25 = t26->count_tokens(  ).
      t23 = t24 - t25.
      IF t23 < range_int8_bound_min OR t23 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t1 = t23.
      DATA t29 TYPE REF TO zcl_lnt_result_node.
      DATA t30 TYPE REF TO zcl_lnt_result_node.
      DATA(t31) = CAST zcl_lnt_result_node( t3 ).
      t30 = t31.
      t29 = t30->previous.
      t3 = t29.
      DATA t32 TYPE int8.
      DATA(t33) = t5.
      DATA(t34) = CONV int8( 1 ).
      t32 = t33 - t34.
      IF t32 < range_int8_bound_min OR t32 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t5 = t32.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA(t36) = CAST zcl_lnt_expression_node( t2 ).
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t37 = t38->reverse(  ).
    t35 = t36->s_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_children_9020 = t37 ).
    DATA t39 TYPE REF TO zcl_lnt_result_node.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_result_node.
      DATA(t42) = CAST zcl_lnt_expression_node( t2 ).
      DATA(t43) = CAST zcl_lnt_result_node( t3 ).
      t41 = NEW zcl_lnt_result_node( i_node = t42 i_previous = t43 ).
      t39 = t41.
    ELSE.
      DATA t44 TYPE REF TO zcl_lnt_result_node.
      CLEAR t44.
      t39 = t44.
    ENDIF.
    me->nodes_0226 = t39.
    DATA t45 TYPE int8.
    DATA(t46) = t5.
    DATA(t47) = CONV int8( 1 ).
    t45 = t46 + t47.
    IF t45 < range_int8_bound_min OR t45 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    me->node_count = t45.
    DATA(t48) = CAST zcl_lnt_st_result( me ).
    result = t48.
    
  ENDMETHOD.
  METHOD pop_node.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/result.ts:67|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_nodes.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t3) = VALUE i( ).
    DATA(t4) = CONV int8( me->node_count ).
    IF t4 < range_int_check_lo_nzik0zk OR t4 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t3 = t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    CLEAR t5.
    WHILE t3 > 0.
      APPEND t5 TO t2->items.
      t3 = t3 - 1.
    ENDWHILE.
    t1 = t2.
    DATA t6 TYPE REF TO zcl_lnt_result_node.
    DATA(t7) = CAST zcl_lnt_result_node( me->nodes_0226 ).
    t6 = t7.
    DATA(t8) = VALUE int8( ).
    DATA t9 TYPE int8.
    DATA(t10) = CONV int8( me->node_count ).
    DATA(t11) = CONV int8( 1 ).
    t9 = t10 - t11.
    IF t9 < range_int8_bound_min OR t9 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t8 = t9.
    DO.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t8.
      DATA(t14) = CONV int8( 0 ).
      t12 = xsdbool( t13 >= t14 ).
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_result_node.
      DATA(t17) = CAST zcl_lnt_result_node( t6 ).
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      t18 = t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = CAST zcl_lnt_result_node( t16 ).
      IF t21 IS INITIAL.
        t20 = abap_true.
      ENDIF.
      t15 = t20.
      IF t15 = abap_true.
        EXIT.
      ENDIF.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t23) = VALUE i( ).
      DATA(t24) = t8.
      IF t24 < range_int_check_lo_nzik0zk OR t24 > range_int_check_hi_zik0zj.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t23 = t24.
      DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t26 TYPE REF TO zcl_lnt_result_node.
      DATA(t27) = CAST zcl_lnt_result_node( t6 ).
      t26 = t27.
      t25 = t26->node.
      t23 = t23 + 1.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t28.
      WHILE lines( t22->items ) < t23.
        APPEND t28 TO t22->items.
      ENDWHILE.
      MODIFY t22->items FROM t25 INDEX t23.
      DATA t29 TYPE REF TO zcl_lnt_result_node.
      DATA t30 TYPE REF TO zcl_lnt_result_node.
      DATA(t31) = CAST zcl_lnt_result_node( t6 ).
      t30 = t31.
      t29 = t30->previous.
      t6 = t29.
      DATA t32 TYPE int8.
      DATA(t33) = t8.
      DATA(t34) = CONV int8( 1 ).
      t32 = t33 - t34.
      IF t32 < range_int8_bound_min OR t32 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t8 = t32.
    ENDDO.
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t35.
    
  ENDMETHOD.
  METHOD set_nodes.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_n_0c97 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/result.ts:92|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_tokens.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/result.ts:101|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_token_index.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/result.ts:105|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD remaining_length.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE int8.
    DATA t2 TYPE int8.
    DATA t3 TYPE i.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
    t3 = lines( t4->items ).
    t2 = t3.
    DATA t5 TYPE int8.
    DATA(t6) = CONV i( me->token_index ).
    t5 = t6.
    t1 = t2 - t5.
    IF t1 < range_int8_bound_min OR t1 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
  ENDMETHOD.
ENDCLASS.
