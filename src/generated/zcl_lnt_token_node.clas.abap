* TS: src/abap/nodes/token_node.ts:6:1 TokenNode
CLASS zcl_lnt_token_node DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS count_tokens RETURNING VALUE(result) TYPE f.
    METHODS get_first_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS get_last_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
    METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_token_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = t1.
    me->token = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `token`.
  ENDMETHOD.

  METHOD a_c_in_sr_ab_nd_tk_nd_ts_tk_nd.
    DATA(t1) = i_n_2941.
    DATA t2 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = abap_true.
    IF t5 = abap_true.
      DATA(t6) = |TokenNode, Method not implemented.|.
      DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t7->has = abap_true.
      t7->value = t6.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t4 = t8.
    ENDIF.
    t3 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t4 ).
    t2 = NEW #( ).
    t2->payload = t3.
    CLEAR t2->source_value.
    IF t3 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
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
    ENDIF.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD s_c_in_sr_ab_nd_tk_nd_ts_tk_nd.
    DATA(t1) = i_children_ea49.
    DATA t2 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = abap_true.
    IF t5 = abap_true.
      DATA(t6) = |TokenNode, Method not implemented.|.
      DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t7->has = abap_true.
      t7->value = t6.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t4 = t8.
    ENDIF.
    t3 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t4 ).
    t2 = NEW #( ).
    t2->payload = t3.
    CLEAR t2->source_value.
    IF t3 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
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
    ENDIF.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_children.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    IF zcl_lnt_token_node_module=>zlnt_builtin_init_67616964ab0b = abap_false.
      zcl_lnt_token_node_module=>zlnt_builtin_init_fbfa5be386ab( ).
    ENDIF.
    t1 = zcl_lnt_token_node_module=>empty_children.
    result = t1.

  ENDMETHOD.

  METHOD concat_tokens.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t3) = me->token.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = t2.
    t4 = t5->str.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_tk_nd_ts_tkn_nd.
    DATA(t1) = me->token.
    result = t1.

  ENDMETHOD.

  METHOD count_tokens.
    DATA(t1) = CONV f( 1 ).
    result = t1.

  ENDMETHOD.

  METHOD get_first_token.
    DATA(t1) = me->token.
    result = t1.

  ENDMETHOD.

  METHOD get_last_token.
    DATA(t1) = me->token.
    result = t1.

  ENDMETHOD.

  METHOD add_child.
    DATA(t1) = i_n_0c97.
    DATA(t2) = t1.
    me->a_c_in_sr_ab_nd_tk_nd_ts_tk_nd( i_n_2941 = t2 ).
  ENDMETHOD.

  METHOD set_children.
    DATA(t1) = i_children_9020.
    DATA(t2) = t1.
    me->s_c_in_sr_ab_nd_tk_nd_ts_tk_nd( i_children_ea49 = t2 ).
  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = CAST zcl_lnt_abstract_token( me->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ) ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1010_e2855e6725fd.
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
