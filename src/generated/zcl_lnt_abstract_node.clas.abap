* TS: src/abap/nodes/_abstract_node.ts:7:1 AbstractNode
CLASS zcl_lnt_abstract_node DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_node.
    DATA children TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS get_db65 ABSTRACT RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_first_token ABSTRACT RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS get_last_token ABSTRACT RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS add_child IMPORTING i_n_0c97 TYPE REF TO zif_lnt_node.
    METHODS set_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_node.
    METHODS get_last_child RETURNING VALUE(result) TYPE REF TO zif_lnt_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_node IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    IF zcl_lnt_abstract_node_module=>zlnt_builtin_init_9d4dd55c09e0 = abap_false.
      zcl_lnt_abstract_node_module=>zlnt_builtin_init_5b5d85f40577( ).
    ENDIF.
    t1 = zcl_lnt_abstract_node_module=>empty_57e4.
    me->children = t1.
  ENDMETHOD.
  METHOD add_child.
    DATA(t1) = CAST zif_lnt_node( i_n_0c97 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    IF zcl_lnt_abstract_node_module=>zlnt_builtin_init_9d4dd55c09e0 = abap_false.
      zcl_lnt_abstract_node_module=>zlnt_builtin_init_5b5d85f40577( ).
    ENDIF.
    t4 = zcl_lnt_abstract_node_module=>empty_57e4.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      me->children = t5.
    ENDIF.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
    DATA(t7) = CAST zif_lnt_node( t1 ).
    APPEND t7 TO t6->items.
  ENDMETHOD.
  METHOD set_children.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t2 = t3->slice0(  ).
    me->children = t2.
  ENDMETHOD.
  METHOD get_children.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_first_child.
    DATA t1 TYPE REF TO zif_lnt_node.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zif_lnt_node.
      DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
      DATA t5 TYPE REF TO object.
      CLEAR t5.
      READ TABLE t4->items INDEX 1 INTO t5.
      t3 ?= t5.
      t1 = t3.
    ELSE.
      DATA t6 TYPE REF TO zif_lnt_node.
      CLEAR t6.
      t1 = t6.
    ENDIF.
    result = t1.
    
  ENDMETHOD.
  METHOD get_last_child.
    DATA t1 TYPE REF TO zif_lnt_node.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zif_lnt_node.
      DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
      DATA t5 TYPE i.
      DATA t6 TYPE i.
      DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
      t6 = lines( t7->items ).
      DATA(t8) = 1.
      t5 = t6 - t8.
      t5 = t5 + 1.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      READ TABLE t4->items INDEX t5 INTO t9.
      t3 ?= t9.
      t1 = t3.
    ELSE.
      DATA t10 TYPE REF TO zif_lnt_node.
      CLEAR t10.
      t1 = t10.
    ENDIF.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d984_dbc6af9e17b0.
  ENDMETHOD.
  METHOD zif_lnt_node~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_node~add_child.
    me->add_child(  i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.
  METHOD zif_lnt_node~set_children.
    me->set_children(  i_children_9020 = i_children_9020 ).
  ENDMETHOD.
  METHOD zif_lnt_node~get_children.
    result = me->get_children(  ).
  ENDMETHOD.
  METHOD zif_lnt_node~get_db65.
    result = me->get_db65(  ).
  ENDMETHOD.
  METHOD zif_lnt_node~get_first_token.
    result = me->get_first_token(  ).
  ENDMETHOD.
  METHOD zif_lnt_node~get_last_token.
    result = me->get_last_token(  ).
  ENDMETHOD.
ENDCLASS.
