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
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    DATA(t4) = t1.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t5) = 2.
    t2 = xsdbool( t3 < t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = |Sequence, length error|.
        DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      IF t7 IS BOUND.
        DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t13.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        CLEAR t13.
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
      ENDIF.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA(t15) = t1.
    me->list = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = me->list.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA(t11) = t3.
      DATA t12 TYPE string.
      DATA(t13) = t6.
      t12 = t13->to_railroad( ).
      t11->load( ).
      APPEND t12 TO t11->items.
      t11->save( ).
    ENDDO.
    DATA(t14) = t3.
    t2 = t14.
    t1 = t2.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA(t17) = |Railroad.Sequence(|.
    DATA t18 TYPE string.
    DATA(t19) = t1.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t18 = t19->join( p0 = t20 ).
    DATA(t21) = strlen( t17 ).
    t16 = |{ t17 }{ t18 }|.
    DATA(t22) = |)|.
    DATA(t23) = strlen( t16 ).
    t15 = |{ t16 }{ t22 }|.
    result = t15.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->list.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
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
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t11) = t2.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t13) = t10.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t15) = t5.
      t14 = t15->get_using( ).
      t12 = t13->concat( p0 = t14 ).
      t2 = t12.
    ENDDO.
    DATA(t16) = t2.
    t1 = t16.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t2.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    t3->load( ).
    CLEAR t4.
    READ TABLE t3->items INDEX 1 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    CLEAR t2.
    IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t5 ?= t4.
      DATA t6 TYPE REF TO object.
      t6 = t5->as_ref( ).
      t2 ?= t6.
    ELSE.
      t2 ?= t4.
    ENDIF.
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = me->list.
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA t14 TYPE REF TO zcl_lnt_imatch.
      DATA(t15) = t8.
      DATA(t16) = t3.
      DATA(t17) = t2.
      t14 = t15->run( i_statements = t16 i_parent = t17 ).
      t13 = t14.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t20) = t13.
      t19 = t20->error.
      IF t19 IS BOUND.
        IF t19->has = abap_true.
          t18 = xsdbool( t19->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t18 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_imatch.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t23.
        t22 = t23.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t25) = t1.
        t24 = t25.
        DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t26.
        DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t27.
        DATA(t28) = abap_true.
        IF t28 = abap_true.
          DATA(t29) = abap_true.
          DATA(t30) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t30->has = abap_true.
          t30->value = t29.
          t27 = t30.
        ELSE.
          DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t31.
          t27 = t31.
        ENDIF.
        t26 = t27.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA(t34) = t13.
        t33 = t34->error_description.
        t32 = t33.
        DATA t35 TYPE f.
        DATA t36 TYPE f.
        DATA t37 TYPE i.
        DATA(t38) = t5.
        t38->load( ).
        t37 = lines( t38->items ).
        t36 = t37.
        t35 = t36.
        t21 = NEW zcl_lnt_imatch( i_matched = t22 i_unmatched = t24 i_error = t26 i_error_description = t32 i_error_matched = t35 ).
        CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
        t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t39 ).
        ENDIF.
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
        DATA(t44) = |matched|.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
        ENDIF.
        DATA(t46) = |unmatched|.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
        ENDIF.
        DATA(t48) = |error|.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
        ENDIF.
        DATA(t50) = |errorDescription|.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
        ENDIF.
        DATA(t52) = |errorMatched|.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
        ENDIF.
        result = t21.
        RETURN.
      ENDIF.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE i.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t57) = t13.
      t56 = t57->matched.
      t56->load( ).
      t55 = lines( t56->items ).
      DATA(t58) = 100.
      t54 = xsdbool( t55 < t58 ).
      IF t54 = abap_true.
        DATA(t59) = VALUE i( ).
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t61) = t13.
        t60 = t61->matched.
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
          DATA(t68) = t62.
          t67->load( ).
          APPEND t68 TO t67->items.
          t67->save( ).
        ENDDO.
        DATA t69 TYPE i.
        DATA(t70) = t5.
        t70->load( ).
        t69 = lines( t70->items ).
        t59 = t69.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t72) = t5.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t74) = t13.
        t73 = t74->matched.
        t71 = t72->concat( p0 = t73 ).
        t5 = t71.
      ENDIF.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t76) = t13.
      t75 = t76->unmatched.
      t3 = t75.
    ENDDO.
    DATA t77 TYPE REF TO zcl_lnt_imatch.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t79) = t5.
    t78 = t79.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t81) = t3.
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t83.
    DATA(t84) = abap_true.
    IF t84 = abap_true.
      DATA(t85) = abap_false.
      DATA(t86) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t86->has = abap_true.
      t86->value = t85.
      t83 = t86.
    ELSE.
      DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t87.
      t83 = t87.
    ENDIF.
    t82 = t83.
    DATA t88 TYPE string.
    DATA(t89) = ||.
    t88 = t89.
    DATA t90 TYPE f.
    DATA(t91) = CONV f( 0 ).
    t90 = t91.
    t77 = NEW zcl_lnt_imatch( i_matched = t78 i_unmatched = t80 i_error = t82 i_error_description = t88 i_error_matched = t90 ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t92 ).
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t93 ).
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t94 ).
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t95 ).
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t96 ).
    ENDIF.
    CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
    t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t97) = |matched|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
    ENDIF.
    DATA(t99) = |unmatched|.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
    ENDIF.
    DATA(t101) = |error|.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
    ENDIF.
    DATA(t103) = |errorDescription|.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
    ENDIF.
    DATA(t105) = |errorMatched|.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
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
