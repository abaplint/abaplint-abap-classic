* TS: src/abap/3_structures/structures/_combi.ts:8:1 Sequence
CLASS zcl_lnt_sr_sequence DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure_runnable.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_sequence IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_list.
    t1->load( ).
    IF xsdbool( lines( t1->items ) < 2 ) = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = |Sequence, length error|.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t11 ).
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
    me->list = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    DATA(t5) = me->list.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
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
      DATA t12 TYPE string.
      t12 = t6->to_railroad( ).
      t3->load( ).
      APPEND t12 TO t3->items.
      t3->save( ).
    ENDDO.
    DATA t16 TYPE string.
    DATA(t17) = |Railroad.Sequence(|.
    DATA t18 TYPE string.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t18 = t3->join( p0 = t20 ).
    DATA(t21) = strlen( t17 ).
    t16 = |{ t17 }{ t18 }|.
    DATA(t23) = strlen( t16 ).
    result = |{ t16 }{ |)| }|.

  ENDMETHOD.

  METHOD get_using.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    DATA(t4) = me->list.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
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
      t2 = t2->concat( p0 = t5->get_using( ) ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t5 ?= t4.
      DATA t6 TYPE REF TO object.
      t6 = t5->as_ref( ).
      t2 ?= t6.
    ELSE.
      t2 ?= t4.
    ENDIF.
    result = t2->first( ).

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA(t7) = me->list.
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
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
      DATA t13 TYPE REF TO zcl_lnt_imatch.
      t13 = t8->run( i_statements = t3 i_parent = t2 ).
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t19 = t13->error.
      IF t19 IS BOUND.
        IF t19->has = abap_true.
          t18 = xsdbool( t19->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t18 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_imatch.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t22.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t24 = t1.
        DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t26.
        DATA(t30) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t30->has = abap_true.
        t30->value = abap_true.
        t26 = t30.
        DATA t32 TYPE string.
        t32 = t13->error_description.
        DATA t36 TYPE f.
        DATA(t38) = t5.
        t38->load( ).
        t36 = lines( t38->items ).
        t21 = NEW zcl_lnt_imatch( i_matched = t22 i_unmatched = t24 i_error = t26 i_error_description = t32 i_error_matched = t36 ).
        CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
        t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t39 ).
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t40 ).
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t41 ).
        ENDIF.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t42.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t42 ).
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t43 ).
        ENDIF.
        CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
        t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t45 ).
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t47 ).
        ENDIF.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t49 ).
        ENDIF.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t51 ).
        ENDIF.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t53 ).
        ENDIF.
        result = t21.
        RETURN.
      ENDIF.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t56 = t13->matched.
      t56->load( ).
      IF xsdbool( lines( t56->items ) < 100 ) = abap_true.
        DATA(t59) = VALUE i( ).
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t60 = t13->matched.
        DATA t62 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t62.
        DATA t63 TYPE REF TO object.
        CLEAR t63.
        DATA(t64) = VALUE i( ).
        DO.
          t60->load( ).
          IF t64 >= lines( t60->items ).
            EXIT.
          ENDIF.
          CLEAR t63.
          READ TABLE t60->items INDEX t64 + 1 INTO t63.
          t64 = t64 + 1.
          DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t65.
          CLEAR t62.
          IF t63 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t65 ?= t63.
            DATA t66 TYPE REF TO object.
            t66 = t65->as_ref( ).
            t62 ?= t66.
          ELSE.
            t62 ?= t63.
          ENDIF.
          DATA(t67) = t5.
          t67->load( ).
          APPEND t62 TO t67->items.
          t67->save( ).
        ENDDO.
        DATA(t70) = t5.
        t70->load( ).
        t59 = lines( t70->items ).
      ELSE.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t73 = t13->matched.
        t5 = t5->concat( p0 = t73 ).
      ENDIF.
      t3 = t13->unmatched.
    ENDDO.
    DATA t77 TYPE REF TO zcl_lnt_imatch.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t78 = t5.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t80 = t3.
    DATA(t86) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t86->has = abap_true.
    t86->value = abap_false.
    t77 = NEW zcl_lnt_imatch( i_matched = t78 i_unmatched = t80 i_error = t86 i_error_description = || i_error_matched = CONV f( 0 ) ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t92 ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t93 ).
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t94 ).
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t95 ).
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t96 ).
    ENDIF.
    CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
    t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t98 ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t100 ).
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t102 ).
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t104 ).
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t106 ).
    ENDIF.
    result = t77.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d689_9937496f64b3.
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~to_railroad.
    result = me->to_railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~run.
    result = me->run( i_statements = i_statements i_parent = i_parent ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~first.
    result = me->first( ).
  ENDMETHOD.
ENDCLASS.
