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
    IF t2 <> trunc( t2 ) OR t2 < range_check_lo_nzik0zk OR t2 > range_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t5 = t2.
    t4 = t5.
    me->tokens = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    me->token_index = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenIndex`.
    DATA(t9) = CONV f( 0 ).
    me->node_count = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = xsdbool( t3 IS INITIAL ).
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    IF t10 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t18 = t3.
      me->set_nodes( i_n_0c97 = t18 ).
    ENDIF.
  ENDMETHOD.

  METHOD from_chain.
    DATA(t3) = i_nodes_5198.
    DATA(t4) = i_node_count.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    DATA t6 TYPE REF TO zcl_lnt_st_result.
    DATA(t7) = i_tokens.
    DATA t8 TYPE f.
    t8 = i_token_index.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = NEW zcl_lnt_st_result( i_tokens = t7 i_token_index = t8 i_nodes_5198 = t10 ).
    t5 = t6.
    t5->nodes_0226 = t3.
    DELETE t5->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    t5->node_count = t4.
    DELETE t5->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    result = t5.

  ENDMETHOD.

  METHOD peek.
    DATA t1 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t2) = me->tokens.
    DATA(t3) = CONV i( me->token_index ).
    t3 = t3 + 1.
    DATA t4 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t3 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = me->tokens.
    DATA(t6) = VALUE i( ).
    DATA t7 TYPE f.
    DATA t8 TYPE f.
    DATA(t9) = CONV i( me->token_index ).
    t8 = t9.
    t7 = t8 + i_offset.
    IF t7 > range_i32_upper.
      t6 = range_i32_upper.
    ELSEIF t7 < range_i32_lower.
      t6 = range_i32_lower.
    ELSE.
      t6 = trunc( t7 ).
    ENDIF.
    t6 = t6 + 1.
    DATA t11 TYPE REF TO object.
    t5->load( ).
    READ TABLE t5->items INDEX t6 INTO t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t12 ?= t11.
      DATA t13 TYPE REF TO object.
      t13 = t12->as_ref( ).
      t4 ?= t13.
    ELSE.
      t4 ?= t11.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD shift_f196.
    DATA t2 TYPE REF TO zcl_lnt_st_result.
    DATA(t3) = me->tokens.
    DATA t4 TYPE int8.
    DATA t5 TYPE int8.
    DATA(t6) = CONV i( me->token_index ).
    t5 = t6.
    DATA(t7) = CONV int8( 1 ).
    t4 = t5 + t7.
    DATA t8 TYPE REF TO zcl_lnt_result_node.
    DATA t10 TYPE REF TO zcl_lnt_result_node.
    DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
    t11 = i_node.
    DATA t13 TYPE REF TO zcl_lnt_result_node.
    t13 = me->nodes_0226.
    t10 = NEW zcl_lnt_result_node( i_node = t11 i_previous = t13 ).
    CREATE OBJECT t10->zlnt_view_ownkeys_b0e8086400eb.
    t10->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t15 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t10->zlnt_json_ownkeys_70e5fd461788.
    t10->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |node|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    DATA(t19) = |previous|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    t8 = t10.
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
    t3 = me->nodes_0226.
    DATA t5 TYPE f.
    DATA(t6) = CONV f( me->node_count ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DO.
      DATA t9 TYPE abap_bool.
      DATA(t11) = CONV f( 0 ).
      t9 = xsdbool( t1 > t11 ).
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA(t12) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t12 = xsdbool( t3 IS INITIAL ).
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t21 TYPE REF TO zcl_lnt_result_node.
      t21 = t3.
      t20 = t21->node.
      t7->load( ).
      APPEND t20 TO t7->items.
      t7->save( ).
      DATA t23 TYPE f.
      DATA t25 TYPE f.
      DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t27 TYPE REF TO zcl_lnt_result_node.
      t27 = t3.
      t26 = t27->node.
      t25 = t26->count_tokens( ).
      t23 = t1 - t25.
      t1 = t23.
      DATA t29 TYPE REF TO zcl_lnt_result_node.
      DATA t30 TYPE REF TO zcl_lnt_result_node.
      t30 = t3.
      t29 = t30->previous.
      t3 = t29.
      DATA t32 TYPE f.
      DATA(t34) = CONV f( 1 ).
      t32 = t5 - t34.
      t5 = t32.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t37 = t7->reverse( ).
    t35 = t2->s_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_children_9020 = t37 ).
    DATA t41 TYPE REF TO zcl_lnt_result_node.
    DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
    t42 = t2.
    DATA t44 TYPE REF TO zcl_lnt_result_node.
    t44 = t3.
    t41 = NEW zcl_lnt_result_node( i_node = t42 i_previous = t44 ).
    CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
    t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `previous` p1 = t47 ).
    ENDIF.
    CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
    t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t48) = |node|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    DATA(t50) = |previous|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    me->nodes_0226 = t41.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA t53 TYPE f.
    DATA(t55) = CONV f( 1 ).
    t53 = t5 + t55.
    me->node_count = t53.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    result = me.

  ENDMETHOD.

  METHOD pop_node.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = xsdbool( me->nodes_0226 IS INITIAL ).
    IF t1 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO zcl_lnt_result_node.
    t11 = me->nodes_0226.
    t10 = t11->node.
    DATA t13 TYPE REF TO zcl_lnt_result_node.
    DATA t14 TYPE REF TO zcl_lnt_result_node.
    t14 = me->nodes_0226.
    t13 = t14->previous.
    me->nodes_0226 = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA t16 TYPE f.
    DATA(t17) = CONV f( me->node_count ).
    DATA(t18) = CONV f( 1 ).
    t16 = t17 - t18.
    me->node_count = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    result = t10.

  ENDMETHOD.

  METHOD get_nodes.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
    t2->allocate( t3 ).
    t1 = t2.
    DATA t6 TYPE REF TO zcl_lnt_result_node.
    t6 = me->nodes_0226.
    DATA t8 TYPE f.
    DATA t9 TYPE f.
    DATA(t10) = CONV f( me->node_count ).
    DATA(t11) = CONV f( 1 ).
    t9 = t10 - t11.
    t8 = t9.
    DO.
      DATA t12 TYPE abap_bool.
      DATA(t14) = CONV f( 0 ).
      t12 = xsdbool( t8 >= t14 ).
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t15 = xsdbool( t6 IS INITIAL ).
      IF t15 = abap_true.
        EXIT.
      ENDIF.
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
      t26 = t6.
      t25 = t26->node.
      t1->put( p0 = t23 p1 = t25 ).
      DATA t28 TYPE REF TO zcl_lnt_result_node.
      DATA t29 TYPE REF TO zcl_lnt_result_node.
      t29 = t6.
      t28 = t29->previous.
      t6 = t28.
      DATA t31 TYPE f.
      DATA(t33) = CONV f( 1 ).
      t31 = t8 - t33.
      t8 = t31.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD set_nodes.
    DATA(t1) = i_n_0c97.
    CLEAR me->nodes_0226.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodes`.
    DATA(t3) = CONV f( 0 ).
    me->node_count = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nodeCount`.
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
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
      DATA t12 TYPE REF TO zcl_lnt_result_node.
      DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
      t13 = t5.
      DATA t15 TYPE REF TO zcl_lnt_result_node.
      t15 = me->nodes_0226.
      t12 = NEW zcl_lnt_result_node( i_node = t13 i_previous = t15 ).
      CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
      t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t17 ).
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
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      DATA(t21) = |previous|.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
      ENDIF.
      me->nodes_0226 = t12.
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
    result = me->tokens.

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
