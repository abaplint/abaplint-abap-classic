* TS: src/abap/5_syntax/expressions/let.ts:7:1 Let
CLASS zcl_lnt_sy_let DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_skip_scope TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_let IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_skip_scope.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t3.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = abap_false.
        DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA(t18) = abap_false.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    DATA(t21) = t3.
    t20 = t21->value.
    DATA(t22) = abap_true.
    t19 = xsdbool( t20 <> t22 ).
    IF t19 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      DATA(t25) = t2.
      t24 = t25->scope.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = t1.
      t30 = t31.
      t29 = t30->get_first_token( ).
      t28 = t29.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA(t33) = t28.
      t32 = t33->start.
      t27 = t32.
      t26 = t27.
      DATA t34 TYPE string.
      DATA t35 TYPE string.
      DATA(t36) = t2.
      t35 = t36->filename.
      t34 = t35.
      DATA t37 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t39 TYPE string.
      DATA(t40) = |let|.
      t39 = t40.
      DATA t41 TYPE string.
      DATA(t42) = |LET|.
      t41 = t42.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA(t44) = t26.
      t43 = t44.
      DATA t45 TYPE string.
      DATA(t46) = t34.
      t45 = t46.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA t48 TYPE REF TO zcl_lnt_position.
      CLEAR t48.
      t47 = t48.
      t38 = NEW zcl_lnt_iscope_identifier( i_stype = t39 i_sname = t41 i_filename = t45 i_start = t43 i_end = t47 ).
      CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
      t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t49 ).
      ENDIF.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t50 ).
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t51 ).
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t52 ).
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t53 ).
      ENDIF.
      CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
      t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t54) = |stype|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      ENDIF.
      DATA(t56) = |sname|.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
      ENDIF.
      DATA(t58) = |start|.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
      ENDIF.
      DATA(t60) = |filename|.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
      ENDIF.
      DATA(t62) = |end|.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
      ENDIF.
      t37 = t38.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t67) = t23.
      t66 = t67->current.
      t65 = t66.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t68 = t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t65.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      t64 = t70.
      IF t64 = abap_true.
        DATA(t72) = t23.
        DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t73.
        DATA(t74) = abap_true.
        IF t74 = abap_true.
          DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t76) = t37.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t77.
          t75 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t76 i_parent = t77 ).
          t73 = t75.
        ELSE.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t78.
          t73 = t78.
        ENDIF.
        t72->current = t73.
        DELETE t72->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t82) = t23.
        t81 = t82->current.
        t80 = t81.
        t79 = t80.
        DATA(t83) = t23.
        DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t84.
        DATA(t85) = abap_true.
        IF t85 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t86.
          DATA(t87) = t37.
          DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA(t90) = t79.
            t88 = t90.
          ELSE.
            DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t91.
            t88 = t91.
          ENDIF.
          t86 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t87 i_parent = t88 ).
          t84 = t86.
        ELSE.
          DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t92.
          t84 = t92.
        ENDIF.
        t83->current = t84.
        DELETE t83->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA(t93) = t79.
        DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t96) = t23.
        t95 = t96->current.
        t94 = t95.
        t93->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t94 ).
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zcl_lnt_expression_node.
    DATA(t99) = t1.
    t98 = t99.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t97 = t98->find_direct_expressions( i_type_9913 = t100 ).
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t101.
    DATA t102 TYPE REF TO object.
    CLEAR t102.
    DATA(t103) = VALUE i( ).
    DO.
      t97->load( ).
      IF t103 >= lines( t97->items ).
        EXIT.
      ENDIF.
      CLEAR t102.
      READ TABLE t97->items INDEX t103 + 1 INTO t102.
      t103 = t103 + 1.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      CLEAR t101.
      IF t102 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t104 ?= t102.
        DATA t105 TYPE REF TO object.
        t105 = t104->as_ref( ).
        t101 ?= t105.
      ELSE.
        t101 ?= t102.
      ENDIF.
      DATA t106 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t107) = t101.
      DATA(t108) = t2.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t109.
      t106 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t107 i_input_967e = t108 i_target_type = t109 ).
    ENDDO.
    DATA(t110) = abap_true.
    result = t110.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d815_2ab51eeb69fc.
  ENDMETHOD.
ENDCLASS.
