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
    t1->load( ).
    IF xsdbool( lines( t1->items ) < 2 ) = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = |Alternative, length error|.
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

  METHOD setup_map.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->map IS INITIAL ) = abap_true.
      me->map = NEW zlnt_runtime_map__9af21ec489fc( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `map`.
      DATA(t12) = me->list.
      DATA t13 TYPE REF TO zif_lnt_structure_runnable.
      DATA t14 TYPE REF TO object.
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
        t18 = t13->first( ).
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
          DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t23 = me->map->get( p0 = t20 ).
          IF xsdbool( t23 IS BOUND ) = abap_true.
            DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t26 = me->map->get( p0 = t20 ).
            t26->load( ).
            APPEND t13 TO t26->items.
            t26->save( ).
          ELSE.
            DATA t31 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
            DATA(t32) = me->map.
            DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t35.
            t35->load( ).
            APPEND t13 TO t35->items.
            t35->save( ).
            t31 = t32->set( p0 = t20 p1 = t35 ).
          ENDIF.
        ENDDO.
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND || TO t2->items.
    t2->save( ).
    result = t2.

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
    DATA(t17) = |Railroad.Choice(0, |.
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

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    me->setup_map( ).
    DATA t3 TYPE f.
    t3 = CONV f( 0 ).
    DATA t5 TYPE string.
    t5 = ||.
    t1->load( ).
    IF xsdbool( lines( t1->items ) = 0 ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_imatch.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t1.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t20) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t20->has = abap_true.
      t20->value = abap_true.
      t16 = t20.
      DATA t22 TYPE string.
      t22 = t5.
      DATA t25 TYPE f.
      DATA t26 TYPE i.
      t26 = t3.
      t25 = t26.
      t11 = NEW zcl_lnt_imatch( i_matched = t12 i_unmatched = t14 i_error = t16 i_error_description = t22 i_error_matched = t25 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t28 ).
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t29 ).
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t30 ).
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t31 ).
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t32 ).
      ENDIF.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t34 ).
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t36 ).
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t38 ).
      ENDIF.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t40 ).
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t42 ).
      ENDIF.
      result = t11.
      RETURN.
    ENDIF.
    DATA(t44) = VALUE string( ).
    DATA(t45) = VALUE string( ).
    DATA t48 TYPE REF TO zcl_lnt_statement_node.
    DATA t50 TYPE REF TO object.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t51 ?= t50.
      DATA t52 TYPE REF TO object.
      t52 = t51->as_ref( ).
      t48 ?= t52.
    ELSE.
      t48 ?= t50.
    ENDIF.
    t45 = t48->get_first_token( )->str.
    DATA(t55) = strlen( t45 ).
    t44 = t45.
    IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t44 TO UPPER CASE.
    ELSE.
      t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t57 = me->map->get( p0 = t44 ).
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t57 IS BOUND ) = abap_true.
      t61 = t57.
    ELSE.
      CREATE OBJECT t61.
    ENDIF.
    t56 = t61.
    DATA t67 TYPE REF TO zif_lnt_structure_runnable.
    DATA t68 TYPE REF TO object.
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
      t72 = t67->run( i_statements = t1 i_parent = t2 ).
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t78 = t72->error.
      DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t83) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t83->has = abap_true.
      t83->value = abap_false.
      t80 = t83.
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
        result = t72.
        RETURN.
      ENDIF.
      IF xsdbool( t72->error_matched > t3 ) = abap_true.
        t5 = t72->error_description.
        t3 = t72->error_matched.
      ENDIF.
    ENDDO.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t97 = me->map->get( p0 = || ).
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t97 IS BOUND ) = abap_true.
      t101 = t97.
    ELSE.
      CREATE OBJECT t101.
    ENDIF.
    t96 = t101.
    DATA t107 TYPE REF TO zif_lnt_structure_runnable.
    DATA t108 TYPE REF TO object.
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
      t112 = t107->run( i_statements = t1 i_parent = t2 ).
      DATA(t117) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t118 = t112->error.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t123) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t123->has = abap_true.
      t123->value = abap_false.
      t120 = t123.
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
        result = t112.
        RETURN.
      ENDIF.
      IF xsdbool( t112->error_matched > t3 ) = abap_true.
        t5 = t112->error_description.
        t3 = t112->error_matched.
      ENDIF.
    ENDDO.
    IF xsdbool( t3 = CONV f( 0 ) ) = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_imatch.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t140.
      DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t142 = t1.
      DATA(t148) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t148->has = abap_true.
      t148->value = abap_true.
      t139 = NEW zcl_lnt_imatch( i_matched = t140 i_unmatched = t142 i_error = t148 i_error_description = |Unexpected code structure| i_error_matched = t3 ).
      CREATE OBJECT t139->zlnt_view_ownkeys_b0e8086400eb.
      t139->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t154 ).
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t155 ).
      ENDIF.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t156 ).
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t158 ).
      ENDIF.
      CREATE OBJECT t139->zlnt_json_ownkeys_70e5fd461788.
      t139->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t160 ).
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t162 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t164 ).
      ENDIF.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t166 ).
      ENDIF.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t168 ).
      ENDIF.
      result = t139.
      RETURN.
    ENDIF.
    DATA t169 TYPE REF TO zcl_lnt_imatch.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t172 = t1.
    DATA(t178) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t178->has = abap_true.
    t178->value = abap_true.
    t169 = NEW zcl_lnt_imatch( i_matched = t170 i_unmatched = t172 i_error = t178 i_error_description = t5 i_error_matched = t3 ).
    CREATE OBJECT t169->zlnt_view_ownkeys_b0e8086400eb.
    t169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t184 ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t185 ).
    ENDIF.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t186 ).
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t187 ).
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t188 ).
    ENDIF.
    CREATE OBJECT t169->zlnt_json_ownkeys_70e5fd461788.
    t169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t190 ).
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t192 ).
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t194 ).
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t196 ).
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t198 ).
    ENDIF.
    result = t169.


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
