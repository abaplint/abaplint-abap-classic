* TS: src/abap/nodes/expression_node.ts:8:1 ExpressionNode
CLASS zcl_lnt_expression_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_node CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_bb14dc41.
    INTERFACES zif_lnt_union_4cf1d054.
    INTERFACES zif_lnt_union_1e9858bf.
    INTERFACES zif_lnt_union_734b3529.
    DATA expression TYPE REF TO zif_lnt_statement_runnable.
    DATA token_count TYPE f.
    METHODS constructor IMPORTING i_expression TYPE REF TO zif_lnt_statement_runnable.
    METHODS a_c_in_sr_ab_nd_ex_nd_ts_ex_nd IMPORTING i_n_2941 TYPE REF TO zif_lnt_union_4cf1d054.
    METHODS gt_in_sr_ab_nd_ex_nd_ts_exp_nd RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS s_c_in_sr_ab_nd_ex_nd_ts_ex_nd IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS count_tokens RETURNING VALUE(result) TYPE f.
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
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_expression_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_expression.
    super->constructor( ).
    me->token_count = CONV f( 0 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenCount`.
    me->expression = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `expression`.
  ENDMETHOD.

  METHOD a_c_in_sr_ab_nd_ex_nd_ts_ex_nd.
    DATA(t1) = i_n_2941.
    DATA t2 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t3 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t6) = |ExpressionNode: addChild() must not be called, nodes are imm|.
    t6 = t6 && |utable after setChildren()|.
    DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t7->has = abap_true.
    t7->value = t6.
    t3 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t7 ).
    t2 = NEW #( ).
    t2->payload = t3.
    CLEAR t2->source_value.
    DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t10 TYPE REF TO object.
    t10 = t3.
    TRY.
        t2->source_value ?= t10.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t2->source_value IS NOT BOUND.
      TRY.
          t9 ?= t3.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS BOUND.
        t2->source_value = t9->source( ).
      ENDIF.
      IF t2->source_value IS NOT BOUND.
        CREATE OBJECT t2->source_value.
        t2->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t2->source_value->oval = t3.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_ex_nd_ts_exp_nd.
    result = me->expression.

  ENDMETHOD.

  METHOD s_c_in_sr_ab_nd_ex_nd_ts_ex_nd.
    DATA(t2) = i_children_9020.
    DATA t3 TYPE REF TO object.
    t3 = me->set_children( i_children_9020 = t2 ).
    result ?= t3.

  ENDMETHOD.

  METHOD count_tokens.
    DATA(t1) = CONV f( me->token_count ).
    result = t1.

  ENDMETHOD.

  METHOD get_first_token.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abstract_node.
    t3 = me.
    t2 = t3->children.
    t1 ?= t2.
    DATA t7 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      result = t7->get_first_token( ).
      RETURN.
    ENDDO.
    DATA t14 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t15 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = |ExpressionNode, getFirstToken, no children|.
    t15 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t19 ).
    t14 = NEW #( ).
    t14->payload = t15.
    CLEAR t14->source_value.
    DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t22 TYPE REF TO object.
    t22 = t15.
    TRY.
        t14->source_value ?= t22.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t14->source_value IS NOT BOUND.
      TRY.
          t21 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS BOUND.
        t14->source_value = t21->source( ).
      ENDIF.
      IF t14->source_value IS NOT BOUND.
        CREATE OBJECT t14->source_value.
        t14->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t14->source_value->oval = t15.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t14.
  ENDMETHOD.

  METHOD concat_tokens_with_linebreaks.
    DATA t1 TYPE string.
    t1 = ||.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_pragma ) = abap_true.
        CONTINUE.
      ENDIF.
      IF xsdbool( t1 = || ) = abap_true.
        t1 = t5->str.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE abap_bool.
        t22 = xsdbool( t3 IS BOUND ).
        t21 = t22.
        IF t22 = abap_true.
          DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t26 TYPE f.
          t26 = strlen( t3->str ).
          DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t35->has = abap_true.
          t35->value = t26.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t44 = t3->start->col.
          t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t35 right = t44 op = `+` ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t53 = t5->start->col.
          t21 = zlnt_runtime_numb_290eb04a9758=>compare( left = t25 right = t53 op = `==` ).
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          t20 = xsdbool( t3->start->row = t5->start->row ).
        ENDIF.
        IF t20 = abap_true.
          DATA(t76) = t1.
          DATA t77 TYPE string.
          t77 = t5->str.
          DATA(t82) = strlen( t76 ).
          t1 = |{ t76 }{ t77 }|.
        ELSE.
          DATA t83 TYPE abap_bool.
          DATA t84 TYPE abap_bool.
          t84 = xsdbool( t3 IS BOUND ).
          t83 = t84.
          IF t84 = abap_true.
            t83 = xsdbool( t3->start->row <> t5->start->row ).
          ENDIF.
          IF t83 = abap_true.
            DATA t107 TYPE string.
            DATA(t108) = t1.
            DATA(t110) = strlen( t108 ).
            t107 = |{ t108 }{ |\n| }|.
            DATA t111 TYPE string.
            t111 = t5->str.
            DATA(t116) = strlen( t107 ).
            t1 = |{ t107 }{ t111 }|.
          ELSE.
            DATA t118 TYPE string.
            DATA(t119) = t1.
            DATA(t121) = strlen( t119 ).
            t118 = |{ t119 }{ | | }|.
            DATA t122 TYPE string.
            t122 = t5->str.
            DATA(t127) = strlen( t118 ).
            t1 = |{ t118 }{ t122 }|.
          ENDIF.
        ENDIF.
      ENDIF.
      t3 = t5.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD concat_tokens.
    DATA t1 TYPE string.
    t1 = ||.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_pragma ) = abap_true.
        CONTINUE.
      ENDIF.
      IF xsdbool( t1 = || ) = abap_true.
        t1 = t5->str.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE abap_bool.
        t22 = xsdbool( t3 IS BOUND ).
        t21 = t22.
        IF t22 = abap_true.
          DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t26 TYPE f.
          t26 = strlen( t3->str ).
          DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t35->has = abap_true.
          t35->value = t26.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t44 = t3->start->col.
          t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t35 right = t44 op = `+` ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t53 = t5->start->col.
          t21 = zlnt_runtime_numb_290eb04a9758=>compare( left = t25 right = t53 op = `==` ).
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          t20 = xsdbool( t3->start->row = t5->start->row ).
        ENDIF.
        IF t20 = abap_true.
          DATA(t76) = t1.
          DATA t77 TYPE string.
          t77 = t5->str.
          DATA(t82) = strlen( t76 ).
          t1 = |{ t76 }{ t77 }|.
        ELSE.
          DATA t84 TYPE string.
          DATA(t85) = t1.
          DATA(t87) = strlen( t85 ).
          t84 = |{ t85 }{ | | }|.
          DATA t88 TYPE string.
          t88 = t5->str.
          DATA(t93) = strlen( t84 ).
          t1 = |{ t84 }{ t88 }|.
        ENDIF.
      ENDIF.
      t3 = t5.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD cnct_tkns_wtht_strng_and_cmmnt.
    DATA t1 TYPE string.
    t1 = ||.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO object.
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
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_lx_comment ).
      t14 = t15.
      IF t15 = abap_false.
        t14 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_token ).
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        t13 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_lx_string_template ).
      ENDIF.
      t12 = t13.
      IF t13 = abap_false.
        t12 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_begin ).
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        t11 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_middle ).
      ENDIF.
      t10 = t11.
      IF t11 = abap_false.
        t10 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_end ).
      ENDIF.
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      IF xsdbool( t1 = || ) = abap_true.
        t1 = t5->str.
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE abap_bool.
        t37 = xsdbool( t3 IS BOUND ).
        t36 = t37.
        IF t37 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t41 TYPE f.
          t41 = strlen( t3->str ).
          DATA(t50) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t50->has = abap_true.
          t50->value = t41.
          DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t59 = t3->start->col.
          t40 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t50 right = t59 op = `+` ).
          DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t68 = t5->start->col.
          t36 = zlnt_runtime_numb_290eb04a9758=>compare( left = t40 right = t68 op = `==` ).
        ENDIF.
        t35 = t36.
        IF t36 = abap_true.
          t35 = xsdbool( t3->start->row = t5->start->row ).
        ENDIF.
        IF t35 = abap_true.
          DATA(t91) = t1.
          DATA t92 TYPE string.
          t92 = t5->str.
          DATA(t97) = strlen( t91 ).
          t1 = |{ t91 }{ t92 }|.
        ELSE.
          DATA t99 TYPE string.
          DATA(t100) = t1.
          DATA(t102) = strlen( t100 ).
          t99 = |{ t100 }{ | | }|.
          DATA t103 TYPE string.
          t103 = t5->str.
          DATA(t108) = strlen( t99 ).
          t1 = |{ t99 }{ t103 }|.
        ENDIF.
      ENDIF.
      t3 = t5.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t4 = t5->children.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE i( ).
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zif_lnt_node.
      t16 ?= t9.
      t15 = me->to_tokens( i_b = t16 ).
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      DATA(t20) = VALUE i( ).
      DO.
        t15->load( ).
        IF t20 >= lines( t15->items ).
          EXIT.
        ENDIF.
        CLEAR t19.
        READ TABLE t15->items INDEX t20 + 1 INTO t19.
        t20 = t20 + 1.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        CLEAR t18.
        IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t21 ?= t19.
          DATA t22 TYPE REF TO object.
          t22 = t21->as_ref( ).
          t18 ?= t22.
        ELSE.
          t18 ?= t19.
        ENDIF.
        t1->load( ).
        APPEND t18 TO t1->items.
        t1->save( ).
      ENDDO.
      t1->load( ).
      t14 = lines( t1->items ).
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD to_tokens.
    DATA(t1) = i_b.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_token_node.
      DATA t10 TYPE REF TO object.
      t10 = t1.
      t8 ?= t10.
      t7 = t8->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      t2->load( ).
      APPEND t7 TO t2->items.
      t2->save( ).
      result = t2.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t1->get_children( ).
    DATA t14 TYPE REF TO zif_lnt_node.
    DATA t15 TYPE REF TO object.
    DATA(t16) = VALUE i( ).
    DO.
      t12->load( ).
      IF t16 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t12->items INDEX t16 + 1 INTO t15.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t14.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t15.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t14 ?= t18.
      ELSE.
        t14 ?= t15.
      ENDIF.
      IF xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        DATA t23 TYPE REF TO zcl_lnt_token_node.
        DATA t25 TYPE REF TO object.
        t25 = t14.
        t23 ?= t25.
        t22 = t23->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t2->load( ).
        APPEND t22 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t26) = VALUE i( ).
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t27 = me->to_tokens( i_b = t14 ).
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t29.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        DATA(t31) = VALUE i( ).
        DO.
          t27->load( ).
          IF t31 >= lines( t27->items ).
            EXIT.
          ENDIF.
          CLEAR t30.
          READ TABLE t27->items INDEX t31 + 1 INTO t30.
          t31 = t31 + 1.
          DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t32.
          CLEAR t29.
          IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t32 ?= t30.
            DATA t33 TYPE REF TO object.
            t33 = t32->as_ref( ).
            t29 ?= t33.
          ELSE.
            t29 ?= t30.
          ENDIF.
          t2->load( ).
          APPEND t29 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t26 = lines( t2->items ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_last_token.
    DATA t1 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t2 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t3 TYPE REF TO zif_lnt_node.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    DATA t8 TYPE REF TO zif_lnt_node.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t4->children.
    DATA(t11) = VALUE i( ).
    DATA(t12) = VALUE i( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t4->children.
    t13->load( ).
    t12 = lines( t13->items ).
    DATA(t15) = 1.
    t11 = t12 - t15.
    t11 = t11 + 1.
    DATA t16 TYPE REF TO object.
    t9->load( ).
    READ TABLE t9->items INDEX t11 INTO t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t17 ?= t16.
      DATA t18 TYPE REF TO object.
      t18 = t17->as_ref( ).
      t8 ?= t18.
    ELSE.
      t8 ?= t16.
    ENDIF.
    t3 = t8.
    t2 ?= t3.
    t1 = t2.
    IF xsdbool( t1 IS BOUND ) = abap_true.
      result = t1->get_last_token( ).
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |ExpressionNode, getLastToken, no children|.
    t26 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
    t25 = NEW #( ).
    t25->payload = t26.
    CLEAR t25->source_value.
    DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t33 TYPE REF TO object.
    t33 = t26.
    TRY.
        t25->source_value ?= t33.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t25->source_value IS NOT BOUND.
      TRY.
          t32 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS BOUND.
        t25->source_value = t32->source( ).
      ENDIF.
      IF t25->source_value IS NOT BOUND.
        CREATE OBJECT t25->source_value.
        t25->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t25->source_value->oval = t26.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t25.
  ENDMETHOD.

  METHOD get_all_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t4 = t5->children.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      IF xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        DATA t20 TYPE REF TO object.
        t20 = t9.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t1->load( ).
        APPEND t17 TO t1->items.
        t1->save( ).
      ELSE.
        DATA(t21) = VALUE i( ).
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA t25 TYPE REF TO object.
        t25 = t9.
        t23 ?= t25.
        t22 = t23->get_all_tokens( ).
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t26.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        DATA(t28) = VALUE i( ).
        DO.
          t22->load( ).
          IF t28 >= lines( t22->items ).
            EXIT.
          ENDIF.
          CLEAR t27.
          READ TABLE t22->items INDEX t28 + 1 INTO t27.
          t28 = t28 + 1.
          DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t29.
          CLEAR t26.
          IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t29 ?= t27.
            DATA t30 TYPE REF TO object.
            t30 = t29->as_ref( ).
            t26 ?= t30.
          ELSE.
            t26 ?= t27.
          ENDIF.
          t1->load( ).
          APPEND t26 TO t1->items.
          t1->save( ).
        ENDDO.
        t1->load( ).
        t21 = lines( t1->items ).
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_direct_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t4 = t5->children.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      IF xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        DATA t20 TYPE REF TO object.
        t20 = t9.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t1->load( ).
        APPEND t17 TO t1->items.
        t1->save( ).
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD find_direct_expression.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    t3 = t4->children.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      t14 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_expression_node ).
      t13 = t14.
      IF t14 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zif_lnt_statement_runnable.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA t20 TYPE REF TO object.
        t20 = t8.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t21) = t1.
        DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t22.
        IF t17 IS BOUND.
          t22 = t17->zlnt_builtin_clas_3f891b097658( ).
          WHILE t22 IS BOUND.
            IF t22 = t21.
              t16 = abap_true.
              EXIT.
            ENDIF.
            t22 = t22->parent.
          ENDWHILE.
        ENDIF.
        t13 = t16.
      ENDIF.
      IF t13 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA t27 TYPE REF TO object.
        t27 = t8.
        t25 ?= t27.
        result = t25.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_expression_after_token.
    DATA(t1) = i_text.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      t2->load( ).
      t14 = lines( t2->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      IF xsdbool( t9 < t13 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t18.
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t2->load( ).
      CLEAR t21.
      READ TABLE t2->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t18.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18.
      DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t25.
      DATA t27 TYPE i.
      DATA(t29) = 1.
      t27 = t9 + t29.
      t27 = t27 + 1.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      t2->load( ).
      CLEAR t30.
      READ TABLE t2->items INDEX t27 INTO t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t25.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t30.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t25 ?= t32.
      ELSE.
        t25 ?= t30.
      ENDIF.
      t24 = t25.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_token_node ).
      t34 = t35.
      IF t35 = abap_true.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_token_node.
        DATA t44 TYPE REF TO object.
        t44 = t17.
        t42 ?= t44.
        t39 = t42->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
        DATA(t47) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        DATA t48 TYPE string.
        DATA(t50) = strlen( t1 ).
        t48 = t1.
        IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t48 TO UPPER CASE.
        ELSE.
          t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
        ENDIF.
        t34 = xsdbool( t38 = t48 ).
      ENDIF.
      t33 = t34.
      IF t34 = abap_true.
        t33 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_expression_node ).
      ENDIF.
      IF t33 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA t57 TYPE REF TO object.
        t57 = t24.
        t55 ?= t57.
        result = t55.
        RETURN.
      ENDIF.
      DATA(t61) = 1.
      t9 = t9 + t61.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_direct_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t5 = t6->children.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = t16.
      IF t16 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_statement_runnable.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA t22 TYPE REF TO object.
        t22 = t10.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t23) = t1.
        DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t24.
        IF t19 IS BOUND.
          t24 = t19->zlnt_builtin_clas_3f891b097658( ).
          WHILE t24 IS BOUND.
            IF t24 = t23.
              t18 = abap_true.
              EXIT.
            ENDIF.
            t24 = t24->parent.
          ENDWHILE.
        ENDIF.
        t15 = t18.
      ENDIF.
      IF t15 = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA t28 TYPE REF TO object.
        t28 = t10.
        t26 ?= t28.
        t2->load( ).
        APPEND t26 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_direct_expressions_multi.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t5 = t6->children.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      IF xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        DATA(t20) = VALUE i( ).
        DO.
          t1->load( ).
          IF t20 >= lines( t1->items ).
            EXIT.
          ENDIF.
          CLEAR t19.
          READ TABLE t1->items INDEX t20 + 1 INTO t19.
          t20 = t20 + 1.
          DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t21.
          CLEAR t18.
          IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t21 ?= t19.
            t18 = t21->as_classvalue( ).
          ELSE.
            t18 ?= t19.
          ENDIF.
          DATA(t22) = VALUE abap_bool( ).
          DATA t23 TYPE REF TO zif_lnt_statement_runnable.
          DATA t24 TYPE REF TO zcl_lnt_expression_node.
          DATA t26 TYPE REF TO object.
          t26 = t10.
          t24 ?= t26.
          t23 = t24->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          DATA(t27) = t18.
          DATA t28 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t28.
          IF t23 IS BOUND.
            t28 = t23->zlnt_builtin_clas_3f891b097658( ).
            WHILE t28 IS BOUND.
              IF t28 = t27.
                t22 = abap_true.
                EXIT.
              ENDIF.
              t28 = t28->parent.
            ENDWHILE.
          ENDIF.
          IF t22 = abap_true.
            DATA t30 TYPE REF TO zcl_lnt_expression_node.
            DATA t32 TYPE REF TO object.
            t32 = t10.
            t30 ?= t32.
            t2->load( ).
            APPEND t30 TO t2->items.
            t2->save( ).
            EXIT.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_direct_token_by_text.
    DATA(t1) = i_text.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    t8 = me.
    t7 = t8->children.
    t6 ?= t7.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_token_node ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t21 TYPE string.
        DATA t22 TYPE string.
        DATA t25 TYPE REF TO zcl_lnt_token_node.
        DATA t27 TYPE REF TO object.
        t27 = t12.
        t25 ?= t27.
        t22 = t25->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
        DATA(t30) = strlen( t22 ).
        t21 = t22.
        IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t21 TO UPPER CASE.
        ELSE.
          t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
        ENDIF.
        t17 = xsdbool( t21 = t2 ).
      ENDIF.
      IF t17 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_token_node.
        DATA t37 TYPE REF TO object.
        t37 = t12.
        t35 ?= t37.
        result = t35->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_all_expressions_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t5 = t6->children.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      IF xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zif_lnt_statement_runnable.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA t21 TYPE REF TO object.
      t21 = t10.
      t19 ?= t21.
      t18 = t19->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      DATA(t22) = t1.
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
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA t27 TYPE REF TO object.
        t27 = t10.
        t25 ?= t27.
        t2->load( ).
        APPEND t25 TO t2->items.
        t2->save( ).
      ENDIF.

      DATA(t28) = VALUE i( ).
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA t32 TYPE REF TO object.
      t32 = t10.
      t30 ?= t32.
      t29 = t30->find_all_expressions_recursive( i_type_9913 = t1 ).
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      DO.
        t29->load( ).
        IF t36 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t29->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        t2->load( ).
        APPEND t34 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t28 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t5 = t6->children.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      IF xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zif_lnt_statement_runnable.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA t21 TYPE REF TO object.
      t21 = t10.
      t19 ?= t21.
      t18 = t19->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      DATA(t22) = t1.
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
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA t27 TYPE REF TO object.
        t27 = t10.
        t25 ?= t27.
        t2->load( ).
        APPEND t25 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t28) = VALUE i( ).
        DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA t32 TYPE REF TO object.
        t32 = t10.
        t30 ?= t32.
        t29 = t30->find_all_expressions( i_type_9913 = t1 ).
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        DATA(t36) = VALUE i( ).
        DO.
          t29->load( ).
          IF t36 >= lines( t29->items ).
            EXIT.
          ENDIF.
          CLEAR t35.
          READ TABLE t29->items INDEX t36 + 1 INTO t35.
          t36 = t36 + 1.
          DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t37.
          CLEAR t34.
          IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t37 ?= t35.
            DATA t38 TYPE REF TO object.
            t38 = t37->as_ref( ).
            t34 ?= t38.
          ELSE.
            t34 ?= t35.
          ENDIF.
          t2->load( ).
          APPEND t34 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t28 = lines( t2->items ).
      ENDIF.

    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_expressions_multi.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_recursive.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t8->has = abap_true.
      t8->value = abap_false.
      t2 = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_abstract_node.
    t14 = me.
    t13 = t14->children.
    t12 ?= t13.
    DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t12->load( ).
      IF t20 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t12->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      IF xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE i.
      t10->load( ).
      t26 = lines( t10->items ).
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      DATA(t31) = VALUE i( ).
      DO.
        t1->load( ).
        IF t31 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t30.
        READ TABLE t1->items INDEX t31 + 1 INTO t30.
        t31 = t31 + 1.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        CLEAR t29.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t32 ?= t30.
          t29 = t32->as_classvalue( ).
        ELSE.
          t29 ?= t30.
        ENDIF.
        DATA(t33) = VALUE abap_bool( ).
        DATA t34 TYPE REF TO zif_lnt_statement_runnable.
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        DATA t37 TYPE REF TO object.
        t37 = t18.
        t35 ?= t37.
        t34 = t35->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t38) = t29.
        DATA t39 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t39.
        IF t34 IS BOUND.
          t39 = t34->zlnt_builtin_clas_3f891b097658( ).
          WHILE t39 IS BOUND.
            IF t39 = t38.
              t33 = abap_true.
              EXIT.
            ENDIF.
            t39 = t39->parent.
          ENDWHILE.
        ENDIF.
        IF t33 = abap_true.
          DATA t41 TYPE REF TO zcl_lnt_expression_node.
          DATA t43 TYPE REF TO object.
          t43 = t18.
          t41 ?= t43.
          t10->load( ).
          APPEND t41 TO t10->items.
          t10->save( ).
        ENDIF.
      ENDDO.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      t10->load( ).
      t45 = xsdbool( t26 = lines( t10->items ) ).
      t44 = t45.
      IF t45 = abap_false.
        t44 = xsdbool( t2->value = abap_true ).
      ENDIF.
      IF t44 = abap_true.
        DATA(t53) = VALUE i( ).
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA t57 TYPE REF TO object.
        t57 = t18.
        t55 ?= t57.
        DATA t61 TYPE abap_bool.
        t61 = t2->value.
        DATA(t63) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t63->has = abap_true.
        t63->value = t61.
        t54 = t55->find_all_expressions_multi( i_type_9913 = t1 i_recursive = t63 ).
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        DATA t66 TYPE REF TO object.
        CLEAR t66.
        DATA(t67) = VALUE i( ).
        DO.
          t54->load( ).
          IF t67 >= lines( t54->items ).
            EXIT.
          ENDIF.
          CLEAR t66.
          READ TABLE t54->items INDEX t67 + 1 INTO t66.
          t67 = t67 + 1.
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t68.
          CLEAR t65.
          IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t68 ?= t66.
            DATA t69 TYPE REF TO object.
            t69 = t68->as_ref( ).
            t65 ?= t69.
          ELSE.
            t65 ?= t66.
          ENDIF.
          t10->load( ).
          APPEND t65 TO t10->items.
          t10->save( ).
        ENDDO.
        t10->load( ).
        t53 = lines( t10->items ).
      ENDIF.
    ENDDO.
    result = t10.

  ENDMETHOD.

  METHOD find_first_expression.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_statement_runnable( me->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ) ).
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
      result = me.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    t12 = me.
    t11 = t12->children.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t10->load( ).
      IF t18 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t10->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zif_lnt_statement_runnable.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t27 TYPE REF TO object.
      t27 = t16.
      t25 ?= t27.
      t24 = t25->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      DATA(t28) = t1.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      IF t24 IS BOUND.
        t29 = t24->zlnt_builtin_clas_3f891b097658( ).
        WHILE t29 IS BOUND.
          IF t29 = t28.
            t23 = abap_true.
            EXIT.
          ENDIF.
          t29 = t29->parent.
        ENDWHILE.
      ENDIF.
      IF t23 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA t34 TYPE REF TO object.
        t34 = t16.
        t32 ?= t34.
        result = t32.
        RETURN.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA t40 TYPE REF TO object.
      t40 = t16.
      t38 ?= t40.
      t36 = t38->find_first_expression( i_type_9913 = t1 ).
      IF xsdbool( t36 IS BOUND ) = abap_true.
        result = t36.
        RETURN.
      ENDIF.


    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD add_child.
    DATA t1 TYPE REF TO zif_lnt_union_4cf1d054.
    t1 ?= i_n_0c97.
    me->a_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_n_2941 = t1 ).

  ENDMETHOD.

  METHOD get_db65.
    result = CAST zif_lnt_statement_runnable( me->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ) ).

  ENDMETHOD.

  METHOD set_children_value.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 ?= i_children_9020.
    result = me->s_c_in_sr_ab_nd_ex_nd_ts_ex_nd( i_children_9020 = t3 ).

  ENDMETHOD.

  METHOD set_children.
    DATA(t2) = i_children_9020.
    super->set_children( i_children_9020 = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t4 = t5->children.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t15) = CONV f( me->token_count ).
      DATA t16 TYPE f.
      t16 = t9->count_tokens( ).
      me->token_count = t15 + t16.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokenCount`.
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1007_3086b49acaf2.
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

  METHOD zif_lnt_union_734b3529~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
ENDCLASS.
