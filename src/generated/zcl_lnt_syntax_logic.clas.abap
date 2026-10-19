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
    DATA(t2) = i_object_19cd.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->issues = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->deferred = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deferred`.
    me->object_a393 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `object`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_isyntax_result.
    t3 = me->object_a393->syntax_result.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = xsdbool( t3 IS INITIAL ).
    t7 = xsdbool( t8 = abap_false ).
    t1 = t7.
    IF t1 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_isyntax_result.
      t11 = me->object_a393->syntax_result.
      result = t11.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    DATA(t14) = me->reg.
    DATA(t15) = me->object_a393.
    t13 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t14 i_obj_1ed0 = t15 ).
    me->scope = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
    DATA t16 TYPE REF TO zcl_lnt_shape_0dbcb8a9.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    DATA t20 TYPE REF TO zcl_lnt_object_oriented.
    DATA(t21) = me->scope.
    t20 = NEW zcl_lnt_object_oriented( i_scope = t21 ).
    t17 = t20.
    DATA t23 TYPE REF TO zcl_lnt_procedural.
    DATA t26 TYPE REF TO zcl_lnt_procedural.
    DATA(t27) = me->reg.
    DATA(t28) = me->scope.
    t26 = NEW zcl_lnt_procedural( i_reg_f149 = t27 i_scope = t28 ).
    t23 = t26.
    t16 = NEW zcl_lnt_shape_0dbcb8a9( i_oooc = t17 i_proc = t23 ).
    CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
    t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `oooc` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `proc` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
    t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |oooc|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    DATA(t34) = |proc|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t38 = me->reg->get_ddic_references( ).
    DATA(t40) = me->object_a393.
    t38->clear_feba( i_obj_1ed0 = t40 ).
    DATA t41 TYPE REF TO zif_lnt_msag_references.
    t41 = me->reg->get_msag_references( ).
    DATA(t43) = me->object_a393.
    t41->clear_feba( i_obj_1ed0 = t43 ).
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE abap_bool.
    DATA(t46) = me->object_a393.
    t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_ob_program ).
    t44 = t45.
    IF t45 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_ob_program.
      DATA t49 TYPE REF TO zcl_lnt_ob_program.
      t49 ?= me->object_a393.
      t48 = t49.
      t48->parse_xml( ).
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t55 TYPE REF TO zcl_lnt_shape_d77da4ed.
      t55 = t48->parsed_xml.
      t54 = t55.
      t53 = t54->is_include.
      t44 = t53.
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
      t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t67 ).
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `spaghetti` p1 = t68 ).
      ENDIF.
      CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
      t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t69) = |issues|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      DATA(t71) = |spaghetti|.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
      ENDIF.
      result = t57.
      RETURN.
    ENDIF.
    DATA(t73) = CAST zcl_lnt_current_scope( me->traverse_object( ) ).
    DATA(t74) = me->deferred.
    DATA t75 TYPE REF TO zif_lnt_closure_d810f2d3.
    DATA t76 TYPE REF TO object.
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
      t80 = t75->call_7bd1( ).
      IF t80 IS NOT BOUND.
        DATA(t82) = NEW zlnt_exception_un_5f2d02892fe8( ).
        t82->source_location = |await provider did not return a certified settled promise|.
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
      DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t97 = t86->g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc( ).
      DATA t99 TYPE REF TO zcl_lnt_iscope_identifier.
      t99 = t97->identifier.
      t95 = t99.
      t94 = t95->stype.
      DATA(t101) = |_builtin|.
      t93 = xsdbool( t94 = t101 ).
      IF t93 = abap_true.
        DATA t102 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t102.
        DATA t103 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t104 = me->issues.
        DATA t106 TYPE REF TO zif_lnt_spaghetti_scope.
        t106 = t86.
        t103 = NEW zcl_lnt_isyntax_result( i_issues = t104 i_spaghetti = t106 ).
        CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
        t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t108 ).
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
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        DATA(t112) = |spaghetti|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        t102 = t103.
        DATA(t114) = me->object_a393.
        t114->syntax_result = t102.
        DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntaxResult`.
        result = t102.
        RETURN.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD traverse_object.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = me->object_a393->get_sequenced_files( ).
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
      t10 ?= me->object_a393.
      t9 = t10->get_sequenced_files( ).
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      DATA t13 TYPE REF TO object.
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
        t17 = me->helpers->proc.
        DATA t20 TYPE REF TO zcl_lnt_abap_object.
        DATA t21 TYPE REF TO zif_lnt_union_d439e5f2.
        t21 ?= me->object_a393.
        t20 ?= t21.
        t17->add_all_form_definitions( i_file = t12 i_obj_1ed0 = t20 ).
      ENDDO.
      DATA t23 TYPE REF TO zcl_lnt_abap_file.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA t25 TYPE REF TO zif_lnt_union_d439e5f2.
      t25 ?= me->object_a393.
      t24 = t25->get_main_abap_file( ).
      t23 = t24.
      DATA(t27) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = xsdbool( t23 IS INITIAL ).
      t32 = xsdbool( t33 = abap_false ).
      t27 = t32.
      IF t27 = abap_true.
        DATA t35 TYPE string.
        t35 = |_program|.
        DATA t37 TYPE abap_bool.
        DATA(t38) = me->object_a393.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_function_group ).
        IF t37 = abap_true.
          t35 = |_function_group|.
        ENDIF.
        DATA t40 TYPE REF TO zcl_lnt_current_scope.
        t40 = me->scope.
        DATA t45 TYPE string.
        DATA t46 TYPE REF TO zif_lnt_union_d439e5f2.
        t46 ?= me->object_a393.
        t45 = t46->get_name( ).
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA(t50) = CONV f( 1 ).
        DATA(t51) = CONV f( 1 ).
        DATA(t52) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t52->has = abap_true.
        t52->value = t51.
        t49 = NEW zcl_lnt_position( i_row = t50 i_col = t52 ).
        DATA t55 TYPE REF TO zcl_lnt_abstract_file.
        t55 = t23.
        DATA t58 TYPE string.
        t58 = t55->filename.
        DATA t60 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t61 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t62 TYPE string.
        t62 = t35.
        DATA t64 TYPE string.
        t64 = t45.
        DATA t66 TYPE REF TO zcl_lnt_position.
        t66 = t49.
        DATA t68 TYPE string.
        t68 = t58.
        DATA t70 TYPE REF TO zcl_lnt_position.
        t61 = NEW zcl_lnt_iscope_identifier( i_stype = t62 i_sname = t64 i_filename = t68 i_start = t66 i_end = t70 ).
        CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
        t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t72 ).
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t73 ).
        ENDIF.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t74 ).
        ENDIF.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t75 ).
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t76 ).
        ENDIF.
        CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
        t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t77) = |stype|.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        DATA(t79) = |sname|.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        ENDIF.
        DATA(t81) = |start|.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
        ENDIF.
        DATA(t83) = |filename|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        ENDIF.
        DATA(t85) = |end|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        t60 = t61.
        DATA(t87) = VALUE abap_bool( ).
        DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t89 = t40->current.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t87 = xsdbool( t89 IS INITIAL ).
        IF t87 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t98 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t60 i_parent = t100 ).
          t40->current = t98.
          DELETE t40->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t104 = t40->current.
          t102 = t104.
          DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t111 = t102.
          t109 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t60 i_parent = t111 ).
          t40->current = t109.
          DELETE t40->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t118 = t40->current.
          t117 = t118.
          t102->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t117 ).
        ENDIF.
        DATA t120 TYPE abap_bool.
        DATA(t121) = me->object_a393.
        t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_function_group ).
        IF t120 = abap_true.
          DATA t122 TYPE REF TO zcl_lnt_procedural.
          t122 = me->helpers->proc.
          DATA t124 TYPE REF TO zcl_lnt_function_group.
          t124 ?= me->object_a393.
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
        t130 ?= me->object_a393.
        t129 = t130->get_main_abap_file( ).
        t128 = t129.
        DATA(t132) = VALUE abap_bool( ).
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = xsdbool( t128 IS INITIAL ).
        t137 = xsdbool( t138 = abap_false ).
        t132 = t137.
        IF t132 = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_current_scope.
          t140 = me->scope.
          DATA t144 TYPE REF TO zcl_lnt_abstract_object.
          DATA t145 TYPE REF TO zcl_lnt_ob_type_pool.
          t145 ?= me->object_a393.
          t144 = t145.
          DATA t147 TYPE string.
          t147 = t144->name.
          DATA t150 TYPE REF TO zcl_lnt_position.
          DATA(t151) = CONV f( 1 ).
          DATA(t152) = CONV f( 1 ).
          DATA(t153) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t153->has = abap_true.
          t153->value = t152.
          t150 = NEW zcl_lnt_position( i_row = t151 i_col = t153 ).
          DATA t156 TYPE REF TO zcl_lnt_abstract_file.
          t156 = t128.
          DATA t159 TYPE string.
          t159 = t156->filename.
          DATA t161 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t162 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t163 TYPE string.
          t163 = |_type_pool|.
          DATA t165 TYPE string.
          t165 = t147.
          DATA t167 TYPE REF TO zcl_lnt_position.
          t167 = t150.
          DATA t169 TYPE string.
          t169 = t159.
          DATA t171 TYPE REF TO zcl_lnt_position.
          t162 = NEW zcl_lnt_iscope_identifier( i_stype = t163 i_sname = t165 i_filename = t169 i_start = t167 i_end = t171 ).
          CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
          t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t173 ).
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t174 ).
          ENDIF.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t175 ).
          ENDIF.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t176 ).
          ENDIF.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t177 ).
          ENDIF.
          CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
          t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t178) = |stype|.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
          DATA(t180) = |sname|.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
          ENDIF.
          DATA(t182) = |start|.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
          ENDIF.
          DATA(t184) = |filename|.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          DATA(t186) = |end|.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
          ENDIF.
          t161 = t162.
          DATA(t188) = VALUE abap_bool( ).
          DATA t190 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t190 = t140->current.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t188 = xsdbool( t190 IS INITIAL ).
          IF t188 = abap_true.
            DATA t199 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t199 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t161 i_parent = t201 ).
            t140->current = t199.
            DELETE t140->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t205 = t140->current.
            t203 = t205.
            DATA t210 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t212 = t203.
            t210 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t161 i_parent = t212 ).
            t140->current = t210.
            DELETE t140->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
            DATA t218 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t219 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t219 = t140->current.
            t218 = t219.
            t203->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t218 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_abap_file.
    DATA t223 TYPE REF TO object.
    DATA(t224) = VALUE i( ).
    DO.
      t1->load( ).
      IF t224 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t223.
      READ TABLE t1->items INDEX t224 + 1 INTO t223.
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
      me->current_file = t222.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `currentFile`.
      DATA t228 TYPE REF TO zcl_lnt_structure_node.
      DATA t232 TYPE REF TO zcl_lnt_structure_node.
      t232 = me->current_file->structure.
      t228 = t232.
      DATA(t234) = VALUE abap_bool( ).
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t237.
      t234 = xsdbool( t228 IS INITIAL ).
      IF t234 = abap_true.
        result = me->scope.
        RETURN.
      ELSE.
        DATA t242 TYPE REF TO zcl_lnt_structure_node.
        t242 = t228.
        me->traverse( i_node = t242 ).
      ENDIF.
    ENDDO.
    result = me->scope.

  ENDMETHOD.

  METHOD new_issue.
    DATA(t2) = i_message_26cb.
    DATA t4 TYPE REF TO zcl_lnt_issue.
    DATA(t5) = me->current_file.
    DATA(t6) = i_token.
    DATA(t8) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Error|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t9 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t4 = zcl_lnt_issue=>at_token( i_file = t5 i_token = t6 i_message_26cb = t2 i_key = t8 i_severity = t9 i_fix = t14 ).
    DATA(t15) = me->issues.
    t15->load( ).
    APPEND t4 TO t15->items.
    t15->save( ).
  ENDMETHOD.

  METHOD traverse.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_node->get_children( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    DATA t5 TYPE REF TO object.
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
      t10 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_structure_node ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      t13 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_statement_node ).
      t12 = t13.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      TRY.
          IF t9 = abap_true.
            DATA(t17) = VALUE abap_bool( ).
            DATA(t18) = VALUE abap_bool( ).
            DATA t19 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t19.
            DATA t21 TYPE REF TO object.
            CLEAR t21.
            t21 = t4.
            t19 ?= t21.
            t18 = me->update_scope_structure( i_node = t19 ).
            t17 = t18.
            DATA(t22) = VALUE abap_bool( ).
            t22 = xsdbool( t17 = abap_true ).
            IF t22 = abap_true.
              CONTINUE.
            ENDIF.
          ELSE.
            IF t12 = abap_true.
              DATA t26 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t26.
              DATA t28 TYPE REF TO object.
              CLEAR t28.
              t28 = t4.
              t26 ?= t28.
              me->update_scope_statement( i_node = t26 ).
            ENDIF.
          ENDIF.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t15.
          DATA(t29) = t15->payload.
          DATA t31 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t31.
          DATA t32 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t32.
          t32 ?= t4.
          t31 = t32->get_first_token( ).
          DATA(t34) = VALUE string( ).
          DATA(t35) = VALUE string( ).
          t35 = t29->message_25cb.
          t34 = t35.
          DATA t38 TYPE REF TO zcl_lnt_issue.
          CLEAR t38.
          DATA(t39) = me->current_file.
          DATA(t42) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t43.
          DATA(t45) = |Error|.
          DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t46->has = abap_true.
          t46->value = t45.
          t43 = t46.
          DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t48.
          t38 = zcl_lnt_issue=>at_token( i_file = t39 i_token = t31 i_message_26cb = t34 i_key = t42 i_severity = t43 i_fix = t48 ).
          DATA(t49) = me->issues.
          t49->load( ).
          APPEND t38 TO t49->items.
          t49->save( ).
          EXIT.
      ENDTRY.
      DATA(t51) = VALUE abap_bool( ).
      t51 = t12.
      IF t12 = abap_true.
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zif_lnt_statement.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t55.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t57 = t4.
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
        t60 = me->helpers->proc.
        DATA t62 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t62.
        DATA t64 TYPE REF TO object.
        CLEAR t64.
        t64 = t4.
        t62 ?= t64.
        DATA(t65) = me->object_a393.
        t59 = t60->find_include( i_node = t62 i_obj_1ed0 = t65 ).
        t58 = t59.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t70.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = xsdbool( t58 IS INITIAL ).
        t72 = xsdbool( t73 = abap_false ).
        t67 = t72.
        t66 = t67.
        IF t67 = abap_true.
          DATA(t75) = VALUE abap_bool( ).
          DATA t81 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t81.
          t81 = t58->structure.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          CLEAR t83.
          DATA(t85) = VALUE abap_bool( ).
          DATA(t86) = xsdbool( t81 IS INITIAL ).
          t85 = xsdbool( t86 = abap_false ).
          t75 = t85.
          t66 = t75.
        ENDIF.
        IF t66 = abap_true.
          DATA(t89) = me->current_file.
          me->current_file = t58.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `currentFile`.
          DATA t92 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t92.
          DATA t97 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t97.
          t97 = t58->structure.
          t92 = t97.
          me->traverse( i_node = t92 ).
          me->current_file = t89.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `currentFile`.
        ENDIF.
      ENDIF.
      DATA(t100) = VALUE abap_bool( ).
      t100 = t9.
      IF t9 = abap_false.
        t100 = t12.
      ENDIF.
      IF t100 = abap_true.
        DATA t103 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t103.
        t103 ?= t4.
        me->traverse( i_node = t103 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD update_scope_structure.
    DATA(t1) = i_node.
    DATA t4 TYPE REF TO zcl_lnt_abstract_file.
    t4 = me->current_file.
    DATA t6 TYPE string.
    t6 = t4->filename.
    DATA t8 TYPE REF TO zif_lnt_structure.
    DATA t9 TYPE REF TO zif_lnt_structure.
    t9 = t1->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t8 = t9.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE string.
    t13 = me->scope->get_type( ).
    DATA(t15) = |selection_event|.
    t12 = xsdbool( t13 = t15 ).
    t11 = t12.
    IF t12 = abap_true.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_structure.
      t17 = t8.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_sr_class_definition ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t22 TYPE abap_bool.
        t22 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_sr_interface ).
        t19 = t22.
      ENDIF.
      t16 = t19.
      t11 = t16.
    ENDIF.
    IF t11 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t25) = me->scope.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      t28 = t1->get_first_token( ).
      DATA t30 TYPE REF TO zcl_lnt_position.
      t30 = t28->start.
      t26 = t30.
      t24 = t25->pop( i_end = t26 ).
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_syntax_input.
    DATA t33 TYPE REF TO zcl_lnt_syntax_input.
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    t34 = me->scope.
    DATA t36 TYPE string.
    t36 = t6.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t38 = me->issues.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t40 = me->deferred.
    t33 = NEW zcl_lnt_syntax_input( i_scope = t34 i_filename = t36 i_issues = t38 i_deferred = t40 ).
    CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
    t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
    t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |scope|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    DATA(t48) = |filename|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |issues|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |deferred|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    t32 = t33.
    DATA t54 TYPE abap_bool.
    t54 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_ty_class_definition.
      t56 = NEW zcl_lnt_ty_class_definition( i_node = t1 i_input_967e = t32 ).
      result = abap_true.
      RETURN.
    ELSE.
      DATA t60 TYPE abap_bool.
      t60 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_interface ).
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_interface_definition.
        t62 = NEW zcl_lnt_interface_definition( i_node = t1 i_input_967e = t32 ).
        result = abap_true.
        RETURN.
      ELSE.
        DATA t66 TYPE abap_bool.
        t66 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_types ).
        IF t66 = abap_true.
          DATA(t69) = me->scope.
          DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t72) = NEW zcl_lnt_sy_types( ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t71 = t72->run_syntax( i_node = t1 i_input_967e = t32 i_qualified_name_prefix = t75 ).
          t70 = t71.
          DATA(t76) = VALUE abap_bool( ).
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t76 = xsdbool( t70 IS INITIAL ).
          IF t76 = abap_true.
          ELSE.
            DATA(t84) = VALUE string( ).
            DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
            t85 = t70.
            DATA(t88) = VALUE string( ).
            DATA t89 TYPE string.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            t92 = t85->token.
            DATA t94 TYPE string.
            t94 = t92->str.
            t89 = t94.
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
              t104 = t89.
              DATA(t106) = VALUE string( ).
              DATA(t108) = 1.
              DATA t109 TYPE i.
              t109 = strlen( t104 ).
              DATA(t112) = strlen( t104 ).
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
                t106 = t104+t108(t109).
              ENDIF.
              t103 = t106.
              t89 = t103.
            ENDIF.
            t88 = t89.
            t84 = t88.
            DATA t114 TYPE REF TO zcl_lnt_typed_identifier.
            t114 = t70.
            t69->add_type_named( i_name = t84 i_type_9913 = t114 ).
          ENDIF.
          result = abap_true.
          RETURN.
        ELSE.
          DATA t120 TYPE abap_bool.
          t120 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_constants ).
          IF t120 = abap_true.
            DATA(t123) = me->scope.
            DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t126 TYPE REF TO zcl_lnt_shape_28fac025.
            DATA(t127) = NEW zcl_lnt_sy_constants( ).
            t126 = t127->run_syntax( i_node = t1 i_input_967e = t32 ).
            t125 = t126->type_cba0.
            t124 = t125.
            DATA(t130) = VALUE abap_bool( ).
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t130 = xsdbool( t124 IS INITIAL ).
            IF t130 = abap_true.
            ELSE.
              DATA(t138) = VALUE string( ).
              DATA t139 TYPE REF TO zcl_lnt_fi_identifier.
              t139 = t124.
              DATA(t142) = VALUE string( ).
              DATA t143 TYPE string.
              DATA t146 TYPE REF TO zcl_lnt_abstract_token.
              t146 = t139->token.
              DATA t148 TYPE string.
              t148 = t146->str.
              t143 = t148.
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
                t158 = t143.
                DATA(t160) = VALUE string( ).
                DATA(t162) = 1.
                DATA t163 TYPE i.
                t163 = strlen( t158 ).
                DATA(t166) = strlen( t158 ).
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
                  t160 = t158+t162(t163).
                ENDIF.
                t157 = t160.
                t143 = t157.
              ENDIF.
              t142 = t143.
              t138 = t142.
              DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
              t168 = t124.
              t123->add_named_identifier( i_name = t138 i_identifier = t168 ).
            ENDIF.
            result = abap_true.
            RETURN.
          ELSE.
            DATA t171 TYPE abap_bool.
            t171 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_data ).
            IF t171 = abap_true.
              DATA(t174) = me->scope.
              DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
              t176 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t1 i_input_967e = t32 ).
              t175 = t176.
              DATA(t179) = VALUE abap_bool( ).
              DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t179 = xsdbool( t175 IS INITIAL ).
              IF t179 = abap_true.
              ELSE.
                DATA(t187) = VALUE string( ).
                DATA t188 TYPE REF TO zcl_lnt_fi_identifier.
                t188 = t175.
                DATA(t191) = VALUE string( ).
                DATA t192 TYPE string.
                DATA t195 TYPE REF TO zcl_lnt_abstract_token.
                t195 = t188->token.
                DATA t197 TYPE string.
                t197 = t195->str.
                t192 = t197.
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
                  t207 = t192.
                  DATA(t209) = VALUE string( ).
                  DATA(t211) = 1.
                  DATA t212 TYPE i.
                  t212 = strlen( t207 ).
                  DATA(t215) = strlen( t207 ).
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
                    t209 = t207+t211(t212).
                  ENDIF.
                  t206 = t209.
                  t192 = t206.
                ENDIF.
                t191 = t192.
                t187 = t191.
                DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
                t217 = t175.
                t174->add_named_identifier( i_name = t187 i_identifier = t217 ).
              ENDIF.
              result = abap_true.
              RETURN.
            ELSE.
              DATA t220 TYPE abap_bool.
              t220 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_statics ).
              IF t220 = abap_true.
                DATA(t223) = me->scope.
                DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t225 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t226) = NEW zcl_lnt_sy_statics( ).
                t225 = t226->run_syntax( i_node = t1 i_input_967e = t32 ).
                t224 = t225.
                DATA(t229) = VALUE abap_bool( ).
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t229 = xsdbool( t224 IS INITIAL ).
                IF t229 = abap_true.
                ELSE.
                  DATA(t237) = VALUE string( ).
                  DATA t238 TYPE REF TO zcl_lnt_fi_identifier.
                  t238 = t224.
                  DATA(t241) = VALUE string( ).
                  DATA t242 TYPE string.
                  DATA t245 TYPE REF TO zcl_lnt_abstract_token.
                  t245 = t238->token.
                  DATA t247 TYPE string.
                  t247 = t245->str.
                  t242 = t247.
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
                    t257 = t242.
                    DATA(t259) = VALUE string( ).
                    DATA(t261) = 1.
                    DATA t262 TYPE i.
                    t262 = strlen( t257 ).
                    DATA(t265) = strlen( t257 ).
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
                      t259 = t257+t261(t262).
                    ENDIF.
                    t256 = t259.
                    t242 = t256.
                  ENDIF.
                  t241 = t242.
                  t237 = t241.
                  DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
                  t267 = t224.
                  t223->add_named_identifier( i_name = t237 i_identifier = t267 ).
                ENDIF.
                result = abap_true.
                RETURN.
              ELSE.
                DATA t270 TYPE abap_bool.
                t270 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_type_mesh ).
                IF t270 = abap_true.
                  DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA t273 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t274) = NEW zcl_lnt_sy_type_mesh( ).
                  t273 = t274->run_syntax( i_node = t1 i_input_967e = t32 ).
                  t272 = t273.
                  DATA t277 TYPE abap_bool.
                  t277 = xsdbool( t272 IS BOUND ).
                  IF t277 = abap_true.
                    DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
                    t281 = t272.
                    DATA(t287) = VALUE abap_bool( ).
                    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t287 = xsdbool( t281 IS INITIAL ).
                    IF t287 = abap_true.
                    ELSE.
                      DATA(t295) = VALUE string( ).
                      DATA t296 TYPE REF TO zcl_lnt_fi_identifier.
                      t296 = t281.
                      DATA(t299) = VALUE string( ).
                      DATA t300 TYPE string.
                      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
                      t303 = t296->token.
                      DATA t305 TYPE string.
                      t305 = t303->str.
                      t300 = t305.
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
                        t315 = t300.
                        DATA(t317) = VALUE string( ).
                        DATA(t319) = 1.
                        DATA t320 TYPE i.
                        t320 = strlen( t315 ).
                        DATA(t323) = strlen( t315 ).
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
                          t317 = t315+t319(t320).
                        ENDIF.
                        t314 = t317.
                        t300 = t314.
                      ENDIF.
                      t299 = t300.
                      t295 = t299.
                      DATA t325 TYPE REF TO zcl_lnt_typed_identifier.
                      t325 = t281.
                      me->scope->add_type_named( i_name = t295 i_type_9913 = t325 ).
                    ENDIF.
                  ENDIF.
                  result = abap_true.
                  RETURN.
                ELSE.
                  DATA t331 TYPE abap_bool.
                  t331 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_type_enum ).
                  IF t331 = abap_true.
                    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t335 TYPE REF TO zcl_lnt_shape_33d96643.
                    DATA(t336) = NEW zcl_lnt_sy_type_enum( ).
                    t335 = t336->run_syntax( i_node = t1 i_input_967e = t32 ).
                    t334 = t335->values.
                    me->scope->add_list( i_identifiers = t334 ).
                    result = abap_true.
                    RETURN.
                  ELSE.
                    DATA t342 TYPE abap_bool.
                    t342 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_test_injection ).
                    IF t342 = abap_true.
                      result = abap_true.
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
    result = abap_false.

  ENDMETHOD.

  METHOD update_scope_statement.
    DATA(t1) = i_node.
    DATA t2 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_file.
    t4 = me->current_file.
    DATA t6 TYPE string.
    t6 = t4->filename.
    t2 = t6.
    DATA t8 TYPE REF TO zif_lnt_statement.
    DATA t9 TYPE REF TO zif_lnt_statement.
    t9 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t8 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    t11 = t1.
    DATA t13 TYPE REF TO zif_lnt_statement.
    DATA t14 TYPE REF TO zif_lnt_statement.
    t14 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t13 = t14.
    DATA t16 TYPE abap_bool.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE string.
    t18 = me->scope->get_type( ).
    DATA(t20) = |selection_event|.
    t17 = xsdbool( t18 = t20 ).
    t16 = t17.
    IF t17 = abap_true.
      DATA t21 TYPE abap_bool.
      t21 = me->is_selection_event_boundary( i_statement = t13 ).
      t16 = t21.
    ENDIF.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t24) = me->scope.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      t27 = t11->get_first_token( ).
      DATA t29 TYPE REF TO zcl_lnt_position.
      t29 = t27->start.
      t25 = t29.
      t23 = t24->pop( i_end = t25 ).
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE REF TO zif_lnt_statement.
    t32 = t13.
    DATA t34 TYPE abap_bool.
    t34 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    t31 = t34.
    IF t31 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_current_scope.
      t36 = me->scope.
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      t40 = t13->zlnt_builtin_clas_3f891b097658( ).
      t39 = t40->name.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      t45 = t11->get_first_token( ).
      DATA t47 TYPE REF TO zcl_lnt_position.
      t47 = t45->start.
      DATA t51 TYPE REF TO zcl_lnt_abstract_file.
      t51 = me->current_file.
      DATA t53 TYPE string.
      t53 = t51->filename.
      DATA t55 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t56 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t57 TYPE string.
      t57 = |selection_event|.
      DATA t59 TYPE string.
      t59 = t39.
      DATA t61 TYPE REF TO zcl_lnt_position.
      t61 = t47.
      DATA t63 TYPE string.
      t63 = t53.
      DATA t65 TYPE REF TO zcl_lnt_position.
      t56 = NEW zcl_lnt_iscope_identifier( i_stype = t57 i_sname = t59 i_filename = t63 i_start = t61 i_end = t65 ).
      CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
      t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t67 ).
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t71 ).
      ENDIF.
      CREATE OBJECT t56->zlnt_json_ownkeys_70e5fd461788.
      t56->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t72) = |stype|.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
      DATA(t74) = |sname|.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
      ENDIF.
      DATA(t76) = |start|.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
      ENDIF.
      DATA(t78) = |filename|.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
      ENDIF.
      DATA(t80) = |end|.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
      ENDIF.
      t55 = t56.
      DATA(t82) = VALUE abap_bool( ).
      DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t84 = t36->current.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t82 = xsdbool( t84 IS INITIAL ).
      IF t82 = abap_true.
        DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t93 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t55 i_parent = t95 ).
        t36->current = t93.
        DELETE t36->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t99 = t36->current.
        t97 = t99.
        DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t106 = t97.
        t104 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t55 i_parent = t106 ).
        t36->current = t104.
        DELETE t36->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t113 = t36->current.
        t112 = t113.
        t97->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t112 ).
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_syntax_input.
    DATA t116 TYPE REF TO zcl_lnt_syntax_input.
    DATA t117 TYPE REF TO zcl_lnt_current_scope.
    t117 = me->scope.
    DATA t119 TYPE string.
    t119 = t2.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t121 = me->issues.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t123 = me->deferred.
    t116 = NEW zcl_lnt_syntax_input( i_scope = t117 i_filename = t119 i_issues = t121 i_deferred = t123 ).
    CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
    t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t126 ).
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t127 ).
    ENDIF.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t128 ).
    ENDIF.
    CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
    t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t129) = |scope|.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
    DATA(t131) = |filename|.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
    ENDIF.
    DATA(t133) = |issues|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    ENDIF.
    DATA(t135) = |deferred|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
    ENDIF.
    t115 = t116.
    DATA t137 TYPE abap_bool.
    t137 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_statem_type ).
    IF t137 = abap_true.
      DATA(t140) = me->scope.
      DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t143) = NEW zcl_lnt_sy_type( ).
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t142 = t143->run_syntax( i_node = t1 i_input_967e = t115 i_qualified_name_prefix = t146 ).
      t141 = t142.
      DATA(t147) = VALUE abap_bool( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t147 = xsdbool( t141 IS INITIAL ).
      IF t147 = abap_true.
      ELSE.
        DATA(t155) = VALUE string( ).
        DATA t156 TYPE REF TO zcl_lnt_fi_identifier.
        t156 = t141.
        DATA(t159) = VALUE string( ).
        DATA t160 TYPE string.
        DATA t163 TYPE REF TO zcl_lnt_abstract_token.
        t163 = t156->token.
        DATA t165 TYPE string.
        t165 = t163->str.
        t160 = t165.
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
          t175 = t160.
          DATA(t177) = VALUE string( ).
          DATA(t179) = 1.
          DATA t180 TYPE i.
          t180 = strlen( t175 ).
          DATA(t183) = strlen( t175 ).
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
            t177 = t175+t179(t180).
          ENDIF.
          t174 = t177.
          t160 = t174.
        ENDIF.
        t159 = t160.
        t155 = t159.
        DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
        t185 = t141.
        t140->add_type_named( i_name = t155 i_type_9913 = t185 ).
      ENDIF.
      RETURN.
    ELSE.
      DATA t190 TYPE abap_bool.
      t190 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_statem_constant ).
      IF t190 = abap_true.
        DATA(t193) = me->scope.
        DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t198) = NEW zcl_lnt_sy_statem_constant( ).
        t197 = t198->run_syntax( i_node = t1 i_input_967e = t115 ).
        t194 = t197.
        DATA(t202) = VALUE abap_bool( ).
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t202 = xsdbool( t194 IS INITIAL ).
        IF t202 = abap_true.
        ELSE.
          DATA(t210) = VALUE string( ).
          DATA t211 TYPE REF TO zcl_lnt_fi_identifier.
          t211 = t194.
          DATA(t214) = VALUE string( ).
          DATA t215 TYPE string.
          DATA t218 TYPE REF TO zcl_lnt_abstract_token.
          t218 = t211->token.
          DATA t220 TYPE string.
          t220 = t218->str.
          t215 = t220.
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
            t230 = t215.
            DATA(t232) = VALUE string( ).
            DATA(t234) = 1.
            DATA t235 TYPE i.
            t235 = strlen( t230 ).
            DATA(t238) = strlen( t230 ).
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
              t232 = t230+t234(t235).
            ENDIF.
            t229 = t232.
            t215 = t229.
          ENDIF.
          t214 = t215.
          t210 = t214.
          DATA t240 TYPE REF TO zcl_lnt_typed_identifier.
          t240 = t194.
          t193->add_named_identifier( i_name = t210 i_identifier = t240 ).
        ENDIF.
        RETURN.
      ELSE.
        DATA t242 TYPE abap_bool.
        t242 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_static ).
        IF t242 = abap_true.
          DATA(t245) = me->scope.
          DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t247 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t248) = NEW zcl_lnt_sy_static( ).
          t247 = t248->run_syntax( i_node = t1 i_input_967e = t115 ).
          t246 = t247.
          DATA(t251) = VALUE abap_bool( ).
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t251 = xsdbool( t246 IS INITIAL ).
          IF t251 = abap_true.
          ELSE.
            DATA(t259) = VALUE string( ).
            DATA t260 TYPE REF TO zcl_lnt_fi_identifier.
            t260 = t246.
            DATA(t263) = VALUE string( ).
            DATA t264 TYPE string.
            DATA t267 TYPE REF TO zcl_lnt_abstract_token.
            t267 = t260->token.
            DATA t269 TYPE string.
            t269 = t267->str.
            t264 = t269.
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
              t279 = t264.
              DATA(t281) = VALUE string( ).
              DATA(t283) = 1.
              DATA t284 TYPE i.
              t284 = strlen( t279 ).
              DATA(t287) = strlen( t279 ).
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
                t281 = t279+t283(t284).
              ENDIF.
              t278 = t281.
              t264 = t278.
            ENDIF.
            t263 = t264.
            t259 = t263.
            DATA t289 TYPE REF TO zcl_lnt_typed_identifier.
            t289 = t246.
            t245->add_named_identifier( i_name = t259 i_identifier = t289 ).
          ENDIF.
          RETURN.
        ELSE.
          DATA t291 TYPE abap_bool.
          t291 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_data ).
          IF t291 = abap_true.
            DATA(t294) = me->scope.
            DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t296 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t297) = NEW zcl_lnt_sy_statem_data( ).
            t296 = t297->run_syntax( i_node = t1 i_input_967e = t115 ).
            t295 = t296.
            DATA(t300) = VALUE abap_bool( ).
            DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t300 = xsdbool( t295 IS INITIAL ).
            IF t300 = abap_true.
            ELSE.
              DATA(t308) = VALUE string( ).
              DATA t309 TYPE REF TO zcl_lnt_fi_identifier.
              t309 = t295.
              DATA(t312) = VALUE string( ).
              DATA t313 TYPE string.
              DATA t316 TYPE REF TO zcl_lnt_abstract_token.
              t316 = t309->token.
              DATA t318 TYPE string.
              t318 = t316->str.
              t313 = t318.
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
                t328 = t313.
                DATA(t330) = VALUE string( ).
                DATA(t332) = 1.
                DATA t333 TYPE i.
                t333 = strlen( t328 ).
                DATA(t336) = strlen( t328 ).
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
                  t330 = t328+t332(t333).
                ENDIF.
                t327 = t330.
                t313 = t327.
              ENDIF.
              t312 = t313.
              t308 = t312.
              DATA t338 TYPE REF TO zcl_lnt_typed_identifier.
              t338 = t295.
              t294->add_named_identifier( i_name = t308 i_identifier = t338 ).
            ENDIF.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t340 TYPE string.
    DATA t341 TYPE string.
    DATA t342 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t342 = t8->zlnt_builtin_clas_3f891b097658( ).
    t341 = t342->name.
    t340 = t341.
    DATA(t344) = VALUE abap_bool( ).
    DATA t345 TYPE REF TO zif_lnt_statement_syntax.
    DATA t346 TYPE REF TO zlnt_runtime_map__1746889b1684.
    IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
      zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
    ENDIF.
    t346 = zcl_lnt_syntax_module=>map.
    t345 = t346->get( p0 = t340 ).
    t344 = xsdbool( t345 IS BOUND ).
    IF t344 = abap_true.
      DATA t348 TYPE REF TO zif_lnt_statement_syntax.
      DATA t349 TYPE REF TO zif_lnt_statement_syntax.
      DATA t350 TYPE REF TO zlnt_runtime_map__1746889b1684.
      IF zcl_lnt_syntax_module=>zlnt_builtin_init_de1d1a6daf32 = abap_false.
        zcl_lnt_syntax_module=>zlnt_builtin_init_ccbaa3f8c306( ).
      ENDIF.
      t350 = zcl_lnt_syntax_module=>map.
      t349 = t350->get( p0 = t340 ).
      t348 = t349.
      t348->run_syntax( i_node = t1 i_input_967e = t115 ).
      RETURN.
    ENDIF.
    DATA t354 TYPE abap_bool.
    t354 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_function_module ).
    IF t354 = abap_true.
      DATA t356 TYPE REF TO zcl_lnt_procedural.
      t356 = me->helpers->proc.
      DATA(t358) = me->object_a393.
      t356->find_function_scope( i_obj_1ed0 = t358 i_node = t1 i_filename = t2 ).
    ELSE.
      DATA(t361) = VALUE abap_bool( ).
      DATA(t362) = VALUE abap_bool( ).
      DATA t363 TYPE abap_bool.
      DATA t364 TYPE abap_bool.
      t364 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_end_form ).
      t363 = t364.
      IF t364 = abap_false.
        DATA t366 TYPE abap_bool.
        t366 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_end_function ).
        t363 = t366.
      ENDIF.
      t362 = t363.
      IF t363 = abap_false.
        DATA t368 TYPE abap_bool.
        t368 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_end_class ).
        t362 = t368.
      ENDIF.
      t361 = t362.
      IF t362 = abap_false.
        DATA t370 TYPE abap_bool.
        t370 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_end_interface ).
        t361 = t370.
      ENDIF.
      IF t361 = abap_true.
        DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope.
        DATA(t373) = me->scope.
        DATA t374 TYPE REF TO zcl_lnt_position.
        DATA t375 TYPE REF TO zcl_lnt_abstract_token.
        DATA t376 TYPE REF TO zcl_lnt_abstract_token.
        t376 = t1->get_last_token( ).
        t375 = t376.
        DATA t378 TYPE REF TO zcl_lnt_position.
        DATA t379 TYPE f.
        DATA t381 TYPE REF TO zcl_lnt_position.
        t381 = t375->start.
        DATA t383 TYPE f.
        t383 = t381->row.
        t379 = t383.
        DATA t385 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t386 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t388 TYPE REF TO zcl_lnt_position.
        t388 = t375->start.
        DATA t390 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t390 = t388->col.
        t386 = t390.
        DATA t392 TYPE f.
        DATA t394 TYPE string.
        t394 = t375->str.
        t392 = strlen( t394 ).
        DATA(t397) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t397->has = abap_true.
        t397->value = t392.
        t385 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t386 right = t397 op = `+` ).
        t378 = NEW zcl_lnt_position( i_row = t379 i_col = t385 ).
        t374 = t378.
        t372 = t373->pop( i_end = t374 ).
      ELSE.
        DATA t398 TYPE abap_bool.
        t398 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_end_method ).
        IF t398 = abap_true.
          DATA t400 TYPE abap_bool.
          DATA t401 TYPE string.
          t401 = me->scope->get_type( ).
          DATA(t403) = |method|.
          t400 = xsdbool( t401 = t403 ).
          IF t400 = abap_true.
            DATA t404 TYPE REF TO zcl_lnt_spaghetti_scope.
            DATA(t405) = me->scope.
            DATA t406 TYPE REF TO zcl_lnt_position.
            DATA t407 TYPE REF TO zcl_lnt_abstract_token.
            DATA t408 TYPE REF TO zcl_lnt_abstract_token.
            t408 = t1->get_last_token( ).
            t407 = t408.
            DATA t410 TYPE REF TO zcl_lnt_position.
            DATA t411 TYPE f.
            DATA t413 TYPE REF TO zcl_lnt_position.
            t413 = t407->start.
            DATA t415 TYPE f.
            t415 = t413->row.
            t411 = t415.
            DATA t417 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t418 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t420 TYPE REF TO zcl_lnt_position.
            t420 = t407->start.
            DATA t422 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t422 = t420->col.
            t418 = t422.
            DATA t424 TYPE f.
            DATA t426 TYPE string.
            t426 = t407->str.
            t424 = strlen( t426 ).
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
          t431 = me->scope->get_type( ).
          DATA(t433) = |method_instance|.
          t430 = xsdbool( t431 = t433 ).
          IF t430 = abap_true.
            DATA t434 TYPE REF TO zcl_lnt_spaghetti_scope.
            DATA(t435) = me->scope.
            DATA t436 TYPE REF TO zcl_lnt_position.
            DATA t437 TYPE REF TO zcl_lnt_abstract_token.
            DATA t438 TYPE REF TO zcl_lnt_abstract_token.
            t438 = t1->get_last_token( ).
            t437 = t438.
            DATA t440 TYPE REF TO zcl_lnt_position.
            DATA t441 TYPE f.
            DATA t443 TYPE REF TO zcl_lnt_position.
            t443 = t437->start.
            DATA t445 TYPE f.
            t445 = t443->row.
            t441 = t445.
            DATA t447 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t448 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t450 TYPE REF TO zcl_lnt_position.
            t450 = t437->start.
            DATA t452 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t452 = t450->col.
            t448 = t452.
            DATA t454 TYPE f.
            DATA t456 TYPE string.
            t456 = t437->str.
            t454 = strlen( t456 ).
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
    t3 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE string.
    t7 = me->scope->get_type( ).
    DATA(t9) = |selection_event|.
    t6 = xsdbool( t7 = t9 ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t10 TYPE abap_bool.
      t10 = me->is_selection_event_boundary( i_statement = t2 ).
      t5 = t10.
    ENDIF.
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA(t13) = me->scope.
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      t16 = t1->get_first_token( ).
      DATA t18 TYPE REF TO zcl_lnt_position.
      t18 = t16->start.
      t14 = t18.
      t12 = t13->pop( i_end = t14 ).
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE REF TO zif_lnt_statement.
    t21 = t2.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    t20 = t23.
    IF t20 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_current_scope.
      t25 = me->scope.
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      t29 = t2->zlnt_builtin_clas_3f891b097658( ).
      t28 = t29->name.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      t34 = t1->get_first_token( ).
      DATA t36 TYPE REF TO zcl_lnt_position.
      t36 = t34->start.
      DATA t40 TYPE REF TO zcl_lnt_abstract_file.
      t40 = me->current_file.
      DATA t42 TYPE string.
      t42 = t40->filename.
      DATA t44 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t45 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t46 TYPE string.
      t46 = |selection_event|.
      DATA t48 TYPE string.
      t48 = t28.
      DATA t50 TYPE REF TO zcl_lnt_position.
      t50 = t36.
      DATA t52 TYPE string.
      t52 = t42.
      DATA t54 TYPE REF TO zcl_lnt_position.
      t45 = NEW zcl_lnt_iscope_identifier( i_stype = t46 i_sname = t48 i_filename = t52 i_start = t50 i_end = t54 ).
      CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
      t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t56 ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t57 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t58 ).
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t59 ).
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t60 ).
      ENDIF.
      CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
      t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t61) = |stype|.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
      DATA(t63) = |sname|.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
      ENDIF.
      DATA(t65) = |start|.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
      ENDIF.
      DATA(t67) = |filename|.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
      ENDIF.
      DATA(t69) = |end|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      t44 = t45.
      DATA(t71) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t73 = t25->current.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t71 = xsdbool( t73 IS INITIAL ).
      IF t71 = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t82 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t44 i_parent = t84 ).
        t25->current = t82.
        DELETE t25->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t88 = t25->current.
        t86 = t88.
        DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t95 = t86.
        t93 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t44 i_parent = t95 ).
        t25->current = t93.
        DELETE t25->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t102 = t25->current.
        t101 = t102.
        t86->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t101 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD opens_selection_event_scope.
    DATA(t1) = i_statement.
    DATA t2 TYPE abap_bool.
    t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    result = t2.

  ENDMETHOD.

  METHOD is_selection_event_boundary.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    t6 = abap_false.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
      zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
    ENDIF.
    t8 = zcl_lnt_stuff_module=>selection_events.
    DATA t9 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA t10 TYPE REF TO object.
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
      DATA(t15) = t9.
      DATA t16 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t16.
      IF t1 IS BOUND.
        t16 = t1->zlnt_builtin_clas_3f891b097658( ).
        WHILE t16 IS BOUND.
          IF t16 = t15.
            t13 = abap_true.
            EXIT.
          ENDIF.
          t16 = t16->parent.
        ENDWHILE.
      ENDIF.
      IF t13 = abap_true.
        t6 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    t5 = t6.
    t4 = t5.
    IF t5 = abap_false.
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_form ).
      t4 = t19.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t21 TYPE abap_bool.
      t21 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_module ).
      t3 = t21.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_function_module ).
      t2 = t23.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_slctn_evnt_bndry_strctr.
    DATA(t1) = i_structure.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_sr_interface ).
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
