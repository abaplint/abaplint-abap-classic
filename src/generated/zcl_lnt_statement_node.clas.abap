* TS: src/abap/nodes/statement_node.ts:20:1 StatementNode
CLASS zcl_lnt_statement_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_node CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_bb14dc41.
    INTERFACES zif_lnt_union_8249fcb1.
    INTERFACES zif_lnt_union_1e9858bf.
    INTERFACES zif_lnt_union_734b3529.
    DATA statement TYPE REF TO zif_lnt_statement.
    DATA colon TYPE REF TO zcl_lnt_abstract_token.
    DATA pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_statement TYPE REF TO zif_lnt_statement i_colon TYPE REF TO zcl_lnt_abstract_token OPTIONAL i_pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    METHODS gt_in_sr_ab_nd_st_nd_ts_stt_nd RETURNING VALUE(result) TYPE REF TO zif_lnt_statement.
    METHODS get_colon RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS get_pragmas RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS s_c_in_sr_ab_nd_st_nd_ts_st_nd IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_tokens RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS includes_token IMPORTING i_search_b3ca TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_token_nodes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS concat_tokens RETURNING VALUE(result) TYPE string.
    METHODS concat_tokens_virtual RETURNING VALUE(result) TYPE string.
    METHODS cnct_tkns_wtht_strng_and_cmmnt RETURNING VALUE(result) TYPE string.
    METHODS get_terminator RETURNING VALUE(result) TYPE string.
    METHODS get_first_token REDEFINITION.
    METHODS get_last_token REDEFINITION.
    METHODS find_direct_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_direct_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_token_by_text IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS find_first_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_all_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_token_sequence_position IMPORTING i_first TYPE string i_second TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS find_expression_after_token IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_expressions_after_token IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS to_tokens IMPORTING i_b TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS to_token_nodess IMPORTING i_b TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_db65 REDEFINITION.
    METHODS set_children_value IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS set_children REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_statement_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_statement.
    DATA(t2) = i_colon.
    DATA(t3) = i_pragmas.
    super->constructor( ).
    me->statement = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statement`.
    me->colon = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `colon`.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = xsdbool( t7 IS INITIAL ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_statement_node_module=>zlnt_builtin_init_8ada772f76fa = abap_false.
        zcl_lnt_statement_node_module=>zlnt_builtin_init_727465b8053b( ).
      ENDIF.
      t12 = zcl_lnt_statement_node_module=>empty_pragmas.
      t9 = t12.
    ELSE.
      t9 = t7.
    ENDIF.
    me->pragmas = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `pragmas`.
  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_st_nd_ts_stt_nd.
    result = me->statement.

  ENDMETHOD.

  METHOD get_colon.
    result = me->colon.

  ENDMETHOD.

  METHOD get_pragmas.
    result = me->pragmas.

  ENDMETHOD.

  METHOD s_c_in_sr_ab_nd_st_nd_ts_st_nd.
    DATA(t2) = i_children_9020.
    DATA t3 TYPE REF TO object.
    t3 = me->set_children( i_children_9020 = t2 ).
    result ?= t3.

  ENDMETHOD.

  METHOD get_start.
    DATA(t3) = CAST zcl_lnt_abstract_token( me->get_first_token( ) ).
    DATA t4 TYPE REF TO zcl_lnt_position.
    t4 = t3->start.
    result = t4.

  ENDMETHOD.

  METHOD get_end.
    DATA(t2) = CAST zcl_lnt_abstract_token( me->get_last_token( ) ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    t4 = t2.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE f.
    DATA t9 TYPE REF TO zcl_lnt_position.
    t9 = t4->start.
    DATA t11 TYPE f.
    t11 = t9->row.
    t7 = t11.
    DATA t13 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t14 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t16 TYPE REF TO zcl_lnt_position.
    t16 = t4->start.
    DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t18 = t16->col.
    t14 = t18.
    DATA t20 TYPE f.
    DATA t22 TYPE string.
    t22 = t4->str.
    t20 = strlen( t22 ).
    DATA(t25) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t25->has = abap_true.
    t25->value = t20.
    t13 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t14 right = t25 op = `+` ).
    t6 = NEW zcl_lnt_position( i_row = t7 i_col = t13 ).
    result = t6.

  ENDMETHOD.

  METHOD get_tokens.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
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
      DATA t25 TYPE i.
      t1->load( ).
      t25 = lines( t1->items ).
      t14 = t25.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD includes_token.
    DATA(t1) = i_search_b3ca.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_tokens( ) ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE REF TO zcl_lnt_position.
      DATA t12 TYPE REF TO zcl_lnt_position.
      t12 = t3->start.
      t9 = t12.
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t17 TYPE REF TO zcl_lnt_position.
      t17 = t1->start.
      t14 = t17.
      t8 = t9->equals( i_p = t14 ).
      IF t8 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_token_nodes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
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
      t15 = me->to_token_nodess( i_b = t16 ).
      DATA t18 TYPE REF TO zcl_lnt_token_node.
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
      DATA t25 TYPE i.
      t1->load( ).
      t25 = lines( t1->items ).
      t14 = t25.
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
      DATA t10 TYPE abap_bool.
      t10 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_pragma ).
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t14) = ||.
      t12 = xsdbool( t1 = t14 ).
      IF t12 = abap_true.
        DATA t18 TYPE string.
        t18 = t5->str.
        t1 = t18.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE abap_bool.
        t22 = xsdbool( t3 IS BOUND ).
        t21 = t22.
        IF t22 = abap_true.
          DATA t24 TYPE abap_bool.
          DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t26 TYPE f.
          DATA t28 TYPE string.
          DATA t32 TYPE string.
          t32 = t3->str.
          t28 = t32.
          t26 = strlen( t28 ).
          DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t35->has = abap_true.
          t35->value = t26.
          DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t42 TYPE REF TO zcl_lnt_position.
          t42 = t3->start.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t44 = t42->col.
          t36 = t44.
          t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t35 right = t36 op = `+` ).
          DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t51 TYPE REF TO zcl_lnt_position.
          t51 = t5->start.
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t53 = t51->col.
          t46 = t53.
          t24 = zlnt_runtime_numb_290eb04a9758=>compare( left = t25 right = t46 op = `==` ).
          t21 = t24.
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE f.
          DATA t62 TYPE REF TO zcl_lnt_position.
          t62 = t3->start.
          DATA t64 TYPE f.
          t64 = t62->row.
          t56 = t64.
          DATA t66 TYPE f.
          DATA t71 TYPE REF TO zcl_lnt_position.
          t71 = t5->start.
          DATA t73 TYPE f.
          t73 = t71->row.
          t66 = t73.
          t55 = xsdbool( t56 = t66 ).
          t20 = t55.
        ENDIF.
        IF t20 = abap_true.
          DATA t75 TYPE string.
          DATA(t76) = t1.
          DATA t77 TYPE string.
          DATA t80 TYPE string.
          t80 = t5->str.
          t77 = t80.
          DATA(t82) = strlen( t76 ).
          t75 = |{ t76 }{ t77 }|.
          t1 = t75.
        ELSE.
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = t1.
          DATA(t86) = | |.
          DATA(t87) = strlen( t85 ).
          t84 = |{ t85 }{ t86 }|.
          DATA t88 TYPE string.
          DATA t91 TYPE string.
          t91 = t5->str.
          t88 = t91.
          DATA(t93) = strlen( t84 ).
          t83 = |{ t84 }{ t88 }|.
          t1 = t83.
        ENDIF.
      ENDIF.
      t3 = t5.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD concat_tokens_virtual.
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
      DATA t10 TYPE abap_bool.
      t10 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_pragma ).
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_virtual_position.
      CLEAR t12.
      DATA t14 TYPE REF TO zcl_lnt_position.
      CLEAR t14.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      t16 = t3.
      DATA t18 TYPE REF TO zcl_lnt_position.
      CLEAR t18.
      DATA(t19) = xsdbool( t16 IS INITIAL ).
      IF t19 = abap_true.
        CLEAR t18.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_position.
        t26 = t16->start.
        t18 = t26.
      ENDIF.
      t14 = t18.
      DATA t28 TYPE REF TO zcl_lnt_virtual_position.
      CLEAR t28.
      DATA(t29) = xsdbool( t14 IS INITIAL ).
      IF t29 = abap_true.
        CLEAR t28.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_virtual_position.
        DATA t33 TYPE REF TO zcl_lnt_position.
        t33 = t14.
        t32 ?= t33.
        t28 = t32.
      ENDIF.
      t12 = t28.
      DATA t35 TYPE REF TO zcl_lnt_virtual_position.
      CLEAR t35.
      DATA t37 TYPE REF TO zcl_lnt_position.
      CLEAR t37.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      t39 = t5.
      DATA t41 TYPE REF TO zcl_lnt_position.
      CLEAR t41.
      DATA(t42) = xsdbool( t39 IS INITIAL ).
      IF t42 = abap_true.
        CLEAR t41.
      ELSE.
        DATA t48 TYPE REF TO zcl_lnt_position.
        t48 = t39->start.
        t41 = t48.
      ENDIF.
      t37 = t41.
      DATA t50 TYPE REF TO zcl_lnt_virtual_position.
      CLEAR t50.
      DATA(t51) = xsdbool( t37 IS INITIAL ).
      IF t51 = abap_true.
        CLEAR t50.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_virtual_position.
        DATA t55 TYPE REF TO zcl_lnt_position.
        t55 = t37.
        t54 ?= t55.
        t50 = t54.
      ENDIF.
      t35 = t50.
      DATA t57 TYPE abap_bool.
      DATA(t59) = ||.
      t57 = xsdbool( t1 = t59 ).
      IF t57 = abap_true.
        DATA t63 TYPE string.
        t63 = t5->str.
        t1 = t63.
      ELSE.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE abap_bool.
        DATA t69 TYPE abap_bool.
        t69 = xsdbool( t3 IS BOUND ).
        t68 = t69.
        IF t69 = abap_true.
          DATA t71 TYPE abap_bool.
          t71 = xsdbool( t12 IS BOUND ).
          t68 = t71.
        ENDIF.
        t67 = t68.
        IF t68 = abap_true.
          DATA t73 TYPE abap_bool.
          t73 = xsdbool( t35 IS BOUND ).
          t67 = t73.
        ENDIF.
        t66 = t67.
        IF t67 = abap_true.
          DATA t75 TYPE abap_bool.
          DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t77 TYPE f.
          DATA t79 TYPE string.
          DATA t83 TYPE string.
          t83 = t3->str.
          t79 = t83.
          t77 = strlen( t79 ).
          DATA(t86) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t86->has = abap_true.
          t86->value = t77.
          DATA t87 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t88 TYPE REF TO zcl_lnt_virtual_position.
          t88 = t12.
          t87 = t88->vcol.
          t76 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t86 right = t87 op = `+` ).
          DATA t90 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t91 TYPE REF TO zcl_lnt_virtual_position.
          t91 = t35.
          t90 = t91->vcol.
          t75 = zlnt_runtime_numb_290eb04a9758=>compare( left = t76 right = t90 op = `==` ).
          t66 = t75.
        ENDIF.
        t65 = t66.
        IF t66 = abap_true.
          DATA t93 TYPE abap_bool.
          DATA t94 TYPE f.
          DATA t95 TYPE REF TO zcl_lnt_virtual_position.
          t95 = t12.
          t94 = t95->vrow.
          DATA t97 TYPE f.
          DATA t98 TYPE REF TO zcl_lnt_virtual_position.
          t98 = t35.
          t97 = t98->vrow.
          t93 = xsdbool( t94 = t97 ).
          t65 = t93.
        ENDIF.
        IF t65 = abap_true.
          DATA t100 TYPE string.
          DATA(t101) = t1.
          DATA t102 TYPE string.
          DATA t105 TYPE string.
          t105 = t5->str.
          t102 = t105.
          DATA(t107) = strlen( t101 ).
          t100 = |{ t101 }{ t102 }|.
          t1 = t100.
        ELSE.
          DATA t108 TYPE string.
          DATA t109 TYPE string.
          DATA(t110) = t1.
          DATA(t111) = | |.
          DATA(t112) = strlen( t110 ).
          t109 = |{ t110 }{ t111 }|.
          DATA t113 TYPE string.
          DATA t116 TYPE string.
          t116 = t5->str.
          t113 = t116.
          DATA(t118) = strlen( t109 ).
          t108 = |{ t109 }{ t113 }|.
          t1 = t108.
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
        DATA t17 TYPE abap_bool.
        t17 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_token ).
        t14 = t17.
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        DATA t19 TYPE abap_bool.
        t19 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_lx_string_template ).
        t13 = t19.
      ENDIF.
      t12 = t13.
      IF t13 = abap_false.
        DATA t21 TYPE abap_bool.
        t21 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_begin ).
        t12 = t21.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t23 TYPE abap_bool.
        t23 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_middle ).
        t11 = t23.
      ENDIF.
      t10 = t11.
      IF t11 = abap_false.
        DATA t25 TYPE abap_bool.
        t25 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_end ).
        t10 = t25.
      ENDIF.
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA(t29) = ||.
      t27 = xsdbool( t1 = t29 ).
      IF t27 = abap_true.
        DATA t33 TYPE string.
        t33 = t5->str.
        t1 = t33.
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE abap_bool.
        t37 = xsdbool( t3 IS BOUND ).
        t36 = t37.
        IF t37 = abap_true.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t41 TYPE f.
          DATA t43 TYPE string.
          DATA t47 TYPE string.
          t47 = t3->str.
          t43 = t47.
          t41 = strlen( t43 ).
          DATA(t50) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t50->has = abap_true.
          t50->value = t41.
          DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t57 TYPE REF TO zcl_lnt_position.
          t57 = t3->start.
          DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t59 = t57->col.
          t51 = t59.
          t40 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t50 right = t51 op = `+` ).
          DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t66 TYPE REF TO zcl_lnt_position.
          t66 = t5->start.
          DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t68 = t66->col.
          t61 = t68.
          t39 = zlnt_runtime_numb_290eb04a9758=>compare( left = t40 right = t61 op = `==` ).
          t36 = t39.
        ENDIF.
        t35 = t36.
        IF t36 = abap_true.
          DATA t70 TYPE abap_bool.
          DATA t71 TYPE f.
          DATA t77 TYPE REF TO zcl_lnt_position.
          t77 = t3->start.
          DATA t79 TYPE f.
          t79 = t77->row.
          t71 = t79.
          DATA t81 TYPE f.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t5->start.
          DATA t88 TYPE f.
          t88 = t86->row.
          t81 = t88.
          t70 = xsdbool( t71 = t81 ).
          t35 = t70.
        ENDIF.
        IF t35 = abap_true.
          DATA t90 TYPE string.
          DATA(t91) = t1.
          DATA t92 TYPE string.
          DATA t95 TYPE string.
          t95 = t5->str.
          t92 = t95.
          DATA(t97) = strlen( t91 ).
          t90 = |{ t91 }{ t92 }|.
          t1 = t90.
        ELSE.
          DATA t98 TYPE string.
          DATA t99 TYPE string.
          DATA(t100) = t1.
          DATA(t101) = | |.
          DATA(t102) = strlen( t100 ).
          t99 = |{ t100 }{ t101 }|.
          DATA t103 TYPE string.
          DATA t106 TYPE string.
          t106 = t5->str.
          t103 = t106.
          DATA(t108) = strlen( t99 ).
          t98 = |{ t99 }{ t103 }|.
          t1 = t98.
        ENDIF.
      ENDIF.
      t3 = t5.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_terminator.
    DATA(t3) = CAST zcl_lnt_abstract_token( me->get_last_token( ) ).
    DATA t4 TYPE string.
    t4 = t3->str.
    result = t4.

  ENDMETHOD.

  METHOD get_first_token.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abstract_node.
    t3 = me.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t3->children.
    t2 = t5.
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
        CLEAR t11.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t12 = t7->get_first_token( ).
      result = t12.
      RETURN.
    ENDDO.
    DATA t14 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t15 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = VALUE string( ).
    DATA(t19) = |StatementNode, getFirstToken, no children, |.
    DATA(t20) = VALUE string( ).
    DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t22) = CAST zif_lnt_statement( me->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ) ).
    t21 = t22->zlnt_builtin_clas_3f891b097658( ).
    t20 = t21->name.
    DATA(t23) = strlen( t19 ).
    t18 = |{ t19 }{ t20 }|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t18.
    t16 = t24.
    t15 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t16 ).
    t14 = NEW #( ).
    t14->payload = t15.
    CLEAR t14->source_value.
    DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t27 TYPE REF TO object.
    t27 = t15.
    TRY.
        t14->source_value ?= t27.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t14->source_value IS NOT BOUND.
      TRY.
          t26 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS BOUND.
        t14->source_value = t26->source( ).
      ENDIF.
      IF t14->source_value IS NOT BOUND.
        CREATE OBJECT t14->source_value.
        t14->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t14->source_value->oval = t15.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t14.
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
    DATA(t20) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = xsdbool( t1 IS INITIAL ).
    t25 = xsdbool( t26 = abap_false ).
    t20 = t25.
    IF t20 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA t29 TYPE REF TO zif_lnt_union_4cf1d054.
      t29 = t1.
      t28 = t29->get_last_token( ).
      result = t28.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t32 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |StatementNode, getLastToken, no children|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t33 = t36.
    t32 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t33 ).
    t31 = NEW #( ).
    t31->payload = t32.
    CLEAR t31->source_value.
    DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t39 TYPE REF TO object.
    t39 = t32.
    TRY.
        t31->source_value ?= t39.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t31->source_value IS NOT BOUND.
      TRY.
          t38 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS BOUND.
        t31->source_value = t38->source( ).
      ENDIF.
      IF t31->source_value IS NOT BOUND.
        CREATE OBJECT t31->source_value.
        t31->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t31->source_value->oval = t32.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t31.
  ENDMETHOD.

  METHOD find_direct_expression.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t4->children.
    t3 = t6.
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

  METHOD find_direct_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
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
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
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
        DATA t19 TYPE abap_bool.
        t19 = abap_false.
        DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        DATA(t24) = VALUE i( ).
        DO.
          t1->load( ).
          IF t24 >= lines( t1->items ).
            EXIT.
          ENDIF.
          CLEAR t23.
          READ TABLE t1->items INDEX t24 + 1 INTO t23.
          t24 = t24 + 1.
          DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t25.
          CLEAR t22.
          IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t25 ?= t23.
            t22 = t25->as_classvalue( ).
          ELSE.
            t22 ?= t23.
          ENDIF.
          DATA(t26) = VALUE abap_bool( ).
          DATA t27 TYPE REF TO zif_lnt_statement_runnable.
          DATA t28 TYPE REF TO zcl_lnt_expression_node.
          DATA t30 TYPE REF TO object.
          t30 = t10.
          t28 ?= t30.
          t27 = t28->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          DATA(t31) = t22.
          DATA t32 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t32.
          IF t27 IS BOUND.
            t32 = t27->zlnt_builtin_clas_3f891b097658( ).
            WHILE t32 IS BOUND.
              IF t32 = t31.
                t26 = abap_true.
                EXIT.
              ENDIF.
              t32 = t32->parent.
            ENDWHILE.
          ENDIF.
          IF t26 = abap_true.
            t19 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t18 = t19.
        t15 = t18.
      ENDIF.
      IF t15 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        DATA t38 TYPE REF TO object.
        t38 = t10.
        t36 ?= t38.
        t2->load( ).
        APPEND t36 TO t2->items.
        t2->save( ).
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
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t8->children.
    t7 = t10.
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
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE string.
        DATA t22 TYPE string.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_token_node.
        DATA t27 TYPE REF TO object.
        t27 = t12.
        t25 ?= t27.
        t24 = t25->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t28 TYPE string.
        t28 = t24->str.
        t22 = t28.
        DATA(t30) = strlen( t22 ).
        t21 = t22.
        IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t21 TO UPPER CASE.
        ELSE.
          t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
        ENDIF.
        t20 = xsdbool( t21 = t2 ).
        t17 = t20.
      ENDIF.
      IF t17 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        DATA t35 TYPE REF TO zcl_lnt_token_node.
        DATA t37 TYPE REF TO object.
        t37 = t12.
        t35 ?= t37.
        t34 = t35->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        result = t34.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_first_expression.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t4->children.
    t3 = t6.
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
      t13 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_token_node ).
      IF t13 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zif_lnt_statement_runnable.
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        DATA t19 TYPE REF TO object.
        t19 = t8.
        t17 ?= t19.
        t16 = t17->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        DATA(t20) = t1.
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
        IF t15 = abap_true.
          DATA t24 TYPE REF TO zcl_lnt_expression_node.
          DATA t26 TYPE REF TO object.
          t26 = t8.
          t24 ?= t26.
          result = t24.
          RETURN.
        ELSE.
          DATA t28 TYPE REF TO zcl_lnt_expression_node.
          DATA t29 TYPE REF TO zcl_lnt_expression_node.
          DATA t30 TYPE REF TO zcl_lnt_expression_node.
          DATA t32 TYPE REF TO object.
          t32 = t8.
          t30 ?= t32.
          t29 = t30->find_first_expression( i_type_9913 = t1 ).
          t28 = t29.
          DATA t34 TYPE abap_bool.
          t34 = xsdbool( t28 IS BOUND ).
          IF t34 = abap_true.
            result = t28.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_all_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
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
      t15 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_token_node ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
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
          DATA t41 TYPE i.
          t2->load( ).
          t41 = lines( t2->items ).
          t28 = t41.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_expressions_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
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
      t15 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_token_node ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
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
      DATA t41 TYPE i.
      t2->load( ).
      t41 = lines( t2->items ).
      t28 = t41.
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
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_abstract_node.
    t14 = me.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t16 = t14->children.
    t13 = t16.
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
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_token_node ).
      IF t23 = abap_true.
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
      DATA t47 TYPE i.
      t10->load( ).
      t47 = lines( t10->items ).
      t45 = xsdbool( t26 = t47 ).
      t44 = t45.
      IF t45 = abap_false.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE abap_bool.
        t50 = t2->value.
        t49 = xsdbool( t50 = abap_true ).
        t44 = t49.
      ENDIF.
      IF t44 = abap_true.
        DATA(t53) = VALUE i( ).
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA t57 TYPE REF TO object.
        t57 = t18.
        t55 ?= t57.
        DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t59.
        DATA t61 TYPE abap_bool.
        t61 = t2->value.
        DATA(t63) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t63->has = abap_true.
        t63->value = t61.
        t59 = t63.
        t54 = t55->find_all_expressions_multi( i_type_9913 = t1 i_recursive = t59 ).
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
        DATA t72 TYPE i.
        t10->load( ).
        t72 = lines( t10->items ).
        t53 = t72.
      ENDIF.
    ENDDO.
    result = t10.

  ENDMETHOD.

  METHOD find_token_sequence_position.
    DATA(t1) = i_first.
    DATA(t2) = i_second.
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
        DATA t17 TYPE abap_bool.
        t17 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_token ).
        t14 = t17.
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        DATA t19 TYPE abap_bool.
        t19 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_lx_string_template ).
        t13 = t19.
      ENDIF.
      t12 = t13.
      IF t13 = abap_false.
        DATA t21 TYPE abap_bool.
        t21 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_begin ).
        t12 = t21.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t23 TYPE abap_bool.
        t23 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_middle ).
        t11 = t23.
      ENDIF.
      t10 = t11.
      IF t11 = abap_false.
        DATA t25 TYPE abap_bool.
        t25 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_string_template_end ).
        t10 = t25.
      ENDIF.
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      t29 = xsdbool( t3 IS BOUND ).
      t28 = t29.
      IF t29 = abap_true.
        DATA(t31) = VALUE abap_bool( ).
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA t36 TYPE string.
        t36 = t5->str.
        t33 = t36.
        DATA(t38) = strlen( t33 ).
        t32 = t33.
        IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t32 TO UPPER CASE.
        ELSE.
          t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
        ENDIF.
        t31 = xsdbool( t32 = t2 ).
        t28 = t31.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        t44 = t3.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA(t48) = xsdbool( t44 IS INITIAL ).
        IF t48 = abap_true.
          CLEAR t47.
        ELSE.
          DATA t54 TYPE string.
          t54 = t44->str.
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t54.
          t47 = t56.
        ENDIF.
        t42 = t47.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        IF t42 IS INITIAL.
          t58 = abap_true.
        ELSEIF t42->has = abap_false.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          CLEAR t57.
        ELSE.
          DATA t61 TYPE string.
          DATA t62 TYPE string.
          t62 = t42->value.
          DATA(t64) = strlen( t62 ).
          t61 = t62.
          IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t61 TO UPPER CASE.
          ELSE.
            t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
          ENDIF.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t61.
          t57 = t65.
        ENDIF.
        t41 = t57.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA t68 TYPE string.
        DATA(t70) = strlen( t1 ).
        t68 = t1.
        IF t68 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t68 TO UPPER CASE.
        ELSE.
          t68 = zlnt_runtime_uppe_91169605024d=>full( t68 ).
        ENDIF.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t68.
        t66 = t71.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        IF t41 IS BOUND.
          t73 = t41->has.
        ENDIF.
        IF t66 IS BOUND.
          t74 = t66->has.
        ENDIF.
        IF t73 = t74.
          IF t73 = abap_false.
            t40 = abap_true.
          ELSEIF t41->value = t66->value.
            t40 = abap_true.
          ENDIF.
        ENDIF.
        t27 = t40.
      ENDIF.
      IF t27 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_position.
        t81 = t3->start.
        result = t81.
        RETURN.
      ELSE.
        t3 = t5.
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
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t11 TYPE abap_bool.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      t2->load( ).
      t14 = lines( t2->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
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
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA t42 TYPE REF TO zcl_lnt_token_node.
        DATA t44 TYPE REF TO object.
        t44 = t17.
        t42 ?= t44.
        t41 = t42->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t45 TYPE string.
        t45 = t41->str.
        t39 = t45.
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
        t37 = xsdbool( t38 = t48 ).
        t34 = t37.
      ENDIF.
      t33 = t34.
      IF t34 = abap_true.
        DATA t51 TYPE abap_bool.
        t51 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_expression_node ).
        t33 = t51.
      ENDIF.
      IF t33 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA t57 TYPE REF TO object.
        t57 = t24.
        t55 ?= t57.
        result = t55.
        RETURN.
      ENDIF.
      DATA t59 TYPE i.
      DATA(t61) = 1.
      t59 = t9 + t61.
      t9 = t59.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_expressions_after_token.
    DATA(t1) = i_text.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE i.
    t11 = 0.
    DO.
      DATA t13 TYPE abap_bool.
      DATA t15 TYPE i.
      DATA t16 TYPE i.
      t2->load( ).
      t16 = lines( t2->items ).
      DATA(t18) = 1.
      t15 = t16 - t18.
      t13 = xsdbool( t11 < t15 ).
      IF t13 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t20.
      DATA(t22) = t11.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      t2->load( ).
      CLEAR t23.
      READ TABLE t2->items INDEX t22 INTO t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t20.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t23.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t20 ?= t25.
      ELSE.
        t20 ?= t23.
      ENDIF.
      t19 = t20.
      DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t27.
      DATA t29 TYPE i.
      DATA(t31) = 1.
      t29 = t11 + t31.
      t29 = t29 + 1.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      t2->load( ).
      CLEAR t32.
      READ TABLE t2->items INDEX t29 INTO t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t27.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t27 ?= t34.
      ELSE.
        t27 ?= t32.
      ENDIF.
      t26 = t27.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      t37 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_token_node ).
      t36 = t37.
      IF t37 = abap_true.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE string.
        DATA t41 TYPE string.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA t44 TYPE REF TO zcl_lnt_token_node.
        DATA t46 TYPE REF TO object.
        t46 = t19.
        t44 ?= t46.
        t43 = t44->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t47 TYPE string.
        t47 = t43->str.
        t41 = t47.
        DATA(t49) = strlen( t41 ).
        t40 = t41.
        IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t40 TO UPPER CASE.
        ELSE.
          t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
        ENDIF.
        DATA t50 TYPE string.
        DATA(t52) = strlen( t1 ).
        t50 = t1.
        IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t50 TO UPPER CASE.
        ELSE.
          t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
        ENDIF.
        t39 = xsdbool( t40 = t50 ).
        t36 = t39.
      ENDIF.
      t35 = t36.
      IF t36 = abap_true.
        DATA t53 TYPE abap_bool.
        t53 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_expression_node ).
        t35 = t53.
      ENDIF.
      IF t35 = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        DATA t58 TYPE REF TO object.
        t58 = t26.
        t56 ?= t58.
        t9->load( ).
        APPEND t56 TO t9->items.
        t9->save( ).
      ENDIF.
      DATA t59 TYPE i.
      DATA(t61) = 1.
      t59 = t11 + t61.
      t11 = t59.
    ENDDO.
    result = t9.

  ENDMETHOD.

  METHOD to_tokens.
    DATA(t1) = i_b.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_token_node ).
    IF t4 = abap_true.
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
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_token_node ).
      IF t19 = abap_true.
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
        DATA t36 TYPE i.
        t2->load( ).
        t36 = lines( t2->items ).
        t26 = t36.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD to_token_nodess.
    DATA(t1) = i_b.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_token_node ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_token_node.
      DATA t9 TYPE REF TO object.
      t9 = t1.
      t7 ?= t9.
      t2->load( ).
      APPEND t7 TO t2->items.
      t2->save( ).
      result = t2.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t11 = t1->get_children( ).
    DATA t13 TYPE REF TO zif_lnt_node.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t11->load( ).
      IF t15 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t11->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_token_node ).
      IF t18 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_token_node.
        DATA t23 TYPE REF TO object.
        t23 = t13.
        t21 ?= t23.
        t2->load( ).
        APPEND t21 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t24) = VALUE i( ).
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t25 = me->to_token_nodess( i_b = t13 ).
        DATA t27 TYPE REF TO zcl_lnt_token_node.
        CLEAR t27.
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        DATA(t29) = VALUE i( ).
        DO.
          t25->load( ).
          IF t29 >= lines( t25->items ).
            EXIT.
          ENDIF.
          CLEAR t28.
          READ TABLE t25->items INDEX t29 + 1 INTO t28.
          t29 = t29 + 1.
          DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t30.
          CLEAR t27.
          IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t30 ?= t28.
            DATA t31 TYPE REF TO object.
            t31 = t30->as_ref( ).
            t27 ?= t31.
          ELSE.
            t27 ?= t28.
          ENDIF.
          t2->load( ).
          APPEND t27 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA t34 TYPE i.
        t2->load( ).
        t34 = lines( t2->items ).
        t24 = t34.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_db65.
    result = CAST zif_lnt_statement( me->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ) ).

  ENDMETHOD.

  METHOD set_children_value.
    DATA t2 TYPE REF TO zcl_lnt_statement_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 ?= i_children_9020.
    t2 = me->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_children.
    DATA(t1) = i_children_9020.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    t1->load( ).
    t3 = lines( t1->items ).
    DATA(t5) = 0.
    t2 = xsdbool( t3 = t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = |statement: zero children|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = t11.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t7.
      TRY.
          t6->source_value ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6->source_value IS NOT BOUND.
        TRY.
            t13 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t6->source_value = t13->source( ).
        ENDIF.
        IF t6->source_value IS NOT BOUND.
          CREATE OBJECT t6->source_value.
          t6->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->source_value->oval = t7.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t6.
    ENDIF.
    super->set_children( i_children_9020 = t1 ).
    result = me.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1008_5e4f79d1ad51.
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

  METHOD zif_lnt_union_8249fcb1~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~set_children.
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
