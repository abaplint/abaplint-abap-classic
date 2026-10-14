* TS: src/abap/nodes/token_node.ts:6:1 TokenNode
CLASS zcl_lnt_token_node DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_node.
    INTERFACES zif_lnt_union_4cf1d054.
    INTERFACES zif_lnt_union_1e9858bf.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token.
    METHODS a_c_in_sr_ab_nd_tk_nd_ts_tk_nd IMPORTING i_n_2941 TYPE REF TO zif_lnt_node.
    METHODS s_c_in_sr_ab_nd_tk_nd_ts_tk_nd IMPORTING i_children_ea49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS concat_tokens RETURNING VALUE(result) TYPE string.
    METHODS gt_in_sr_ab_nd_tk_nd_ts_tkn_nd RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS count_tokens RETURNING VALUE(result) TYPE int8.
    METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
    METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_token_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = CAST zcl_lnt_abstract_token( t1 ).
    me->token = t2.
  ENDMETHOD.

  METHOD a_c_in_sr_ab_nd_tk_nd_ts_tk_nd.
    DATA(t1) = CAST zif_lnt_node( i_n_2941 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/token_node.ts:13|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD s_c_in_sr_ab_nd_tk_nd_ts_tk_nd.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_ea49 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/token_node.ts:17|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_children.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/token_node.ts:21|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD concat_tokens.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t3) = CAST zcl_lnt_abstract_token( me->token ).
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = CAST zcl_lnt_abstract_token( t2 ).
    t4 = t5->str.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_tk_nd_ts_tkn_nd.
    DATA(t1) = CAST zcl_lnt_abstract_token( me->token ).
    result = t1.

  ENDMETHOD.

  METHOD count_tokens.
    DATA(t1) = CONV int8( 1 ).
    result = t1.

  ENDMETHOD.

  METHOD get_first_token.
    DATA(t1) = CAST zcl_lnt_abstract_token( me->token ).
    result = t1.

  ENDMETHOD.

  METHOD get_last_token.
    DATA(t1) = CAST zcl_lnt_abstract_token( me->token ).
    result = t1.

  ENDMETHOD.

  METHOD add_child.
    DATA(t1) = CAST zif_lnt_node( i_n_0c97 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/token_node.ts:13|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD set_children.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/token_node.ts:17|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = CAST zcl_lnt_abstract_token( me->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d988_4de15e29dca8.
  ENDMETHOD.

  METHOD zif_lnt_node~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_node~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_node~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_node~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_node~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_node~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_node~get_last_token.
    result = me->get_last_token( ).
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
