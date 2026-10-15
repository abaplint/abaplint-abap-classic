* TS: src/abap/2_statements/result.ts:10:1 Result
CLASS zcl_lnt_st_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA token_index TYPE i.
    DATA nodes_0226 TYPE REF TO zcl_lnt_result_node.
    DATA node_count TYPE f.
    METHODS constructor IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_token_index TYPE f i_nodes_5198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    CLASS-METHODS from_chain IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_token_index TYPE int8 i_nodes_5198 TYPE REF TO zcl_lnt_result_node i_node_count TYPE f RETURNING VALUE(result) TYPE REF TO zcl_lnt_st_result.
    METHODS peek RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS peek_at IMPORTING i_offset TYPE f RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS shift_f196 IMPORTING i_node TYPE REF TO zif_lnt_union_4cf1d054 RETURNING VALUE(result) TYPE REF TO zcl_lnt_st_result.
    METHODS wrap_consumed IMPORTING i_consumed_tokens TYPE f i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_st_result.
    METHODS pop_node RETURNING VALUE(result) TYPE REF TO zif_lnt_union_4cf1d054.
    METHODS get_nodes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS set_nodes IMPORTING i_n_0c97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_token_index RETURNING VALUE(result) TYPE f.
    METHODS remaining_length RETURNING VALUE(result) TYPE f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_result IMPLEMENTATION.
  METHOD constructor.
    CONSTANTS range_check_hi_zik0zj TYPE f VALUE '2147483647'.
    CONSTANTS range_check_lo_nzik0zk TYPE f VALUE '-2147483648'.
    DATA(t1) = i_tokens.
    DATA(t2) = i_token_index.
    DATA(t3) = i_nodes_5198.
    DATA(t4) = VALUE i( ).
    DATA(t5) = VALUE i( ).
    DATA(t6) = t2.
    IF t6 <> trunc( t6 ) OR t6 < range_check_lo_nzik0zk OR t6 > range_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t5 = t6.
    t4 = t5.
    DATA(t7) = t1.
    me->tokens = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    DATA(t8) = t4.
    me->token_index = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenIndex`.
    DATA(t9) = CONV f( 0 ).
    me->node_count = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t11.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    IF t10 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t3.
      t18 = t19.
      me->set_nodes( i_n_0c97 = t18 ).
    ENDIF.
  ENDMETHOD.

  METHOD from_chain.
    DATA(t1) = i_tokens.
    DATA(t2) = i_token_index.
    DATA(t3) = i_nodes_5198.
    DATA(t4) = i_node_count.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    DATA t6 TYPE REF TO zcl_lnt_st_result.
    DATA(t7) = t1.
    DATA t8 TYPE f.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    t6 = NEW zcl_lnt_st_result( i_tokens = t7 i_token_index = t8 i_nodes_5198 = t10 ).
    t5 = t6.
    DATA(t11) = t5.
    DATA(t12) = t3.
    t11->nodes_0226 = t12.
    DELETE t11->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA(t13) = t5.
    DATA(t14) = t4.
    t13->node_count = t14.
    DELETE t13->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA(t15) = t5.
    result = t15.

  ENDMETHOD.

  METHOD peek.
    DATA t1 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t1.
    DATA(t2) = me->tokens.
    DATA(t3) = CONV i( me->token_index ).
    t3 = t3 + 1.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    t2->load( ).
    CLEAR t4.
    READ TABLE t2->items INDEX t3 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    CLEAR t1.
    IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t5 ?= t4.
      DATA t6 TYPE REF TO object.
      t6 = t5->as_ref( ).
      t1 ?= t6.
    ELSE.
      t1 ?= t4.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD peek_at.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_offset.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t4.
      DATA(t5) = me->tokens.
      DATA(t6) = VALUE i( ).
      DATA t7 TYPE f.
      DATA t8 TYPE f.
      DATA(t9) = CONV i( me->token_index ).
      t8 = t9.
      DATA(t10) = t1.
      t7 = t8 + t10.
      IF t7 > range_i32_upper.
        t6 = range_i32_upper.
      ELSEIF t7 < range_i32_lower.
        t6 = range_i32_lower.
      ELSE.
        t6 = trunc( t7 ).
      ENDIF.
      t6 = t6 + 1.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      t5->load( ).
      CLEAR t11.
      READ TABLE t5->items INDEX t6 INTO t11.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t4.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t11.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t4 ?= t13.
      ELSE.
        t4 ?= t11.
      ENDIF.
      t2 = t4.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      t2 = t14.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD shift_f196.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_st_result.
    CLEAR t2.
    DATA(t3) = me->tokens.
    DATA t4 TYPE int8.
    DATA t5 TYPE int8.
    DATA(t6) = CONV i( me->token_index ).
    t5 = t6.
    DATA(t7) = CONV int8( 1 ).
    t4 = t5 + t7.
    DATA t8 TYPE REF TO zcl_lnt_result_node.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_result_node.
      DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t12) = t1.
      t11 = t12.
      DATA t13 TYPE REF TO zcl_lnt_result_node.
      DATA(t14) = me->nodes_0226.
      t13 = t14.
      t10 = NEW zcl_lnt_result_node( i_node = t11 i_previous = t13 ).
      CREATE OBJECT t10->zlnt_view_ownkeys_b0e8086400eb.
      t10->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t15 ).
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t10->zlnt_json_ownkeys_70e5fd461788.
      t10->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |node|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      DATA(t19) = |previous|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      ENDIF.
      t8 = t10.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_result_node.
      CLEAR t21.
      t8 = t21.
    ENDIF.
    DATA t22 TYPE f.
    DATA(t23) = CONV f( me->node_count ).
    DATA(t24) = CONV f( 1 ).
    t22 = t23 + t24.
    t2 = zcl_lnt_st_result=>from_chain( i_tokens = t3 i_token_index = t4 i_nodes_5198 = t8 i_node_count = t22 ).
    result = t2.

  ENDMETHOD.

  METHOD wrap_consumed.
    DATA(t1) = i_consumed_tokens.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_result_node.
    DATA(t4) = me->nodes_0226.
    t3 = t4.
    DATA t5 TYPE f.
    DATA(t6) = CONV f( me->node_count ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DO.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      DATA(t11) = CONV f( 0 ).
      t9 = xsdbool( t10 > t11 ).
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_result_node.
      DATA(t14) = t3.
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t15 = t16.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t13.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t12 = t17.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA(t19) = t7.
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t21 TYPE REF TO zcl_lnt_result_node.
      DATA(t22) = t3.
      t21 = t22.
      t20 = t21->node.
      t19->load( ).
      APPEND t20 TO t19->items.
      t19->save( ).
      DATA t23 TYPE f.
      DATA(t24) = t1.
      DATA t25 TYPE f.
      DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t27 TYPE REF TO zcl_lnt_result_node.
      DATA(t28) = t3.
      t27 = t28.
      t26 = t27->node.
      t25 = t26->count_tokens( ).
      t23 = t24 - t25.
      t1 = t23.
      DATA t29 TYPE REF TO zcl_lnt_result_node.
      DATA t30 TYPE REF TO zcl_lnt_result_node.
      DATA(t31) = t3.
      t30 = t31.
      t29 = t30->previous.
      t3 = t29.
      DATA t32 TYPE f.
      DATA(t33) = t5.
      DATA(t34) = CONV f( 1 ).
      t32 = t33 - t34.
      t5 = t32.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA(t36) = t2.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t38) = t7.
    t37 = t38->reverse( ).
    t35 = t36->s_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_children_9020 = t37 ).
    DATA t39 TYPE REF TO zcl_lnt_result_node.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_result_node.
      DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t43) = t2.
      t42 = t43.
      DATA t44 TYPE REF TO zcl_lnt_result_node.
      DATA(t45) = t3.
      t44 = t45.
      t41 = NEW zcl_lnt_result_node( i_node = t42 i_previous = t44 ).
      CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
      t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t46 ).
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t47 ).
      ENDIF.
      CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
      t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t48) = |node|.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
      ENDIF.
      DATA(t50) = |previous|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      t39 = t41.
    ELSE.
      DATA t52 TYPE REF TO zcl_lnt_result_node.
      CLEAR t52.
      t39 = t52.
    ENDIF.
    me->nodes_0226 = t39.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA t53 TYPE f.
    DATA(t54) = t5.
    DATA(t55) = CONV f( 1 ).
    t53 = t54 + t55.
    me->node_count = t53.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA(t56) = me.
    result = t56.

  ENDMETHOD.

  METHOD pop_node.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_result_node.
    DATA(t3) = me->nodes_0226.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t8.
      result = t8.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO zcl_lnt_result_node.
    DATA(t12) = me->nodes_0226.
    t11 = t12.
    t10 = t11->node.
    t9 = t10.
    DATA t13 TYPE REF TO zcl_lnt_result_node.
    DATA t14 TYPE REF TO zcl_lnt_result_node.
    DATA(t15) = me->nodes_0226.
    t14 = t15.
    t13 = t14->previous.
    me->nodes_0226 = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA t16 TYPE f.
    DATA(t17) = CONV f( me->node_count ).
    DATA(t18) = CONV f( 1 ).
    t16 = t17 - t18.
    me->node_count = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = t9.
      t19 = t21.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t22.
      t19 = t22.
    ENDIF.
    result = t19.

  ENDMETHOD.

  METHOD get_nodes.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t3) = VALUE i( ).
    DATA(t4) = CONV f( me->node_count ).
    IF t4 > range_i32_upper.
      t3 = range_i32_upper.
    ELSEIF t4 < range_i32_lower.
      t3 = range_i32_lower.
    ELSE.
      t3 = trunc( t4 ).
    ENDIF.
    IF t3 < 0 OR t3 > 2147483646.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t5) = t3.
    t2->allocate( t5 ).
    t1 = t2.
    DATA t6 TYPE REF TO zcl_lnt_result_node.
    DATA(t7) = me->nodes_0226.
    t6 = t7.
    DATA t8 TYPE f.
    DATA t9 TYPE f.
    DATA(t10) = CONV f( me->node_count ).
    DATA(t11) = CONV f( 1 ).
    t9 = t10 - t11.
    t8 = t9.
    DO.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t8.
      DATA(t14) = CONV f( 0 ).
      t12 = xsdbool( t13 >= t14 ).
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_result_node.
      DATA(t17) = t6.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      t18 = t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = t16.
      IF t21 IS INITIAL.
        t20 = abap_true.
      ENDIF.
      t15 = t20.
      IF t15 = abap_true.
        EXIT.
      ENDIF.
      DATA(t22) = t1.
      DATA(t23) = VALUE i( ).
      DATA(t24) = t8.
      IF t24 > range_i32_upper.
        t23 = range_i32_upper.
      ELSEIF t24 < range_i32_lower.
        t23 = range_i32_lower.
      ELSE.
        t23 = trunc( t24 ).
      ENDIF.
      DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t26 TYPE REF TO zcl_lnt_result_node.
      DATA(t27) = t6.
      t26 = t27.
      t25 = t26->node.
      t22->put( p0 = t23 p1 = t25 ).
      DATA t28 TYPE REF TO zcl_lnt_result_node.
      DATA t29 TYPE REF TO zcl_lnt_result_node.
      DATA(t30) = t6.
      t29 = t30.
      t28 = t29->previous.
      t6 = t28.
      DATA t31 TYPE f.
      DATA(t32) = t8.
      DATA(t33) = CONV f( 1 ).
      t31 = t32 - t33.
      t8 = t31.
    ENDDO.
    DATA(t34) = t1.
    result = t34.

  ENDMETHOD.

  METHOD set_nodes.
    DATA(t1) = i_n_0c97.
    DATA t2 TYPE REF TO zcl_lnt_result_node.
    CLEAR t2.
    me->nodes_0226 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA(t3) = CONV f( 0 ).
    me->node_count = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
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
      DATA t10 TYPE REF TO zcl_lnt_result_node.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_result_node.
        DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t14) = t5.
        t13 = t14.
        DATA t15 TYPE REF TO zcl_lnt_result_node.
        DATA(t16) = me->nodes_0226.
        t15 = t16.
        t12 = NEW zcl_lnt_result_node( i_node = t13 i_previous = t15 ).
        CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
        t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t17 ).
        ENDIF.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t18.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t18 ).
        ENDIF.
        CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
        t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t19) = |node|.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t20.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
        ENDIF.
        DATA(t21) = |previous|.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
        ENDIF.
        t10 = t12.
      ELSE.
        DATA t23 TYPE REF TO zcl_lnt_result_node.
        CLEAR t23.
        t10 = t23.
      ENDIF.
      me->nodes_0226 = t10.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
      DATA t24 TYPE f.
      DATA(t25) = CONV f( me->node_count ).
      DATA(t26) = CONV f( 1 ).
      t24 = t25 + t26.
      me->node_count = t24.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    ENDDO.
  ENDMETHOD.

  METHOD get_tokens.
    DATA(t1) = me->tokens.
    result = t1.

  ENDMETHOD.

  METHOD get_token_index.
    DATA t1 TYPE f.
    DATA(t2) = CONV i( me->token_index ).
    t1 = t2.
    result = t1.

  ENDMETHOD.

  METHOD remaining_length.
    DATA t1 TYPE f.
    DATA t2 TYPE int8.
    DATA t3 TYPE int8.
    DATA t4 TYPE i.
    DATA(t5) = me->tokens.
    t5->load( ).
    t4 = lines( t5->items ).
    t3 = t4.
    DATA t6 TYPE int8.
    DATA(t7) = CONV i( me->token_index ).
    t6 = t7.
    t2 = t3 - t6.
    t1 = t2.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d358_785ae0da1088.
  ENDMETHOD.
ENDCLASS.
