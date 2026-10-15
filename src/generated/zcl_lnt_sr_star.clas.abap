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
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = t1.
    me->obj = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `obj`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.ZeroOrMore(|.
    DATA t4 TYPE string.
    DATA(t5) = me->obj.
    t4 = t5->to_railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->obj.
    t1 = t2->get_using( ).
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
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE i.
      DATA(t10) = t3.
      t10->load( ).
      t9 = lines( t10->items ).
      DATA(t11) = 0.
      t8 = xsdbool( t9 = t11 ).
      IF t8 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_imatch.
        CLEAR t12.
        DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t14) = t5.
        t13 = t14.
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t16) = t3.
        t15 = t16.
        DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = abap_false.
          DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t21->has = abap_true.
          t21->value = t20.
          t18 = t21.
        ELSE.
          DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        t17 = t18.
        DATA t23 TYPE string.
        DATA(t24) = ||.
        t23 = t24.
        DATA t25 TYPE f.
        DATA(t26) = CONV f( 0 ).
        t25 = t26.
        t12 = NEW zcl_lnt_imatch( i_matched = t13 i_unmatched = t15 i_error = t17 i_error_description = t23 i_error_matched = t25 ).
        CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
        t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t27 ).
        ENDIF.
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
        DATA(t32) = |matched|.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
        ENDIF.
        DATA(t34) = |unmatched|.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
        ENDIF.
        DATA(t36) = |error|.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
        ENDIF.
        DATA(t38) = |errorDescription|.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
        ENDIF.
        DATA(t40) = |errorMatched|.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
        ENDIF.
        result = t12.
        RETURN.
      ENDIF.
      DATA t42 TYPE REF TO zcl_lnt_imatch.
      DATA t43 TYPE REF TO zcl_lnt_imatch.
      DATA(t44) = me->obj.
      DATA(t45) = t3.
      DATA(t46) = t2.
      t43 = t44->run( i_statements = t45 i_parent = t46 ).
      t42 = t43.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t49) = t42.
      t48 = t49->error.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA(t52) = abap_true.
        DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t53->has = abap_true.
        t53->value = t52.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        t50 = t54.
      ENDIF.
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
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE f.
        DATA(t59) = t42.
        t58 = t59->error_matched.
        DATA(t60) = CONV f( 0 ).
        t57 = xsdbool( t58 > t60 ).
        IF t57 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_imatch.
          CLEAR t61.
          DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t63) = t5.
          t62 = t63.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t65) = t3.
          t64 = t65.
          DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t66.
          DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = abap_true.
            DATA(t70) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t70->has = abap_true.
            t70->value = t69.
            t67 = t70.
          ELSE.
            DATA t71 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t71.
            t67 = t71.
          ENDIF.
          t66 = t67.
          DATA t72 TYPE string.
          DATA t73 TYPE string.
          DATA(t74) = t42.
          t73 = t74->error_description.
          t72 = t73.
          DATA t75 TYPE f.
          DATA t76 TYPE f.
          DATA(t77) = t42.
          t76 = t77->error_matched.
          t75 = t76.
          t61 = NEW zcl_lnt_imatch( i_matched = t62 i_unmatched = t64 i_error = t66 i_error_description = t72 i_error_matched = t75 ).
          CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
          t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t78 ).
          ENDIF.
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
          DATA(t83) = |matched|.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
          ENDIF.
          DATA(t85) = |unmatched|.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
          ENDIF.
          DATA(t87) = |error|.
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t88.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
          ENDIF.
          DATA(t89) = |errorDescription|.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
          ENDIF.
          DATA(t91) = |errorMatched|.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
          ENDIF.
          result = t61.
          RETURN.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_imatch.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t95) = t5.
          t94 = t95.
          DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t97) = t3.
          t96 = t97.
          DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t98.
          DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t99.
          DATA(t100) = abap_true.
          IF t100 = abap_true.
            DATA(t101) = abap_false.
            DATA(t102) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t102->has = abap_true.
            t102->value = t101.
            t99 = t102.
          ELSE.
            DATA t103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t103.
            t99 = t103.
          ENDIF.
          t98 = t99.
          DATA t104 TYPE string.
          DATA(t105) = ||.
          t104 = t105.
          DATA t106 TYPE f.
          DATA(t107) = CONV f( 0 ).
          t106 = t107.
          t93 = NEW zcl_lnt_imatch( i_matched = t94 i_unmatched = t96 i_error = t98 i_error_description = t104 i_error_matched = t106 ).
          CREATE OBJECT t93->zlnt_view_ownkeys_b0e8086400eb.
          t93->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t108 ).
          ENDIF.
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
          DATA(t113) = |matched|.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
          ENDIF.
          DATA(t115) = |unmatched|.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
          ENDIF.
          DATA(t117) = |error|.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
          ENDIF.
          DATA(t119) = |errorDescription|.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
          ENDIF.
          DATA(t121) = |errorMatched|.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
          ENDIF.
          result = t93.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t123 TYPE abap_bool.
      DATA t124 TYPE i.
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t126) = t42.
      t125 = t126->matched.
      t125->load( ).
      t124 = lines( t125->items ).
      DATA(t127) = 100.
      t123 = xsdbool( t124 < t127 ).
      IF t123 = abap_true.
        DATA(t128) = VALUE i( ).
        DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t130) = t42.
        t129 = t130->matched.
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
          DATA(t137) = t131.
          t136->load( ).
          APPEND t137 TO t136->items.
          t136->save( ).
        ENDDO.
        DATA t138 TYPE i.
        DATA(t139) = t5.
        t139->load( ).
        t138 = lines( t139->items ).
        t128 = t138.
      ELSE.
        DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t141) = t5.
        DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t143) = t42.
        t142 = t143->matched.
        t140 = t141->concat( p0 = t142 ).
        t5 = t140.
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t145) = t42.
      t144 = t145->unmatched.
      t3 = t144.
    ENDDO.
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
