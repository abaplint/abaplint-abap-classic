* TS: src/abap/2_statements/statement_parser.ts:59:1 WorkArea
CLASS zcl_lnt_st_work_area DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA file TYPE REF TO zif_lnt_file.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS add_unknown IMPORTING i_pre TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_post TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_colon TYPE REF TO zcl_lnt_abstract_token.
    METHODS to_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_istatement_result.
    METHODS tokens_to_nodes IMPORTING i_tokens1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_tokens2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_work_area IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_tokens.
    me->file = i_file.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
    me->tokens = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->statements = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
  ENDMETHOD.

  METHOD add_unknown.
    DATA(t1) = i_pre.
    DATA(t2) = i_post.
    DATA(t3) = i_colon.
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t6) = NEW zcl_lnt_unknown( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = NEW zcl_lnt_statement_node( i_statement = t6 i_colon = t3 i_pragmas = t8 ).
    t4 = t5.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t11 = me->tokens_to_nodes( i_tokens1 = t1 i_tokens2 = t2 ).
    t9 = t4->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t11 ).
    DATA(t14) = me->statements.
    t14->load( ).
    APPEND t4 TO t14->items.
    t14->save( ).
  ENDMETHOD.

  METHOD to_result.
    DATA t1 TYPE REF TO zcl_lnt_istatement_result.
    DATA t2 TYPE REF TO zif_lnt_file.
    t2 = me->file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = me->tokens.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->statements.
    t1 = NEW zcl_lnt_istatement_result( i_file = t2 i_tokens = t4 i_statements = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t9 ).
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t10 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t11) = |file|.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t11 p1 = t12 ).
    DATA(t13) = |tokens|.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t13 p1 = t14 ).
    ENDIF.
    DATA(t15) = |statements|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD tokens_to_nodes.
    DATA(t1) = i_tokens1.
    DATA(t2) = i_tokens2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_token_node.
      t12 = NEW zcl_lnt_token_node( i_token = t6 ).
      t3->load( ).
      APPEND t12 TO t3->items.
      t3->save( ).
    ENDDO.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t2->load( ).
      IF t17 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t2->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_token_node.
      t21 = NEW zcl_lnt_token_node( i_token = t15 ).
      t3->load( ).
      APPEND t21 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d360_4e63564df591.
  ENDMETHOD.
ENDCLASS.
