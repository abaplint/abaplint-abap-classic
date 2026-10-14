* TS: src/abap/2_statements/statement_parser.ts:59:1 WorkArea
CLASS zcl_lnt_st_work_area DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA file TYPE REF TO zif_lnt_file.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS add_unknown IMPORTING i_pre TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_post TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_colon TYPE REF TO zcl_lnt_abstract_token.
    METHODS to_result RETURNING VALUE(result) TYPE REF TO zcl_lnt_istatement_result.
    METHODS tokens_to_nodes IMPORTING i_tokens1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_tokens2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_work_area IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t3) = CAST zif_lnt_file( t1 ).
    me->file = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->tokens = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->statements = t5.
  ENDMETHOD.
  METHOD add_unknown.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_pre ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_post ).
    DATA(t3) = CAST zcl_lnt_abstract_token( i_colon ).
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t6) = NEW zcl_lnt_unknown(  ).
    DATA(t7) = CAST zcl_lnt_abstract_token( t3 ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    t5 = NEW zcl_lnt_statement_node( i_statement = t6 i_colon = t7 i_pragmas = t8 ).
    t4 = t5.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA(t10) = CAST zcl_lnt_statement_node( t4 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t11 = me->tokens_to_nodes( i_tokens1 = t12 i_tokens2 = t13 ).
    t9 = t10->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t11 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( me->statements ).
    DATA(t15) = CAST zcl_lnt_statement_node( t4 ).
    APPEND t15 TO t14->items.
  ENDMETHOD.
  METHOD to_result.
    DATA t1 TYPE REF TO zcl_lnt_istatement_result.
    DATA(t2) = CAST zif_lnt_file( me->file ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->statements ).
    t1 = NEW zcl_lnt_istatement_result( i_file = t2 i_tokens = t3 i_statements = t4 ).
    result = t1.
    
  ENDMETHOD.
  METHOD tokens_to_nodes.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens1 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t5->items INTO t7.
      t6 ?= t7.
      DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t9 TYPE REF TO zcl_lnt_token_node.
      DATA(t10) = CAST zcl_lnt_abstract_token( t6 ).
      t9 = NEW zcl_lnt_token_node( i_token = t10 ).
      APPEND t9 TO t8->items.
    ENDLOOP.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    LOOP AT t11->items INTO t13.
      t12 ?= t13.
      DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t15 TYPE REF TO zcl_lnt_token_node.
      DATA(t16) = CAST zcl_lnt_abstract_token( t12 ).
      t15 = NEW zcl_lnt_token_node( i_token = t16 ).
      APPEND t15 TO t14->items.
    ENDLOOP.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    result = t17.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d343_356b2fce6a0b.
  ENDMETHOD.
ENDCLASS.
