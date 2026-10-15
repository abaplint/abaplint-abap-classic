* TS: src/abap/nodes/_abstract_node.ts:7:1 AbstractNode
CLASS zcl_lnt_abstract_node DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `children`.
  ENDMETHOD.

  METHOD add_child.
    DATA(t1) = i_n_0c97.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = me->children.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    IF zcl_lnt_abstract_node_module=>zlnt_builtin_init_9d4dd55c09e0 = abap_false.
      zcl_lnt_abstract_node_module=>zlnt_builtin_init_5b5d85f40577( ).
    ENDIF.
    t4 = zcl_lnt_abstract_node_module=>empty_57e4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    CLEAR t5.
    IF t3 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t3.
      TRY.
          t5 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t7 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t5 = t7->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t6.
    IF t4 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
      t10 = t4.
      TRY.
          t6 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t9 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t6 = t9->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t5 IS BOUND.
      t2 = t5->strict_equals( t6 ).
    ELSE.
      t2 = xsdbool( t6 IS NOT BOUND ).
    ENDIF.
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      CREATE OBJECT t11.
      me->children = t11.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `children`.
    ENDIF.
    DATA(t12) = me->children.
    DATA(t13) = t1.
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
  ENDMETHOD.

  METHOD set_children.
    DATA(t1) = i_children_9020.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = t3->slice0( ).
    me->children = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `children`.
  ENDMETHOD.

  METHOD get_children.
    DATA(t1) = me->children.
    result = t1.

  ENDMETHOD.

  METHOD get_first_child.
    DATA t1 TYPE REF TO zif_lnt_node.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zif_lnt_node.
      CLEAR t3.
      DATA(t4) = me->children.
      DATA t5 TYPE REF TO object.
      CLEAR t5.
      t4->load( ).
      CLEAR t5.
      READ TABLE t4->items INDEX 1 INTO t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t5.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t5.
      ENDIF.
      t1 = t3.
    ELSE.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      t1 = t8.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_last_child.
    DATA t1 TYPE REF TO zif_lnt_node.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zif_lnt_node.
      CLEAR t3.
      DATA(t4) = me->children.
      DATA t5 TYPE i.
      DATA t6 TYPE i.
      DATA(t7) = me->children.
      t7->load( ).
      t6 = lines( t7->items ).
      DATA(t8) = 1.
      t5 = t6 - t8.
      t5 = t5 + 1.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      t4->load( ).
      CLEAR t9.
      READ TABLE t4->items INDEX t5 INTO t9.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t3.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t9.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t3 ?= t11.
      ELSE.
        t3 ?= t9.
      ENDIF.
      t1 = t3.
    ELSE.
      DATA t12 TYPE REF TO zif_lnt_node.
      CLEAR t12.
      t1 = t12.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1006_009cee8662f4.
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
ENDCLASS.
