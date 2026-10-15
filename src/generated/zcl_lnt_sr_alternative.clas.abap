* TS: src/abap/3_structures/structures/_combi.ts:68:1 Alternative
CLASS zcl_lnt_sr_alternative DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure_runnable.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA map TYPE REF TO zlnt_runtime_map__9af21ec489fc.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS setup_map.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_alternative IMPLEMENTATION.
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
        DATA(t10) = |Alternative, length error|.
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

  METHOD setup_map.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
    DATA(t3) = me->map.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
      DATA t9 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
      DATA(t10) = NEW zlnt_runtime_map__9af21ec489fc( ).
      t9 = t10.
      DATA(t11) = t9.
      t8 = t11.
      me->map = t8.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `map`.
      DATA(t12) = me->list.
      DATA t13 TYPE REF TO zif_lnt_structure_runnable.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t12->load( ).
        IF t15 >= lines( t12->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t12->items INDEX t15 + 1 INTO t14.
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
        DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t19) = t13.
        t18 = t19->first( ).
        DATA(t20) = VALUE string( ).
        t18->dense( ).
        DATA(t21) = VALUE i( ).
        DO.
          t18->load( ).
          IF t21 >= lines( t18->items ).
            EXIT.
          ENDIF.
          CLEAR t20.
          READ TABLE t18->items INDEX t21 + 1 INTO t20.
          IF t18->has( t21 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t21 = t21 + 1.
          DATA t22 TYPE abap_bool.
          DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t24) = me->map.
          DATA(t25) = t20.
          t23 = t24->get( p0 = t25 ).
          t22 = xsdbool( t23 IS BOUND ).
          IF t22 = abap_true.
            DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t28) = me->map.
            DATA(t29) = t20.
            t27 = t28->get( p0 = t29 ).
            t26 = t27.
            DATA(t30) = t13.
            t26->load( ).
            APPEND t30 TO t26->items.
            t26->save( ).
          ELSE.
            DATA t31 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
            DATA(t32) = me->map.
            DATA(t33) = t20.
            DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t36.
            t35 = t36.
            DATA(t37) = t35.
            DATA(t38) = t13.
            t37->load( ).
            APPEND t38 TO t37->items.
            t37->save( ).
            DATA(t39) = t35.
            t34 = t39.
            t31 = t32->set( p0 = t33 p1 = t34 ).
          ENDIF.
        ENDDO.
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = ||.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    result = t1.

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
    DATA(t17) = |Railroad.Choice(0, |.
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

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    me->setup_map( ).
    DATA t3 TYPE f.
    DATA(t4) = CONV f( 0 ).
    t3 = t4.
    DATA t5 TYPE string.
    DATA(t6) = ||.
    t5 = t6.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE i.
    DATA(t9) = t1.
    t9->load( ).
    t8 = lines( t9->items ).
    DATA(t10) = 0.
    t7 = xsdbool( t8 = t10 ).
    IF t7 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_imatch.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t1.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = abap_true.
        DATA(t20) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = t17.
      DATA t22 TYPE string.
      DATA(t23) = t5.
      t22 = t23.
      DATA t24 TYPE f.
      DATA t25 TYPE f.
      DATA t26 TYPE i.
      DATA(t27) = t3.
      t26 = t27.
      t25 = t26.
      t24 = t25.
      t11 = NEW zcl_lnt_imatch( i_matched = t12 i_unmatched = t14 i_error = t16 i_error_description = t22 i_error_matched = t24 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t28 ).
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t29 ).
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t30 ).
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t31 ).
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t32 ).
      ENDIF.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t33) = |matched|.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
      ENDIF.
      DATA(t35) = |unmatched|.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
      ENDIF.
      DATA(t37) = |error|.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
      ENDIF.
      DATA(t39) = |errorDescription|.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
      ENDIF.
      DATA(t41) = |errorMatched|.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
      ENDIF.
      result = t11.
      RETURN.
    ENDIF.
    DATA(t43) = VALUE string( ).
    DATA(t44) = VALUE string( ).
    DATA(t45) = VALUE string( ).
    DATA t46 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t48.
    DATA(t49) = t1.
    DATA t50 TYPE REF TO object.
    CLEAR t50.
    t49->load( ).
    CLEAR t50.
    READ TABLE t49->items INDEX 1 INTO t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    CLEAR t48.
    IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t51 ?= t50.
      DATA t52 TYPE REF TO object.
      t52 = t51->as_ref( ).
      t48 ?= t52.
    ELSE.
      t48 ?= t50.
    ENDIF.
    t47 = t48->get_first_token( ).
    t46 = t47.
    DATA t53 TYPE string.
    DATA(t54) = t46.
    t53 = t54->str.
    t45 = t53.
    DATA(t55) = strlen( t45 ).
    t44 = t45.
    IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t44 TO UPPER CASE.
    ELSE.
      t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
    ENDIF.
    t43 = t44.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t59) = me->map.
    DATA(t60) = t43.
    t58 = t59->get( p0 = t60 ).
    t57 = t58.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE abap_bool.
    DATA(t63) = t57.
    t62 = xsdbool( t63 IS BOUND ).
    IF t62 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t65) = t57.
      t64 = t65.
      t61 = t64.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t66.
      t61 = t66.
    ENDIF.
    t56 = t61.
    DATA t67 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO object.
    CLEAR t68.
    DATA(t69) = VALUE i( ).
    DO.
      t56->load( ).
      IF t69 >= lines( t56->items ).
        EXIT.
      ENDIF.
      CLEAR t68.
      READ TABLE t56->items INDEX t69 + 1 INTO t68.
      t69 = t69 + 1.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      CLEAR t67.
      IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t70 ?= t68.
        DATA t71 TYPE REF TO object.
        t71 = t70->as_ref( ).
        t67 ?= t71.
      ELSE.
        t67 ?= t68.
      ENDIF.
      DATA t72 TYPE REF TO zcl_lnt_imatch.
      DATA t73 TYPE REF TO zcl_lnt_imatch.
      DATA(t74) = t67.
      DATA(t75) = t1.
      DATA(t76) = t2.
      t73 = t74->run( i_statements = t75 i_parent = t76 ).
      t72 = t73.
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t79) = t72.
      t78 = t79->error.
      DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA(t82) = abap_false.
        DATA(t83) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t83->has = abap_true.
        t83->value = t82.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t84.
        t80 = t84.
      ENDIF.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      IF t78 IS BOUND.
        t85 = t78->has.
      ENDIF.
      IF t80 IS BOUND.
        t86 = t80->has.
      ENDIF.
      IF t85 = t86.
        IF t85 = abap_false.
          t77 = abap_true.
        ELSEIF t78->value = t80->value.
          t77 = abap_true.
        ENDIF.
      ENDIF.
      IF t77 = abap_true.
        DATA(t87) = t72.
        result = t87.
        RETURN.
      ENDIF.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE f.
      DATA(t90) = t72.
      t89 = t90->error_matched.
      DATA(t91) = t3.
      t88 = xsdbool( t89 > t91 ).
      IF t88 = abap_true.
        DATA t92 TYPE string.
        DATA(t93) = t72.
        t92 = t93->error_description.
        t5 = t92.
        DATA t94 TYPE f.
        DATA(t95) = t72.
        t94 = t95->error_matched.
        t3 = t94.
      ENDIF.
    ENDDO.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t99) = me->map.
    DATA(t100) = ||.
    t98 = t99->get( p0 = t100 ).
    t97 = t98.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    DATA t102 TYPE abap_bool.
    DATA(t103) = t97.
    t102 = xsdbool( t103 IS BOUND ).
    IF t102 = abap_true.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t105) = t97.
      t104 = t105.
      t101 = t104.
    ELSE.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t106.
      t101 = t106.
    ENDIF.
    t96 = t101.
    DATA t107 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO object.
    CLEAR t108.
    DATA(t109) = VALUE i( ).
    DO.
      t96->load( ).
      IF t109 >= lines( t96->items ).
        EXIT.
      ENDIF.
      CLEAR t108.
      READ TABLE t96->items INDEX t109 + 1 INTO t108.
      t109 = t109 + 1.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      CLEAR t107.
      IF t108 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t110 ?= t108.
        DATA t111 TYPE REF TO object.
        t111 = t110->as_ref( ).
        t107 ?= t111.
      ELSE.
        t107 ?= t108.
      ENDIF.
      DATA t112 TYPE REF TO zcl_lnt_imatch.
      DATA t113 TYPE REF TO zcl_lnt_imatch.
      DATA(t114) = t107.
      DATA(t115) = t1.
      DATA(t116) = t2.
      t113 = t114->run( i_statements = t115 i_parent = t116 ).
      t112 = t113.
      DATA(t117) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t119) = t112.
      t118 = t119->error.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t120.
      DATA(t121) = abap_true.
      IF t121 = abap_true.
        DATA(t122) = abap_false.
        DATA(t123) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t123->has = abap_true.
        t123->value = t122.
        t120 = t123.
      ELSE.
        DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t124.
        t120 = t124.
      ENDIF.
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = VALUE abap_bool( ).
      IF t118 IS BOUND.
        t125 = t118->has.
      ENDIF.
      IF t120 IS BOUND.
        t126 = t120->has.
      ENDIF.
      IF t125 = t126.
        IF t125 = abap_false.
          t117 = abap_true.
        ELSEIF t118->value = t120->value.
          t117 = abap_true.
        ENDIF.
      ENDIF.
      IF t117 = abap_true.
        DATA(t127) = t112.
        result = t127.
        RETURN.
      ENDIF.
      DATA t128 TYPE abap_bool.
      DATA t129 TYPE f.
      DATA(t130) = t112.
      t129 = t130->error_matched.
      DATA(t131) = t3.
      t128 = xsdbool( t129 > t131 ).
      IF t128 = abap_true.
        DATA t132 TYPE string.
        DATA(t133) = t112.
        t132 = t133->error_description.
        t5 = t132.
        DATA t134 TYPE f.
        DATA(t135) = t112.
        t134 = t135->error_matched.
        t3 = t134.
      ENDIF.
    ENDDO.
    DATA t136 TYPE abap_bool.
    DATA(t137) = t3.
    DATA(t138) = CONV f( 0 ).
    t136 = xsdbool( t137 = t138 ).
    IF t136 = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_imatch.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t141.
      t140 = t141.
      DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t143) = t1.
      t142 = t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t145.
      DATA(t146) = abap_true.
      IF t146 = abap_true.
        DATA(t147) = abap_true.
        DATA(t148) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t148->has = abap_true.
        t148->value = t147.
        t145 = t148.
      ELSE.
        DATA t149 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t149.
        t145 = t149.
      ENDIF.
      t144 = t145.
      DATA t150 TYPE string.
      DATA(t151) = |Unexpected code structure|.
      t150 = t151.
      DATA t152 TYPE f.
      DATA(t153) = t3.
      t152 = t153.
      t139 = NEW zcl_lnt_imatch( i_matched = t140 i_unmatched = t142 i_error = t144 i_error_description = t150 i_error_matched = t152 ).
      CREATE OBJECT t139->zlnt_view_ownkeys_b0e8086400eb.
      t139->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t154 ).
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t155 ).
      ENDIF.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t156 ).
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t158 ).
      ENDIF.
      CREATE OBJECT t139->zlnt_json_ownkeys_70e5fd461788.
      t139->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t159) = |matched|.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
      ENDIF.
      DATA(t161) = |unmatched|.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
      ENDIF.
      DATA(t163) = |error|.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
      ENDIF.
      DATA(t165) = |errorDescription|.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
      ENDIF.
      DATA(t167) = |errorMatched|.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
      ENDIF.
      result = t139.
      RETURN.
    ELSE.
      DATA t169 TYPE REF TO zcl_lnt_imatch.
      CLEAR t169.
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t171.
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t173) = t1.
      t172 = t173.
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t174.
      DATA t175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t175.
      DATA(t176) = abap_true.
      IF t176 = abap_true.
        DATA(t177) = abap_true.
        DATA(t178) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t178->has = abap_true.
        t178->value = t177.
        t175 = t178.
      ELSE.
        DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t179.
        t175 = t179.
      ENDIF.
      t174 = t175.
      DATA t180 TYPE string.
      DATA(t181) = t5.
      t180 = t181.
      DATA t182 TYPE f.
      DATA(t183) = t3.
      t182 = t183.
      t169 = NEW zcl_lnt_imatch( i_matched = t170 i_unmatched = t172 i_error = t174 i_error_description = t180 i_error_matched = t182 ).
      CREATE OBJECT t169->zlnt_view_ownkeys_b0e8086400eb.
      t169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t184 ).
      ENDIF.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t185 ).
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t186 ).
      ENDIF.
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t187.
      IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t187 ).
      ENDIF.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t188 ).
      ENDIF.
      CREATE OBJECT t169->zlnt_json_ownkeys_70e5fd461788.
      t169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t189) = |matched|.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
      ENDIF.
      DATA(t191) = |unmatched|.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
      ENDIF.
      DATA(t193) = |error|.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
      ENDIF.
      DATA(t195) = |errorDescription|.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
      ENDIF.
      DATA(t197) = |errorMatched|.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
      ENDIF.
      result = t169.

    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d690_846dbaba8fcd.
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
