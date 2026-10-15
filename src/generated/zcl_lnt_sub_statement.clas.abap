* TS: src/abap/3_structures/structures/_combi.ts:302:1 SubStatement
CLASS zcl_lnt_sub_statement DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure_runnable.
    DATA obj TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS constructor IMPORTING i_obj_1ed0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS class_name RETURNING VALUE(result) TYPE string.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sub_statement IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = t1.
    me->obj = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `obj`.
  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zif_lnt_statement.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA(t3) = me->obj.
    DATA t4 TYPE REF TO object.
    t4 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t3 ).
    t2 ?= t4.
    t1 = t2.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t1.
    t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_macro_call ).
    t6 = t7.
    IF t7 = abap_false.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_macro_recursion ).
      t6 = t9.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t1.
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_native_sql ).
      t5 = t11.
    ENDIF.
    IF t5 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t15.
      t14 = t15.
      DATA(t16) = t14.
      DATA(t17) = ||.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t14.
      t13 = t18.
      result = t13.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = t1.
    t20 = t21->get_matcher( ).
    t19 = t20->first( ).
    result = t19.

  ENDMETHOD.

  METHOD to_railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.Terminal('|.
    DATA t6 TYPE string.
    DATA(t7) = me->obj.
    t6 = t7->name.
    DATA(t8) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t9) = |', \{href: '#/statement/|.
    DATA(t10) = strlen( t4 ).
    t3 = |{ t4 }{ t9 }|.
    DATA t11 TYPE string.
    DATA(t12) = me->obj.
    t11 = t12->name.
    DATA(t13) = strlen( t3 ).
    t2 = |{ t3 }{ t11 }|.
    DATA(t14) = |'\})|.
    DATA(t15) = strlen( t2 ).
    t1 = |{ t2 }{ t14 }|.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE string.
    DATA(t6) = |statement/|.
    DATA t7 TYPE string.
    DATA(t8) = me->obj.
    t7 = t8->name.
    DATA(t9) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t10) = t2.
    t1 = t10.
    result = t1.

  ENDMETHOD.

  METHOD class_name.
    DATA t1 TYPE string.
    DATA(t2) = me->obj.
    t1 = t2->name.
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE i.
    DATA(t5) = t1.
    t5->load( ).
    t4 = lines( t5->items ).
    DATA(t6) = 0.
    t3 = xsdbool( t4 = t6 ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_imatch.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = abap_true.
        DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12 = t13.
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE string( ).
      DATA(t20) = |Expected |.
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      DATA(t23) = me->obj.
      t22 = t23->name.
      DATA(t24) = strlen( t22 ).
      t21 = t22.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      DATA(t25) = strlen( t20 ).
      t19 = |{ t20 }{ t21 }|.
      t18 = t19.
      DATA t26 TYPE f.
      DATA(t27) = CONV f( 0 ).
      t26 = t27.
      t7 = NEW zcl_lnt_imatch( i_matched = t8 i_unmatched = t10 i_error = t12 i_error_description = t18 i_error_matched = t26 ).
      CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
      t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t28 ).
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t29 ).
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t30 ).
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t31 ).
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t32 ).
      ENDIF.
      CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
      t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t33) = |matched|.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
      ENDIF.
      DATA(t35) = |unmatched|.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
      ENDIF.
      DATA(t37) = |error|.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
      ENDIF.
      DATA(t39) = |errorDescription|.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
      ENDIF.
      DATA(t41) = |errorMatched|.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
      ENDIF.
      result = t7.
      RETURN.
    ELSE.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zif_lnt_statement.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t45.
      DATA(t46) = t1.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      t46->load( ).
      CLEAR t47.
      READ TABLE t46->items INDEX 1 INTO t47.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      CLEAR t45.
      IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t48 ?= t47.
        DATA t49 TYPE REF TO object.
        t49 = t48->as_ref( ).
        t45 ?= t49.
      ELSE.
        t45 ?= t47.
      ENDIF.
      t44 = t45->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA(t50) = me->obj.
      DATA t51 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t51.
      IF t44 IS BOUND.
        t51 = t44->zlnt_builtin_clas_3f891b097658( ).
        WHILE t51 IS BOUND.
          IF t51 = t50.
            t43 = abap_true.
            EXIT.
          ENDIF.
          t51 = t51->parent.
        ENDWHILE.
      ENDIF.
      IF t43 = abap_true.
        DATA(t52) = t2.
        DATA t53 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t53.
        DATA(t54) = t1.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t54->load( ).
        CLEAR t55.
        READ TABLE t54->items INDEX 1 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t53.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t53 ?= t57.
        ELSE.
          t53 ?= t55.
        ENDIF.
        t52->add_child( i_n_0c97 = t53 ).
        DATA t58 TYPE REF TO zcl_lnt_imatch.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t62.
        t61 = t62.
        DATA(t63) = t61.
        DATA t64 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t64.
        DATA(t65) = t1.
        DATA t66 TYPE REF TO object.
        CLEAR t66.
        t65->load( ).
        CLEAR t66.
        READ TABLE t65->items INDEX 1 INTO t66.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        CLEAR t64.
        IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t67 ?= t66.
          DATA t68 TYPE REF TO object.
          t68 = t67->as_ref( ).
          t64 ?= t68.
        ELSE.
          t64 ?= t66.
        ENDIF.
        t63->load( ).
        APPEND t64 TO t63->items.
        t63->save( ).
        DATA(t69) = t61.
        t60 = t69.
        t59 = t60.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t72) = t1.
        DATA(t73) = 1.
        t71 = t72->splice1_view( p0 = t73 ).
        t70 = t71.
        DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t75.
        DATA(t76) = abap_true.
        IF t76 = abap_true.
          DATA(t77) = abap_false.
          DATA(t78) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t78->has = abap_true.
          t78->value = t77.
          t75 = t78.
        ELSE.
          DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t79.
          t75 = t79.
        ENDIF.
        t74 = t75.
        DATA t80 TYPE string.
        DATA(t81) = ||.
        t80 = t81.
        DATA t82 TYPE f.
        DATA(t83) = CONV f( 0 ).
        t82 = t83.
        t58 = NEW zcl_lnt_imatch( i_matched = t59 i_unmatched = t70 i_error = t74 i_error_description = t80 i_error_matched = t82 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t84 ).
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t85 ).
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t88 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t89) = |matched|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        ENDIF.
        DATA(t91) = |unmatched|.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
        ENDIF.
        DATA(t93) = |error|.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
        ENDIF.
        DATA(t95) = |errorDescription|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        ENDIF.
        DATA(t97) = |errorMatched|.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
        ENDIF.
        result = t58.
        RETURN.
      ELSE.
        DATA t99 TYPE REF TO zcl_lnt_imatch.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t101.
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t103) = t1.
        t102 = t103.
        DATA t104 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t105.
        DATA(t106) = abap_true.
        IF t106 = abap_true.
          DATA(t107) = abap_true.
          DATA(t108) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t108->has = abap_true.
          t108->value = t107.
          t105 = t108.
        ELSE.
          DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t109.
          t105 = t109.
        ENDIF.
        t104 = t105.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA(t112) = |Expected |.
        DATA t113 TYPE string.
        DATA t114 TYPE string.
        DATA(t115) = me->obj.
        t114 = t115->name.
        DATA(t116) = strlen( t114 ).
        t113 = t114.
        IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t113 TO UPPER CASE.
        ELSE.
          t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
        ENDIF.
        DATA(t117) = strlen( t112 ).
        t111 = |{ t112 }{ t113 }|.
        t110 = t111.
        DATA t118 TYPE f.
        DATA(t119) = CONV f( 0 ).
        t118 = t119.
        t99 = NEW zcl_lnt_imatch( i_matched = t100 i_unmatched = t102 i_error = t104 i_error_description = t110 i_error_matched = t118 ).
        CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
        t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matched` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unmatched` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t122 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorDescription` p1 = t123 ).
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorMatched` p1 = t124 ).
        ENDIF.
        CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
        t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t125) = |matched|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |unmatched|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |error|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |errorDescription|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |errorMatched|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        result = t99.
        RETURN.
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d694_8b97fca542b8.
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
