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
      DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t9->has = abap_true.
      t9->value = abap_false.
      t3 = t9.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    IF xsdbool( t3->value <> abap_true ) = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      t23 = t2->scope.
      DATA t32 TYPE REF TO zcl_lnt_position.
      t32 = t1->get_first_token( )->start.
      DATA t35 TYPE string.
      t35 = t2->filename.
      DATA t37 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t38 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t47 TYPE REF TO zcl_lnt_position.
      t38 = NEW zcl_lnt_iscope_identifier( i_stype = |let| i_sname = |LET| i_filename = t35 i_start = t32 i_end = t47 ).
      CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
      t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t49 ).
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t50 ).
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t51 ).
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t52 ).
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t53 ).
      ENDIF.
      CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
      t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t55 ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t57 ).
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t59 ).
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t61 ).
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t63 ).
      ENDIF.
      t37 = t38.
      DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t66 = t23->current.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t66 IS INITIAL ) = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t23->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t37 i_parent = t77 ).
        DELETE t23->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t79 = t23->current.
        t23->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t37 i_parent = t79 ).
        DELETE t23->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t95 = t23->current.
        t79->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t95 ).
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zcl_lnt_expression_node.
    t98 = t1.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t97 = t98->find_direct_expressions( i_type_9913 = t100 ).
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    DATA t102 TYPE REF TO object.
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
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t109.
      t106 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t101 i_input_967e = t2 i_target_type = t109 ).
    ENDDO.
    result = abap_true.

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
