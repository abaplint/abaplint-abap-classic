* TS: src/abap/types/method_parameters.ts:22:1 MethodParameters
CLASS zcl_lnt_ty_method_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_method_parameters.
    DATA preferred TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA returning TYPE REF TO zcl_lnt_typed_identifier.
    DATA importing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA optional TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA exporting TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA changing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA exceptions TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA defaults TYPE REF TO zlnt_runtime_map__b1b44c588059.
    DATA filename TYPE string.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_abstract_method TYPE abap_bool.
    METHODS get_filename RETURNING VALUE(result) TYPE string.
    METHODS get_optional RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_default_importing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_importing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_required_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_exporting RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_changing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_returning RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS get_exceptions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr IMPORTING i_parameter_5406 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_parent_name TYPE string i_abstract_method TYPE abap_bool.
    METHODS check_duplicate_names.
    METHODS check_name_lengths IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS workaround_rap IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_parent_name TYPE string.
    METHODS add_51c1 IMPORTING i_target_5f8a TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_source_75cf TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0
    i_abstract_method TYPE abap_bool.
    METHODS is_pass_by_value IMPORTING i_param TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_parameter_default IMPORTING i_parameter_5406 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_method_parameters IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_abstract_method.
    DATA t6 TYPE REF TO zif_lnt_statement.
    t6 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_method_def ) = abap_false ) = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = |MethodDefinition, expected MethodDef as part of input node|.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t13 ).
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
      t16 = t9.
      TRY.
          t8->source_value ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8->source_value IS NOT BOUND.
        TRY.
            t15 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t8->source_value = t15->source( ).
        ENDIF.
        IF t8->source_value IS NOT BOUND.
          CREATE OBJECT t8->source_value.
          t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->source_value->oval = t9.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    me->importing = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `importing`.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    me->exporting = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exporting`.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    me->changing = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `changing`.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t20.
    me->optional = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
    me->defaults = NEW zlnt_runtime_map__b1b44c588059( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `defaults`.
    CLEAR me->returning.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `returning`.
    CLEAR me->preferred.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t27.
    me->exceptions = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exceptions`.
    me->filename = t2->filename.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
    DATA(t30) = VALUE string( ).
    t30 = t2->scope->get_name( ).
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    t34 = t2->scope.
    DATA t45 TYPE REF TO zcl_lnt_position.
    t45 = t1->get_first_token( )->start.
    DATA(t48) = VALUE string( ).
    t48 = t2->filename.
    DATA t50 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t51 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t60 TYPE REF TO zcl_lnt_position.
    t51 = NEW zcl_lnt_iscope_identifier( i_stype = |method_definition| i_sname = |method definition| i_filename = t48 i_start = t45 i_end = t60 ).
    CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
    t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t62 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t63 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t64 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t66 ).
    ENDIF.
    CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
    t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t68 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t70 ).
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t72 ).
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t74 ).
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t76 ).
    ENDIF.
    t50 = t51.
    DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t79 = t34->current.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t79 IS INITIAL ) = abap_true.
      DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t34->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t50 i_parent = t90 ).
      DELETE t34->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t92 = t34->current.
      t34->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t50 i_parent = t92 ).
      DELETE t34->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t108 = t34->current.
      t92->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t108 ).
    ENDIF.
    DATA t110 TYPE REF TO cx_root.
    TRY.
        me->parse( i_node = t1 i_input_967e = t2 i_parent_name = t30 i_abstract_method = t3 ).
        me->check_name_lengths( i_input_967e = t2 ).
        me->check_duplicate_names( ).
      CATCH cx_root INTO t110.
        DATA t116 TYPE REF TO zcl_lnt_spaghetti_scope.
        DATA t117 TYPE REF TO zcl_lnt_current_scope.
        t117 = t2->scope.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        t127 = t1->get_last_token( ).
        DATA(t130) = VALUE f( ).
        t130 = t127->start->row.
        DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t137 = t127->start->col.
        DATA(t143) = VALUE f( ).
        t143 = strlen( t127->str ).
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t143.
        t116 = t117->pop( i_end = NEW zcl_lnt_position( i_row = t130 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t137 right = t148 op = `+` ) ) ).
        RAISE EXCEPTION t110.
    ENDTRY.
    DATA t149 TYPE REF TO zcl_lnt_spaghetti_scope.
    DATA t150 TYPE REF TO zcl_lnt_current_scope.
    t150 = t2->scope.
    DATA t160 TYPE REF TO zcl_lnt_abstract_token.
    t160 = t1->get_last_token( ).
    DATA(t163) = VALUE f( ).
    t163 = t160->start->row.
    DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t170 = t160->start->col.
    DATA(t176) = VALUE f( ).
    t176 = strlen( t160->str ).
    DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t181->has = abap_true.
    t181->value = t176.
    t149 = t150->pop( i_end = NEW zcl_lnt_position( i_row = t163 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ) ) ).
  ENDMETHOD.

  METHOD get_filename.
    DATA(t1) = CONV string( me->filename ).
    result = t1.

  ENDMETHOD.

  METHOD get_optional.
    result = me->optional.

  ENDMETHOD.

  METHOD get_all.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    t3 = me->returning.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_typed_identifier.
      t8 = t3.
      t1->load( ).
      APPEND t8 TO t1->items.
      t1->save( ).
    ENDIF.
    DATA(t10) = VALUE i( ).
    DATA(t11) = me->importing.
    DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
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
      t1->load( ).
      APPEND t12 TO t1->items.
      t1->save( ).
    ENDDO.
    t1->load( ).
    t10 = lines( t1->items ).
    DATA(t21) = VALUE i( ).
    DATA(t22) = me->exporting.
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t24 TYPE REF TO object.
    DATA(t25) = VALUE i( ).
    DO.
      t22->load( ).
      IF t25 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t22->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      t1->load( ).
      APPEND t23 TO t1->items.
      t1->save( ).
    ENDDO.
    t1->load( ).
    t21 = lines( t1->items ).
    DATA(t32) = VALUE i( ).
    DATA(t33) = me->changing.
    DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t35 TYPE REF TO object.
    DATA(t36) = VALUE i( ).
    DO.
      t33->load( ).
      IF t36 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t35.
      READ TABLE t33->items INDEX t36 + 1 INTO t35.
      t36 = t36 + 1.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      CLEAR t34.
      IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t35.
        DATA t38 TYPE REF TO object.
        t38 = t37->as_ref( ).
        t34 ?= t38.
      ELSE.
        t34 ?= t35.
      ENDIF.
      t1->load( ).
      APPEND t34 TO t1->items.
      t1->save( ).
    ENDDO.
    t1->load( ).
    t32 = lines( t1->items ).
    result = t1.

  ENDMETHOD.

  METHOD get_default_importing.
    DATA(t3) = me->importing.
    t3->load( ).
    IF xsdbool( lines( t3->items ) = 0 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t8) = me->importing.
    t8->load( ).
    IF xsdbool( lines( t8->items ) = 1 ) = abap_true.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t16) = me->importing.
      DATA t17 TYPE REF TO object.
      t16->load( ).
      READ TABLE t16->items INDEX 1 INTO t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t17.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t17.
      ENDIF.
      t14 = t15.
      DATA t21 TYPE string.
      t21 = t14->token->str.
      DATA(t29) = VALUE string( ).
      DATA(t30) = t21.
      DATA(t31) = 0.
      DATA(t32) = 1.
      DATA(t33) = strlen( t30 ).
      IF t31 < 0.
        t31 = t31 + t33.
        IF t31 < 0.
          t31 = 0.
        ENDIF.
      ENDIF.
      IF t31 > t33 OR t32 <= 0.
      ELSE.
        IF t32 > t33 - t31.
          t32 = t33 - t31.
        ENDIF.
        t29 = t30+t31(t32).
      ENDIF.
      IF xsdbool( t29 = |!| ) = abap_true.
        DATA t36 TYPE string.
        t36 = t21.
        DATA(t38) = VALUE string( ).
        DATA(t40) = 1.
        DATA t41 TYPE i.
        t41 = strlen( t36 ).
        DATA(t44) = strlen( t36 ).
        IF t40 < 0.
          t40 = t40 + t44.
          IF t40 < 0.
            t40 = 0.
          ENDIF.
        ENDIF.
        IF t40 > t44 OR t41 <= 0.
        ELSE.
          IF t41 > t44 - t40.
            t41 = t44 - t40.
          ENDIF.
          t38 = t36+t40(t41).
        ENDIF.
        t21 = t38.
      ENDIF.
      t13 = t21.
      DATA(t46) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t12.
      result = t47.
      RETURN.
    ENDIF.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = me->preferred.
    IF t50 IS BOUND.
      IF t50->has = abap_true.
        t49 = xsdbool( strlen( t50->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t49 = abap_true.
      DATA t53 TYPE string.
      t53 = me->preferred->value.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t53.
      result = t55.
      RETURN.
    ENDIF.


    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t59.
    DATA(t61) = me->importing.
    DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t63 TYPE REF TO object.
    DATA(t64) = VALUE i( ).
    DO.
      t61->load( ).
      IF t64 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t63.
      READ TABLE t61->items INDEX t64 + 1 INTO t63.
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
      DATA(t68) = VALUE string( ).
      DATA(t69) = VALUE string( ).
      DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
      t70 = t62.
      DATA t73 TYPE string.
      t73 = t70->token->str.
      DATA(t81) = VALUE string( ).
      DATA(t82) = t73.
      DATA(t83) = 0.
      DATA(t84) = 1.
      DATA(t85) = strlen( t82 ).
      IF t83 < 0.
        t83 = t83 + t85.
        IF t83 < 0.
          t83 = 0.
        ENDIF.
      ENDIF.
      IF t83 > t85 OR t84 <= 0.
      ELSE.
        IF t84 > t85 - t83.
          t84 = t85 - t83.
        ENDIF.
        t81 = t82+t83(t84).
      ENDIF.
      IF xsdbool( t81 = |!| ) = abap_true.
        DATA t88 TYPE string.
        t88 = t73.
        DATA(t90) = VALUE string( ).
        DATA(t92) = 1.
        DATA t93 TYPE i.
        t93 = strlen( t88 ).
        DATA(t96) = strlen( t88 ).
        IF t92 < 0.
          t92 = t92 + t96.
          IF t92 < 0.
            t92 = 0.
          ENDIF.
        ENDIF.
        IF t92 > t96 OR t93 <= 0.
        ELSE.
          IF t93 > t96 - t92.
            t93 = t96 - t92.
          ENDIF.
          t90 = t88+t92(t93).
        ENDIF.
        t73 = t90.
      ENDIF.
      t69 = t73.
      DATA(t98) = strlen( t69 ).
      t68 = t69.
      IF t68 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t68 TO UPPER CASE.
      ELSE.
        t68 = zlnt_runtime_uppe_91169605024d=>full( t68 ).
      ENDIF.
      t59->load( ).
      APPEND t68 TO t59->items.
      t59->save( ).
    ENDDO.
    t57 = t59.
    DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t101.
    DATA(t103) = t57.
    DATA(t104) = VALUE string( ).
    t103->dense( ).
    DATA(t105) = VALUE i( ).
    DO.
      t103->load( ).
      IF t105 >= lines( t103->items ).
        EXIT.
      ENDIF.
      CLEAR t104.
      READ TABLE t103->items INDEX t105 + 1 INTO t104.
      IF t103->has( t105 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t105 = t105 + 1.
      DATA t107 TYPE i.
      t107 = me->optional->indexof( p0 = t104 ).
      IF xsdbool( t107 < 0 ) = abap_true.
        t101->load( ).
        APPEND t104 TO t101->items.
        t101->save( ).
      ENDIF.
    ENDDO.
    t57 = t101.
    t57->load( ).
    IF xsdbool( lines( t57->items ) = 1 ) = abap_true.
      DATA(t120) = VALUE string( ).
      IF t57->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t57->load( ).
      READ TABLE t57->items INDEX 1 INTO t120.
      DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t122->has = abap_true.
      t122->value = t120.
      result = t122.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD get_importing.
    result = me->importing.

  ENDMETHOD.

  METHOD get_required_parameters.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA(t3) = me->importing.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO object.
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA t11 TYPE abap_bool.
      t11 = abap_false.
      DATA(t13) = me->optional.
      DATA(t14) = VALUE string( ).
      t13->dense( ).
      DATA(t15) = VALUE i( ).
      DO.
        t13->load( ).
        IF t15 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t13->items INDEX t15 + 1 INTO t14.
        IF t13->has( t15 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t15 = t15 + 1.
        DATA t17 TYPE string.
        DATA(t19) = strlen( t14 ).
        t17 = t14.
        IF t17 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t17 TO UPPER CASE.
        ELSE.
          t17 = zlnt_runtime_uppe_91169605024d=>full( t17 ).
        ENDIF.
        DATA(t20) = VALUE string( ).
        DATA(t21) = VALUE string( ).
        DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
        t22 = t4.
        DATA t25 TYPE string.
        t25 = t22->token->str.
        DATA(t33) = VALUE string( ).
        DATA(t34) = t25.
        DATA(t35) = 0.
        DATA(t36) = 1.
        DATA(t37) = strlen( t34 ).
        IF t35 < 0.
          t35 = t35 + t37.
          IF t35 < 0.
            t35 = 0.
          ENDIF.
        ENDIF.
        IF t35 > t37 OR t36 <= 0.
        ELSE.
          IF t36 > t37 - t35.
            t36 = t37 - t35.
          ENDIF.
          t33 = t34+t35(t36).
        ENDIF.
        IF xsdbool( t33 = |!| ) = abap_true.
          DATA t40 TYPE string.
          t40 = t25.
          DATA(t42) = VALUE string( ).
          DATA(t44) = 1.
          DATA t45 TYPE i.
          t45 = strlen( t40 ).
          DATA(t48) = strlen( t40 ).
          IF t44 < 0.
            t44 = t44 + t48.
            IF t44 < 0.
              t44 = 0.
            ENDIF.
          ENDIF.
          IF t44 > t48 OR t45 <= 0.
          ELSE.
            IF t45 > t48 - t44.
              t45 = t48 - t44.
            ENDIF.
            t42 = t40+t44(t45).
          ENDIF.
          t25 = t42.
        ENDIF.
        t21 = t25.
        DATA(t50) = strlen( t21 ).
        t20 = t21.
        IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t20 TO UPPER CASE.
        ELSE.
          t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
        ENDIF.
        IF xsdbool( t17 = t20 ) = abap_true.
          t11 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF xsdbool( t11 = abap_true ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t56 = me->preferred.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA(t59) = VALUE abap_bool( ).
      IF t56 IS INITIAL.
        t59 = abap_true.
      ELSEIF t56->has = abap_false.
        t59 = abap_true.
      ENDIF.
      IF t59 = abap_true.
        CLEAR t58.
      ELSE.
        DATA t62 TYPE string.
        DATA t63 TYPE string.
        t63 = t56->value.
        DATA(t65) = strlen( t63 ).
        t62 = t63.
        IF t62 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t62 TO UPPER CASE.
        ELSE.
          t62 = zlnt_runtime_uppe_91169605024d=>full( t62 ).
        ENDIF.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t62.
        t58 = t66.
      ENDIF.
      t55 = t58.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t69) = VALUE string( ).
      DATA(t70) = VALUE string( ).
      DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
      t71 = t4.
      DATA t74 TYPE string.
      t74 = t71->token->str.
      DATA(t82) = VALUE string( ).
      DATA(t83) = t74.
      DATA(t84) = 0.
      DATA(t85) = 1.
      DATA(t86) = strlen( t83 ).
      IF t84 < 0.
        t84 = t84 + t86.
        IF t84 < 0.
          t84 = 0.
        ENDIF.
      ENDIF.
      IF t84 > t86 OR t85 <= 0.
      ELSE.
        IF t85 > t86 - t84.
          t85 = t86 - t84.
        ENDIF.
        t82 = t83+t84(t85).
      ENDIF.
      IF xsdbool( t82 = |!| ) = abap_true.
        DATA t89 TYPE string.
        t89 = t74.
        DATA(t91) = VALUE string( ).
        DATA(t93) = 1.
        DATA t94 TYPE i.
        t94 = strlen( t89 ).
        DATA(t97) = strlen( t89 ).
        IF t93 < 0.
          t93 = t93 + t97.
          IF t93 < 0.
            t93 = 0.
          ENDIF.
        ENDIF.
        IF t93 > t97 OR t94 <= 0.
        ELSE.
          IF t94 > t97 - t93.
            t94 = t97 - t93.
          ENDIF.
          t91 = t89+t93(t94).
        ENDIF.
        t74 = t91.
      ENDIF.
      t70 = t74.
      DATA(t99) = strlen( t70 ).
      t69 = t70.
      IF t69 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t69 TO UPPER CASE.
      ELSE.
        t69 = zlnt_runtime_uppe_91169605024d=>full( t69 ).
      ENDIF.
      DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t100->has = abap_true.
      t100->value = t69.
      t67 = t100.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE abap_bool( ).
      IF t55 IS BOUND.
        t102 = t55->has.
      ENDIF.
      IF t67 IS BOUND.
        t103 = t67->has.
      ENDIF.
      IF t102 = t103.
        IF t102 = abap_false.
          t54 = abap_true.
        ELSEIF t55->value = t67->value.
          t54 = abap_true.
        ENDIF.
      ENDIF.
      IF t54 = abap_true.
        CONTINUE.
      ENDIF.

      t1->load( ).
      APPEND t4 TO t1->items.
      t1->save( ).
    ENDDO.
    DATA(t106) = me->changing.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t108 TYPE REF TO object.
    DATA(t109) = VALUE i( ).
    DO.
      t106->load( ).
      IF t109 >= lines( t106->items ).
        EXIT.
      ENDIF.
      CLEAR t108.
      READ TABLE t106->items INDEX t109 + 1 INTO t108.
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
      DATA t114 TYPE abap_bool.
      t114 = abap_false.
      DATA(t116) = me->optional.
      DATA(t117) = VALUE string( ).
      t116->dense( ).
      DATA(t118) = VALUE i( ).
      DO.
        t116->load( ).
        IF t118 >= lines( t116->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t116->items INDEX t118 + 1 INTO t117.
        IF t116->has( t118 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t118 = t118 + 1.
        DATA t120 TYPE string.
        DATA(t122) = strlen( t117 ).
        t120 = t117.
        IF t120 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t120 TO UPPER CASE.
        ELSE.
          t120 = zlnt_runtime_uppe_91169605024d=>full( t120 ).
        ENDIF.
        DATA(t123) = VALUE string( ).
        DATA(t124) = VALUE string( ).
        DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
        t125 = t107.
        DATA t128 TYPE string.
        t128 = t125->token->str.
        DATA(t136) = VALUE string( ).
        DATA(t137) = t128.
        DATA(t138) = 0.
        DATA(t139) = 1.
        DATA(t140) = strlen( t137 ).
        IF t138 < 0.
          t138 = t138 + t140.
          IF t138 < 0.
            t138 = 0.
          ENDIF.
        ENDIF.
        IF t138 > t140 OR t139 <= 0.
        ELSE.
          IF t139 > t140 - t138.
            t139 = t140 - t138.
          ENDIF.
          t136 = t137+t138(t139).
        ENDIF.
        IF xsdbool( t136 = |!| ) = abap_true.
          DATA t143 TYPE string.
          t143 = t128.
          DATA(t145) = VALUE string( ).
          DATA(t147) = 1.
          DATA t148 TYPE i.
          t148 = strlen( t143 ).
          DATA(t151) = strlen( t143 ).
          IF t147 < 0.
            t147 = t147 + t151.
            IF t147 < 0.
              t147 = 0.
            ENDIF.
          ENDIF.
          IF t147 > t151 OR t148 <= 0.
          ELSE.
            IF t148 > t151 - t147.
              t148 = t151 - t147.
            ENDIF.
            t145 = t143+t147(t148).
          ENDIF.
          t128 = t145.
        ENDIF.
        t124 = t128.
        DATA(t153) = strlen( t124 ).
        t123 = t124.
        IF t123 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t123 TO UPPER CASE.
        ELSE.
          t123 = zlnt_runtime_uppe_91169605024d=>full( t123 ).
        ENDIF.
        IF xsdbool( t120 = t123 ) = abap_true.
          t114 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF xsdbool( t114 = abap_true ) = abap_true.
        CONTINUE.
      ENDIF.
      t1->load( ).
      APPEND t107 TO t1->items.
      t1->save( ).
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_exporting.
    result = me->exporting.

  ENDMETHOD.

  METHOD get_changing.
    result = me->changing.

  ENDMETHOD.

  METHOD get_returning.
    result = me->returning.

  ENDMETHOD.

  METHOD get_exceptions.
    result = me->exceptions.

  ENDMETHOD.

  METHOD g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr.
    DATA(t1) = i_parameter_5406.
    DATA(t4) = me->defaults.
    DATA t5 TYPE string.
    DATA(t7) = strlen( t1 ).
    t5 = t1.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    result = t4->get( p0 = t5 ).

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_parent_name.
    DATA(t4) = i_abstract_method.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
    t5 = t1->find_first_expression( i_type_9913 = t8 ).
    IF xsdbool( t5 IS BOUND ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t13 = t1->find_first_expression( i_type_9913 = t16 ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t13 IS INITIAL ) = abap_true.
      ELSE.
        t17 = t13->get_first_token( ).
      ENDIF.
      t11 = t17.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      t26 = t11.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
      ELSE.
        DATA t36 TYPE string.
        t36 = t26->str.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t36.
        t28 = t38.
      ENDIF.
      t24 = t28.
      DATA t39 TYPE REF TO zif_lnt_interface_definition.
      DATA t41 TYPE REF TO zcl_lnt_current_scope.
      t41 = t2->scope.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t44 = t24.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = t44.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t52) = VALUE abap_bool( ).
      IF t48 IS INITIAL.
        t52 = abap_true.
      ELSEIF t48->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
      ELSE.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE string.
        t61 = t44->value.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t61.
        t58 = t63.
        DATA t65 TYPE REF TO zif_lnt_class_definition.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t67 = t58.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t71) = VALUE abap_bool( ).
        IF t67 IS INITIAL.
          t71 = abap_true.
        ELSEIF t67->has = abap_false.
          t71 = abap_true.
        ENDIF.
        IF t71 = abap_true.
        ELSE.
          DATA t75 TYPE REF TO zif_lnt_class_definition.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t77 = t41->current.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t77 IS INITIAL ) = abap_true.
          ELSE.
            DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t85 = t77.
            DATA t87 TYPE string.
            t87 = t58->value.
            t80 = t85->find_class_definition( i_name = t87 ).
          ENDIF.
          t75 = t80.
          DATA t89 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t75 IS BOUND ) = abap_true.
            t89 = t75.
          ELSE.
            DATA t98 TYPE REF TO zcl_lnt_class.
            DATA t99 TYPE REF TO zcl_lnt_class.
            DATA t101 TYPE REF TO zif_lnt_registry.
            t101 = t41->reg.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t106->has = abap_true.
            t106->value = |CLAS|.
            t103 = t106.
            DATA t110 TYPE string.
            t110 = t58->value.
            DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t112->has = abap_true.
            t112->value = t110.
            DATA t114 TYPE REF TO object.
            t114 = t101->get_object( i_type_9913 = t103 i_name = t112 ).
            t99 ?= t114.
            t98 = t99.
            DATA t115 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t98 IS BOUND ) = abap_true.
              t115 = t98->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t115.
            ENDIF.
            t89 = t115.
          ENDIF.
          t65 = t89.
        ENDIF.
        t56 = t65.
        DATA t122 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t56 IS BOUND ) = abap_true.
          DATA t125 TYPE REF TO zif_lnt_interface_definition.
          DATA t126 TYPE REF TO zif_lnt_class_definition.
          t126 = t56.
          t125 ?= t126.
          t122 = t125.
        ELSE.
          DATA t129 TYPE REF TO zif_lnt_interface_definition.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t134 TYPE string.
          t134 = t44->value.
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t134.
          t131 = t136.
          DATA t138 TYPE REF TO zif_lnt_interface_definition.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t140 = t131.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t144) = VALUE abap_bool( ).
          IF t140 IS INITIAL.
            t144 = abap_true.
          ELSEIF t140->has = abap_false.
            t144 = abap_true.
          ENDIF.
          IF t144 = abap_true.
          ELSE.
            DATA t148 TYPE REF TO zif_lnt_interface_definition.
            DATA t150 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t150 = t41->current.
            DATA t153 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t150 IS INITIAL ) = abap_true.
            ELSE.
              DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t158 = t150.
              DATA t160 TYPE string.
              t160 = t131->value.
              t153 = t158->find_interface_definition( i_name = t160 ).
            ENDIF.
            t148 = t153.
            DATA t162 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t148 IS BOUND ) = abap_true.
              t162 = t148.
            ELSE.
              DATA t171 TYPE REF TO zcl_lnt_ob_interface.
              DATA t172 TYPE REF TO zcl_lnt_ob_interface.
              DATA t174 TYPE REF TO zif_lnt_registry.
              t174 = t41->reg.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t179->has = abap_true.
              t179->value = |INTF|.
              t176 = t179.
              DATA t183 TYPE string.
              t183 = t131->value.
              DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t185->has = abap_true.
              t185->value = t183.
              DATA t187 TYPE REF TO object.
              t187 = t174->get_object( i_type_9913 = t176 i_name = t185 ).
              t172 ?= t187.
              t171 = t172.
              DATA t188 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t171 IS BOUND ) = abap_true.
                t188 = t171->def.
              ELSE.
                CLEAR t188.
              ENDIF.
              t162 = t188.
            ENDIF.
            t138 = t162.
          ENDIF.
          t129 = t138.
          DATA t198 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t129 IS BOUND ) = abap_true.
            t198 = t129.
          ELSE.
            CLEAR t198.
          ENDIF.
          t122 = t198.
        ENDIF.
        t46 = t122.
      ENDIF.
      t39 = t46.
      DATA(t207) = VALUE abap_bool( ).
      DATA(t208) = VALUE abap_bool( ).
      IF xsdbool( t39 IS BOUND ) = abap_true.
        t208 = abap_false.
      ELSE.
        DATA t219 TYPE REF TO zcl_lnt_ddic.
        DATA t220 TYPE REF TO zif_lnt_registry.
        t220 = t2->scope->reg.
        t219 = NEW zcl_lnt_ddic( i_reg_f149 = t220 ).
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t222 = t24.
        DATA(t224) = VALUE abap_bool( ).
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t226 = t222.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t230) = VALUE abap_bool( ).
        IF t226 IS INITIAL.
          t230 = abap_true.
        ELSEIF t226->has = abap_false.
          t230 = abap_true.
        ENDIF.
        IF t230 = abap_true.
          t224 = abap_true.
        ELSE.
          DATA t234 TYPE REF TO zif_lnt_registry.
          t234 = t219->reg.
          DATA t236 TYPE string.
          t236 = t222->value.
          t224 = t234->in_error_namespace( i_name = t236 ).
        ENDIF.
        t208 = xsdbool( t224 = abap_false ).
      ENDIF.
      t207 = t208.
      IF xsdbool( t39 IS BOUND ) = abap_true.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        t240 = t2->scope.
        DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t245 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t246 TYPE REF TO zif_lnt_interface_definition.
        t246 = t39.
        t245 ?= t246.
        t243 = t245.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t249.
        t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t249->sval = |Object|.
        DATA t251 TYPE string.
        t251 = t2->filename.
        DATA t253 TYPE REF TO zcl_lnt_ireference_extras.
        t240->add_reference( i_usage = t11 i_referencing = t243 i_type_9913 = t249 i_filename = t251 i_extra = t253 ).
      ELSE.
        DATA t254 TYPE abap_bool.
        t254 = t207.
        IF t207 = abap_true.
          DATA(t256) = VALUE abap_bool( ).
          IF t24 IS BOUND.
            IF t24->has = abap_true.
              t256 = xsdbool( strlen( t24->value ) > 0 ).
            ENDIF.
          ENDIF.
          t254 = t256.
        ENDIF.
        IF t254 = abap_true.
          DATA t258 TYPE REF TO zcl_lnt_current_scope.
          t258 = t2->scope.
          DATA t261 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t262->sval = |Object (Void)|.
          DATA(t264) = CONV string( me->filename ).
          DATA t267 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t271 TYPE string.
          DATA t272 TYPE string.
          t272 = t24->value.
          DATA(t274) = strlen( t272 ).
          t271 = t272.
          IF t271 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t271 TO UPPER CASE.
          ELSE.
            t271 = zlnt_runtime_uppe_91169605024d=>full( t271 ).
          ENDIF.
          DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t275->has = abap_true.
          t275->value = t271.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t267 = NEW zcl_lnt_ireference_extras( i_oo_name = t275 i_oo_type = t277 i_found_qualified = t279 ).
          CREATE OBJECT t267->zlnt_view_ownkeys_b0e8086400eb.
          t267->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t267->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t281 ).
          CREATE OBJECT t267->zlnt_json_ownkeys_70e5fd461788.
          t267->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t267->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t283 ).
          t258->add_reference( i_usage = t11 i_referencing = t261 i_type_9913 = t262 i_filename = t264 i_extra = t267 ).
        ENDIF.
      ENDIF.
      DATA t287 TYPE REF TO zcl_lnt_abstract_token.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      DATA(t292) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t289 = t1->find_first_expression( i_type_9913 = t292 ).
      DATA t293 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t289 IS INITIAL ) = abap_true.
      ELSE.
        t293 = t289->get_first_token( ).
      ENDIF.
      t287 = t293.
      DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t287 IS INITIAL ) = abap_true.
      ELSE.
        DATA t308 TYPE string.
        t308 = t287->str.
        DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t310->has = abap_true.
        t310->value = t308.
        t300 = t310.
      ENDIF.
      DATA t311 TYPE REF TO zif_lnt_event_definition.
      DATA t314 TYPE REF TO zcl_lnt_current_scope.
      t314 = t2->scope.
      t311 = NEW zcl_lnt_object_oriented( i_scope = t314 )->search_event( i_def = t39 i_name = t300 ).
      DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t319 TYPE REF TO zcl_lnt_expression_node.
      t319 = t5.
      DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
      t318 = t319->find_all_expressions( i_type_9913 = t321 ).
      DATA t322 TYPE REF TO zcl_lnt_expression_node.
      DATA t323 TYPE REF TO object.
      DATA(t324) = VALUE i( ).
      DO.
        t318->load( ).
        IF t324 >= lines( t318->items ).
          EXIT.
        ENDIF.
        CLEAR t323.
        READ TABLE t318->items INDEX t324 + 1 INTO t323.
        t324 = t324 + 1.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t325.
        CLEAR t322.
        IF t323 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t325 ?= t323.
          DATA t326 TYPE REF TO object.
          t326 = t325->as_ref( ).
          t322 ?= t326.
        ELSE.
          t322 ?= t323.
        ENDIF.
        DATA t327 TYPE REF TO zcl_lnt_abstract_token.
        t327 = t322->get_first_token( ).
        DATA(t330) = VALUE string( ).
        DATA(t331) = VALUE string( ).
        DATA t332 TYPE string.
        DATA t333 TYPE string.
        t333 = t327->str.
        DATA(t338) = strlen( t333 ).
        t332 = t333.
        IF t332 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t332 TO UPPER CASE.
        ELSE.
          t332 = zlnt_runtime_uppe_91169605024d=>full( t332 ).
        ENDIF.
        DATA(t339) = |!|.
        DATA(t340) = ||.
        DATA(t341) = strlen( t332 ).
        t331 = t332.
        REPLACE ALL OCCURRENCES OF t339 IN t331 WITH t340.
        t330 = t331.
        DATA(t342) = me->optional.
        t342->load( ).
        APPEND t330 TO t342->items.
        t342->save( ).
        DATA t344 TYPE abap_bool.
        DATA t345 TYPE abap_bool.
        t345 = xsdbool( t330 = |SENDER| ).
        t344 = t345.
        IF t345 = abap_true.
          t344 = xsdbool( t39 IS BOUND ).
        ENDIF.
        IF t344 = abap_true.
          DATA(t350) = me->importing.
          DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t353) = CONV string( me->filename ).
          DATA t354 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t355 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t356 TYPE REF TO zif_lnt_interface_definition.
          t356 = t39.
          t355 ?= t356.
          DATA t358 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t358.
          t354 = NEW zcl_lnt_object_reference_type( i_id = t355 i_extra = t358 ).
          DATA t359 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t359.
          DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t362.
          t362->load( ).
          APPEND |event_parameter| TO t362->items.
          t362->save( ).
          t359 = t362.
          DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t368.
          t351 = NEW zcl_lnt_typed_identifier( i_token = t327 i_filename = t353 i_type_9913 = t354 i_meta = t359 i_value = t368 ).
          t350->load( ).
          APPEND t351 TO t350->items.
          t350->save( ).
          CONTINUE.
        ENDIF.
        DATA t369 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t369.
        DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t371.
        DATA t373 TYPE REF TO zif_lnt_event_definition.
        t373 = t311.
        DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t375.
        IF xsdbool( t373 IS INITIAL ) = abap_true.
          CLEAR t375.
        ELSE.
          t375 = t373->get_parameters( ).
        ENDIF.
        t371 = t375.
        DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t382.
        IF xsdbool( t371 IS INITIAL ) = abap_true.
          CLEAR t382.
        ELSE.
          DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t387 = t371.
          DATA t390 TYPE i.
          t387->load( ).
          t390 = lines( t387->items ).
          DATA t393 TYPE i.
          t393 = 0.
          DATA t395 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t395.
          DO.
            IF xsdbool( t393 < t390 ) = abap_false.
              EXIT.
            ENDIF.
            DATA t400 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t400.
            DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t402.
            DATA t405 TYPE REF TO object.
            t405 = t387->get( p0 = t393 ).
            DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t406.
            CLEAR t402.
            IF t405 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t406 ?= t405.
              DATA t407 TYPE REF TO object.
              t407 = t406->as_ref( ).
              t402 ?= t407.
            ELSE.
              t402 ?= t405.
            ENDIF.
            t400 = t402.
            DATA(t409) = VALUE string( ).
            DATA(t410) = VALUE string( ).
            DATA t411 TYPE REF TO zcl_lnt_fi_identifier.
            t411 = t400.
            DATA t414 TYPE string.
            t414 = t411->token->str.
            DATA(t422) = VALUE string( ).
            DATA(t423) = t414.
            DATA(t424) = 0.
            DATA(t425) = 1.
            DATA(t426) = strlen( t423 ).
            IF t424 < 0.
              t424 = t424 + t426.
              IF t424 < 0.
                t424 = 0.
              ENDIF.
            ENDIF.
            IF t424 > t426 OR t425 <= 0.
            ELSE.
              IF t425 > t426 - t424.
                t425 = t426 - t424.
              ENDIF.
              t422 = t423+t424(t425).
            ENDIF.
            IF xsdbool( t422 = |!| ) = abap_true.
              DATA t429 TYPE string.
              t429 = t414.
              DATA(t431) = VALUE string( ).
              DATA(t433) = 1.
              DATA t434 TYPE i.
              t434 = strlen( t429 ).
              DATA(t437) = strlen( t429 ).
              IF t433 < 0.
                t433 = t433 + t437.
                IF t433 < 0.
                  t433 = 0.
                ENDIF.
              ENDIF.
              IF t433 > t437 OR t434 <= 0.
              ELSE.
                IF t434 > t437 - t433.
                  t434 = t437 - t433.
                ENDIF.
                t431 = t429+t433(t434).
              ENDIF.
              t414 = t431.
            ENDIF.
            t410 = t414.
            DATA(t439) = strlen( t410 ).
            t409 = t410.
            IF t409 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t409 TO UPPER CASE.
            ELSE.
              t409 = zlnt_runtime_uppe_91169605024d=>full( t409 ).
            ENDIF.
            IF xsdbool( t409 = t330 ) = abap_true.
              t395 = t400.
              EXIT.
            ENDIF.
            DATA(t447) = 1.
            t393 = t393 + t447.
          ENDDO.
          t382 = t395.
        ENDIF.
        t369 = t382.
        IF xsdbool( t369 IS BOUND ) = abap_true.
          DATA(t451) = me->importing.
          DATA t452 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t454) = CONV string( me->filename ).
          DATA t455 TYPE REF TO zcl_lnt_abstract_type.
          t455 = t369->type_cba0.
          DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t461.
          DATA t464 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t464.
          t464->load( ).
          APPEND |event_parameter| TO t464->items.
          t464->save( ).
          t461 = t464.
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t470.
          t452 = NEW zcl_lnt_typed_identifier( i_token = t327 i_filename = t454 i_type_9913 = t455 i_meta = t461 i_value = t470 ).
          t451->load( ).
          APPEND t452 TO t451->items.
          t451->save( ).
        ELSE.
          IF t207 = abap_true.
            DATA(t472) = me->importing.
            DATA t473 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t475) = CONV string( me->filename ).
            DATA t476 TYPE REF TO zcl_lnt_void_type.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t478.
            t476 = zcl_lnt_void_type=>get_db65( i_voided = t24 i_qualified_name = t478 ).
            DATA t479 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t479.
            DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t482.
            t482->load( ).
            APPEND |event_parameter| TO t482->items.
            t482->save( ).
            t479 = t482.
            DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t488.
            t473 = NEW zcl_lnt_typed_identifier( i_token = t327 i_filename = t475 i_type_9913 = t476 i_meta = t479 i_value = t488 ).
            t472->load( ).
            APPEND t473 TO t472->items.
            t472->save( ).
          ELSE.
            DATA t490 TYPE REF TO zcl_lnt_unknown_type.
            DATA t491 TYPE string.
            DATA t492 TYPE string.
            DATA(t493) = |handler parameter not found "|.
            DATA(t495) = strlen( t493 ).
            t492 = |{ t493 }{ t330 }|.
            DATA(t497) = strlen( t492 ).
            t491 = |{ t492 }{ |"| }|.
            DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t498.
            t490 = NEW zcl_lnt_unknown_type( i_error = t491 i_qualified_name = t498 ).
            DATA(t499) = me->importing.
            DATA t500 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t502) = CONV string( me->filename ).
            DATA t504 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t504.
            DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t507.
            t507->load( ).
            APPEND |event_parameter| TO t507->items.
            t507->save( ).
            t504 = t507.
            DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t513.
            t500 = NEW zcl_lnt_typed_identifier( i_token = t327 i_filename = t502 i_type_9913 = t490 i_meta = t504 i_value = t513 ).
            t499->load( ).
            APPEND t500 TO t499->items.
            t499->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
      RETURN.
    ENDIF.
    DATA t514 TYPE REF TO zcl_lnt_expression_node.
    DATA(t517) = zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57.
    t514 = t1->find_first_expression( i_type_9913 = t517 ).
    IF xsdbool( t514 IS BOUND ) = abap_true.
      DATA(t520) = me->importing.
      DATA t521 TYPE REF TO zcl_lnt_expression_node.
      t521 = t514.
      DATA t525 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t525.
      t525->load( ).
      APPEND |importing| TO t525->items.
      t525->save( ).
      me->add_51c1( i_target_5f8a = t520 i_source_75cf = t521 i_input_967e = t2 i_meta = t525 i_abstract_method = t4 ).
      DATA t532 TYPE REF TO zcl_lnt_abstract_token.
      t532 = t514->find_direct_token_by_text( i_text = |PREFERRED| ).
      IF xsdbool( t532 IS BOUND ) = abap_true.
        DATA t538 TYPE string.
        DATA t539 TYPE string.
        t539 = t514->get_last_token( )->str.
        DATA(t546) = strlen( t539 ).
        t538 = t539.
        IF t538 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t538 TO UPPER CASE.
        ELSE.
          t538 = zlnt_runtime_uppe_91169605024d=>full( t538 ).
        ENDIF.
        DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t547->has = abap_true.
        t547->value = t538.
        me->preferred = t547.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
        DATA(t549) = VALUE abap_bool( ).
        DATA t550 TYPE string.
        t550 = me->preferred->value.
        DATA(t552) = |!|.
        DATA(t553) = strlen( t550 ).
        DATA t554 TYPE i.
        DATA(t555) = VALUE i( ).
        DATA(t556) = VALUE string( ).
        t554 = strlen( t552 ).
        IF t554 = 0.
          t549 = abap_true.
        ELSEIF t554 <= t553.
          t555 = 0.
          t556 = t550+t555(t554).
          IF t556 = t552.
            t549 = abap_true.
          ENDIF.
        ENDIF.
        IF t549 = abap_true.
          DATA t560 TYPE string.
          t560 = me->preferred->value.
          DATA(t563) = VALUE string( ).
          DATA(t565) = 1.
          DATA t566 TYPE i.
          t566 = strlen( t560 ).
          DATA(t569) = strlen( t560 ).
          t565 = COND i( WHEN t565 < 0 THEN 0 WHEN t565 > t569 THEN t569 ELSE t565 ).
          t566 = COND i( WHEN t566 < 0 THEN 0 WHEN t566 > t569 THEN t569 ELSE t566 ).
          IF t565 > t566.
            t569 = t565.
            t565 = t566.
            t566 = t569.
          ENDIF.
          t569 = t566 - t565.
          t563 = t560+t565(t569).
          DATA(t570) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t570->has = abap_true.
          t570->value = t563.
          me->preferred = t570.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t572 TYPE REF TO zcl_lnt_expression_node.
    DATA(t575) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
    t572 = t1->find_first_expression( i_type_9913 = t575 ).
    IF xsdbool( t572 IS BOUND ) = abap_true.
      DATA(t578) = me->exporting.
      DATA t579 TYPE REF TO zcl_lnt_expression_node.
      t579 = t572.
      DATA t583 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t583.
      t583->load( ).
      APPEND |exporting| TO t583->items.
      t583->save( ).
      me->add_51c1( i_target_5f8a = t578 i_source_75cf = t579 i_input_967e = t2 i_meta = t583 i_abstract_method = t4 ).
    ENDIF.
    DATA t589 TYPE REF TO zcl_lnt_expression_node.
    DATA(t592) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
    t589 = t1->find_first_expression( i_type_9913 = t592 ).
    IF xsdbool( t589 IS BOUND ) = abap_true.
      DATA(t595) = me->changing.
      DATA t596 TYPE REF TO zcl_lnt_expression_node.
      t596 = t589.
      DATA t600 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t600.
      t600->load( ).
      APPEND |changing| TO t600->items.
      t600->save( ).
      me->add_51c1( i_target_5f8a = t595 i_source_75cf = t596 i_input_967e = t2 i_meta = t600 i_abstract_method = t4 ).
    ENDIF.
    DATA t606 TYPE REF TO zcl_lnt_expression_node.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
    t606 = t1->find_first_expression( i_type_9913 = t609 ).
    IF xsdbool( t606 IS BOUND ) = abap_true.
      DATA t615 TYPE REF TO zcl_lnt_expression_node.
      t615 = t606.
      DATA t619 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t619.
      t619->load( ).
      APPEND |returning| TO t619->items.
      t619->save( ).
      me->returning = zcl_lnt_sy_mthd_df_rtrnng=>run_syntax( i_node = t615 i_input_967e = t2 i_meta = t619 ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `returning`.
    ENDIF.
    me->workaround_rap( i_node = t1 i_input_967e = t2 i_parent_name = t3 ).
  ENDMETHOD.

  METHOD check_duplicate_names.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t1 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_all( ) ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO object.
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE string( ).
      DATA(t10) = VALUE string( ).
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      t12 = t4.
      DATA(t15) = VALUE string( ).
      t15 = t12->token->str.
      DATA(t23) = VALUE string( ).
      DATA(t24) = t15.
      DATA(t25) = 0.
      DATA(t26) = 1.
      DATA(t27) = strlen( t24 ).
      IF t25 < 0.
        t25 = t25 + t27.
        IF t25 < 0.
          t25 = 0.
        ENDIF.
      ENDIF.
      IF t25 > t27 OR t26 <= 0.
      ELSE.
        IF t26 > t27 - t25.
          t26 = t27 - t25.
        ENDIF.
        t23 = t24+t25(t26).
      ENDIF.
      IF xsdbool( t23 = |!| ) = abap_true.
        DATA(t30) = VALUE string( ).
        t30 = t15.
        DATA(t32) = VALUE string( ).
        DATA(t34) = 1.
        DATA(t35) = VALUE i( ).
        t35 = strlen( t30 ).
        DATA(t38) = strlen( t30 ).
        IF t34 < 0.
          t34 = t34 + t38.
          IF t34 < 0.
            t34 = 0.
          ENDIF.
        ENDIF.
        IF t34 > t38 OR t35 <= 0.
        ELSE.
          IF t35 > t38 - t34.
            t35 = t38 - t34.
          ENDIF.
          t32 = t30+t34(t35).
        ENDIF.
        t15 = t32.
      ENDIF.
      t11 = t15.
      DATA(t40) = strlen( t11 ).
      t10 = t11.
      IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t10 TO UPPER CASE.
      ELSE.
        t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
      ENDIF.
      t9 = t10.
      IF t1->has( p0 = t9 ) = abap_true.
        DATA t44 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t45 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t48) = VALUE string( ).
        DATA(t49) = VALUE string( ).
        DATA(t50) = |Method parameter "|.
        DATA(t52) = strlen( t50 ).
        t49 = |{ t50 }{ t9 }|.
        DATA(t54) = strlen( t49 ).
        t48 = |{ t49 }{ |" already defined| }|.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t48.
        t45 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t55 ).
        t44 = NEW #( ).
        t44->payload = t45.
        CLEAR t44->source_value.
        DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t57.
        DATA t58 TYPE REF TO object.
        CLEAR t57.
        t58 = t45.
        TRY.
            t44->source_value ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44->source_value IS NOT BOUND.
          TRY.
              t57 ?= t45.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t57 IS BOUND.
            t44->source_value = t57->source( ).
          ENDIF.
          IF t44->source_value IS NOT BOUND.
            CREATE OBJECT t44->source_value.
            t44->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t44->source_value->oval = t45.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t44.
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t59 = t1->add( p0 = t9 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_name_lengths.
    DATA(t1) = i_input_967e.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_all( ) ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      t11 = t3.
      DATA t14 TYPE string.
      t14 = t11->token->str.
      DATA(t22) = VALUE string( ).
      DATA(t23) = t14.
      DATA(t24) = 0.
      DATA(t25) = 1.
      DATA(t26) = strlen( t23 ).
      IF t24 < 0.
        t24 = t24 + t26.
        IF t24 < 0.
          t24 = 0.
        ENDIF.
      ENDIF.
      IF t24 > t26 OR t25 <= 0.
      ELSE.
        IF t25 > t26 - t24.
          t25 = t26 - t24.
        ENDIF.
        t22 = t23+t24(t25).
      ENDIF.
      IF xsdbool( t22 = |!| ) = abap_true.
        DATA t29 TYPE string.
        t29 = t14.
        DATA(t31) = VALUE string( ).
        DATA(t33) = 1.
        DATA t34 TYPE i.
        t34 = strlen( t29 ).
        DATA(t37) = strlen( t29 ).
        IF t33 < 0.
          t33 = t33 + t37.
          IF t33 < 0.
            t33 = 0.
          ENDIF.
        ENDIF.
        IF t33 > t37 OR t34 <= 0.
        ELSE.
          IF t34 > t37 - t33.
            t34 = t37 - t33.
          ENDIF.
          t31 = t29+t33(t34).
        ENDIF.
        t14 = t31.
      ENDIF.
      IF xsdbool( strlen( t14 ) > 30 ) = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t41 = t1->issues.
        DATA t43 TYPE REF TO zcl_lnt_issue.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
        t46 = t3.
        t45 = t46->token.
        DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t51.
        t43 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t45 i_message_26cb = |Method parameter name longer than 30 characters| i_fix = t51 ).
        t41->load( ).
        APPEND t43 TO t41->items.
        t41->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD workaround_rap.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_parent_name.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    t4 = t1->find_expression_after_token( i_text = |RESULT| ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    t10 = t1->concat_tokens( ).
    DATA(t12) = strlen( t10 ).
    t9 = t10.
    IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t9 TO UPPER CASE.
    ELSE.
      t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    t15 = t1->find_expression_after_token( i_text = |IMPORTING| ).
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t15 IS BOUND ) = abap_true.
      t19 = t15.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = VALUE i( ).
      DATA(t27) = | IMPORTING REQUEST |.
      DATA(t28) = strlen( t8 ).
      IF t27 IS INITIAL.
        t25 = 0.
      ELSE.
        FIND t27 IN t8 MATCH OFFSET t25.
        IF sy-subrc <> 0.
          t25 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t25 >= 0 ) = abap_true.
        t23 = t1->find_expression_after_token( i_text = |REQUEST| ).
      ELSE.
        CLEAR t23.
      ENDIF.
      t19 = t23.
    ENDIF.
    t13 = t19.
    IF xsdbool( t13 IS BOUND ) = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t39) = VALUE i( ).
      DATA(t41) = | FOR LOCK |.
      DATA(t42) = strlen( t8 ).
      IF t41 IS INITIAL.
        t39 = 0.
      ELSE.
        FIND t41 IN t8 MATCH OFFSET t39.
        IF sy-subrc <> 0.
          t39 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t39 >= 0 ) = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        t45 = t1->find_expression_after_token( i_text = |LOCK| ).
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t45 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t53) = VALUE string( ).
          t53 = t45->concat_tokens( ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t53.
          t49 = t56.
        ENDIF.
        t37 = t49.
      ELSE.
        CLEAR t37.
      ENDIF.
      t36 = t37.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
      t58 = t1->find_direct_expressions( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      DATA t62 TYPE REF TO object.
      DATA(t63) = VALUE i( ).
      DO.
        t58->load( ).
        IF t63 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t58->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        t67 = t61.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        CLEAR t72.
        IF t67 IS BOUND.
          CLEAR t72.
          IF t67 IS BOUND.
            DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t74.
            DATA t75 TYPE REF TO object.
            CLEAR t74.
            t75 = t67.
            TRY.
                t72 ?= t75.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t72 IS NOT BOUND.
              TRY.
                  t74 ?= t67.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t74 IS BOUND.
                t72 = t74->source( ).
              ENDIF.
              IF t72 IS NOT BOUND.
                CREATE OBJECT t72.
                t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t72->oval = t67.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t73.
        IF t4 IS BOUND.
          CLEAR t73.
          IF t4 IS BOUND.
            DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t76.
            DATA t77 TYPE REF TO object.
            CLEAR t76.
            t77 = t4.
            TRY.
                t73 ?= t77.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t73 IS NOT BOUND.
              TRY.
                  t76 ?= t4.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t76 IS BOUND.
                t73 = t76->source( ).
              ENDIF.
              IF t73 IS NOT BOUND.
                CREATE OBJECT t73.
                t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t73->oval = t4.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t72 IS BOUND.
          t66 = t72->strict_equals( t73 ).
        ELSE.
          t66 = xsdbool( t73 IS NOT BOUND ).
        ENDIF.
        IF t66 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t79.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t81 = t36.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t83.
        DATA(t85) = VALUE abap_bool( ).
        IF t81 IS INITIAL.
          t85 = abap_true.
        ELSEIF t81->has = abap_false.
          t85 = abap_true.
        ENDIF.
        IF t85 = abap_true.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = |RapMethodParameter|.
          t88 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t79 = zcl_lnt_void_type=>get_db65( i_voided = t88 i_qualified_name = t93 ).
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_basic_types.
          t95 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
          DATA(t97) = VALUE string( ).
          t97 = t36->value.
          DATA t99 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t99.
          t79 = t95->rap_table_for( i_entity_name = t97 i_options = t99 ).
        ENDIF.
        DATA(t100) = me->importing.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        t102 = t61->get_first_token( ).
        DATA(t104) = VALUE string( ).
        t104 = t2->filename.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t107.
        DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t110.
        t110->load( ).
        APPEND |importing| TO t110->items.
        t110->save( ).
        t107 = t110.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t101 = NEW zcl_lnt_typed_identifier( i_token = t102 i_filename = t104 i_type_9913 = t79 i_meta = t107 i_value = t116 ).
        t100->load( ).
        APPEND t101 TO t100->items.
        t100->save( ).
      ENDDO.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t118 = t36.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t123) = VALUE abap_bool( ).
      IF t118 IS INITIAL.
        t123 = abap_true.
      ELSEIF t118->has = abap_false.
        t123 = abap_true.
      ENDIF.
      IF xsdbool( t123 = abap_false ) = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        t125 = t13->get_first_token( ).
        DATA(t129) = me->exporting.
        DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t131 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t132 TYPE REF TO zcl_lnt_position.
        t132 = t125->start.
        t131 = NEW zcl_lnt_lx_identifier( i_start = t132 i_str = |failed| ).
        DATA(t138) = VALUE string( ).
        t138 = t2->filename.
        DATA t140 TYPE REF TO zcl_lnt_void_type.
        DATA(t143) = VALUE string( ).
        DATA(t144) = VALUE string( ).
        DATA(t145) = |RESPONSE FOR FAILED EARLY |.
        DATA(t146) = VALUE string( ).
        t146 = t36->value.
        DATA(t148) = strlen( t145 ).
        t144 = |{ t145 }{ t146 }|.
        DATA(t150) = strlen( t144 ).
        t143 = |{ t144 }{ || }|.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = t143.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t140 = zcl_lnt_void_type=>get_db65( i_voided = t151 i_qualified_name = t153 ).
        DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t157.
        t157->load( ).
        APPEND |exporting| TO t157->items.
        t157->save( ).
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130 = NEW zcl_lnt_typed_identifier( i_token = t131 i_filename = t138 i_type_9913 = t140 i_meta = t157 i_value = t163 ).
        t129->load( ).
        APPEND t130 TO t129->items.
        t129->save( ).
        DATA(t164) = me->exporting.
        DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t166 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t167 TYPE REF TO zcl_lnt_position.
        t167 = t125->start.
        t166 = NEW zcl_lnt_lx_identifier( i_start = t167 i_str = |reported| ).
        DATA(t173) = VALUE string( ).
        t173 = t2->filename.
        DATA t175 TYPE REF TO zcl_lnt_void_type.
        DATA(t178) = VALUE string( ).
        DATA(t179) = VALUE string( ).
        DATA(t180) = |RESPONSE FOR REPORTED EARLY |.
        DATA(t181) = VALUE string( ).
        t181 = t36->value.
        DATA(t183) = strlen( t180 ).
        t179 = |{ t180 }{ t181 }|.
        DATA(t185) = strlen( t179 ).
        t178 = |{ t179 }{ || }|.
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t178.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t175 = zcl_lnt_void_type=>get_db65( i_voided = t186 i_qualified_name = t188 ).
        DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t192.
        t192->load( ).
        APPEND |exporting| TO t192->items.
        t192->save( ).
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t165 = NEW zcl_lnt_typed_identifier( i_token = t166 i_filename = t173 i_type_9913 = t175 i_meta = t192 i_value = t198 ).
        t164->load( ).
        APPEND t165 TO t164->items.
        t164->save( ).
      ELSE.
        DATA(t199) = VALUE abap_bool( ).
        DATA(t200) = VALUE abap_bool( ).
        DATA(t201) = VALUE abap_bool( ).
        DATA(t202) = VALUE abap_bool( ).
        DATA(t203) = VALUE abap_bool( ).
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE abap_bool( ).
        DATA(t209) = VALUE abap_bool( ).
        DATA(t210) = VALUE i( ).
        DATA(t212) = | FOR VALIDATE |.
        DATA(t213) = strlen( t8 ).
        IF t212 IS INITIAL.
          t210 = 0.
        ELSE.
          FIND t212 IN t8 MATCH OFFSET t210.
          IF sy-subrc <> 0.
            t210 = -1.
          ENDIF.
        ENDIF.
        t209 = xsdbool( t210 >= 0 ).
        t208 = t209.
        IF t209 = abap_false.
          DATA(t216) = VALUE i( ).
          DATA(t218) = | FOR BEHAVIOR |.
          DATA(t219) = strlen( t8 ).
          IF t218 IS INITIAL.
            t216 = 0.
          ELSE.
            FIND t218 IN t8 MATCH OFFSET t216.
            IF sy-subrc <> 0.
              t216 = -1.
            ENDIF.
          ENDIF.
          t208 = xsdbool( t216 >= 0 ).
        ENDIF.
        t207 = t208.
        IF t208 = abap_false.
          DATA(t222) = VALUE i( ).
          DATA(t224) = | FOR DETERMINE |.
          DATA(t225) = strlen( t8 ).
          IF t224 IS INITIAL.
            t222 = 0.
          ELSE.
            FIND t224 IN t8 MATCH OFFSET t222.
            IF sy-subrc <> 0.
              t222 = -1.
            ENDIF.
          ENDIF.
          t207 = xsdbool( t222 >= 0 ).
        ENDIF.
        t206 = t207.
        IF t207 = abap_false.
          DATA(t228) = VALUE i( ).
          DATA(t230) = | FOR FEATURES |.
          DATA(t231) = strlen( t8 ).
          IF t230 IS INITIAL.
            t228 = 0.
          ELSE.
            FIND t230 IN t8 MATCH OFFSET t228.
            IF sy-subrc <> 0.
              t228 = -1.
            ENDIF.
          ENDIF.
          t206 = xsdbool( t228 >= 0 ).
        ENDIF.
        t205 = t206.
        IF t206 = abap_false.
          DATA(t234) = VALUE i( ).
          DATA(t236) = | FOR INSTANCE FEATURES |.
          DATA(t237) = strlen( t8 ).
          IF t236 IS INITIAL.
            t234 = 0.
          ELSE.
            FIND t236 IN t8 MATCH OFFSET t234.
            IF sy-subrc <> 0.
              t234 = -1.
            ENDIF.
          ENDIF.
          t205 = xsdbool( t234 >= 0 ).
        ENDIF.
        t204 = t205.
        IF t205 = abap_false.
          DATA(t240) = VALUE i( ).
          DATA(t242) = | FOR GLOBAL AUTHORIZATION |.
          DATA(t243) = strlen( t8 ).
          IF t242 IS INITIAL.
            t240 = 0.
          ELSE.
            FIND t242 IN t8 MATCH OFFSET t240.
            IF sy-subrc <> 0.
              t240 = -1.
            ENDIF.
          ENDIF.
          t204 = xsdbool( t240 >= 0 ).
        ENDIF.
        t203 = t204.
        IF t204 = abap_false.
          DATA(t246) = VALUE i( ).
          DATA(t248) = | FOR PRECHECK |.
          DATA(t249) = strlen( t8 ).
          IF t248 IS INITIAL.
            t246 = 0.
          ELSE.
            FIND t248 IN t8 MATCH OFFSET t246.
            IF sy-subrc <> 0.
              t246 = -1.
            ENDIF.
          ENDIF.
          t203 = xsdbool( t246 >= 0 ).
        ENDIF.
        t202 = t203.
        IF t203 = abap_false.
          DATA(t252) = VALUE i( ).
          DATA(t254) = | FOR NUMBERING |.
          DATA(t255) = strlen( t8 ).
          IF t254 IS INITIAL.
            t252 = 0.
          ELSE.
            FIND t254 IN t8 MATCH OFFSET t252.
            IF sy-subrc <> 0.
              t252 = -1.
            ENDIF.
          ENDIF.
          t202 = xsdbool( t252 >= 0 ).
        ENDIF.
        t201 = t202.
        IF t202 = abap_false.
          DATA(t258) = VALUE i( ).
          DATA(t260) = | FOR READ |.
          DATA(t261) = strlen( t8 ).
          IF t260 IS INITIAL.
            t258 = 0.
          ELSE.
            FIND t260 IN t8 MATCH OFFSET t258.
            IF sy-subrc <> 0.
              t258 = -1.
            ENDIF.
          ENDIF.
          t201 = xsdbool( t258 >= 0 ).
        ENDIF.
        t200 = t201.
        IF t201 = abap_false.
          DATA(t264) = VALUE i( ).
          DATA(t266) = | FOR VALIDATION |.
          DATA(t267) = strlen( t8 ).
          IF t266 IS INITIAL.
            t264 = 0.
          ELSE.
            FIND t266 IN t8 MATCH OFFSET t264.
            IF sy-subrc <> 0.
              t264 = -1.
            ENDIF.
          ENDIF.
          t200 = xsdbool( t264 >= 0 ).
        ENDIF.
        t199 = t200.
        IF t200 = abap_false.
          DATA(t270) = VALUE i( ).
          DATA(t272) = | FOR MODIFY |.
          DATA(t273) = strlen( t8 ).
          IF t272 IS INITIAL.
            t270 = 0.
          ELSE.
            FIND t272 IN t8 MATCH OFFSET t270.
            IF sy-subrc <> 0.
              t270 = -1.
            ENDIF.
          ENDIF.
          t199 = xsdbool( t270 >= 0 ).
        ENDIF.
        IF t199 = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_abstract_token.
          t275 = t13->get_first_token( ).
          DATA(t279) = me->exporting.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t281 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t282 TYPE REF TO zcl_lnt_position.
          t282 = t275->start.
          t281 = NEW zcl_lnt_lx_identifier( i_start = t282 i_str = |failed| ).
          DATA(t288) = VALUE string( ).
          t288 = t2->filename.
          DATA t290 TYPE REF TO zcl_lnt_void_type.
          DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t294->has = abap_true.
          t294->value = |RapMethodParameter|.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t290 = zcl_lnt_void_type=>get_db65( i_voided = t294 i_qualified_name = t296 ).
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t300.
          t300->load( ).
          APPEND |exporting| TO t300->items.
          t300->save( ).
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t280 = NEW zcl_lnt_typed_identifier( i_token = t281 i_filename = t288 i_type_9913 = t290 i_meta = t300 i_value = t306 ).
          t279->load( ).
          APPEND t280 TO t279->items.
          t279->save( ).
          DATA(t307) = me->exporting.
          DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t309 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t310 TYPE REF TO zcl_lnt_position.
          t310 = t275->start.
          t309 = NEW zcl_lnt_lx_identifier( i_start = t310 i_str = |mapped| ).
          DATA(t316) = VALUE string( ).
          t316 = t2->filename.
          DATA t318 TYPE REF TO zcl_lnt_void_type.
          DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t322->has = abap_true.
          t322->value = |RapMethodParameter|.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t318 = zcl_lnt_void_type=>get_db65( i_voided = t322 i_qualified_name = t324 ).
          DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t328.
          t328->load( ).
          APPEND |exporting| TO t328->items.
          t328->save( ).
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t308 = NEW zcl_lnt_typed_identifier( i_token = t309 i_filename = t316 i_type_9913 = t318 i_meta = t328 i_value = t334 ).
          t307->load( ).
          APPEND t308 TO t307->items.
          t307->save( ).
          DATA(t335) = me->exporting.
          DATA t336 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t337 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t338 TYPE REF TO zcl_lnt_position.
          t338 = t275->start.
          t337 = NEW zcl_lnt_lx_identifier( i_start = t338 i_str = |reported| ).
          DATA(t344) = VALUE string( ).
          t344 = t2->filename.
          DATA t346 TYPE REF TO zcl_lnt_void_type.
          DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t350->has = abap_true.
          t350->value = |RapMethodParameter|.
          DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t346 = zcl_lnt_void_type=>get_db65( i_voided = t350 i_qualified_name = t352 ).
          DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t356.
          t356->load( ).
          APPEND |exporting| TO t356->items.
          t356->save( ).
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t336 = NEW zcl_lnt_typed_identifier( i_token = t337 i_filename = t344 i_type_9913 = t346 i_meta = t356 i_value = t362 ).
          t335->load( ).
          APPEND t336 TO t335->items.
          t335->save( ).
        ENDIF.
      ENDIF.
    ENDIF.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      DATA t366 TYPE REF TO zcl_lnt_abstract_token.
      t366 = t4->get_first_token( ).
      DATA(t369) = me->importing.
      DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t372) = VALUE string( ).
      t372 = t2->filename.
      DATA t374 TYPE REF TO zcl_lnt_void_type.
      DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t378->has = abap_true.
      t378->value = |RapMethodParameter|.
      DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t374 = zcl_lnt_void_type=>get_db65( i_voided = t378 i_qualified_name = t380 ).
      DATA t384 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t384.
      t384->load( ).
      APPEND |exporting| TO t384->items.
      t384->save( ).
      DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t370 = NEW zcl_lnt_typed_identifier( i_token = t366 i_filename = t372 i_type_9913 = t374 i_meta = t384 i_value = t390 ).
      t369->load( ).
      APPEND t370 TO t369->items.
      t369->save( ).
    ENDIF.
    DATA(t392) = VALUE string( ).
    DATA(t394) = strlen( t3 ).
    t392 = t3.
    IF t392 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t392 TO UPPER CASE.
    ELSE.
      t392 = zlnt_runtime_uppe_91169605024d=>full( t392 ).
    ENDIF.
    IF xsdbool( t392 = |CL_ABAP_BEHAVIOR_SAVER| ) = abap_true.
      DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t398.
      DATA(t400) = me->changing.
      DATA t401 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t402 TYPE REF TO object.
      DATA(t403) = VALUE i( ).
      DO.
        t400->load( ).
        IF t403 >= lines( t400->items ).
          EXIT.
        ENDIF.
        CLEAR t402.
        READ TABLE t400->items INDEX t403 + 1 INTO t402.
        t403 = t403 + 1.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t404.
        CLEAR t401.
        IF t402 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t404 ?= t402.
          DATA t405 TYPE REF TO object.
          t405 = t404->as_ref( ).
          t401 ?= t405.
        ELSE.
          t401 ?= t402.
        ENDIF.
        DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t408 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t408.
        DATA t409 TYPE REF TO zcl_lnt_fi_identifier.
        t409 = t401.
        t408 = t409->token.
        DATA(t413) = VALUE string( ).
        t413 = t2->filename.
        DATA t415 TYPE REF TO zcl_lnt_void_type.
        CLEAR t415.
        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t416.
        DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t419->has = abap_true.
        t419->value = |RapMethodParameter|.
        t416 = t419.
        DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t421.
        t415 = zcl_lnt_void_type=>get_db65( i_voided = t416 i_qualified_name = t421 ).
        DATA t422 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t422.
        t422 = t401->meta.
        DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t430.
        t407 = NEW zcl_lnt_typed_identifier( i_token = t408 i_filename = t413 i_type_9913 = t415 i_meta = t422 i_value = t430 ).
        t398->load( ).
        APPEND t407 TO t398->items.
        t398->save( ).
      ENDDO.
      t396 = t398.
      DO.
        DATA(t434) = me->changing.
        t434->load( ).
        IF xsdbool( lines( t434->items ) > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t436 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t436.
        DATA t438 TYPE REF TO object.
        t438 = me->changing->shift( ).
        DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t439.
        CLEAR t436.
        IF t438 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t439 ?= t438.
          DATA t440 TYPE REF TO object.
          t440 = t439->as_ref( ).
          t436 ?= t440.
        ELSE.
          t436 ?= t438.
        ENDIF.
      ENDDO.
      DATA(t441) = VALUE i( ).
      DATA t443 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t444 TYPE REF TO object.
      DATA(t445) = VALUE i( ).
      DO.
        t396->load( ).
        IF t445 >= lines( t396->items ).
          EXIT.
        ENDIF.
        CLEAR t444.
        READ TABLE t396->items INDEX t445 + 1 INTO t444.
        t445 = t445 + 1.
        DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t446.
        CLEAR t443.
        IF t444 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t446 ?= t444.
          DATA t447 TYPE REF TO object.
          t447 = t446->as_ref( ).
          t443 ?= t447.
        ELSE.
          t443 ?= t444.
        ENDIF.
        DATA(t448) = me->changing.
        t448->load( ).
        APPEND t443 TO t448->items.
        t448->save( ).
      ENDDO.
      DATA(t451) = me->changing.
      t451->load( ).
      t441 = lines( t451->items ).
      DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t454.
      DATA(t456) = me->importing.
      DATA t457 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t458 TYPE REF TO object.
      DATA(t459) = VALUE i( ).
      DO.
        t456->load( ).
        IF t459 >= lines( t456->items ).
          EXIT.
        ENDIF.
        CLEAR t458.
        READ TABLE t456->items INDEX t459 + 1 INTO t458.
        t459 = t459 + 1.
        DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t460.
        CLEAR t457.
        IF t458 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t460 ?= t458.
          DATA t461 TYPE REF TO object.
          t461 = t460->as_ref( ).
          t457 ?= t461.
        ELSE.
          t457 ?= t458.
        ENDIF.
        DATA t463 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t464 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t464.
        DATA t465 TYPE REF TO zcl_lnt_fi_identifier.
        t465 = t457.
        t464 = t465->token.
        DATA(t469) = VALUE string( ).
        t469 = t2->filename.
        DATA t471 TYPE REF TO zcl_lnt_void_type.
        CLEAR t471.
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t472.
        DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t475->has = abap_true.
        t475->value = |RapMethodParameter|.
        t472 = t475.
        DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t477.
        t471 = zcl_lnt_void_type=>get_db65( i_voided = t472 i_qualified_name = t477 ).
        DATA t478 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t478.
        t478 = t457->meta.
        DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t486.
        t463 = NEW zcl_lnt_typed_identifier( i_token = t464 i_filename = t469 i_type_9913 = t471 i_meta = t478 i_value = t486 ).
        t454->load( ).
        APPEND t463 TO t454->items.
        t454->save( ).
      ENDDO.
      t452 = t454.
      DO.
        DATA(t490) = me->importing.
        t490->load( ).
        IF xsdbool( lines( t490->items ) > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t492 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t492.
        DATA t494 TYPE REF TO object.
        t494 = me->importing->shift( ).
        DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t495.
        CLEAR t492.
        IF t494 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t495 ?= t494.
          DATA t496 TYPE REF TO object.
          t496 = t495->as_ref( ).
          t492 ?= t496.
        ELSE.
          t492 ?= t494.
        ENDIF.
      ENDDO.
      DATA(t497) = VALUE i( ).
      DATA t499 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t500 TYPE REF TO object.
      DATA(t501) = VALUE i( ).
      DO.
        t452->load( ).
        IF t501 >= lines( t452->items ).
          EXIT.
        ENDIF.
        CLEAR t500.
        READ TABLE t452->items INDEX t501 + 1 INTO t500.
        t501 = t501 + 1.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        CLEAR t499.
        IF t500 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t502 ?= t500.
          DATA t503 TYPE REF TO object.
          t503 = t502->as_ref( ).
          t499 ?= t503.
        ELSE.
          t499 ?= t500.
        ENDIF.
        DATA(t504) = me->importing.
        t504->load( ).
        APPEND t499 TO t504->items.
        t504->save( ).
      ENDDO.
      DATA(t507) = me->importing.
      t507->load( ).
      t497 = lines( t507->items ).
    ENDIF.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = i_target_5f8a.
    DATA(t2) = i_source_75cf.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_meta.
    DATA(t5) = i_abstract_method.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97.
    t6 = t2->find_all_expressions( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t6->load( ).
      IF t11 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t6->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t14 = t9->find_direct_expression( i_type_9913 = t17 ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF xsdbool( t14 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t25.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t14.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      DATA t34 TYPE string.
      t34 = t28->get_first_token( )->str.
      DATA(t40) = strlen( t34 ).
      t33 = t34.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      t32 = xsdbool( t33 = |VALUE| ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t44.
        DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t50 TYPE REF TO zcl_lnt_abstract_node.
        t50 = t28.
        t49 = t50->children.
        t48 ?= t49.
        DATA t55 TYPE REF TO object.
        t55 = t48->get( p0 = 1 ).
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t47.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t47 ?= t57.
        ELSE.
          t47 ?= t55.
        ENDIF.
        t46 = t47.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t58.
        IF xsdbool( t46 IS INITIAL ) = abap_true.
          CLEAR t58.
        ELSE.
          t58 = t46->get_first_token( ).
        ENDIF.
        t44 = t58.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        IF xsdbool( t44 IS INITIAL ) = abap_true.
          CLEAR t65.
        ELSE.
          DATA t73 TYPE string.
          t73 = t44->str.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t73.
          t65 = t75.
        ENDIF.
        t43 = t65.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = |(|.
        t76 = t79.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE abap_bool( ).
        IF t43 IS BOUND.
          t81 = t43->has.
        ENDIF.
        IF t76 IS BOUND.
          t82 = t76->has.
        ENDIF.
        IF t81 = t82.
          IF t81 = abap_false.
            t42 = abap_true.
          ELSEIF t43->value = t76->value.
            t42 = abap_true.
          ENDIF.
        ENDIF.
        t31 = t42.
      ENDIF.
      IF t31 = abap_true.
        t25->load( ).
        APPEND |pass_by_value| TO t25->items.
        t25->save( ).
      ELSE.
        IF t4->includes( p0 = |importing| ) = abap_true.
          t25->load( ).
          APPEND |read_only| TO t25->items.
          t25->save( ).
        ENDIF.
      ENDIF.
      IF xsdbool( t5 = abap_true ) = abap_true.
        t25->load( ).
        APPEND |abstract| TO t25->items.
        t25->save( ).
      ENDIF.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      t97 = t14.
      DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t102.
      t95 = zcl_lnt_sy_method_param=>run_syntax( i_node = t97 i_input_967e = t3 i_meta = t102->concat( p0 = t4 )->concat( p0 = t25 ) ).
      DATA t113 TYPE REF TO zcl_lnt_current_scope.
      t113 = t3->scope.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t115.
      t115 = t95.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF xsdbool( t115 IS INITIAL ) = abap_true.
      ELSE.
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        t129 = t115.
        DATA t133 TYPE string.
        t133 = t129->token->str.
        DATA(t141) = VALUE string( ).
        DATA(t142) = t133.
        DATA(t143) = 0.
        DATA(t144) = 1.
        DATA(t145) = strlen( t142 ).
        IF t143 < 0.
          t143 = t143 + t145.
          IF t143 < 0.
            t143 = 0.
          ENDIF.
        ENDIF.
        IF t143 > t145 OR t144 <= 0.
        ELSE.
          IF t144 > t145 - t143.
            t144 = t145 - t143.
          ENDIF.
          t141 = t142+t143(t144).
        ENDIF.
        IF xsdbool( t141 = |!| ) = abap_true.
          DATA t148 TYPE string.
          t148 = t133.
          DATA(t150) = VALUE string( ).
          DATA(t152) = 1.
          DATA t153 TYPE i.
          t153 = strlen( t148 ).
          DATA(t156) = strlen( t148 ).
          IF t152 < 0.
            t152 = t152 + t156.
            IF t152 < 0.
              t152 = 0.
            ENDIF.
          ENDIF.
          IF t152 > t156 OR t153 <= 0.
          ELSE.
            IF t153 > t156 - t152.
              t153 = t156 - t152.
            ENDIF.
            t150 = t148+t152(t153).
          ENDIF.
          t133 = t150.
        ENDIF.
        t113->add_named_identifier( i_name = t133 i_identifier = t115 ).
      ENDIF.
      t1->load( ).
      APPEND t95 TO t1->items.
      t1->save( ).
      DATA t163 TYPE REF TO zcl_lnt_abstract_token.
      t163 = t9->find_direct_token_by_text( i_text = |OPTIONAL| ).
      IF xsdbool( t163 IS BOUND ) = abap_true.
        DATA(t166) = VALUE string( ).
        DATA(t167) = VALUE string( ).
        DATA(t168) = VALUE string( ).
        DATA t169 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t170.
        DATA t172 TYPE i.
        DATA t173 TYPE i.
        t1->load( ).
        t173 = lines( t1->items ).
        DATA(t175) = 1.
        t172 = t173 - t175.
        t172 = t172 + 1.
        DATA t176 TYPE REF TO object.
        CLEAR t176.
        t1->load( ).
        CLEAR t176.
        READ TABLE t1->items INDEX t172 INTO t176.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        CLEAR t170.
        IF t176 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t177 ?= t176.
          DATA t178 TYPE REF TO object.
          t178 = t177->as_ref( ).
          t170 ?= t178.
        ELSE.
          t170 ?= t176.
        ENDIF.
        t169 = t170.
        DATA t180 TYPE string.
        t180 = t169->token->str.
        DATA(t188) = VALUE string( ).
        DATA(t189) = t180.
        DATA(t190) = 0.
        DATA(t191) = 1.
        DATA(t192) = strlen( t189 ).
        IF t190 < 0.
          t190 = t190 + t192.
          IF t190 < 0.
            t190 = 0.
          ENDIF.
        ENDIF.
        IF t190 > t192 OR t191 <= 0.
        ELSE.
          IF t191 > t192 - t190.
            t191 = t192 - t190.
          ENDIF.
          t188 = t189+t190(t191).
        ENDIF.
        IF xsdbool( t188 = |!| ) = abap_true.
          DATA t195 TYPE string.
          t195 = t180.
          DATA(t197) = VALUE string( ).
          DATA(t199) = 1.
          DATA t200 TYPE i.
          t200 = strlen( t195 ).
          DATA(t203) = strlen( t195 ).
          IF t199 < 0.
            t199 = t199 + t203.
            IF t199 < 0.
              t199 = 0.
            ENDIF.
          ENDIF.
          IF t199 > t203 OR t200 <= 0.
          ELSE.
            IF t200 > t203 - t199.
              t200 = t203 - t199.
            ENDIF.
            t197 = t195+t199(t200).
          ENDIF.
          t180 = t197.
        ENDIF.
        t168 = t180.
        DATA(t205) = strlen( t168 ).
        t167 = t168.
        IF t167 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t167 TO UPPER CASE.
        ELSE.
          t167 = zlnt_runtime_uppe_91169605024d=>full( t167 ).
        ENDIF.
        t166 = t167.
        DATA(t206) = me->optional.
        t206->load( ).
        APPEND t166 TO t206->items.
        t206->save( ).
      ELSE.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
        t209 = t9->find_first_expression( i_type_9913 = t211 ).
        IF xsdbool( t209 IS BOUND ) = abap_true.
          DATA(t212) = VALUE string( ).
          DATA(t213) = VALUE string( ).
          DATA(t214) = VALUE string( ).
          DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t215.
          DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t216.
          DATA t218 TYPE i.
          DATA t219 TYPE i.
          t1->load( ).
          t219 = lines( t1->items ).
          DATA(t221) = 1.
          t218 = t219 - t221.
          t218 = t218 + 1.
          DATA t222 TYPE REF TO object.
          CLEAR t222.
          t1->load( ).
          CLEAR t222.
          READ TABLE t1->items INDEX t218 INTO t222.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          CLEAR t216.
          IF t222 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t223 ?= t222.
            DATA t224 TYPE REF TO object.
            t224 = t223->as_ref( ).
            t216 ?= t224.
          ELSE.
            t216 ?= t222.
          ENDIF.
          t215 = t216.
          DATA t226 TYPE string.
          t226 = t215->token->str.
          DATA(t234) = VALUE string( ).
          DATA(t235) = t226.
          DATA(t236) = 0.
          DATA(t237) = 1.
          DATA(t238) = strlen( t235 ).
          IF t236 < 0.
            t236 = t236 + t238.
            IF t236 < 0.
              t236 = 0.
            ENDIF.
          ENDIF.
          IF t236 > t238 OR t237 <= 0.
          ELSE.
            IF t237 > t238 - t236.
              t237 = t238 - t236.
            ENDIF.
            t234 = t235+t236(t237).
          ENDIF.
          IF xsdbool( t234 = |!| ) = abap_true.
            DATA t241 TYPE string.
            t241 = t226.
            DATA(t243) = VALUE string( ).
            DATA(t245) = 1.
            DATA t246 TYPE i.
            t246 = strlen( t241 ).
            DATA(t249) = strlen( t241 ).
            IF t245 < 0.
              t245 = t245 + t249.
              IF t245 < 0.
                t245 = 0.
              ENDIF.
            ENDIF.
            IF t245 > t249 OR t246 <= 0.
            ELSE.
              IF t246 > t249 - t245.
                t246 = t249 - t245.
              ENDIF.
              t243 = t241+t245(t246).
            ENDIF.
            t226 = t243.
          ENDIF.
          t214 = t226.
          DATA(t251) = strlen( t214 ).
          t213 = t214.
          IF t213 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t213 TO UPPER CASE.
          ELSE.
            t213 = zlnt_runtime_uppe_91169605024d=>full( t213 ).
          ENDIF.
          t212 = t213.
          DATA(t252) = me->optional.
          t252->load( ).
          APPEND t212 TO t252->items.
          t252->save( ).
          DATA t254 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t254.
          DATA t256 TYPE REF TO zcl_lnt_expression_node.
          DATA(t259) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
          t256 = t9->find_first_expression( i_type_9913 = t259 ).
          DATA t260 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t260.
          IF xsdbool( t256 IS INITIAL ) = abap_true.
            CLEAR t260.
          ELSE.
            DATA t264 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t264.
            DATA t265 TYPE REF TO zif_lnt_node.
            CLEAR t265.
            DATA t266 TYPE REF TO zcl_lnt_abstract_node.
            t266 = t256.
            DATA t271 TYPE REF TO zif_lnt_node.
            CLEAR t271.
            DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t272 = t266->children.
            DATA t274 TYPE i.
            DATA t275 TYPE i.
            DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t276 = t266->children.
            t276->load( ).
            t275 = lines( t276->items ).
            DATA(t278) = 1.
            t274 = t275 - t278.
            t274 = t274 + 1.
            DATA t279 TYPE REF TO object.
            CLEAR t279.
            t272->load( ).
            CLEAR t279.
            READ TABLE t272->items INDEX t274 INTO t279.
            DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t280.
            CLEAR t271.
            IF t279 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t280 ?= t279.
              DATA t281 TYPE REF TO object.
              t281 = t280->as_ref( ).
              t271 ?= t281.
            ELSE.
              t271 ?= t279.
            ENDIF.
            t265 = t271.
            t264 ?= t265.
            t260 = t264.
          ENDIF.
          t254 = t260.
          DATA t283 TYPE abap_bool.
          DATA t284 TYPE abap_bool.
          t284 = xsdbool( t254 IS BOUND ).
          t283 = t284.
          IF t284 = abap_true.
            DATA t287 TYPE REF TO zif_lnt_union_4cf1d054.
            t287 = t254.
            t283 = xsdbool( t287 IS BOUND AND t287 IS INSTANCE OF zcl_lnt_expression_node ).
          ENDIF.
          IF t283 = abap_true.
            DATA t289 TYPE REF TO zlnt_runtime_map__b1b44c588059.
            DATA t292 TYPE REF TO zcl_lnt_expression_node.
            DATA t294 TYPE REF TO object.
            t294 = t254.
            t292 ?= t294.
            t289 = me->defaults->set( p0 = t212 p1 = t292 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    t1->load( ).
    IF xsdbool( lines( t1->items ) > 0 ) = abap_true.
      RETURN.
    ENDIF.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t302) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
    t299 = t2->find_all_expressions( i_type_9913 = t302 ).
    DATA t304 TYPE REF TO zcl_lnt_expression_node.
    DATA t305 TYPE REF TO object.
    DATA(t306) = VALUE i( ).
    DO.
      t299->load( ).
      IF t306 >= lines( t299->items ).
        EXIT.
      ENDIF.
      CLEAR t305.
      READ TABLE t299->items INDEX t306 + 1 INTO t305.
      t306 = t306 + 1.
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t307.
      CLEAR t304.
      IF t305 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t307 ?= t305.
        DATA t308 TYPE REF TO object.
        t308 = t307->as_ref( ).
        t304 ?= t308.
      ELSE.
        t304 ?= t305.
      ENDIF.
      DATA t310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t310.
      DATA t312 TYPE REF TO zcl_lnt_expression_node.
      t312 = t304.
      DATA(t314) = VALUE abap_bool( ).
      DATA(t315) = VALUE abap_bool( ).
      DATA t316 TYPE string.
      DATA t317 TYPE string.
      t317 = t312->get_first_token( )->str.
      DATA(t323) = strlen( t317 ).
      t316 = t317.
      IF t316 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t316 TO UPPER CASE.
      ELSE.
        t316 = zlnt_runtime_uppe_91169605024d=>full( t316 ).
      ENDIF.
      t315 = xsdbool( t316 = |VALUE| ).
      t314 = t315.
      IF t315 = abap_true.
        DATA(t325) = VALUE abap_bool( ).
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        DATA t327 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t327.
        DATA t329 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t329.
        DATA t330 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t330.
        DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t333 TYPE REF TO zcl_lnt_abstract_node.
        t333 = t312.
        t332 = t333->children.
        t331 ?= t332.
        DATA t338 TYPE REF TO object.
        t338 = t331->get( p0 = 1 ).
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        CLEAR t330.
        IF t338 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t339 ?= t338.
          DATA t340 TYPE REF TO object.
          t340 = t339->as_ref( ).
          t330 ?= t340.
        ELSE.
          t330 ?= t338.
        ENDIF.
        t329 = t330.
        DATA t341 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t341.
        IF xsdbool( t329 IS INITIAL ) = abap_true.
          CLEAR t341.
        ELSE.
          t341 = t329->get_first_token( ).
        ENDIF.
        t327 = t341.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        IF xsdbool( t327 IS INITIAL ) = abap_true.
          CLEAR t348.
        ELSE.
          DATA t356 TYPE string.
          t356 = t327->str.
          DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t358->has = abap_true.
          t358->value = t356.
          t348 = t358.
        ENDIF.
        t326 = t348.
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t362->has = abap_true.
        t362->value = |(|.
        t359 = t362.
        DATA(t364) = VALUE abap_bool( ).
        DATA(t365) = VALUE abap_bool( ).
        IF t326 IS BOUND.
          t364 = t326->has.
        ENDIF.
        IF t359 IS BOUND.
          t365 = t359->has.
        ENDIF.
        IF t364 = t365.
          IF t364 = abap_false.
            t325 = abap_true.
          ELSEIF t326->value = t359->value.
            t325 = abap_true.
          ENDIF.
        ENDIF.
        t314 = t325.
      ENDIF.
      IF t314 = abap_true.
        DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t367.
        t367->load( ).
        APPEND |pass_by_value| TO t367->items.
        t367->save( ).
        t310 = t367.
      ELSE.
        CREATE OBJECT t310.
      ENDIF.
      DATA t374 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t379.
      t374 = zcl_lnt_sy_method_param=>run_syntax( i_node = t304 i_input_967e = t3 i_meta = t379->concat( p0 = t4 )->concat( p0 = t310 ) ).
      t1->load( ).
      APPEND t374 TO t1->items.
      t1->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD is_pass_by_value.
    DATA(t1) = i_param.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    t5 = t1->get_first_token( )->str.
    DATA(t11) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = xsdbool( t4 = |VALUE| ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zcl_lnt_abstract_node.
      t21 = t1.
      t20 = t21->children.
      t19 ?= t20.
      DATA t26 TYPE REF TO object.
      t26 = t19->get( p0 = 1 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t18 ?= t28.
      ELSE.
        t18 ?= t26.
      ENDIF.
      t17 = t18.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t17 IS INITIAL ) = abap_true.
      ELSE.
        t29 = t17->get_first_token( ).
      ENDIF.
      t15 = t29.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t15 IS INITIAL ) = abap_true.
      ELSE.
        DATA t44 TYPE string.
        t44 = t15->str.
        DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t46->has = abap_true.
        t46->value = t44.
        t36 = t46.
      ENDIF.
      t14 = t36.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = |(|.
      t47 = t50.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t14 IS BOUND.
        t52 = t14->has.
      ENDIF.
      IF t47 IS BOUND.
        t53 = t47->has.
      ENDIF.
      IF t52 = t53.
        IF t52 = abap_false.
          t13 = abap_true.
        ELSEIF t14->value = t47->value.
          t13 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t13.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_parameter_default.
    DATA(t3) = i_parameter_5406.
    result = me->g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr( i_parameter_5406 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1065_c808f34fb6c6.
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_all.
    result = me->get_all( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_importing.
    result = me->get_importing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_required_parameters.
    result = me->get_required_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_exporting.
    result = me->get_exporting( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_changing.
    result = me->get_changing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_optional.
    result = me->get_optional( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_returning.
    result = me->get_returning( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_exceptions.
    result = me->get_exceptions( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_default_importing.
    result = me->get_default_importing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_parameter_default.
    result = me->get_parameter_default( i_parameter_5406 = i_parameter_5406 ).
  ENDMETHOD.
ENDCLASS.
