* TS: src/abap/3_structures/structures/_combi.ts:192:1 Star
CLASS zcl_lnt_sr_star DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure_runnable.
    DATA obj TYPE REF TO zif_lnt_structure_runnable.
    METHODS constructor IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_structure_runnable.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_star IMPLEMENTATION.
  METHOD constructor.
    me->obj = i_obj_1ed0.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `obj`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.ZeroOrMore(|.
    DATA t4 TYPE string.
    t4 = me->obj->to_railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD get_using.
    result = me->obj->get_using( ).

  ENDMETHOD.

  METHOD run.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = i_statements.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DO.
      DATA(t10) = t3.
      t10->load( ).
      IF xsdbool( lines( t10->items ) = 0 ) = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_imatch.
        DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t13 = t5.
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t15 = t3.
        DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t21->has = abap_true.
        t21->value = abap_false.
        t12 = NEW zcl_lnt_imatch( i_matched = t13 i_unmatched = t15 i_error = t21 i_error_description = || i_error_matched = CONV f( 0 ) ).
        CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
        t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t27 ).
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t28 ).
        ENDIF.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t29 ).
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t30 ).
        ENDIF.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t31 ).
        ENDIF.
        CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
        t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t33 ).
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t35 ).
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t37 ).
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t39 ).
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t41 ).
        ENDIF.
        result = t12.
        RETURN.
      ENDIF.
      DATA t42 TYPE REF TO zcl_lnt_imatch.
      t42 = me->obj->run( i_statements = t3 i_parent = t2 ).
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t48 = t42->error.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t53->has = abap_true.
      t53->value = abap_true.
      t50 = t53.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      IF t48 IS BOUND.
        t55 = t48->has.
      ENDIF.
      IF t50 IS BOUND.
        t56 = t50->has.
      ENDIF.
      IF t55 = t56.
        IF t55 = abap_false.
          t47 = abap_true.
        ELSEIF t48->value = t50->value.
          t47 = abap_true.
        ENDIF.
      ENDIF.
      IF t47 = abap_true.
        IF xsdbool( t42->error_matched > CONV f( 0 ) ) = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_imatch.
          DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t62 = t5.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t64 = t3.
          DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t66.
          DATA(t70) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t70->has = abap_true.
          t70->value = abap_true.
          t66 = t70.
          DATA t72 TYPE string.
          t72 = t42->error_description.
          DATA t76 TYPE f.
          t76 = t42->error_matched.
          t61 = NEW zcl_lnt_imatch( i_matched = t62 i_unmatched = t64 i_error = t66 i_error_description = t72 i_error_matched = t76 ).
          CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
          t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t78 ).
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t79.
          IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t79 ).
          ENDIF.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t80 ).
          ENDIF.
          DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t81.
          IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t81 ).
          ENDIF.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t82 ).
          ENDIF.
          CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
          t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t84 ).
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t86 ).
          ENDIF.
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t88.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t88 ).
          ENDIF.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t90 ).
          ENDIF.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t92 ).
          ENDIF.
          result = t61.
          RETURN.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_imatch.
          DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t94 = t5.
          DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t96 = t3.
          DATA(t102) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t102->has = abap_true.
          t102->value = abap_false.
          t93 = NEW zcl_lnt_imatch( i_matched = t94 i_unmatched = t96 i_error = t102 i_error_description = || i_error_matched = CONV f( 0 ) ).
          CREATE OBJECT t93->zlnt_view_ownkeys_b0e8086400eb.
          t93->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t108 ).
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t109 ).
          ENDIF.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t110 ).
          ENDIF.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t111 ).
          ENDIF.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t112 ).
          ENDIF.
          CREATE OBJECT t93->zlnt_json_ownkeys_70e5fd461788.
          t93->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matched| p1 = t114 ).
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |unmatched| p1 = t116 ).
          ENDIF.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t118 ).
          ENDIF.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorDescription| p1 = t120 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorMatched| p1 = t122 ).
          ENDIF.
          result = t93.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t125 = t42->matched.
      t125->load( ).
      IF xsdbool( lines( t125->items ) < 100 ) = abap_true.
        DATA(t128) = VALUE i( ).
        DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t129 = t42->matched.
        DATA t131 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t131.
        DATA t132 TYPE REF TO object.
        CLEAR t132.
        DATA(t133) = VALUE i( ).
        DO.
          t129->load( ).
          IF t133 >= lines( t129->items ).
            EXIT.
          ENDIF.
          CLEAR t132.
          READ TABLE t129->items INDEX t133 + 1 INTO t132.
          t133 = t133 + 1.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          CLEAR t131.
          IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t134 ?= t132.
            DATA t135 TYPE REF TO object.
            t135 = t134->as_ref( ).
            t131 ?= t135.
          ELSE.
            t131 ?= t132.
          ENDIF.
          DATA(t136) = t5.
          t136->load( ).
          APPEND t131 TO t136->items.
          t136->save( ).
        ENDDO.
        DATA(t139) = t5.
        t139->load( ).
        t128 = lines( t139->items ).
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t142 = t42->matched.
        t5 = t5->concat( p0 = t142 ).
      ENDIF.
      t3 = t42->unmatched.
    ENDDO.
  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND || TO t2->items.
    t2->save( ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d692_8822f22e2e12.
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
