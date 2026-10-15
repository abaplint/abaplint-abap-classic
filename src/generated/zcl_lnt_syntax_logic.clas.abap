* TS: src/abap/5_syntax/syntax.ts:313:1 SyntaxLogic
CLASS zcl_lnt_syntax_logic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA current_file TYPE REF TO zcl_lnt_abap_file.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA deferred TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA object_a393 TYPE REF TO zcl_lnt_abap_object.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA scope TYPE REF TO zcl_lnt_current_scope.
    DATA helpers TYPE REF TO zcl_lnt_shape_0dbcb8a9.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_object_19cd TYPE REF TO zcl_lnt_abap_object.
    METHODS run RETURNING VALUE(result) TYPE REF TO zcl_lnt_isyntax_result.
    METHODS traverse_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_current_scope.
    METHODS new_issue IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_union_8249fcb1.
    METHODS update_scope_structure IMPORTING i_node TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS update_scope_statement IMPORTING i_node TYPE REF TO zcl_lnt_statement_node.
    METHODS update_selection_event_scope IMPORTING i_node TYPE REF TO zcl_lnt_statement_node.
    METHODS opens_selection_event_scope IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_selection_event_boundary IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_slctn_evnt_bndry_strctr IMPORTING i_structure TYPE REF TO zif_lnt_structure RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_syntax_logic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_object_19cd.
    DATA(t3) = t1.
    me->reg = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->issues = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->deferred = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deferred`.
    DATA(t6) = t2.
    me->object_a393 = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `object`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t3 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t4) = me->object_a393.
    t3 = t4->syntax_result.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t2.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t7 = xsdbool( t8 = abap_false ).
    t1 = t7.
    IF t1 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_isyntax_result.
      DATA t11 TYPE REF TO zcl_lnt_isyntax_result.
      DATA(t12) = me->object_a393.
      t11 = t12->syntax_result.
      t10 = t11.
      result = t10.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    DATA(t14) = me->reg.
    DATA(t15) = me->object_a393.
    t13 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t14 i_obj_1ed0 = t15 ).
    me->scope = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
    DATA t16 TYPE REF TO zcl_lnt_shape_0dbcb8a9.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_object_oriented.
      DATA(t21) = me->scope.
      t20 = NEW zcl_lnt_object_oriented( i_scope = t21 ).
      t18 = t20.
    ELSE.
      DATA t22 TYPE REF TO zcl_lnt_object_oriented.
      CLEAR t22.
      t18 = t22.
    ENDIF.
    t17 = t18.
    DATA t23 TYPE REF TO zcl_lnt_procedural.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_procedural.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_procedural.
      DATA(t27) = me->reg.
      DATA(t28) = me->scope.
      t26 = NEW zcl_lnt_procedural( i_reg_f149 = t27 i_scope = t28 ).
      t24 = t26.
    ELSE.
      DATA t29 TYPE REF TO zcl_lnt_procedural.
      CLEAR t29.
      t24 = t29.
    ENDIF.
    t23 = t24.
    t16 = NEW zcl_lnt_shape_0dbcb8a9( i_oooc = t17 i_proc = t23 ).
    CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
    t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `oooc` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `proc` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
    t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |oooc|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |proc|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    me->helpers = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `helpers`.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    me->issues = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    me->deferred = t37.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deferred`.
    DATA t38 TYPE REF TO zif_lnt_ddic_references.
    DATA(t39) = me->reg.
    t38 = t39->get_ddic_references( ).
    DATA(t40) = me->object_a393.
    t38->clear_feba( i_obj_1ed0 = t40 ).
    DATA t41 TYPE REF TO zif_lnt_msag_references.
    DATA(t42) = me->reg.
    t41 = t42->get_msag_references( ).
    DATA(t43) = me->object_a393.
    t41->clear_feba( i_obj_1ed0 = t43 ).
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE abap_bool.
    DATA(t46) = me->object_a393.
    t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_ob_program ).
    t44 = t45.
    IF t45 = abap_true.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE REF TO zcl_lnt_ob_program.
      DATA t49 TYPE REF TO zcl_lnt_ob_program.
      DATA(t50) = me->object_a393.
      t49 ?= t50.
      t48 = t49.
      DATA t51 TYPE abap_bool.
      DATA(t52) = t48.
      t52->parse_xml( ).
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t55 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t56) = t48.
      t55 = t56->parsed_xml.
      t54 = t55.
      t53 = t54->is_include.
      t51 = t53.
      t47 = t51.
      t44 = t47.
    ENDIF.
    IF t44 = abap_true.
      DATA t57 TYPE REF TO zcl_lnt_isyntax_result.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t59.
      t58 = t59.
      DATA t60 TYPE REF TO zif_lnt_spaghetti_scope.
      DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t62) = me->scope.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA(t64) = CONV f( '9007199254740991' ).
      DATA(t65) = CONV f( '9007199254740991' ).
      DATA(t66) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t66->has = abap_true.
      t66->value = t65.
      t63 = NEW zcl_lnt_position( i_row = t64 i_col = t66 ).
      t61 = t62->pop( i_end = t63 ).
      t60 = t61.
      t57 = NEW zcl_lnt_isyntax_result( i_issues = t58 i_spaghetti = t60 ).
      CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
      t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t67 ).
      ENDIF.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `spaghetti` p1 = t68 ).
      ENDIF.
      CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
      t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t69) = |issues|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      DATA(t71) = |spaghetti|.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
      ENDIF.
      result = t57.
      RETURN.
    ENDIF.
    DATA(t73) = CAST zcl_lnt_current_scope( me->traverse_object( ) ).
    DATA(t74) = me->deferred.
    DATA t75 TYPE REF TO zif_lnt_closure_d810f2d3.
    CLEAR t75.
    DATA t76 TYPE REF TO object.
    CLEAR t76.
    DATA(t77) = VALUE i( ).
    DO.
      t74->load( ).
      IF t77 >= lines( t74->items ).
        EXIT.
      ENDIF.
      CLEAR t76.
      READ TABLE t74->items INDEX t77 + 1 INTO t76.
      t77 = t77 + 1.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      CLEAR t75.
      IF t76 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t78 ?= t76.
        DATA t79 TYPE REF TO object.
        t79 = t78->as_ref( ).
        t75 ?= t79.
      ELSE.
        t75 ?= t76.
      ENDIF.
      DATA t80 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
      DATA(t81) = t75.
      t80 = t81->call_7bd1( ).
      IF t80 IS NOT BOUND.
        DATA(t82) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t83) = |await provider did not return a certified settled promise|.
        t82->source_location = t83.
        RAISE EXCEPTION t82.
      ENDIF.
      IF t80->rejection IS BOUND.
        RAISE EXCEPTION t80->rejection.
      ENDIF.
    ENDDO.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    me->deferred = t84.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deferred`.
    DO.
      DATA(t85) = abap_true.
      IF t85 = abap_false.
        EXIT.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t88) = me->scope.
      DATA t89 TYPE REF TO zcl_lnt_position.
      DATA(t90) = CONV f( '9007199254740991' ).
      DATA(t91) = CONV f( '9007199254740991' ).
      DATA(t92) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t92->has = abap_true.
      t92->value = t91.
      t89 = NEW zcl_lnt_position( i_row = t90 i_col = t92 ).
      t87 = t88->pop( i_end = t89 ).
      t86 = t87.
      DATA t93 TYPE abap_bool.
      DATA t94 TYPE string.
      DATA t95 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t98) = t86.
      t97 = t98->g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc( ).
      t96 = t97.
      DATA t99 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t100) = t96.
      t99 = t100->identifier.
      t95 = t99.
      t94 = t95->stype.
      DATA(t101) = |_builtin|.
      t93 = xsdbool( t94 = t101 ).
      IF t93 = abap_true.
        DATA t102 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t102.
        DATA t103 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t105) = me->issues.
        t104 = t105.
        DATA t106 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA(t107) = t86.
        t106 = t107.
        t103 = NEW zcl_lnt_isyntax_result( i_issues = t104 i_spaghetti = t106 ).
        CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
        t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t108 ).
        ENDIF.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `spaghetti` p1 = t109 ).
        ENDIF.
        CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
        t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t110) = |issues|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        DATA(t112) = |spaghetti|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        t102 = t103.
        DATA(t114) = me->object_a393.
        DATA t115 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = t102.
          t115 = t117.
        ELSE.
          DATA t118 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t118.
          t115 = t118.
        ENDIF.
        t114->syntax_result = t115.
        DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntaxResult`.
        DATA(t119) = t102.
        result = t119.
        RETURN.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD traverse_object.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->object_a393.
    t2 = t3->get_sequenced_files( ).
    t1 = t2.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = me->object_a393.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_program ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA(t8) = me->object_a393.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_function_group ).
      t4 = t7.
    ENDIF.
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zif_lnt_union_d439e5f2.
      DATA(t11) = me->object_a393.
      t10 ?= t11.
      t9 = t10->get_sequenced_files( ).
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      DATA(t14) = VALUE i( ).
      DO.
        t9->load( ).
        IF t14 >= lines( t9->items ).
          EXIT.
        ENDIF.
        CLEAR t13.
        READ TABLE t9->items INDEX t14 + 1 INTO t13.
        t14 = t14 + 1.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t15.
        CLEAR t12.
        IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t15 ?= t13.
          DATA t16 TYPE REF TO object.
          t16 = t15->as_ref( ).
          t12 ?= t16.
        ELSE.
          t12 ?= t13.
        ENDIF.
        DATA t17 TYPE REF TO zcl_lnt_procedural.
        DATA(t18) = me->helpers.
        t17 = t18->proc.
        DATA(t19) = t12.
        DATA t20 TYPE REF TO zcl_lnt_abap_object.
        DATA t21 TYPE REF TO zif_lnt_union_d439e5f2.
        DATA(t22) = me->object_a393.
        t21 ?= t22.
        t20 ?= t21.
        t17->add_all_form_definitions( i_file = t19 i_obj_1ed0 = t20 ).
      ENDDO.
      DATA t23 TYPE REF TO zcl_lnt_abap_file.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA t25 TYPE REF TO zif_lnt_union_d439e5f2.
      DATA(t26) = me->object_a393.
      t25 ?= t26.
      t24 = t25->get_main_abap_file( ).
      t23 = t24.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zcl_lnt_abap_file.
      DATA(t29) = t23.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t30 = t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t28.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      t32 = xsdbool( t33 = abap_false ).
      t27 = t32.
      IF t27 = abap_true.
        DATA t35 TYPE string.
        DATA(t36) = |_program|.
        t35 = t36.
        DATA t37 TYPE abap_bool.
        DATA(t38) = me->object_a393.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_function_group ).
        IF t37 = abap_true.
          DATA(t39) = |_function_group|.
          t35 = t39.
        ENDIF.
        DATA t40 TYPE REF TO zcl_lnt_current_scope.
        DATA(t41) = me->scope.
        t40 = t41.
        DATA t42 TYPE string.
        DATA(t43) = t35.
        t42 = t43.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA t46 TYPE REF TO zif_lnt_union_d439e5f2.
        DATA(t47) = me->object_a393.
        t46 ?= t47.
        t45 = t46->get_name( ).
        t44 = t45.
        DATA t48 TYPE REF TO zcl_lnt_position.
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA(t50) = CONV f( 1 ).
        DATA(t51) = CONV f( 1 ).
        DATA(t52) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t52->has = abap_true.
        t52->value = t51.
        t49 = NEW zcl_lnt_position( i_row = t50 i_col = t52 ).
        t48 = t49.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        DATA t55 TYPE REF TO zcl_lnt_abstract_file.
        DATA t56 TYPE REF TO zcl_lnt_abap_file.
        DATA(t57) = t23.
        t56 = t57.
        t55 = t56.
        DATA t58 TYPE string.
        DATA(t59) = t55.
        t58 = t59->filename.
        t54 = t58.
        t53 = t54.
        DATA t60 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t62 TYPE string.
        DATA(t63) = t42.
        t62 = t63.
        DATA t64 TYPE string.
        DATA(t65) = t44.
        t64 = t65.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA(t67) = t48.
        t66 = t67.
        DATA t68 TYPE string.
        DATA(t69) = t53.
        t68 = t69.
        DATA t70 TYPE REF TO zcl_lnt_position.
        DATA t71 TYPE REF TO zcl_lnt_position.
        CLEAR t71.
        t70 = t71.
        t61 = NEW zcl_lnt_iscope_identifier( i_stype = t62 i_sname = t64 i_filename = t68 i_start = t66 i_end = t70 ).
        CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
        t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t72 ).
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t73 ).
        ENDIF.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t74 ).
        ENDIF.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t75 ).
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t76 ).
        ENDIF.
        CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
        t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t77) = |stype|.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        ENDIF.
        DATA(t79) = |sname|.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        ENDIF.
        DATA(t81) = |start|.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
        ENDIF.
        DATA(t83) = |filename|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        ENDIF.
        DATA(t85) = |end|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        t60 = t61.
        DATA(t87) = VALUE abap_bool( ).
        DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t90) = t40.
        t89 = t90->current.
        t88 = t89.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        t91 = t92.
        DATA(t93) = VALUE abap_bool( ).
        DATA(t94) = t88.
        IF t94 IS INITIAL.
          t93 = abap_true.
        ENDIF.
        t87 = t93.
        IF t87 = abap_true.
          DATA(t95) = t40.
          DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t96.
          DATA(t97) = abap_true.
          IF t97 = abap_true.
            DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t99) = t60.
            DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t100.
            t98 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t99 i_parent = t100 ).
            t96 = t98.
          ELSE.
            DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t101.
            t96 = t101.
          ENDIF.
          t95->current = t96.
          DELETE t95->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t105) = t40.
          t104 = t105->current.
          t103 = t104.
          t102 = t103.
          DATA(t106) = t40.
          DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t107.
          DATA(t108) = abap_true.
          IF t108 = abap_true.
            DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t109.
            DATA(t110) = t60.
            DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t111.
            DATA(t112) = abap_true.
            IF t112 = abap_true.
              DATA(t113) = t102.
              t111 = t113.
            ELSE.
              DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t114.
              t111 = t114.
            ENDIF.
            t109 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t110 i_parent = t111 ).
            t107 = t109.
          ELSE.
            DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t115.
            t107 = t115.
          ENDIF.
          t106->current = t107.
          DELETE t106->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA(t116) = t102.
          DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t119) = t40.
          t118 = t119->current.
          t117 = t118.
          t116->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t117 ).
        ENDIF.
        DATA t120 TYPE abap_bool.
        DATA(t121) = me->object_a393.
        t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_function_group ).
        IF t120 = abap_true.
          DATA t122 TYPE REF TO zcl_lnt_procedural.
          DATA(t123) = me->helpers.
          t122 = t123->proc.
          DATA t124 TYPE REF TO zcl_lnt_function_group.
          DATA(t125) = me->object_a393.
          t124 ?= t125.
          t122->find_function_group_scope( i_fg = t124 ).
        ENDIF.
      ENDIF.
    ELSE.
      DATA t126 TYPE abap_bool.
      DATA(t127) = me->object_a393.
      t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_ob_type_pool ).
      IF t126 = abap_true.
        DATA t128 TYPE REF TO zcl_lnt_abap_file.
        DATA t129 TYPE REF TO zcl_lnt_abap_file.
        DATA t130 TYPE REF TO zcl_lnt_ob_type_pool.
        DATA(t131) = me->object_a393.
        t130 ?= t131.
        t129 = t130->get_main_abap_file( ).
        t128 = t129.
        DATA(t132) = VALUE abap_bool( ).
        DATA t133 TYPE REF TO zcl_lnt_abap_file.
        DATA(t134) = t128.
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        t135 = t136.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = VALUE abap_bool( ).
        DATA(t139) = t133.
        IF t139 IS INITIAL.
          t138 = abap_true.
        ENDIF.
        t137 = xsdbool( t138 = abap_false ).
        t132 = t137.
        IF t132 = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_current_scope.
          DATA(t141) = me->scope.
          t140 = t141.
          DATA t142 TYPE string.
          DATA t143 TYPE string.
          DATA t144 TYPE REF TO zcl_lnt_abstract_object.
          DATA t145 TYPE REF TO zcl_lnt_ob_type_pool.
          DATA(t146) = me->object_a393.
          t145 ?= t146.
          t144 = t145.
          DATA t147 TYPE string.
          DATA(t148) = t144.
          t147 = t148->name.
          t143 = t147.
          t142 = t143.
          DATA t149 TYPE REF TO zcl_lnt_position.
          DATA t150 TYPE REF TO zcl_lnt_position.
          DATA(t151) = CONV f( 1 ).
          DATA(t152) = CONV f( 1 ).
          DATA(t153) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t153->has = abap_true.
          t153->value = t152.
          t150 = NEW zcl_lnt_position( i_row = t151 i_col = t153 ).
          t149 = t150.
          DATA t154 TYPE string.
          DATA t155 TYPE string.
          DATA t156 TYPE REF TO zcl_lnt_abstract_file.
          DATA t157 TYPE REF TO zcl_lnt_abap_file.
          DATA(t158) = t128.
          t157 = t158.
          t156 = t157.
          DATA t159 TYPE string.
          DATA(t160) = t156.
          t159 = t160->filename.
          t155 = t159.
          t154 = t155.
          DATA t161 TYPE REF TO zcl_lnt_iscope_identifier.
          CLEAR t161.
          DATA t162 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t163 TYPE string.
          DATA(t164) = |_type_pool|.
          t163 = t164.
          DATA t165 TYPE string.
          DATA(t166) = t142.
          t165 = t166.
          DATA t167 TYPE REF TO zcl_lnt_position.
          DATA(t168) = t149.
          t167 = t168.
          DATA t169 TYPE string.
          DATA(t170) = t154.
          t169 = t170.
          DATA t171 TYPE REF TO zcl_lnt_position.
          DATA t172 TYPE REF TO zcl_lnt_position.
          CLEAR t172.
          t171 = t172.
          t162 = NEW zcl_lnt_iscope_identifier( i_stype = t163 i_sname = t165 i_filename = t169 i_start = t167 i_end = t171 ).
          CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
          t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t173 ).
          ENDIF.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t174 ).
          ENDIF.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t175 ).
          ENDIF.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t176 ).
          ENDIF.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t177 ).
          ENDIF.
          CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
          t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t178) = |stype|.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
          ENDIF.
          DATA(t180) = |sname|.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
          ENDIF.
          DATA(t182) = |start|.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
          ENDIF.
          DATA(t184) = |filename|.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          DATA(t186) = |end|.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
          ENDIF.
          t161 = t162.
          DATA(t188) = VALUE abap_bool( ).
          DATA t189 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t190 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t191) = t140.
          t190 = t191->current.
          t189 = t190.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          t192 = t193.
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = t189.
          IF t195 IS INITIAL.
            t194 = abap_true.
          ENDIF.
          t188 = t194.
          IF t188 = abap_true.
            DATA(t196) = t140.
            DATA t197 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t197.
            DATA(t198) = abap_true.
            IF t198 = abap_true.
              DATA t199 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t200) = t161.
              DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t201.
              t199 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t200 i_parent = t201 ).
              t197 = t199.
            ELSE.
              DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t202.
              t197 = t202.
            ENDIF.
            t196->current = t197.
            DELETE t196->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t204 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t206) = t140.
            t205 = t206->current.
            t204 = t205.
            t203 = t204.
            DATA(t207) = t140.
            DATA t208 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t208.
            DATA(t209) = abap_true.
            IF t209 = abap_true.
              DATA t210 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t210.
              DATA(t211) = t161.
              DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t212.
              DATA(t213) = abap_true.
              IF t213 = abap_true.
                DATA(t214) = t203.
                t212 = t214.
              ELSE.
                DATA t215 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t215.
                t212 = t215.
              ENDIF.
              t210 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t211 i_parent = t212 ).
              t208 = t210.
            ELSE.
              DATA t216 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t216.
              t208 = t216.
            ENDIF.
            t207->current = t208.
            DELETE t207->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
            DATA(t217) = t203.
            DATA t218 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t219 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t220) = t140.
            t219 = t220->current.
            t218 = t219.
            t217->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t218 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t221) = t1.
    DATA t222 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t222.
    DATA t223 TYPE REF TO object.
    CLEAR t223.
    DATA(t224) = VALUE i( ).
    DO.
      t221->load( ).
      IF t224 >= lines( t221->items ).
        EXIT.
      ENDIF.
      CLEAR t223.
      READ TABLE t221->items INDEX t224 + 1 INTO t223.
      t224 = t224 + 1.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t225.
      CLEAR t222.
      IF t223 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t225 ?= t223.
        DATA t226 TYPE REF TO object.
        t226 = t225->as_ref( ).
        t222 ?= t226.
      ELSE.
        t222 ?= t223.
      ENDIF.
      DATA(t227) = t222.
      me->current_file = t227.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `currentFile`.
      DATA t228 TYPE REF TO zcl_lnt_structure_node.
      DATA t229 TYPE REF TO zcl_lnt_structure_node.
      DATA t230 TYPE REF TO zcl_lnt_abap_file.
      DATA(t231) = me->current_file.
      t230 = t231.
      DATA t232 TYPE REF TO zcl_lnt_structure_node.
      DATA(t233) = t230.
      t232 = t233->structure.
      t229 = t232.
      t228 = t229.
      DATA(t234) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zcl_lnt_structure_node.
      DATA(t236) = t228.
      t235 = t236.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      t237 = t238.
      DATA(t239) = VALUE abap_bool( ).
      DATA(t240) = t235.
      IF t240 IS INITIAL.
        t239 = abap_true.
      ENDIF.
      t234 = t239.
      IF t234 = abap_true.
        DATA(t241) = me->scope.
        result = t241.
        RETURN.
      ELSE.
        DATA t242 TYPE REF TO zcl_lnt_structure_node.
        DATA(t243) = t228.
        t242 = t243.
        me->traverse( i_node = t242 ).
      ENDIF.
    ENDDO.
    DATA(t244) = me->scope.
    result = t244.

  ENDMETHOD.

  METHOD new_issue.
    DATA(t1) = i_token.
    DATA(t2) = i_message_26cb.
    DATA t3 TYPE REF TO zcl_lnt_issue.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_issue.
    CLEAR t4.
    DATA(t5) = me->current_file.
    DATA(t6) = t1.
    DATA(t7) = t2.
    DATA(t8) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Error|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t14.
    t4 = zcl_lnt_issue=>at_token( i_file = t5 i_token = t6 i_message_26cb = t7 i_key = t8 i_severity = t9 i_fix = t14 ).
    t3 = t4.
    DATA(t15) = me->issues.
    DATA(t16) = t3.
    t15->load( ).
    APPEND t16 TO t15->items.
    t15->save( ).
  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = t1.
    t2 = t3->get_children( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    DATA(t6) = VALUE i( ).
    DO.
      t2->load( ).
      IF t6 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t2->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        CLEAR t8.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t4.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_node ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t4.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_statement_node ).
      t12 = t13.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      TRY.
          DATA(t16) = t9.
          IF t16 = abap_true.
            DATA(t17) = VALUE abap_bool( ).
            DATA(t18) = VALUE abap_bool( ).
            DATA t19 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t19.
            DATA(t20) = t4.
            DATA t21 TYPE REF TO object.
            CLEAR t21.
            t21 = t20.
            t19 ?= t21.
            t18 = me->update_scope_structure( i_node = t19 ).
            t17 = t18.
            DATA(t22) = VALUE abap_bool( ).
            DATA(t23) = t17.
            DATA(t24) = abap_true.
            t22 = xsdbool( t23 = t24 ).
            IF t22 = abap_true.
              CONTINUE.
            ENDIF.
          ELSE.
            DATA(t25) = t12.
            IF t25 = abap_true.
              DATA t26 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t26.
              DATA(t27) = t4.
              DATA t28 TYPE REF TO object.
              CLEAR t28.
              t28 = t27.
              t26 ?= t28.
              me->update_scope_statement( i_node = t26 ).
            ENDIF.
          ENDIF.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t15.
          DATA(t29) = t15->payload.
          DATA t30 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t30.
          DATA t31 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t31.
          DATA t32 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t32.
          DATA(t33) = t4.
          t32 ?= t33.
          t31 = t32->get_first_token( ).
          t30 = t31.
          DATA(t34) = VALUE string( ).
          DATA(t35) = VALUE string( ).
          DATA(t36) = t29.
          t35 = t36->message_25cb.
          t34 = t35.
          DATA t37 TYPE REF TO zcl_lnt_issue.
          CLEAR t37.
          DATA t38 TYPE REF TO zcl_lnt_issue.
          CLEAR t38.
          DATA(t39) = me->current_file.
          DATA(t40) = t30.
          DATA(t41) = t34.
          DATA(t42) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t43.
          DATA(t44) = abap_true.
          IF t44 = abap_true.
            DATA(t45) = |Error|.
            DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t46->has = abap_true.
            t46->value = t45.
            t43 = t46.
          ELSE.
            DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t47.
            t43 = t47.
          ENDIF.
          DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t48.
          t38 = zcl_lnt_issue=>at_token( i_file = t39 i_token = t40 i_message_26cb = t41 i_key = t42 i_severity = t43 i_fix = t48 ).
          t37 = t38.
          DATA(t49) = me->issues.
          DATA(t50) = t37.
          t49->load( ).
          APPEND t50 TO t49->items.
          t49->save( ).
          EXIT.
      ENDTRY.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t12.
      t51 = t52.
      IF t52 = abap_true.
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zif_lnt_statement.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t55.
        DATA(t56) = t4.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t57 = t56.
        t55 ?= t57.
        t54 = t55->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_include ).
        t51 = t53.
      ENDIF.
      IF t51 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_procedural.
        CLEAR t60.
        DATA(t61) = me->helpers.
        t60 = t61->proc.
        DATA t62 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t62.
        DATA(t63) = t4.
        DATA t64 TYPE REF TO object.
        CLEAR t64.
        t64 = t63.
        t62 ?= t64.
        DATA(t65) = me->object_a393.
        t59 = t60->find_include( i_node = t62 i_obj_1ed0 = t65 ).
        t58 = t59.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t68.
        DATA(t69) = t58.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        t70 = t71.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t68.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        t72 = xsdbool( t73 = abap_false ).
        t67 = t72.
        t66 = t67.
        IF t67 = abap_true.
          DATA(t75) = VALUE abap_bool( ).
          DATA t76 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t77.
          DATA t78 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t78.
          DATA t79 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t79.
          DATA(t80) = t58.
          t79 = t80.
          t78 = t79.
          DATA t81 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t81.
          DATA(t82) = t78.
          t81 = t82->structure.
          t77 = t81.
          t76 = t77.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          t83 = t84.
          DATA(t85) = VALUE abap_bool( ).
          DATA(t86) = VALUE abap_bool( ).
          DATA(t87) = t76.
          IF t87 IS INITIAL.
            t86 = abap_true.
          ENDIF.
          t85 = xsdbool( t86 = abap_false ).
          t75 = t85.
          t66 = t75.
        ENDIF.
        IF t66 = abap_true.
          DATA t88 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t88.
          DATA(t89) = me->current_file.
          t88 = t89.
          DATA t90 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t90.
          DATA(t91) = t58.
          t90 = t91.
          me->current_file = t90.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `currentFile`.
          DATA t92 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t92.
          DATA t93 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t93.
          DATA t94 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t95.
          DATA(t96) = t58.
          t95 = t96.
          t94 = t95.
          DATA t97 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t97.
          DATA(t98) = t94.
          t97 = t98->structure.
          t93 = t97.
          t92 = t93.
          me->traverse( i_node = t92 ).
          DATA(t99) = t88.
          me->current_file = t99.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `currentFile`.
        ENDIF.
      ENDIF.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = t9.
      t100 = t101.
      IF t101 = abap_false.
        DATA(t102) = t12.
        t100 = t102.
      ENDIF.
      IF t100 = abap_true.
        DATA t103 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t103.
        DATA(t104) = t4.
        t103 ?= t104.
        me->traverse( i_node = t103 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD update_scope_structure.
    DATA(t1) = i_node.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t5) = me->current_file.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = t4.
    t6 = t7->filename.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE REF TO zif_lnt_structure.
    DATA t9 TYPE REF TO zif_lnt_structure.
    DATA(t10) = t1.
    t9 = t10->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t8 = t9.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE string.
    DATA(t14) = me->scope.
    t13 = t14->get_type( ).
    DATA(t15) = |selection_event|.
    t12 = xsdbool( t13 = t15 ).
    t11 = t12.
    IF t12 = abap_true.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_structure.
      DATA(t18) = t8.
      t17 = t18.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t17.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_sr_class_definition ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t17.
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_sr_interface ).
        t19 = t22.
      ENDIF.
      t16 = t19.
      t11 = t16.
    ENDIF.
    IF t11 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t25) = me->scope.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t29) = t1.
      t28 = t29->get_first_token( ).
      t27 = t28.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA(t31) = t27.
      t30 = t31->start.
      t26 = t30.
      t24 = t25->pop( i_end = t26 ).
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_syntax_input.
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    DATA(t35) = me->scope.
    t34 = t35.
    DATA t36 TYPE string.
    DATA(t37) = t2.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t39) = me->issues.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t41) = me->deferred.
    t40 = t41.
    t33 = NEW zcl_lnt_syntax_input( i_scope = t34 i_filename = t36 i_issues = t38 i_deferred = t40 ).
    CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
    t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
    t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |scope|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |filename|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |issues|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |deferred|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    t32 = t33.
    DATA t54 TYPE abap_bool.
    DATA(t55) = t8.
    t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t57) = t1.
      DATA(t58) = t32.
      t56 = NEW zcl_lnt_ty_class_definition( i_node = t57 i_input_967e = t58 ).
      DATA(t59) = abap_true.
      result = t59.
      RETURN.
    ELSE.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t8.
      t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_sr_interface ).
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_interface_definition.
        DATA(t63) = t1.
        DATA(t64) = t32.
        t62 = NEW zcl_lnt_interface_definition( i_node = t63 i_input_967e = t64 ).
        DATA(t65) = abap_true.
        result = t65.
        RETURN.
      ELSE.
        DATA t66 TYPE abap_bool.
        DATA(t67) = t8.
        t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_sr_types ).
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_current_scope.
          DATA(t69) = me->scope.
          t68 = t69.
          DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t72) = NEW zcl_lnt_sy_types( ).
          DATA(t73) = t1.
          DATA(t74) = t32.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t71 = t72->run_syntax( i_node = t73 i_input_967e = t74 i_qualified_name_prefix = t75 ).
          t70 = t71.
          DATA(t76) = VALUE abap_bool( ).
          DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t78) = t70.
          t77 = t78.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          t79 = t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = t77.
          IF t82 IS INITIAL.
            t81 = abap_true.
          ENDIF.
          t76 = t81.
          IF t76 = abap_true.
          ELSE.
            DATA(t83) = t68.
            DATA(t84) = VALUE string( ).
            DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t87) = t70.
            t86 = t87.
            t85 = t86.
            DATA(t88) = VALUE string( ).
            DATA t89 TYPE string.
            DATA t90 TYPE string.
            DATA t91 TYPE REF TO zcl_lnt_abstract_token.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t93) = t85.
            t92 = t93->token.
            t91 = t92.
            DATA t94 TYPE string.
            DATA(t95) = t91.
            t94 = t95->str.
            t90 = t94.
            t89 = t90.
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = VALUE string( ).
            DATA(t98) = t89.
            DATA(t99) = 0.
            DATA(t100) = 1.
            DATA(t101) = strlen( t98 ).
            IF t99 < 0.
              t99 = t99 + t101.
              IF t99 < 0.
                t99 = 0.
              ENDIF.
            ENDIF.
            IF t99 > t101 OR t100 <= 0.
              CLEAR t97.
            ELSE.
              IF t100 > t101 - t99.
                t100 = t101 - t99.
              ENDIF.
              t97 = t98+t99(t100).
            ENDIF.
            DATA(t102) = |!|.
            t96 = xsdbool( t97 = t102 ).
            IF t96 = abap_true.
              DATA(t103) = VALUE string( ).
              DATA t104 TYPE string.
              DATA(t105) = t89.
              t104 = t105.
              DATA(t106) = VALUE string( ).
              DATA(t107) = t104.
              DATA(t108) = 1.
              DATA t109 TYPE i.
              DATA(t110) = t104.
              DATA(t111) = strlen( t110 ).
              t109 = t111.
              DATA(t112) = strlen( t107 ).
              IF t108 < 0.
                t108 = t108 + t112.
                IF t108 < 0.
                  t108 = 0.
                ENDIF.
              ENDIF.
              IF t108 > t112 OR t109 <= 0.
                CLEAR t106.
              ELSE.
                IF t109 > t112 - t108.
                  t109 = t112 - t108.
                ENDIF.
                t106 = t107+t108(t109).
              ENDIF.
              t103 = t106.
              t89 = t103.
            ENDIF.
            DATA(t113) = t89.
            t88 = t113.
            t84 = t88.
            DATA t114 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t114.
            DATA(t115) = abap_true.
            IF t115 = abap_true.
              DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t117) = t70.
              t116 = t117.
              t114 = t116.
            ELSE.
              DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t118.
              t114 = t118.
            ENDIF.
            t83->add_type_named( i_name = t84 i_type_9913 = t114 ).
          ENDIF.
          DATA(t119) = abap_true.
          result = t119.
          RETURN.
        ELSE.
          DATA t120 TYPE abap_bool.
          DATA(t121) = t8.
          t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_sr_constants ).
          IF t120 = abap_true.
            DATA t122 TYPE REF TO zcl_lnt_current_scope.
            DATA(t123) = me->scope.
            t122 = t123.
            DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t126 TYPE REF TO zcl_lnt_shape_28fac025.
            DATA(t127) = NEW zcl_lnt_sy_constants( ).
            DATA(t128) = t1.
            DATA(t129) = t32.
            t126 = t127->run_syntax( i_node = t128 i_input_967e = t129 ).
            t125 = t126->type_cba0.
            t124 = t125.
            DATA(t130) = VALUE abap_bool( ).
            DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t132) = t124.
            t131 = t132.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t134.
            t133 = t134.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = t131.
            IF t136 IS INITIAL.
              t135 = abap_true.
            ENDIF.
            t130 = t135.
            IF t130 = abap_true.
            ELSE.
              DATA(t137) = t122.
              DATA(t138) = VALUE string( ).
              DATA t139 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t140 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t141) = t124.
              t140 = t141.
              t139 = t140.
              DATA(t142) = VALUE string( ).
              DATA t143 TYPE string.
              DATA t144 TYPE string.
              DATA t145 TYPE REF TO zcl_lnt_abstract_token.
              DATA t146 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t147) = t139.
              t146 = t147->token.
              t145 = t146.
              DATA t148 TYPE string.
              DATA(t149) = t145.
              t148 = t149->str.
              t144 = t148.
              t143 = t144.
              DATA(t150) = VALUE abap_bool( ).
              DATA(t151) = VALUE string( ).
              DATA(t152) = t143.
              DATA(t153) = 0.
              DATA(t154) = 1.
              DATA(t155) = strlen( t152 ).
              IF t153 < 0.
                t153 = t153 + t155.
                IF t153 < 0.
                  t153 = 0.
                ENDIF.
              ENDIF.
              IF t153 > t155 OR t154 <= 0.
                CLEAR t151.
              ELSE.
                IF t154 > t155 - t153.
                  t154 = t155 - t153.
                ENDIF.
                t151 = t152+t153(t154).
              ENDIF.
              DATA(t156) = |!|.
              t150 = xsdbool( t151 = t156 ).
              IF t150 = abap_true.
                DATA(t157) = VALUE string( ).
                DATA t158 TYPE string.
                DATA(t159) = t143.
                t158 = t159.
                DATA(t160) = VALUE string( ).
                DATA(t161) = t158.
                DATA(t162) = 1.
                DATA t163 TYPE i.
                DATA(t164) = t158.
                DATA(t165) = strlen( t164 ).
                t163 = t165.
                DATA(t166) = strlen( t161 ).
                IF t162 < 0.
                  t162 = t162 + t166.
                  IF t162 < 0.
                    t162 = 0.
                  ENDIF.
                ENDIF.
                IF t162 > t166 OR t163 <= 0.
                  CLEAR t160.
                ELSE.
                  IF t163 > t166 - t162.
                    t163 = t166 - t162.
                  ENDIF.
                  t160 = t161+t162(t163).
                ENDIF.
                t157 = t160.
                t143 = t157.
              ENDIF.
              DATA(t167) = t143.
              t142 = t167.
              t138 = t142.
              DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t169) = t124.
              t168 = t169.
              t137->add_named_identifier( i_name = t138 i_identifier = t168 ).
            ENDIF.
            DATA(t170) = abap_true.
            result = t170.
            RETURN.
          ELSE.
            DATA t171 TYPE abap_bool.
            DATA(t172) = t8.
            t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_sr_data ).
            IF t171 = abap_true.
              DATA t173 TYPE REF TO zcl_lnt_current_scope.
              DATA(t174) = me->scope.
              t173 = t174.
              DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t177) = t1.
              DATA(t178) = t32.
              t176 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t177 i_input_967e = t178 ).
              t175 = t176.
              DATA(t179) = VALUE abap_bool( ).
              DATA t180 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t181) = t175.
              t180 = t181.
              DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t183.
              t182 = t183.
              DATA(t184) = VALUE abap_bool( ).
              DATA(t185) = t180.
              IF t185 IS INITIAL.
                t184 = abap_true.
              ENDIF.
              t179 = t184.
              IF t179 = abap_true.
              ELSE.
                DATA(t186) = t173.
                DATA(t187) = VALUE string( ).
                DATA t188 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t189 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t190) = t175.
                t189 = t190.
                t188 = t189.
                DATA(t191) = VALUE string( ).
                DATA t192 TYPE string.
                DATA t193 TYPE string.
                DATA t194 TYPE REF TO zcl_lnt_abstract_token.
                DATA t195 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t196) = t188.
                t195 = t196->token.
                t194 = t195.
                DATA t197 TYPE string.
                DATA(t198) = t194.
                t197 = t198->str.
                t193 = t197.
                t192 = t193.
                DATA(t199) = VALUE abap_bool( ).
                DATA(t200) = VALUE string( ).
                DATA(t201) = t192.
                DATA(t202) = 0.
                DATA(t203) = 1.
                DATA(t204) = strlen( t201 ).
                IF t202 < 0.
                  t202 = t202 + t204.
                  IF t202 < 0.
                    t202 = 0.
                  ENDIF.
                ENDIF.
                IF t202 > t204 OR t203 <= 0.
                  CLEAR t200.
                ELSE.
                  IF t203 > t204 - t202.
                    t203 = t204 - t202.
                  ENDIF.
                  t200 = t201+t202(t203).
                ENDIF.
                DATA(t205) = |!|.
                t199 = xsdbool( t200 = t205 ).
                IF t199 = abap_true.
                  DATA(t206) = VALUE string( ).
                  DATA t207 TYPE string.
                  DATA(t208) = t192.
                  t207 = t208.
                  DATA(t209) = VALUE string( ).
                  DATA(t210) = t207.
                  DATA(t211) = 1.
                  DATA t212 TYPE i.
                  DATA(t213) = t207.
                  DATA(t214) = strlen( t213 ).
                  t212 = t214.
                  DATA(t215) = strlen( t210 ).
                  IF t211 < 0.
                    t211 = t211 + t215.
                    IF t211 < 0.
                      t211 = 0.
                    ENDIF.
                  ENDIF.
                  IF t211 > t215 OR t212 <= 0.
                    CLEAR t209.
                  ELSE.
                    IF t212 > t215 - t211.
                      t212 = t215 - t211.
                    ENDIF.
                    t209 = t210+t211(t212).
                  ENDIF.
                  t206 = t209.
                  t192 = t206.
                ENDIF.
                DATA(t216) = t192.
                t191 = t216.
                t187 = t191.
                DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t218) = t175.
                t217 = t218.
                t186->add_named_identifier( i_name = t187 i_identifier = t217 ).
              ENDIF.
              DATA(t219) = abap_true.
              result = t219.
              RETURN.
            ELSE.
              DATA t220 TYPE abap_bool.
              DATA(t221) = t8.
              t220 = xsdbool( t221 IS BOUND AND t221 IS INSTANCE OF zcl_lnt_sr_statics ).
              IF t220 = abap_true.
                DATA t222 TYPE REF TO zcl_lnt_current_scope.
                DATA(t223) = me->scope.
                t222 = t223.
                DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t225 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t226) = NEW zcl_lnt_sy_statics( ).
                DATA(t227) = t1.
                DATA(t228) = t32.
                t225 = t226->run_syntax( i_node = t227 i_input_967e = t228 ).
                t224 = t225.
                DATA(t229) = VALUE abap_bool( ).
                DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t231) = t224.
                t230 = t231.
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t233.
                t232 = t233.
                DATA(t234) = VALUE abap_bool( ).
                DATA(t235) = t230.
                IF t235 IS INITIAL.
                  t234 = abap_true.
                ENDIF.
                t229 = t234.
                IF t229 = abap_true.
                ELSE.
                  DATA(t236) = t222.
                  DATA(t237) = VALUE string( ).
                  DATA t238 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t239 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t240) = t224.
                  t239 = t240.
                  t238 = t239.
                  DATA(t241) = VALUE string( ).
                  DATA t242 TYPE string.
                  DATA t243 TYPE string.
                  DATA t244 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t245 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t246) = t238.
                  t245 = t246->token.
                  t244 = t245.
                  DATA t247 TYPE string.
                  DATA(t248) = t244.
                  t247 = t248->str.
                  t243 = t247.
                  t242 = t243.
                  DATA(t249) = VALUE abap_bool( ).
                  DATA(t250) = VALUE string( ).
                  DATA(t251) = t242.
                  DATA(t252) = 0.
                  DATA(t253) = 1.
                  DATA(t254) = strlen( t251 ).
                  IF t252 < 0.
                    t252 = t252 + t254.
                    IF t252 < 0.
                      t252 = 0.
                    ENDIF.
                  ENDIF.
                  IF t252 > t254 OR t253 <= 0.
                    CLEAR t250.
                  ELSE.
                    IF t253 > t254 - t252.
                      t253 = t254 - t252.
                    ENDIF.
                    t250 = t251+t252(t253).
                  ENDIF.
                  DATA(t255) = |!|.
                  t249 = xsdbool( t250 = t255 ).
                  IF t249 = abap_true.
                    DATA(t256) = VALUE string( ).
                    DATA t257 TYPE string.
                    DATA(t258) = t242.
                    t257 = t258.
                    DATA(t259) = VALUE string( ).
                    DATA(t260) = t257.
                    DATA(t261) = 1.
                    DATA t262 TYPE i.
                    DATA(t263) = t257.
                    DATA(t264) = strlen( t263 ).
                    t262 = t264.
                    DATA(t265) = strlen( t260 ).
                    IF t261 < 0.
                      t261 = t261 + t265.
                      IF t261 < 0.
                        t261 = 0.
                      ENDIF.
                    ENDIF.
                    IF t261 > t265 OR t262 <= 0.
                      CLEAR t259.
                    ELSE.
                      IF t262 > t265 - t261.
                        t262 = t265 - t261.
                      ENDIF.
                      t259 = t260+t261(t262).
                    ENDIF.
                    t256 = t259.
                    t242 = t256.
                  ENDIF.
                  DATA(t266) = t242.
                  t241 = t266.
                  t237 = t241.
                  DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t268) = t224.
                  t267 = t268.
                  t236->add_named_identifier( i_name = t237 i_identifier = t267 ).
                ENDIF.
                DATA(t269) = abap_true.
                result = t269.
                RETURN.
              ELSE.
                DATA t270 TYPE abap_bool.
                DATA(t271) = t8.
                t270 = xsdbool( t271 IS BOUND AND t271 IS INSTANCE OF zcl_lnt_sr_type_mesh ).
                IF t270 = abap_true.
                  DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA t273 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t274) = NEW zcl_lnt_sy_type_mesh( ).
                  DATA(t275) = t1.
                  DATA(t276) = t32.
                  t273 = t274->run_syntax( i_node = t275 i_input_967e = t276 ).
                  t272 = t273.
                  DATA t277 TYPE abap_bool.
                  DATA(t278) = t272.
                  t277 = xsdbool( t278 IS BOUND ).
                  IF t277 = abap_true.
                    DATA t279 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t280) = me->scope.
                    t279 = t280.
                    DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t281.
                    DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t282.
                    DATA(t283) = abap_true.
                    IF t283 = abap_true.
                      DATA t284 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t285) = t272.
                      t284 = t285.
                      t282 = t284.
                    ELSE.
                      DATA t286 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t286.
                      t282 = t286.
                    ENDIF.
                    t281 = t282.
                    DATA(t287) = VALUE abap_bool( ).
                    DATA t288 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t289) = t281.
                    t288 = t289.
                    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t291.
                    t290 = t291.
                    DATA(t292) = VALUE abap_bool( ).
                    DATA(t293) = t288.
                    IF t293 IS INITIAL.
                      t292 = abap_true.
                    ENDIF.
                    t287 = t292.
                    IF t287 = abap_true.
                    ELSE.
                      DATA(t294) = t279.
                      DATA(t295) = VALUE string( ).
                      DATA t296 TYPE REF TO zcl_lnt_fi_identifier.
                      DATA t297 TYPE REF TO zcl_lnt_typed_identifier.
                      DATA(t298) = t281.
                      t297 = t298.
                      t296 = t297.
                      DATA(t299) = VALUE string( ).
                      DATA t300 TYPE string.
                      DATA t301 TYPE string.
                      DATA t302 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t304) = t296.
                      t303 = t304->token.
                      t302 = t303.
                      DATA t305 TYPE string.
                      DATA(t306) = t302.
                      t305 = t306->str.
                      t301 = t305.
                      t300 = t301.
                      DATA(t307) = VALUE abap_bool( ).
                      DATA(t308) = VALUE string( ).
                      DATA(t309) = t300.
                      DATA(t310) = 0.
                      DATA(t311) = 1.
                      DATA(t312) = strlen( t309 ).
                      IF t310 < 0.
                        t310 = t310 + t312.
                        IF t310 < 0.
                          t310 = 0.
                        ENDIF.
                      ENDIF.
                      IF t310 > t312 OR t311 <= 0.
                        CLEAR t308.
                      ELSE.
                        IF t311 > t312 - t310.
                          t311 = t312 - t310.
                        ENDIF.
                        t308 = t309+t310(t311).
                      ENDIF.
                      DATA(t313) = |!|.
                      t307 = xsdbool( t308 = t313 ).
                      IF t307 = abap_true.
                        DATA(t314) = VALUE string( ).
                        DATA t315 TYPE string.
                        DATA(t316) = t300.
                        t315 = t316.
                        DATA(t317) = VALUE string( ).
                        DATA(t318) = t315.
                        DATA(t319) = 1.
                        DATA t320 TYPE i.
                        DATA(t321) = t315.
                        DATA(t322) = strlen( t321 ).
                        t320 = t322.
                        DATA(t323) = strlen( t318 ).
                        IF t319 < 0.
                          t319 = t319 + t323.
                          IF t319 < 0.
                            t319 = 0.
                          ENDIF.
                        ENDIF.
                        IF t319 > t323 OR t320 <= 0.
                          CLEAR t317.
                        ELSE.
                          IF t320 > t323 - t319.
                            t320 = t323 - t319.
                          ENDIF.
                          t317 = t318+t319(t320).
                        ENDIF.
                        t314 = t317.
                        t300 = t314.
                      ENDIF.
                      DATA(t324) = t300.
                      t299 = t324.
                      t295 = t299.
                      DATA t325 TYPE REF TO zcl_lnt_typed_identifier.
                      CLEAR t325.
                      DATA(t326) = abap_true.
                      IF t326 = abap_true.
                        DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t328) = t281.
                        t327 = t328.
                        t325 = t327.
                      ELSE.
                        DATA t329 TYPE REF TO zcl_lnt_typed_identifier.
                        CLEAR t329.
                        t325 = t329.
                      ENDIF.
                      t294->add_type_named( i_name = t295 i_type_9913 = t325 ).
                    ENDIF.
                  ENDIF.
                  DATA(t330) = abap_true.
                  result = t330.
                  RETURN.
                ELSE.
                  DATA t331 TYPE abap_bool.
                  DATA(t332) = t8.
                  t331 = xsdbool( t332 IS BOUND AND t332 IS INSTANCE OF zcl_lnt_sr_type_enum ).
                  IF t331 = abap_true.
                    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t335 TYPE REF TO zcl_lnt_shape_33d96643.
                    DATA(t336) = NEW zcl_lnt_sy_type_enum( ).
                    DATA(t337) = t1.
                    DATA(t338) = t32.
                    t335 = t336->run_syntax( i_node = t337 i_input_967e = t338 ).
                    t334 = t335->values.
                    t333 = t334.
                    DATA(t339) = me->scope.
                    DATA(t340) = t333.
                    t339->add_list( i_identifiers = t340 ).
                    DATA(t341) = abap_true.
                    result = t341.
                    RETURN.
                  ELSE.
                    DATA t342 TYPE abap_bool.
                    DATA(t343) = t8.
                    t342 = xsdbool( t343 IS BOUND AND t343 IS INSTANCE OF zcl_lnt_sr_test_injection ).
                    IF t342 = abap_true.
                      DATA(t344) = abap_true.
                      result = t344.
                      RETURN.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t345) = abap_false.
    result = t345.

  ENDMETHOD.

  METHOD update_scope_statement.
    DATA(t1) = i_node.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t5) = me->current_file.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = t4.
    t6 = t7->filename.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE REF TO zif_lnt_statement.
    DATA t9 TYPE REF TO zif_lnt_statement.
    DATA(t10) = t1.
    t9 = t10->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t8 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_statement.
    DATA t14 TYPE REF TO zif_lnt_statement.
    DATA(t15) = t11.
    t14 = t15->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t13 = t14.
    DATA t16 TYPE abap_bool.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE string.
    DATA(t19) = me->scope.
    t18 = t19->get_type( ).
    DATA(t20) = |selection_event|.
    t17 = xsdbool( t18 = t20 ).
    t16 = t17.
    IF t17 = abap_true.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t13.
      t21 = me->is_selection_event_boundary( i_statement = t22 ).
      t16 = t21.
    ENDIF.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t24) = me->scope.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = t11.
      t27 = t28->get_first_token( ).
      t26 = t27.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA(t30) = t26.
      t29 = t30->start.
      t25 = t29.
      t23 = t24->pop( i_end = t25 ).
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE REF TO zif_lnt_statement.
    DATA(t33) = t13.
    t32 = t33.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t32.
    t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    t31 = t34.
    IF t31 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_current_scope.
      DATA(t37) = me->scope.
      t36 = t37.
      DATA t38 TYPE string.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t41) = t13.
      t40 = t41->zlnt_builtin_clas_3f891b097658( ).
      t39 = t40->name.
      t38 = t39.
      DATA t42 TYPE REF TO zcl_lnt_position.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t11.
      t45 = t46->get_first_token( ).
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t44.
      t47 = t48->start.
      t43 = t47.
      t42 = t43.
      DATA t49 TYPE string.
      DATA t50 TYPE string.
      DATA t51 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t52) = me->current_file.
      t51 = t52.
      DATA t53 TYPE string.
      DATA(t54) = t51.
      t53 = t54->filename.
      t50 = t53.
      t49 = t50.
      DATA t55 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t57 TYPE string.
      DATA(t58) = |selection_event|.
      t57 = t58.
      DATA t59 TYPE string.
      DATA(t60) = t38.
      t59 = t60.
      DATA t61 TYPE REF TO zcl_lnt_position.
      DATA(t62) = t42.
      t61 = t62.
      DATA t63 TYPE string.
      DATA(t64) = t49.
      t63 = t64.
      DATA t65 TYPE REF TO zcl_lnt_position.
      DATA t66 TYPE REF TO zcl_lnt_position.
      CLEAR t66.
      t65 = t66.
      t56 = NEW zcl_lnt_iscope_identifier( i_stype = t57 i_sname = t59 i_filename = t63 i_start = t61 i_end = t65 ).
      CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
      t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t67 ).
      ENDIF.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t71 ).
      ENDIF.
      CREATE OBJECT t56->zlnt_json_ownkeys_70e5fd461788.
      t56->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t72) = |stype|.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
      ENDIF.
      DATA(t74) = |sname|.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
      ENDIF.
      DATA(t76) = |start|.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
      ENDIF.
      DATA(t78) = |filename|.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
      ENDIF.
      DATA(t80) = |end|.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
      ENDIF.
      t55 = t56.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t85) = t36.
      t84 = t85->current.
      t83 = t84.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t86 = t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t83.
      IF t89 IS INITIAL.
        t88 = abap_true.
      ENDIF.
      t82 = t88.
      IF t82 = abap_true.
        DATA(t90) = t36.
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t94) = t55.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t95.
          t93 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t94 i_parent = t95 ).
          t91 = t93.
        ELSE.
          DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t96.
          t91 = t96.
        ENDIF.
        t90->current = t91.
        DELETE t90->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t100) = t36.
        t99 = t100->current.
        t98 = t99.
        t97 = t98.
        DATA(t101) = t36.
        DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t104.
          DATA(t105) = t55.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA(t108) = t97.
            t106 = t108.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t109.
            t106 = t109.
          ENDIF.
          t104 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t105 i_parent = t106 ).
          t102 = t104.
        ELSE.
          DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t110.
          t102 = t110.
        ENDIF.
        t101->current = t102.
        DELETE t101->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA(t111) = t97.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t114) = t36.
        t113 = t114->current.
        t112 = t113.
        t111->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t112 ).
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t115.
    DATA t116 TYPE REF TO zcl_lnt_syntax_input.
    DATA t117 TYPE REF TO zcl_lnt_current_scope.
    DATA(t118) = me->scope.
    t117 = t118.
    DATA t119 TYPE string.
    DATA(t120) = t2.
    t119 = t120.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t122) = me->issues.
    t121 = t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t124) = me->deferred.
    t123 = t124.
    t116 = NEW zcl_lnt_syntax_input( i_scope = t117 i_filename = t119 i_issues = t121 i_deferred = t123 ).
    CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
    t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t125 ).
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t126 ).
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t127 ).
    ENDIF.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t128 ).
    ENDIF.
    CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
    t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t129) = |scope|.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
    ENDIF.
    DATA(t131) = |filename|.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
    ENDIF.
    DATA(t133) = |issues|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    ENDIF.
    DATA(t135) = |deferred|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
    ENDIF.
    t115 = t116.
    DATA t137 TYPE abap_bool.
    DATA(t138) = t8.
    t137 = xsdbool( t138 IS BOUND AND t138 IS INSTANCE OF zcl_lnt_st_statem_type ).
    IF t137 = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_current_scope.
      DATA(t140) = me->scope.
      t139 = t140.
      DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t143) = NEW zcl_lnt_sy_type( ).
      DATA(t144) = t1.
      DATA(t145) = t115.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      t142 = t143->run_syntax( i_node = t144 i_input_967e = t145 i_qualified_name_prefix = t146 ).
      t141 = t142.
      DATA(t147) = VALUE abap_bool( ).
      DATA t148 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t149) = t141.
      t148 = t149.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      t150 = t151.
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t148.
      IF t153 IS INITIAL.
        t152 = abap_true.
      ENDIF.
      t147 = t152.
      IF t147 = abap_true.
      ELSE.
        DATA(t154) = t139.
        DATA(t155) = VALUE string( ).
        DATA t156 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t157 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t158) = t141.
        t157 = t158.
        t156 = t157.
        DATA(t159) = VALUE string( ).
        DATA t160 TYPE string.
        DATA t161 TYPE string.
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        DATA t163 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t164) = t156.
        t163 = t164->token.
        t162 = t163.
        DATA t165 TYPE string.
        DATA(t166) = t162.
        t165 = t166->str.
        t161 = t165.
        t160 = t161.
        DATA(t167) = VALUE abap_bool( ).
        DATA(t168) = VALUE string( ).
        DATA(t169) = t160.
        DATA(t170) = 0.
        DATA(t171) = 1.
        DATA(t172) = strlen( t169 ).
        IF t170 < 0.
          t170 = t170 + t172.
          IF t170 < 0.
            t170 = 0.
          ENDIF.
        ENDIF.
        IF t170 > t172 OR t171 <= 0.
          CLEAR t168.
        ELSE.
          IF t171 > t172 - t170.
            t171 = t172 - t170.
          ENDIF.
          t168 = t169+t170(t171).
        ENDIF.
        DATA(t173) = |!|.
        t167 = xsdbool( t168 = t173 ).
        IF t167 = abap_true.
          DATA(t174) = VALUE string( ).
          DATA t175 TYPE string.
          DATA(t176) = t160.
          t175 = t176.
          DATA(t177) = VALUE string( ).
          DATA(t178) = t175.
          DATA(t179) = 1.
          DATA t180 TYPE i.
          DATA(t181) = t175.
          DATA(t182) = strlen( t181 ).
          t180 = t182.
          DATA(t183) = strlen( t178 ).
          IF t179 < 0.
            t179 = t179 + t183.
            IF t179 < 0.
              t179 = 0.
            ENDIF.
          ENDIF.
          IF t179 > t183 OR t180 <= 0.
            CLEAR t177.
          ELSE.
            IF t180 > t183 - t179.
              t180 = t183 - t179.
            ENDIF.
            t177 = t178+t179(t180).
          ENDIF.
          t174 = t177.
          t160 = t174.
        ENDIF.
        DATA(t184) = t160.
        t159 = t184.
        t155 = t159.
        DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t185.
        DATA(t186) = abap_true.
        IF t186 = abap_true.
          DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t188) = t141.
          t187 = t188.
          t185 = t187.
        ELSE.
          DATA t189 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t189.
          t185 = t189.
        ENDIF.
        t154->add_type_named( i_name = t155 i_type_9913 = t185 ).
      ENDIF.
      RETURN.
    ELSE.
      DATA t190 TYPE abap_bool.
      DATA(t191) = t8.
      t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_st_statem_constant ).
      IF t190 = abap_true.
        DATA t192 TYPE REF TO zcl_lnt_current_scope.
        DATA(t193) = me->scope.
        t192 = t193.
        DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t194.
        DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t195.
        DATA(t196) = abap_true.
        IF t196 = abap_true.
          DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t198) = NEW zcl_lnt_sy_statem_constant( ).
          DATA(t199) = t1.
          DATA(t200) = t115.
          t197 = t198->run_syntax( i_node = t199 i_input_967e = t200 ).
          t195 = t197.
        ELSE.
          DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t201.
          t195 = t201.
        ENDIF.
        t194 = t195.
        DATA(t202) = VALUE abap_bool( ).
        DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t204) = t194.
        t203 = t204.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        t205 = t206.
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = t203.
        IF t208 IS INITIAL.
          t207 = abap_true.
        ENDIF.
        t202 = t207.
        IF t202 = abap_true.
        ELSE.
          DATA(t209) = t192.
          DATA(t210) = VALUE string( ).
          DATA t211 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t212 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t213) = t194.
          t212 = t213.
          t211 = t212.
          DATA(t214) = VALUE string( ).
          DATA t215 TYPE string.
          DATA t216 TYPE string.
          DATA t217 TYPE REF TO zcl_lnt_abstract_token.
          DATA t218 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t219) = t211.
          t218 = t219->token.
          t217 = t218.
          DATA t220 TYPE string.
          DATA(t221) = t217.
          t220 = t221->str.
          t216 = t220.
          t215 = t216.
          DATA(t222) = VALUE abap_bool( ).
          DATA(t223) = VALUE string( ).
          DATA(t224) = t215.
          DATA(t225) = 0.
          DATA(t226) = 1.
          DATA(t227) = strlen( t224 ).
          IF t225 < 0.
            t225 = t225 + t227.
            IF t225 < 0.
              t225 = 0.
            ENDIF.
          ENDIF.
          IF t225 > t227 OR t226 <= 0.
            CLEAR t223.
          ELSE.
            IF t226 > t227 - t225.
              t226 = t227 - t225.
            ENDIF.
            t223 = t224+t225(t226).
          ENDIF.
          DATA(t228) = |!|.
          t222 = xsdbool( t223 = t228 ).
          IF t222 = abap_true.
            DATA(t229) = VALUE string( ).
            DATA t230 TYPE string.
            DATA(t231) = t215.
            t230 = t231.
            DATA(t232) = VALUE string( ).
            DATA(t233) = t230.
            DATA(t234) = 1.
            DATA t235 TYPE i.
            DATA(t236) = t230.
            DATA(t237) = strlen( t236 ).
            t235 = t237.
            DATA(t238) = strlen( t233 ).
            IF t234 < 0.
              t234 = t234 + t238.
              IF t234 < 0.
                t234 = 0.
              ENDIF.
            ENDIF.
            IF t234 > t238 OR t235 <= 0.
              CLEAR t232.
            ELSE.
              IF t235 > t238 - t234.
                t235 = t238 - t234.
              ENDIF.
              t232 = t233+t234(t235).
            ENDIF.
            t229 = t232.
            t215 = t229.
          ENDIF.
          DATA(t239) = t215.
          t214 = t239.
          t210 = t214.
          DATA t240 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t241) = t194.
          t240 = t241.
          t209->add_named_identifier( i_name = t210 i_identifier = t240 ).
        ENDIF.
        RETURN.
      ELSE.
        DATA t242 TYPE abap_bool.
        DATA(t243) = t8.
        t242 = xsdbool( t243 IS BOUND AND t243 IS INSTANCE OF zcl_lnt_st_static ).
        IF t242 = abap_true.
          DATA t244 TYPE REF TO zcl_lnt_current_scope.
          DATA(t245) = me->scope.
          t244 = t245.
          DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t247 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t248) = NEW zcl_lnt_sy_static( ).
          DATA(t249) = t1.
          DATA(t250) = t115.
          t247 = t248->run_syntax( i_node = t249 i_input_967e = t250 ).
          t246 = t247.
          DATA(t251) = VALUE abap_bool( ).
          DATA t252 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t253) = t246.
          t252 = t253.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          t254 = t255.
          DATA(t256) = VALUE abap_bool( ).
          DATA(t257) = t252.
          IF t257 IS INITIAL.
            t256 = abap_true.
          ENDIF.
          t251 = t256.
          IF t251 = abap_true.
          ELSE.
            DATA(t258) = t244.
            DATA(t259) = VALUE string( ).
            DATA t260 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t261 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t262) = t246.
            t261 = t262.
            t260 = t261.
            DATA(t263) = VALUE string( ).
            DATA t264 TYPE string.
            DATA t265 TYPE string.
            DATA t266 TYPE REF TO zcl_lnt_abstract_token.
            DATA t267 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t268) = t260.
            t267 = t268->token.
            t266 = t267.
            DATA t269 TYPE string.
            DATA(t270) = t266.
            t269 = t270->str.
            t265 = t269.
            t264 = t265.
            DATA(t271) = VALUE abap_bool( ).
            DATA(t272) = VALUE string( ).
            DATA(t273) = t264.
            DATA(t274) = 0.
            DATA(t275) = 1.
            DATA(t276) = strlen( t273 ).
            IF t274 < 0.
              t274 = t274 + t276.
              IF t274 < 0.
                t274 = 0.
              ENDIF.
            ENDIF.
            IF t274 > t276 OR t275 <= 0.
              CLEAR t272.
            ELSE.
              IF t275 > t276 - t274.
                t275 = t276 - t274.
              ENDIF.
              t272 = t273+t274(t275).
            ENDIF.
            DATA(t277) = |!|.
            t271 = xsdbool( t272 = t277 ).
            IF t271 = abap_true.
              DATA(t278) = VALUE string( ).
              DATA t279 TYPE string.
              DATA(t280) = t264.
              t279 = t280.
              DATA(t281) = VALUE string( ).
              DATA(t282) = t279.
              DATA(t283) = 1.
              DATA t284 TYPE i.
              DATA(t285) = t279.
              DATA(t286) = strlen( t285 ).
              t284 = t286.
              DATA(t287) = strlen( t282 ).
              IF t283 < 0.
                t283 = t283 + t287.
                IF t283 < 0.
                  t283 = 0.
                ENDIF.
              ENDIF.
              IF t283 > t287 OR t284 <= 0.
                CLEAR t281.
              ELSE.
                IF t284 > t287 - t283.
                  t284 = t287 - t283.
                ENDIF.
                t281 = t282+t283(t284).
              ENDIF.
              t278 = t281.
              t264 = t278.
            ENDIF.
            DATA(t288) = t264.
            t263 = t288.
            t259 = t263.
            DATA t289 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t290) = t246.
            t289 = t290.
            t258->add_named_identifier( i_name = t259 i_identifier = t289 ).
          ENDIF.
          RETURN.
        ELSE.
          DATA t291 TYPE abap_bool.
          DATA(t292) = t8.
          t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_st_data ).
          IF t291 = abap_true.
            DATA t293 TYPE REF TO zcl_lnt_current_scope.
            DATA(t294) = me->scope.
            t293 = t294.
            DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t296 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t297) = NEW zcl_lnt_sy_statem_data( ).
            DATA(t298) = t1.
            DATA(t299) = t115.
            t296 = t297->run_syntax( i_node = t298 i_input_967e = t299 ).
            t295 = t296.
            DATA(t300) = VALUE abap_bool( ).
            DATA t301 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t302) = t295.
            t301 = t302.
            DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t304.
            t303 = t304.
            DATA(t305) = VALUE abap_bool( ).
            DATA(t306) = t301.
            IF t306 IS INITIAL.
              t305 = abap_true.
            ENDIF.
            t300 = t305.
            IF t300 = abap_true.
            ELSE.
              DATA(t307) = t293.
              DATA(t308) = VALUE string( ).
              DATA t309 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t310 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t311) = t295.
              t310 = t311.
              t309 = t310.
              DATA(t312) = VALUE string( ).
              DATA t313 TYPE string.
              DATA t314 TYPE string.
              DATA t315 TYPE REF TO zcl_lnt_abstract_token.
              DATA t316 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t317) = t309.
              t316 = t317->token.
              t315 = t316.
              DATA t318 TYPE string.
              DATA(t319) = t315.
              t318 = t319->str.
              t314 = t318.
              t313 = t314.
              DATA(t320) = VALUE abap_bool( ).
              DATA(t321) = VALUE string( ).
              DATA(t322) = t313.
              DATA(t323) = 0.
              DATA(t324) = 1.
              DATA(t325) = strlen( t322 ).
              IF t323 < 0.
                t323 = t323 + t325.
                IF t323 < 0.
                  t323 = 0.
                ENDIF.
              ENDIF.
              IF t323 > t325 OR t324 <= 0.
                CLEAR t321.
              ELSE.
                IF t324 > t325 - t323.
                  t324 = t325 - t323.
                ENDIF.
                t321 = t322+t323(t324).
              ENDIF.
              DATA(t326) = |!|.
              t320 = xsdbool( t321 = t326 ).
              IF t320 = abap_true.
                DATA(t327) = VALUE string( ).
                DATA t328 TYPE string.
                DATA(t329) = t313.
                t328 = t329.
                DATA(t330) = VALUE string( ).
                DATA(t331) = t328.
                DATA(t332) = 1.
                DATA t333 TYPE i.
                DATA(t334) = t328.
                DATA(t335) = strlen( t334 ).
                t333 = t335.
                DATA(t336) = strlen( t331 ).
                IF t332 < 0.
                  t332 = t332 + t336.
                  IF t332 < 0.
                    t332 = 0.
                  ENDIF.
                ENDIF.
                IF t332 > t336 OR t333 <= 0.
                  CLEAR t330.
                ELSE.
                  IF t333 > t336 - t332.
                    t333 = t336 - t332.
                  ENDIF.
                  t330 = t331+t332(t333).
                ENDIF.
                t327 = t330.
                t313 = t327.
              ENDIF.
              DATA(t337) = t313.
              t312 = t337.
              t308 = t312.
              DATA t338 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t339) = t295.
              t338 = t339.
              t307->add_named_identifier( i_name = t308 i_identifier = t338 ).
            ENDIF.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t340 TYPE string.
    DATA t341 TYPE string.
    DATA t342 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t343) = t8.
    t342 = t343->zlnt_builtin_clas_3f891b097658( ).
    t341 = t342->name.
    t340 = t341.
    DATA(t344) = VALUE abap_bool( ).
    DATA t345 TYPE REF TO zif_lnt_statement_syntax.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_map__1746889b1684.
    CLEAR t346.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t346 = zcl_lnt_syntax_module=>map.
    DATA(t347) = t340.
    t345 = t346->get( p0 = t347 ).
    t344 = xsdbool( t345 IS BOUND ).
    IF t344 = abap_true.
      DATA t348 TYPE REF TO zif_lnt_statement_syntax.
      CLEAR t348.
      DATA t349 TYPE REF TO zif_lnt_statement_syntax.
      CLEAR t349.
      DATA t350 TYPE REF TO zlnt_runtime_map__1746889b1684.
      CLEAR t350.
      IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
        zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
      ENDIF.
      t350 = zcl_lnt_syntax_module=>map.
      DATA(t351) = t340.
      t349 = t350->get( p0 = t351 ).
      t348 = t349.
      DATA(t352) = t1.
      DATA(t353) = t115.
      t348->run_syntax( i_node = t352 i_input_967e = t353 ).
      RETURN.
    ENDIF.
    DATA t354 TYPE abap_bool.
    DATA(t355) = t8.
    t354 = xsdbool( t355 IS BOUND AND t355 IS INSTANCE OF zcl_lnt_st_function_module ).
    IF t354 = abap_true.
      DATA t356 TYPE REF TO zcl_lnt_procedural.
      DATA(t357) = me->helpers.
      t356 = t357->proc.
      DATA(t358) = me->object_a393.
      DATA(t359) = t1.
      DATA(t360) = t2.
      t356->find_function_scope( i_obj_1ed0 = t358 i_node = t359 i_filename = t360 ).
    ELSE.
      DATA(t361) = VALUE abap_bool( ).
      DATA(t362) = VALUE abap_bool( ).
      DATA t363 TYPE abap_bool.
      DATA t364 TYPE abap_bool.
      DATA(t365) = t8.
      t364 = xsdbool( t365 IS BOUND AND t365 IS INSTANCE OF zcl_lnt_end_form ).
      t363 = t364.
      IF t364 = abap_false.
        DATA t366 TYPE abap_bool.
        DATA(t367) = t8.
        t366 = xsdbool( t367 IS BOUND AND t367 IS INSTANCE OF zcl_lnt_end_function ).
        t363 = t366.
      ENDIF.
      t362 = t363.
      IF t363 = abap_false.
        DATA t368 TYPE abap_bool.
        DATA(t369) = t8.
        t368 = xsdbool( t369 IS BOUND AND t369 IS INSTANCE OF zcl_lnt_end_class ).
        t362 = t368.
      ENDIF.
      t361 = t362.
      IF t362 = abap_false.
        DATA t370 TYPE abap_bool.
        DATA(t371) = t8.
        t370 = xsdbool( t371 IS BOUND AND t371 IS INSTANCE OF zcl_lnt_end_interface ).
        t361 = t370.
      ENDIF.
      IF t361 = abap_true.
        DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope.
        DATA(t373) = me->scope.
        DATA t374 TYPE REF TO zcl_lnt_position.
        DATA t375 TYPE REF TO zcl_lnt_abstract_token.
        DATA t376 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t377) = t1.
        t376 = t377->get_last_token( ).
        t375 = t376.
        DATA t378 TYPE REF TO zcl_lnt_position.
        DATA t379 TYPE f.
        DATA t380 TYPE REF TO zcl_lnt_position.
        DATA t381 TYPE REF TO zcl_lnt_position.
        DATA(t382) = t375.
        t381 = t382->start.
        t380 = t381.
        DATA t383 TYPE f.
        DATA(t384) = t380.
        t383 = t384->row.
        t379 = t383.
        DATA t385 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t386 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t387 TYPE REF TO zcl_lnt_position.
        DATA t388 TYPE REF TO zcl_lnt_position.
        DATA(t389) = t375.
        t388 = t389->start.
        t387 = t388.
        DATA t390 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t391) = t387.
        t390 = t391->col.
        t386 = t390.
        DATA t392 TYPE f.
        DATA t393 TYPE i.
        DATA t394 TYPE string.
        DATA(t395) = t375.
        t394 = t395->str.
        DATA(t396) = strlen( t394 ).
        t393 = t396.
        t392 = t393.
        DATA(t397) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t397->has = abap_true.
        t397->value = t392.
        t385 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t386 right = t397 op = `+` ).
        t378 = NEW zcl_lnt_position( i_row = t379 i_col = t385 ).
        t374 = t378.
        t372 = t373->pop( i_end = t374 ).
      ELSE.
        DATA t398 TYPE abap_bool.
        DATA(t399) = t8.
        t398 = xsdbool( t399 IS BOUND AND t399 IS INSTANCE OF zcl_lnt_end_method ).
        IF t398 = abap_true.
          DATA t400 TYPE abap_bool.
          DATA t401 TYPE string.
          DATA(t402) = me->scope.
          t401 = t402->get_type( ).
          DATA(t403) = |method|.
          t400 = xsdbool( t401 = t403 ).
          IF t400 = abap_true.
            DATA t404 TYPE REF TO zcl_lnt_spaghetti_scope.
            DATA(t405) = me->scope.
            DATA t406 TYPE REF TO zcl_lnt_position.
            DATA t407 TYPE REF TO zcl_lnt_abstract_token.
            DATA t408 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t409) = t1.
            t408 = t409->get_last_token( ).
            t407 = t408.
            DATA t410 TYPE REF TO zcl_lnt_position.
            DATA t411 TYPE f.
            DATA t412 TYPE REF TO zcl_lnt_position.
            DATA t413 TYPE REF TO zcl_lnt_position.
            DATA(t414) = t407.
            t413 = t414->start.
            t412 = t413.
            DATA t415 TYPE f.
            DATA(t416) = t412.
            t415 = t416->row.
            t411 = t415.
            DATA t417 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t418 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t419 TYPE REF TO zcl_lnt_position.
            DATA t420 TYPE REF TO zcl_lnt_position.
            DATA(t421) = t407.
            t420 = t421->start.
            t419 = t420.
            DATA t422 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t423) = t419.
            t422 = t423->col.
            t418 = t422.
            DATA t424 TYPE f.
            DATA t425 TYPE i.
            DATA t426 TYPE string.
            DATA(t427) = t407.
            t426 = t427->str.
            DATA(t428) = strlen( t426 ).
            t425 = t428.
            t424 = t425.
            DATA(t429) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t429->has = abap_true.
            t429->value = t424.
            t417 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t418 right = t429 op = `+` ).
            t410 = NEW zcl_lnt_position( i_row = t411 i_col = t417 ).
            t406 = t410.
            t404 = t405->pop( i_end = t406 ).
          ENDIF.
          DATA t430 TYPE abap_bool.
          DATA t431 TYPE string.
          DATA(t432) = me->scope.
          t431 = t432->get_type( ).
          DATA(t433) = |method_instance|.
          t430 = xsdbool( t431 = t433 ).
          IF t430 = abap_true.
            DATA t434 TYPE REF TO zcl_lnt_spaghetti_scope.
            DATA(t435) = me->scope.
            DATA t436 TYPE REF TO zcl_lnt_position.
            DATA t437 TYPE REF TO zcl_lnt_abstract_token.
            DATA t438 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t439) = t1.
            t438 = t439->get_last_token( ).
            t437 = t438.
            DATA t440 TYPE REF TO zcl_lnt_position.
            DATA t441 TYPE f.
            DATA t442 TYPE REF TO zcl_lnt_position.
            DATA t443 TYPE REF TO zcl_lnt_position.
            DATA(t444) = t437.
            t443 = t444->start.
            t442 = t443.
            DATA t445 TYPE f.
            DATA(t446) = t442.
            t445 = t446->row.
            t441 = t445.
            DATA t447 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t448 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t449 TYPE REF TO zcl_lnt_position.
            DATA t450 TYPE REF TO zcl_lnt_position.
            DATA(t451) = t437.
            t450 = t451->start.
            t449 = t450.
            DATA t452 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t453) = t449.
            t452 = t453->col.
            t448 = t452.
            DATA t454 TYPE f.
            DATA t455 TYPE i.
            DATA t456 TYPE string.
            DATA(t457) = t437.
            t456 = t457->str.
            DATA(t458) = strlen( t456 ).
            t455 = t458.
            t454 = t455.
            DATA(t459) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t459->has = abap_true.
            t459->value = t454.
            t447 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t448 right = t459 op = `+` ).
            t440 = NEW zcl_lnt_position( i_row = t441 i_col = t447 ).
            t436 = t440.
            t434 = t435->pop( i_end = t436 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD update_selection_event_scope.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE string.
    DATA(t8) = me->scope.
    t7 = t8->get_type( ).
    DATA(t9) = |selection_event|.
    t6 = xsdbool( t7 = t9 ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t2.
      t10 = me->is_selection_event_boundary( i_statement = t11 ).
      t5 = t10.
    ENDIF.
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t13) = me->scope.
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t17) = t1.
      t16 = t17->get_first_token( ).
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA(t19) = t15.
      t18 = t19->start.
      t14 = t18.
      t12 = t13->pop( i_end = t14 ).
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE REF TO zif_lnt_statement.
    DATA(t22) = t2.
    t21 = t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t21.
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    t20 = t23.
    IF t20 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_current_scope.
      DATA(t26) = me->scope.
      t25 = t26.
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t30) = t2.
      t29 = t30->zlnt_builtin_clas_3f891b097658( ).
      t28 = t29->name.
      t27 = t28.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = t1.
      t34 = t35->get_first_token( ).
      t33 = t34.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA(t37) = t33.
      t36 = t37->start.
      t32 = t36.
      t31 = t32.
      DATA t38 TYPE string.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t41) = me->current_file.
      t40 = t41.
      DATA t42 TYPE string.
      DATA(t43) = t40.
      t42 = t43->filename.
      t39 = t42.
      t38 = t39.
      DATA t44 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t46 TYPE string.
      DATA(t47) = |selection_event|.
      t46 = t47.
      DATA t48 TYPE string.
      DATA(t49) = t27.
      t48 = t49.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA(t51) = t31.
      t50 = t51.
      DATA t52 TYPE string.
      DATA(t53) = t38.
      t52 = t53.
      DATA t54 TYPE REF TO zcl_lnt_position.
      DATA t55 TYPE REF TO zcl_lnt_position.
      CLEAR t55.
      t54 = t55.
      t45 = NEW zcl_lnt_iscope_identifier( i_stype = t46 i_sname = t48 i_filename = t52 i_start = t50 i_end = t54 ).
      CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
      t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t56 ).
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t57 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t58 ).
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t59 ).
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t60 ).
      ENDIF.
      CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
      t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t61) = |stype|.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
      ENDIF.
      DATA(t63) = |sname|.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
      ENDIF.
      DATA(t65) = |start|.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
      ENDIF.
      DATA(t67) = |filename|.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
      ENDIF.
      DATA(t69) = |end|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      t44 = t45.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t74) = t25.
      t73 = t74->current.
      t72 = t73.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t75 = t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t72.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      t71 = t77.
      IF t71 = abap_true.
        DATA(t79) = t25.
        DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t83) = t44.
          DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t84.
          t82 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t83 i_parent = t84 ).
          t80 = t82.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t85.
          t80 = t85.
        ENDIF.
        t79->current = t80.
        DELETE t79->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t89) = t25.
        t88 = t89->current.
        t87 = t88.
        t86 = t87.
        DATA(t90) = t25.
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t93.
          DATA(t94) = t44.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA(t97) = t86.
            t95 = t97.
          ELSE.
            DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t98.
            t95 = t98.
          ENDIF.
          t93 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t94 i_parent = t95 ).
          t91 = t93.
        ELSE.
          DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t99.
          t91 = t99.
        ENDIF.
        t90->current = t91.
        DELETE t90->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA(t100) = t86.
        DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t103) = t25.
        t102 = t103->current.
        t101 = t102.
        t100->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t101 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD opens_selection_event_scope.
    DATA(t1) = i_statement.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    result = t2.

  ENDMETHOD.

  METHOD is_selection_event_boundary.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    DATA(t7) = abap_false.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
      zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
    ENDIF.
    t8 = zcl_lnt_stuff_module=>selection_events.
    DATA t9 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        t9 = t12->as_classvalue( ).
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t1.
      DATA(t15) = t9.
      DATA t16 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t16.
      IF t14 IS BOUND.
        t16 = t14->zlnt_builtin_clas_3f891b097658( ).
        WHILE t16 IS BOUND.
          IF t16 = t15.
            t13 = abap_true.
            EXIT.
          ENDIF.
          t16 = t16->parent.
        ENDWHILE.
      ENDIF.
      IF t13 = abap_true.
        DATA(t17) = abap_true.
        t6 = t17.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t18) = t6.
    t5 = t18.
    t4 = t5.
    IF t5 = abap_false.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t1.
      t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_form ).
      t4 = t19.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t1.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_module ).
      t3 = t21.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t1.
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_function_module ).
      t2 = t23.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_slctn_evnt_bndry_strctr.
    DATA(t1) = i_structure.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      DATA(t6) = t1.
      t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_sr_interface ).
      t2 = t5.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d997_7691e4af83c2.
  ENDMETHOD.
ENDCLASS.
