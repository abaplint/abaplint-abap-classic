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
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    t6 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_method_def ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = |MethodDefinition, expected MethodDef as part of input node|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t10 ).
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
    DATA(t28) = VALUE string( ).
    t28 = t2->filename.
    me->filename = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
    DATA(t30) = VALUE string( ).
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE REF TO zcl_lnt_current_scope.
    t32 = t2->scope.
    t31 = t32->get_name( ).
    t30 = t31.
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    DATA t35 TYPE REF TO zcl_lnt_current_scope.
    t35 = t2->scope.
    t34 = t35.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    t43 = t1->get_first_token( ).
    DATA t45 TYPE REF TO zcl_lnt_position.
    t45 = t43->start.
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    t48 = t2->filename.
    t47 = t48.
    DATA t50 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t51 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t52) = VALUE string( ).
    t52 = |method_definition|.
    DATA(t54) = VALUE string( ).
    t54 = |method definition|.
    DATA t56 TYPE REF TO zcl_lnt_position.
    t56 = t45.
    DATA(t58) = VALUE string( ).
    t58 = t47.
    DATA t60 TYPE REF TO zcl_lnt_position.
    t51 = NEW zcl_lnt_iscope_identifier( i_stype = t52 i_sname = t54 i_filename = t58 i_start = t56 i_end = t60 ).
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
    DATA(t67) = |stype|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    DATA(t69) = |sname|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    DATA(t71) = |start|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
    ENDIF.
    DATA(t73) = |filename|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
    ENDIF.
    DATA(t75) = |end|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
    ENDIF.
    t50 = t51.
    DATA(t77) = VALUE abap_bool( ).
    DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t79 = t34->current.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77 = xsdbool( t79 IS INITIAL ).
    IF t77 = abap_true.
      DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t88 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t50 i_parent = t90 ).
      t34->current = t88.
      DELETE t34->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t94 = t34->current.
      t92 = t94.
      DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t101 = t92.
      t99 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t50 i_parent = t101 ).
      t34->current = t99.
      DELETE t34->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t108 = t34->current.
      t107 = t108.
      t92->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t107 ).
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
        DATA t119 TYPE REF TO zcl_lnt_position.
        DATA t124 TYPE REF TO zcl_lnt_abstract_token.
        t124 = t1->get_last_token( ).
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        t127 = t124.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = VALUE f( ).
        DATA t132 TYPE REF TO zcl_lnt_position.
        t132 = t127->start.
        DATA(t134) = VALUE f( ).
        t134 = t132->row.
        t130 = t134.
        DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t139 TYPE REF TO zcl_lnt_position.
        t139 = t127->start.
        DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t141 = t139->col.
        t137 = t141.
        DATA(t143) = VALUE f( ).
        DATA(t144) = VALUE i( ).
        DATA(t145) = VALUE string( ).
        t145 = t127->str.
        t144 = strlen( t145 ).
        t143 = t144.
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t143.
        t136 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t137 right = t148 op = `+` ).
        t129 = NEW zcl_lnt_position( i_row = t130 i_col = t136 ).
        t119 = t129.
        t116 = t117->pop( i_end = t119 ).
        RAISE EXCEPTION t110.
    ENDTRY.
    DATA t149 TYPE REF TO zcl_lnt_spaghetti_scope.
    DATA t150 TYPE REF TO zcl_lnt_current_scope.
    t150 = t2->scope.
    DATA t152 TYPE REF TO zcl_lnt_position.
    DATA t157 TYPE REF TO zcl_lnt_abstract_token.
    t157 = t1->get_last_token( ).
    DATA t160 TYPE REF TO zcl_lnt_abstract_token.
    t160 = t157.
    DATA t162 TYPE REF TO zcl_lnt_position.
    DATA(t163) = VALUE f( ).
    DATA t165 TYPE REF TO zcl_lnt_position.
    t165 = t160->start.
    DATA(t167) = VALUE f( ).
    t167 = t165->row.
    t163 = t167.
    DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t172 TYPE REF TO zcl_lnt_position.
    t172 = t160->start.
    DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t174 = t172->col.
    t170 = t174.
    DATA(t176) = VALUE f( ).
    DATA(t177) = VALUE i( ).
    DATA(t178) = VALUE string( ).
    t178 = t160->str.
    t177 = strlen( t178 ).
    t176 = t177.
    DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t181->has = abap_true.
    t181->value = t176.
    t169 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ).
    t162 = NEW zcl_lnt_position( i_row = t163 i_col = t169 ).
    t152 = t162.
    t149 = t150->pop( i_end = t152 ).
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
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    t3 = me->returning.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t3 IS BOUND ).
    IF t5 = abap_true.
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
    DATA t19 TYPE i.
    t1->load( ).
    t19 = lines( t1->items ).
    t10 = t19.
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
    DATA t30 TYPE i.
    t1->load( ).
    t30 = lines( t1->items ).
    t21 = t30.
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
    DATA t41 TYPE i.
    t1->load( ).
    t41 = lines( t1->items ).
    t32 = t41.
    result = t1.

  ENDMETHOD.

  METHOD get_default_importing.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE i.
    DATA(t3) = me->importing.
    t3->load( ).
    t2 = lines( t3->items ).
    DATA(t4) = 0.
    t1 = xsdbool( t2 = t4 ).
    IF t1 = abap_true.
      CLEAR result.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE i.
      DATA(t8) = me->importing.
      t8->load( ).
      t7 = lines( t8->items ).
      DATA(t9) = 1.
      t6 = xsdbool( t7 = t9 ).
      IF t6 = abap_true.
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
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE string.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        t24 = t14->token.
        DATA t26 TYPE string.
        t26 = t24->str.
        t21 = t26.
        DATA(t28) = VALUE abap_bool( ).
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
          CLEAR t29.
        ELSE.
          IF t32 > t33 - t31.
            t32 = t33 - t31.
          ENDIF.
          t29 = t30+t31(t32).
        ENDIF.
        DATA(t34) = |!|.
        t28 = xsdbool( t29 = t34 ).
        IF t28 = abap_true.
          DATA(t35) = VALUE string( ).
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
            CLEAR t38.
          ELSE.
            IF t41 > t44 - t40.
              t41 = t44 - t40.
            ENDIF.
            t38 = t36+t40(t41).
          ENDIF.
          t35 = t38.
          t21 = t35.
        ENDIF.
        t20 = t21.
        t13 = t20.
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
      ELSE.
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
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t60.
    t59 = t60.
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
      DATA(t72) = VALUE string( ).
      DATA t73 TYPE string.
      DATA t76 TYPE REF TO zcl_lnt_abstract_token.
      t76 = t70->token.
      DATA t78 TYPE string.
      t78 = t76->str.
      t73 = t78.
      DATA(t80) = VALUE abap_bool( ).
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
        CLEAR t81.
      ELSE.
        IF t84 > t85 - t83.
          t84 = t85 - t83.
        ENDIF.
        t81 = t82+t83(t84).
      ENDIF.
      DATA(t86) = |!|.
      t80 = xsdbool( t81 = t86 ).
      IF t80 = abap_true.
        DATA(t87) = VALUE string( ).
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
          CLEAR t90.
        ELSE.
          IF t93 > t96 - t92.
            t93 = t96 - t92.
          ENDIF.
          t90 = t88+t92(t93).
        ENDIF.
        t87 = t90.
        t73 = t87.
      ENDIF.
      t72 = t73.
      t69 = t72.
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
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    t101 = t102.
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
      DATA t106 TYPE abap_bool.
      DATA t107 TYPE i.
      t107 = me->optional->indexof( p0 = t104 ).
      DATA(t110) = 0.
      t106 = xsdbool( t107 < t110 ).
      IF t106 = abap_true.
        t101->load( ).
        APPEND t104 TO t101->items.
        t101->save( ).
      ENDIF.
    ENDDO.
    t57 = t101.
    DATA t114 TYPE abap_bool.
    DATA t115 TYPE i.
    t57->load( ).
    t115 = lines( t57->items ).
    DATA(t117) = 1.
    t114 = xsdbool( t115 = t117 ).
    IF t114 = abap_true.
      DATA(t120) = VALUE string( ).
      IF t57->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t57->load( ).
      CLEAR t120.
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
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
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
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
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
        DATA(t16) = VALUE abap_bool( ).
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
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE string.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        t28 = t22->token.
        DATA t30 TYPE string.
        t30 = t28->str.
        t25 = t30.
        DATA(t32) = VALUE abap_bool( ).
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
          CLEAR t33.
        ELSE.
          IF t36 > t37 - t35.
            t36 = t37 - t35.
          ENDIF.
          t33 = t34+t35(t36).
        ENDIF.
        DATA(t38) = |!|.
        t32 = xsdbool( t33 = t38 ).
        IF t32 = abap_true.
          DATA(t39) = VALUE string( ).
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
            CLEAR t42.
          ELSE.
            IF t45 > t48 - t44.
              t45 = t48 - t44.
            ENDIF.
            t42 = t40+t44(t45).
          ENDIF.
          t39 = t42.
          t25 = t39.
        ENDIF.
        t24 = t25.
        t21 = t24.
        DATA(t50) = strlen( t21 ).
        t20 = t21.
        IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t20 TO UPPER CASE.
        ELSE.
          t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
        ENDIF.
        t16 = xsdbool( t17 = t20 ).
        IF t16 = abap_true.
          t11 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t10 = t11.
      t9 = xsdbool( t10 = abap_true ).
      IF t9 = abap_true.
        CONTINUE.
      ELSE.
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
        DATA(t73) = VALUE string( ).
        DATA t74 TYPE string.
        DATA t77 TYPE REF TO zcl_lnt_abstract_token.
        t77 = t71->token.
        DATA t79 TYPE string.
        t79 = t77->str.
        t74 = t79.
        DATA(t81) = VALUE abap_bool( ).
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
          CLEAR t82.
        ELSE.
          IF t85 > t86 - t84.
            t85 = t86 - t84.
          ENDIF.
          t82 = t83+t84(t85).
        ENDIF.
        DATA(t87) = |!|.
        t81 = xsdbool( t82 = t87 ).
        IF t81 = abap_true.
          DATA(t88) = VALUE string( ).
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
            CLEAR t91.
          ELSE.
            IF t94 > t97 - t93.
              t94 = t97 - t93.
            ENDIF.
            t91 = t89+t93(t94).
          ENDIF.
          t88 = t91.
          t74 = t88.
        ENDIF.
        t73 = t74.
        t70 = t73.
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
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = VALUE abap_bool( ).
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
        DATA(t119) = VALUE abap_bool( ).
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
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE string.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        t131 = t125->token.
        DATA t133 TYPE string.
        t133 = t131->str.
        t128 = t133.
        DATA(t135) = VALUE abap_bool( ).
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
          CLEAR t136.
        ELSE.
          IF t139 > t140 - t138.
            t139 = t140 - t138.
          ENDIF.
          t136 = t137+t138(t139).
        ENDIF.
        DATA(t141) = |!|.
        t135 = xsdbool( t136 = t141 ).
        IF t135 = abap_true.
          DATA(t142) = VALUE string( ).
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
            CLEAR t145.
          ELSE.
            IF t148 > t151 - t147.
              t148 = t151 - t147.
            ENDIF.
            t145 = t143+t147(t148).
          ENDIF.
          t142 = t145.
          t128 = t142.
        ENDIF.
        t127 = t128.
        t124 = t127.
        DATA(t153) = strlen( t124 ).
        t123 = t124.
        IF t123 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t123 TO UPPER CASE.
        ELSE.
          t123 = zlnt_runtime_uppe_91169605024d=>full( t123 ).
        ENDIF.
        t119 = xsdbool( t120 = t123 ).
        IF t119 = abap_true.
          t114 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t113 = t114.
      t112 = xsdbool( t113 = abap_true ).
      IF t112 = abap_true.
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
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = me->defaults.
    DATA t5 TYPE string.
    DATA(t7) = strlen( t1 ).
    t5 = t1.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t3 = t4->get( p0 = t5 ).
    result = t3.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_parent_name.
    DATA(t4) = i_abstract_method.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
    t6 = t1->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t5 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t14 = t1->find_first_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t18) = xsdbool( t13 IS INITIAL ).
      IF t18 = abap_true.
      ELSE.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        t22 = t13.
        t21 = t22->get_first_token( ).
        t17 = t21.
      ENDIF.
      t11 = t17.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      t26 = t11.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t29) = xsdbool( t26 IS INITIAL ).
      IF t29 = abap_true.
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
      DATA t42 TYPE REF TO zcl_lnt_current_scope.
      t42 = t2->scope.
      t41 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t44 = t24.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = t44.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t52) = VALUE abap_bool( ).
      IF t48 IS INITIAL.
        t52 = abap_true.
      ELSEIF t48->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t47 = t52.
      IF t47 = abap_true.
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
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t67 = t58.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t71) = VALUE abap_bool( ).
        IF t67 IS INITIAL.
          t71 = abap_true.
        ELSEIF t67->has = abap_false.
          t71 = abap_true.
        ENDIF.
        t66 = t71.
        IF t66 = abap_true.
        ELSE.
          DATA t75 TYPE REF TO zif_lnt_class_definition.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t78 = t41->current.
          t77 = t78.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          DATA(t81) = xsdbool( t77 IS INITIAL ).
          IF t81 = abap_true.
          ELSE.
            DATA t84 TYPE REF TO zif_lnt_class_definition.
            DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t85 = t77.
            DATA t87 TYPE string.
            t87 = t58->value.
            t84 = t85->find_class_definition( i_name = t87 ).
            t80 = t84.
          ENDIF.
          t75 = t80.
          DATA t89 TYPE REF TO zif_lnt_class_definition.
          DATA t90 TYPE abap_bool.
          t90 = xsdbool( t75 IS BOUND ).
          IF t90 = abap_true.
            t89 = t75.
          ELSE.
            DATA t98 TYPE REF TO zcl_lnt_class.
            DATA t99 TYPE REF TO zcl_lnt_class.
            DATA t100 TYPE REF TO zif_lnt_object.
            DATA t101 TYPE REF TO zif_lnt_registry.
            t101 = t41->reg.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t105) = |CLAS|.
            DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t106->has = abap_true.
            t106->value = t105.
            t103 = t106.
            DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t110 TYPE string.
            t110 = t58->value.
            DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t112->has = abap_true.
            t112->value = t110.
            t108 = t112.
            t100 = t101->get_object( i_type_9913 = t103 i_name = t108 ).
            DATA t114 TYPE REF TO object.
            t114 = t100.
            t99 ?= t114.
            t98 = t99.
            DATA t115 TYPE REF TO zif_lnt_class_definition.
            DATA t116 TYPE abap_bool.
            t116 = xsdbool( t98 IS BOUND ).
            IF t116 = abap_true.
              DATA t118 TYPE REF TO zif_lnt_class_definition.
              DATA t119 TYPE REF TO zcl_lnt_class.
              t119 = t98.
              t118 = t119->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t115 = t118.
            ELSE.
              CLEAR t115.
            ENDIF.
            t89 = t115.
          ENDIF.
          t65 = t89.
        ENDIF.
        t56 = t65.
        DATA t122 TYPE REF TO zif_lnt_interface_definition.
        DATA t123 TYPE abap_bool.
        t123 = xsdbool( t56 IS BOUND ).
        IF t123 = abap_true.
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
          DATA(t139) = VALUE abap_bool( ).
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t140 = t131.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t144) = VALUE abap_bool( ).
          IF t140 IS INITIAL.
            t144 = abap_true.
          ELSEIF t140->has = abap_false.
            t144 = abap_true.
          ENDIF.
          t139 = t144.
          IF t139 = abap_true.
          ELSE.
            DATA t148 TYPE REF TO zif_lnt_interface_definition.
            DATA t150 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t151 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t151 = t41->current.
            t150 = t151.
            DATA t153 TYPE REF TO zif_lnt_interface_definition.
            DATA(t154) = xsdbool( t150 IS INITIAL ).
            IF t154 = abap_true.
            ELSE.
              DATA t157 TYPE REF TO zif_lnt_interface_definition.
              DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t158 = t150.
              DATA t160 TYPE string.
              t160 = t131->value.
              t157 = t158->find_interface_definition( i_name = t160 ).
              t153 = t157.
            ENDIF.
            t148 = t153.
            DATA t162 TYPE REF TO zif_lnt_interface_definition.
            DATA t163 TYPE abap_bool.
            t163 = xsdbool( t148 IS BOUND ).
            IF t163 = abap_true.
              t162 = t148.
            ELSE.
              DATA t171 TYPE REF TO zcl_lnt_ob_interface.
              DATA t172 TYPE REF TO zcl_lnt_ob_interface.
              DATA t173 TYPE REF TO zif_lnt_object.
              DATA t174 TYPE REF TO zif_lnt_registry.
              t174 = t41->reg.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t178) = |INTF|.
              DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t179->has = abap_true.
              t179->value = t178.
              t176 = t179.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t183 TYPE string.
              t183 = t131->value.
              DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t185->has = abap_true.
              t185->value = t183.
              t181 = t185.
              t173 = t174->get_object( i_type_9913 = t176 i_name = t181 ).
              DATA t187 TYPE REF TO object.
              t187 = t173.
              t172 ?= t187.
              t171 = t172.
              DATA t188 TYPE REF TO zif_lnt_interface_definition.
              DATA t189 TYPE abap_bool.
              t189 = xsdbool( t171 IS BOUND ).
              IF t189 = abap_true.
                DATA t195 TYPE REF TO zif_lnt_interface_definition.
                t195 = t171->def.
                t188 = t195.
              ELSE.
                CLEAR t188.
              ENDIF.
              t162 = t188.
            ENDIF.
            t138 = t162.
          ENDIF.
          t129 = t138.
          DATA t198 TYPE REF TO zif_lnt_interface_definition.
          DATA t199 TYPE abap_bool.
          t199 = xsdbool( t129 IS BOUND ).
          IF t199 = abap_true.
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
      DATA t209 TYPE abap_bool.
      t209 = xsdbool( t39 IS BOUND ).
      IF t209 = abap_true.
        t208 = abap_false.
      ELSE.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        t217 = t2->scope.
        DATA t219 TYPE REF TO zcl_lnt_ddic.
        DATA t220 TYPE REF TO zif_lnt_registry.
        t220 = t217->reg.
        t219 = NEW zcl_lnt_ddic( i_reg_f149 = t220 ).
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t222 = t24.
        DATA(t224) = VALUE abap_bool( ).
        DATA(t225) = VALUE abap_bool( ).
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t226 = t222.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t230) = VALUE abap_bool( ).
        IF t226 IS INITIAL.
          t230 = abap_true.
        ELSEIF t226->has = abap_false.
          t230 = abap_true.
        ENDIF.
        t225 = t230.
        IF t225 = abap_true.
          t224 = abap_true.
        ELSE.
          DATA t233 TYPE abap_bool.
          DATA t234 TYPE REF TO zif_lnt_registry.
          t234 = t219->reg.
          DATA t236 TYPE string.
          t236 = t222->value.
          t233 = t234->in_error_namespace( i_name = t236 ).
          t224 = t233.
        ENDIF.
        t213 = t224.
        t212 = xsdbool( t213 = abap_false ).
        t208 = t212.
      ENDIF.
      t207 = t208.
      DATA t238 TYPE abap_bool.
      t238 = xsdbool( t39 IS BOUND ).
      IF t238 = abap_true.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        t240 = t2->scope.
        DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t245 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t246 TYPE REF TO zif_lnt_interface_definition.
        t246 = t39.
        t245 ?= t246.
        t243 = t245.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t250) = |Object|.
        CREATE OBJECT t249.
        t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t249->sval = t250.
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
          DATA(t263) = |Object (Void)|.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t262->sval = t263.
          DATA(t264) = CONV string( me->filename ).
          DATA t265 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t267 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
          t268 = t275.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t267 = NEW zcl_lnt_ireference_extras( i_oo_name = t268 i_oo_type = t277 i_found_qualified = t279 ).
          CREATE OBJECT t267->zlnt_view_ownkeys_b0e8086400eb.
          t267->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t267->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t281 ).
          CREATE OBJECT t267->zlnt_json_ownkeys_70e5fd461788.
          t267->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t282) = |ooName|.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t267->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
          t265 = t267.
          t258->add_reference( i_usage = t11 i_referencing = t261 i_type_9913 = t262 i_filename = t264 i_extra = t265 ).
        ENDIF.
      ENDIF.
      DATA t287 TYPE REF TO zcl_lnt_abstract_token.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      DATA t290 TYPE REF TO zcl_lnt_expression_node.
      DATA(t292) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t290 = t1->find_first_expression( i_type_9913 = t292 ).
      t289 = t290.
      DATA t293 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t294) = xsdbool( t289 IS INITIAL ).
      IF t294 = abap_true.
      ELSE.
        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
        DATA t298 TYPE REF TO zcl_lnt_expression_node.
        t298 = t289.
        t297 = t298->get_first_token( ).
        t293 = t297.
      ENDIF.
      t287 = t293.
      DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t301) = xsdbool( t287 IS INITIAL ).
      IF t301 = abap_true.
      ELSE.
        DATA t308 TYPE string.
        t308 = t287->str.
        DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t310->has = abap_true.
        t310->value = t308.
        t300 = t310.
      ENDIF.
      DATA t311 TYPE REF TO zif_lnt_event_definition.
      DATA t312 TYPE REF TO zif_lnt_event_definition.
      DATA t313 TYPE REF TO zcl_lnt_object_oriented.
      DATA t314 TYPE REF TO zcl_lnt_current_scope.
      t314 = t2->scope.
      t313 = NEW zcl_lnt_object_oriented( i_scope = t314 ).
      t312 = t313->search_event( i_def = t39 i_name = t300 ).
      t311 = t312.
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
        DATA t328 TYPE REF TO zcl_lnt_abstract_token.
        t328 = t322->get_first_token( ).
        t327 = t328.
        DATA(t330) = VALUE string( ).
        DATA(t331) = VALUE string( ).
        DATA t332 TYPE string.
        DATA t333 TYPE string.
        DATA t336 TYPE string.
        t336 = t327->str.
        t333 = t336.
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
        DATA(t347) = |SENDER|.
        t345 = xsdbool( t330 = t347 ).
        t344 = t345.
        IF t345 = abap_true.
          DATA t348 TYPE abap_bool.
          t348 = xsdbool( t39 IS BOUND ).
          t344 = t348.
        ENDIF.
        IF t344 = abap_true.
          DATA(t350) = me->importing.
          DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t351.
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
          DATA t363 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t363.
          t362 = t363.
          DATA(t365) = |event_parameter|.
          t362->load( ).
          APPEND t365 TO t362->items.
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
        DATA(t376) = xsdbool( t373 IS INITIAL ).
        IF t376 = abap_true.
          CLEAR t375.
        ELSE.
          DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t380 TYPE REF TO zif_lnt_event_definition.
          t380 = t373.
          t379 = t380->get_parameters( ).
          t375 = t379.
        ENDIF.
        t371 = t375.
        DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t382.
        DATA(t383) = xsdbool( t371 IS INITIAL ).
        IF t383 = abap_true.
          CLEAR t382.
        ELSE.
          DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t387 = t371.
          DATA t390 TYPE i.
          DATA t391 TYPE i.
          t387->load( ).
          t391 = lines( t387->items ).
          t390 = t391.
          DATA t393 TYPE i.
          t393 = 0.
          DATA t395 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t395.
          DO.
            DATA t397 TYPE abap_bool.
            t397 = xsdbool( t393 < t390 ).
            IF t397 = abap_false.
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
            DATA(t408) = VALUE abap_bool( ).
            DATA(t409) = VALUE string( ).
            DATA(t410) = VALUE string( ).
            DATA t411 TYPE REF TO zcl_lnt_fi_identifier.
            t411 = t400.
            DATA(t413) = VALUE string( ).
            DATA t414 TYPE string.
            DATA t417 TYPE REF TO zcl_lnt_abstract_token.
            t417 = t411->token.
            DATA t419 TYPE string.
            t419 = t417->str.
            t414 = t419.
            DATA(t421) = VALUE abap_bool( ).
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
              CLEAR t422.
            ELSE.
              IF t425 > t426 - t424.
                t425 = t426 - t424.
              ENDIF.
              t422 = t423+t424(t425).
            ENDIF.
            DATA(t427) = |!|.
            t421 = xsdbool( t422 = t427 ).
            IF t421 = abap_true.
              DATA(t428) = VALUE string( ).
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
                CLEAR t431.
              ELSE.
                IF t434 > t437 - t433.
                  t434 = t437 - t433.
                ENDIF.
                t431 = t429+t433(t434).
              ENDIF.
              t428 = t431.
              t414 = t428.
            ENDIF.
            t413 = t414.
            t410 = t413.
            DATA(t439) = strlen( t410 ).
            t409 = t410.
            IF t409 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t409 TO UPPER CASE.
            ELSE.
              t409 = zlnt_runtime_uppe_91169605024d=>full( t409 ).
            ENDIF.
            t408 = xsdbool( t409 = t330 ).
            IF t408 = abap_true.
              t395 = t400.
              EXIT.
            ENDIF.
            DATA t445 TYPE i.
            DATA(t447) = 1.
            t445 = t393 + t447.
            t393 = t445.
          ENDDO.
          t382 = t395.
        ENDIF.
        t369 = t382.
        DATA t449 TYPE abap_bool.
        t449 = xsdbool( t369 IS BOUND ).
        IF t449 = abap_true.
          DATA(t451) = me->importing.
          DATA t452 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t452.
          DATA(t454) = CONV string( me->filename ).
          DATA t455 TYPE REF TO zcl_lnt_abstract_type.
          DATA t459 TYPE REF TO zcl_lnt_abstract_type.
          t459 = t369->type_cba0.
          t455 = t459.
          DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t461.
          DATA t464 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t465 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t465.
          t464 = t465.
          DATA(t467) = |event_parameter|.
          t464->load( ).
          APPEND t467 TO t464->items.
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
            CLEAR t473.
            DATA(t475) = CONV string( me->filename ).
            DATA t476 TYPE REF TO zcl_lnt_void_type.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t478.
            t476 = zcl_lnt_void_type=>get_db65( i_voided = t24 i_qualified_name = t478 ).
            DATA t479 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t479.
            DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t483.
            t482 = t483.
            DATA(t485) = |event_parameter|.
            t482->load( ).
            APPEND t485 TO t482->items.
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
            DATA(t496) = |"|.
            DATA(t497) = strlen( t492 ).
            t491 = |{ t492 }{ t496 }|.
            DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t498.
            t490 = NEW zcl_lnt_unknown_type( i_error = t491 i_qualified_name = t498 ).
            DATA(t499) = me->importing.
            DATA t500 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t500.
            DATA(t502) = CONV string( me->filename ).
            DATA t504 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t504.
            DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t508 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t508.
            t507 = t508.
            DATA(t510) = |event_parameter|.
            t507->load( ).
            APPEND t510 TO t507->items.
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
    DATA t515 TYPE REF TO zcl_lnt_expression_node.
    DATA(t517) = zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57.
    t515 = t1->find_first_expression( i_type_9913 = t517 ).
    t514 = t515.
    DATA t518 TYPE abap_bool.
    t518 = xsdbool( t514 IS BOUND ).
    IF t518 = abap_true.
      DATA(t520) = me->importing.
      DATA t521 TYPE REF TO zcl_lnt_expression_node.
      t521 = t514.
      DATA t524 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t525 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t526 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t526.
      t525 = t526.
      DATA(t528) = |importing|.
      t525->load( ).
      APPEND t528 TO t525->items.
      t525->save( ).
      t524 = t525.
      me->add_51c1( i_target_5f8a = t520 i_source_75cf = t521 i_input_967e = t2 i_meta = t524 i_abstract_method = t4 ).
      DATA t531 TYPE abap_bool.
      DATA t532 TYPE REF TO zcl_lnt_abstract_token.
      DATA t533 TYPE REF TO zcl_lnt_expression_node.
      t533 = t514.
      DATA(t535) = |PREFERRED|.
      t532 = t533->find_direct_token_by_text( i_text = t535 ).
      t531 = xsdbool( t532 IS BOUND ).
      IF t531 = abap_true.
        DATA t538 TYPE string.
        DATA t539 TYPE string.
        DATA t541 TYPE REF TO zcl_lnt_abstract_token.
        DATA t542 TYPE REF TO zcl_lnt_expression_node.
        t542 = t514.
        t541 = t542->get_last_token( ).
        DATA t544 TYPE string.
        t544 = t541->str.
        t539 = t544.
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
          DATA(t559) = VALUE string( ).
          DATA t560 TYPE string.
          DATA t561 TYPE string.
          t561 = me->preferred->value.
          t560 = t561.
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
          t559 = t563.
          DATA(t570) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t570->has = abap_true.
          t570->value = t559.
          me->preferred = t570.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `preferred`.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t572 TYPE REF TO zcl_lnt_expression_node.
    DATA t573 TYPE REF TO zcl_lnt_expression_node.
    DATA(t575) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
    t573 = t1->find_first_expression( i_type_9913 = t575 ).
    t572 = t573.
    DATA t576 TYPE abap_bool.
    t576 = xsdbool( t572 IS BOUND ).
    IF t576 = abap_true.
      DATA(t578) = me->exporting.
      DATA t579 TYPE REF TO zcl_lnt_expression_node.
      t579 = t572.
      DATA t582 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t583 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t584 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t584.
      t583 = t584.
      DATA(t586) = |exporting|.
      t583->load( ).
      APPEND t586 TO t583->items.
      t583->save( ).
      t582 = t583.
      me->add_51c1( i_target_5f8a = t578 i_source_75cf = t579 i_input_967e = t2 i_meta = t582 i_abstract_method = t4 ).
    ENDIF.
    DATA t589 TYPE REF TO zcl_lnt_expression_node.
    DATA t590 TYPE REF TO zcl_lnt_expression_node.
    DATA(t592) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
    t590 = t1->find_first_expression( i_type_9913 = t592 ).
    t589 = t590.
    DATA t593 TYPE abap_bool.
    t593 = xsdbool( t589 IS BOUND ).
    IF t593 = abap_true.
      DATA(t595) = me->changing.
      DATA t596 TYPE REF TO zcl_lnt_expression_node.
      t596 = t589.
      DATA t599 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t600 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t601 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t601.
      t600 = t601.
      DATA(t603) = |changing|.
      t600->load( ).
      APPEND t603 TO t600->items.
      t600->save( ).
      t599 = t600.
      me->add_51c1( i_target_5f8a = t595 i_source_75cf = t596 i_input_967e = t2 i_meta = t599 i_abstract_method = t4 ).
    ENDIF.
    DATA t606 TYPE REF TO zcl_lnt_expression_node.
    DATA t607 TYPE REF TO zcl_lnt_expression_node.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
    t607 = t1->find_first_expression( i_type_9913 = t609 ).
    t606 = t607.
    DATA t610 TYPE abap_bool.
    t610 = xsdbool( t606 IS BOUND ).
    IF t610 = abap_true.
      DATA t614 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t615 TYPE REF TO zcl_lnt_expression_node.
      t615 = t606.
      DATA t618 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t619 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t620 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t620.
      t619 = t620.
      DATA(t622) = |returning|.
      t619->load( ).
      APPEND t622 TO t619->items.
      t619->save( ).
      t618 = t619.
      t614 = zcl_lnt_sy_mthd_df_rtrnng=>run_syntax( i_node = t615 i_input_967e = t2 i_meta = t618 ).
      me->returning = t614.
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
        CLEAR t8.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE string( ).
      DATA(t10) = VALUE string( ).
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t12.
      t12 = t4.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      t18 = t12->token.
      DATA(t20) = VALUE string( ).
      t20 = t18->str.
      t16 = t20.
      t15 = t16.
      DATA(t22) = VALUE abap_bool( ).
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
        CLEAR t23.
      ELSE.
        IF t26 > t27 - t25.
          t26 = t27 - t25.
        ENDIF.
        t23 = t24+t25(t26).
      ENDIF.
      DATA(t28) = |!|.
      t22 = xsdbool( t23 = t28 ).
      IF t22 = abap_true.
        DATA(t29) = VALUE string( ).
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
          CLEAR t32.
        ELSE.
          IF t35 > t38 - t34.
            t35 = t38 - t34.
          ENDIF.
          t32 = t30+t34(t35).
        ENDIF.
        t29 = t32.
        t15 = t29.
      ENDIF.
      t14 = t15.
      t11 = t14.
      DATA(t40) = strlen( t11 ).
      t10 = t11.
      IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t10 TO UPPER CASE.
      ELSE.
        t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
      ENDIF.
      t9 = t10.
      DATA(t41) = VALUE abap_bool( ).
      t41 = t1->has( p0 = t9 ).
      IF t41 = abap_true.
        DATA t44 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA(t48) = VALUE string( ).
        DATA(t49) = VALUE string( ).
        DATA(t50) = |Method parameter "|.
        DATA(t52) = strlen( t50 ).
        t49 = |{ t50 }{ t9 }|.
        DATA(t53) = |" already defined|.
        DATA(t54) = strlen( t49 ).
        t48 = |{ t49 }{ t53 }|.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t48.
        t46 = t55.
        t45 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t46 ).
        t44 = NEW #( ).
        t44->payload = t45.
        CLEAR t44->source_value.
        DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t57.
        DATA t58 TYPE REF TO object.
        CLEAR t58.
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
      CLEAR t59.
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
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE i( ).
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      t11 = t3.
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE string.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      t17 = t11->token.
      DATA t19 TYPE string.
      t19 = t17->str.
      t14 = t19.
      DATA(t21) = VALUE abap_bool( ).
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
        CLEAR t22.
      ELSE.
        IF t25 > t26 - t24.
          t25 = t26 - t24.
        ENDIF.
        t22 = t23+t24(t25).
      ENDIF.
      DATA(t27) = |!|.
      t21 = xsdbool( t22 = t27 ).
      IF t21 = abap_true.
        DATA(t28) = VALUE string( ).
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
          CLEAR t31.
        ELSE.
          IF t34 > t37 - t33.
            t34 = t37 - t33.
          ENDIF.
          t31 = t29+t33(t34).
        ENDIF.
        t28 = t31.
        t14 = t28.
      ENDIF.
      t13 = t14.
      t10 = t13.
      t9 = strlen( t10 ).
      DATA(t40) = 30.
      t8 = xsdbool( t9 > t40 ).
      IF t8 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t41 = t1->issues.
        DATA t43 TYPE REF TO zcl_lnt_issue.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
        t46 = t3.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        t48 = t46->token.
        t45 = t48.
        DATA(t50) = |Method parameter name longer than 30 characters|.
        DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t51.
        t43 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t45 i_message_26cb = t50 i_fix = t51 ).
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
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = |RESULT|.
    t5 = t1->find_expression_after_token( i_text = t7 ).
    t4 = t5.
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
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = |IMPORTING|.
    t16 = t1->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = VALUE abap_bool( ).
    t20 = xsdbool( t15 IS BOUND ).
    IF t20 = abap_true.
      t19 = t15.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = VALUE abap_bool( ).
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
      DATA(t29) = 0.
      t24 = xsdbool( t25 >= t29 ).
      IF t24 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA(t32) = |REQUEST|.
        t30 = t1->find_expression_after_token( i_text = t32 ).
        t23 = t30.
      ELSE.
        CLEAR t23.
      ENDIF.
      t19 = t23.
    ENDIF.
    t13 = t19.
    DATA(t34) = VALUE abap_bool( ).
    t34 = xsdbool( t13 IS BOUND ).
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t38) = VALUE abap_bool( ).
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
      DATA(t43) = 0.
      t38 = xsdbool( t39 >= t43 ).
      IF t38 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = |LOCK|.
        t46 = t1->find_expression_after_token( i_text = t48 ).
        t45 = t46.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t50) = xsdbool( t45 IS INITIAL ).
        IF t50 = abap_true.
        ELSE.
          DATA(t53) = VALUE string( ).
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          t54 = t45.
          t53 = t54->concat_tokens( ).
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
          CLEAR t65.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t67.
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
            CLEAR t75.
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
            CLEAR t77.
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
        DATA(t80) = VALUE abap_bool( ).
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
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
        t80 = t85.
        IF t80 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_void_type.
          CLEAR t87.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t90) = |RapMethodParameter|.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t90.
          t88 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t87 = zcl_lnt_void_type=>get_db65( i_voided = t88 i_qualified_name = t93 ).
          t79 = t87.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_basic_types.
          CLEAR t95.
          t95 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
          DATA(t97) = VALUE string( ).
          t97 = t36->value.
          DATA t99 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t99.
          t94 = t95->rap_table_for( i_entity_name = t97 i_options = t99 ).
          t79 = t94.
        ENDIF.
        DATA(t100) = me->importing.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t101.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        t102 = t61->get_first_token( ).
        DATA(t104) = VALUE string( ).
        t104 = t2->filename.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t107.
        DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t110.
        DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t111.
        CREATE OBJECT t111.
        t110 = t111.
        DATA(t113) = |importing|.
        t110->load( ).
        APPEND t113 TO t110->items.
        t110->save( ).
        t107 = t110.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t101 = NEW zcl_lnt_typed_identifier( i_token = t102 i_filename = t104 i_type_9913 = t79 i_meta = t107 i_value = t116 ).
        t100->load( ).
        APPEND t101 TO t100->items.
        t100->save( ).
      ENDDO.
      DATA(t117) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t118 = t36.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t122) = VALUE abap_bool( ).
      DATA(t123) = VALUE abap_bool( ).
      IF t118 IS INITIAL.
        t123 = abap_true.
      ELSEIF t118->has = abap_false.
        t123 = abap_true.
      ENDIF.
      t122 = xsdbool( t123 = abap_false ).
      t117 = t122.
      IF t117 = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        t127 = t13.
        t126 = t127->get_first_token( ).
        t125 = t126.
        DATA(t129) = me->exporting.
        DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t131 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t132 TYPE REF TO zcl_lnt_position.
        DATA t135 TYPE REF TO zcl_lnt_position.
        t135 = t125->start.
        t132 = t135.
        DATA(t137) = |failed|.
        t131 = NEW zcl_lnt_lx_identifier( i_start = t132 i_str = t137 ).
        DATA(t138) = VALUE string( ).
        t138 = t2->filename.
        DATA t140 TYPE REF TO zcl_lnt_void_type.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t143) = VALUE string( ).
        DATA(t144) = VALUE string( ).
        DATA(t145) = |RESPONSE FOR FAILED EARLY |.
        DATA(t146) = VALUE string( ).
        t146 = t36->value.
        DATA(t148) = strlen( t145 ).
        t144 = |{ t145 }{ t146 }|.
        DATA(t149) = ||.
        DATA(t150) = strlen( t144 ).
        t143 = |{ t144 }{ t149 }|.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = t143.
        t141 = t151.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t140 = zcl_lnt_void_type=>get_db65( i_voided = t141 i_qualified_name = t153 ).
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t158.
        t157 = t158.
        DATA(t160) = |exporting|.
        t157->load( ).
        APPEND t160 TO t157->items.
        t157->save( ).
        t154 = t157.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130 = NEW zcl_lnt_typed_identifier( i_token = t131 i_filename = t138 i_type_9913 = t140 i_meta = t154 i_value = t163 ).
        t129->load( ).
        APPEND t130 TO t129->items.
        t129->save( ).
        DATA(t164) = me->exporting.
        DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t166 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t167 TYPE REF TO zcl_lnt_position.
        DATA t170 TYPE REF TO zcl_lnt_position.
        t170 = t125->start.
        t167 = t170.
        DATA(t172) = |reported|.
        t166 = NEW zcl_lnt_lx_identifier( i_start = t167 i_str = t172 ).
        DATA(t173) = VALUE string( ).
        t173 = t2->filename.
        DATA t175 TYPE REF TO zcl_lnt_void_type.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t178) = VALUE string( ).
        DATA(t179) = VALUE string( ).
        DATA(t180) = |RESPONSE FOR REPORTED EARLY |.
        DATA(t181) = VALUE string( ).
        t181 = t36->value.
        DATA(t183) = strlen( t180 ).
        t179 = |{ t180 }{ t181 }|.
        DATA(t184) = ||.
        DATA(t185) = strlen( t179 ).
        t178 = |{ t179 }{ t184 }|.
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t178.
        t176 = t186.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t175 = zcl_lnt_void_type=>get_db65( i_voided = t176 i_qualified_name = t188 ).
        DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t193.
        t192 = t193.
        DATA(t195) = |exporting|.
        t192->load( ).
        APPEND t195 TO t192->items.
        t192->save( ).
        t189 = t192.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t165 = NEW zcl_lnt_typed_identifier( i_token = t166 i_filename = t173 i_type_9913 = t175 i_meta = t189 i_value = t198 ).
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
        DATA(t214) = 0.
        t209 = xsdbool( t210 >= t214 ).
        t208 = t209.
        IF t209 = abap_false.
          DATA(t215) = VALUE abap_bool( ).
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
          DATA(t220) = 0.
          t215 = xsdbool( t216 >= t220 ).
          t208 = t215.
        ENDIF.
        t207 = t208.
        IF t208 = abap_false.
          DATA(t221) = VALUE abap_bool( ).
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
          DATA(t226) = 0.
          t221 = xsdbool( t222 >= t226 ).
          t207 = t221.
        ENDIF.
        t206 = t207.
        IF t207 = abap_false.
          DATA(t227) = VALUE abap_bool( ).
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
          DATA(t232) = 0.
          t227 = xsdbool( t228 >= t232 ).
          t206 = t227.
        ENDIF.
        t205 = t206.
        IF t206 = abap_false.
          DATA(t233) = VALUE abap_bool( ).
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
          DATA(t238) = 0.
          t233 = xsdbool( t234 >= t238 ).
          t205 = t233.
        ENDIF.
        t204 = t205.
        IF t205 = abap_false.
          DATA(t239) = VALUE abap_bool( ).
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
          DATA(t244) = 0.
          t239 = xsdbool( t240 >= t244 ).
          t204 = t239.
        ENDIF.
        t203 = t204.
        IF t204 = abap_false.
          DATA(t245) = VALUE abap_bool( ).
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
          DATA(t250) = 0.
          t245 = xsdbool( t246 >= t250 ).
          t203 = t245.
        ENDIF.
        t202 = t203.
        IF t203 = abap_false.
          DATA(t251) = VALUE abap_bool( ).
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
          DATA(t256) = 0.
          t251 = xsdbool( t252 >= t256 ).
          t202 = t251.
        ENDIF.
        t201 = t202.
        IF t202 = abap_false.
          DATA(t257) = VALUE abap_bool( ).
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
          DATA(t262) = 0.
          t257 = xsdbool( t258 >= t262 ).
          t201 = t257.
        ENDIF.
        t200 = t201.
        IF t201 = abap_false.
          DATA(t263) = VALUE abap_bool( ).
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
          DATA(t268) = 0.
          t263 = xsdbool( t264 >= t268 ).
          t200 = t263.
        ENDIF.
        t199 = t200.
        IF t200 = abap_false.
          DATA(t269) = VALUE abap_bool( ).
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
          DATA(t274) = 0.
          t269 = xsdbool( t270 >= t274 ).
          t199 = t269.
        ENDIF.
        IF t199 = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_abstract_token.
          DATA t276 TYPE REF TO zcl_lnt_abstract_token.
          DATA t277 TYPE REF TO zcl_lnt_expression_node.
          t277 = t13.
          t276 = t277->get_first_token( ).
          t275 = t276.
          DATA(t279) = me->exporting.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t281 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t282 TYPE REF TO zcl_lnt_position.
          DATA t285 TYPE REF TO zcl_lnt_position.
          t285 = t275->start.
          t282 = t285.
          DATA(t287) = |failed|.
          t281 = NEW zcl_lnt_lx_identifier( i_start = t282 i_str = t287 ).
          DATA(t288) = VALUE string( ).
          t288 = t2->filename.
          DATA t290 TYPE REF TO zcl_lnt_void_type.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t293) = |RapMethodParameter|.
          DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t294->has = abap_true.
          t294->value = t293.
          t291 = t294.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t290 = zcl_lnt_void_type=>get_db65( i_voided = t291 i_qualified_name = t296 ).
          DATA t297 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t301 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t301.
          t300 = t301.
          DATA(t303) = |exporting|.
          t300->load( ).
          APPEND t303 TO t300->items.
          t300->save( ).
          t297 = t300.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t280 = NEW zcl_lnt_typed_identifier( i_token = t281 i_filename = t288 i_type_9913 = t290 i_meta = t297 i_value = t306 ).
          t279->load( ).
          APPEND t280 TO t279->items.
          t279->save( ).
          DATA(t307) = me->exporting.
          DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t309 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t310 TYPE REF TO zcl_lnt_position.
          DATA t313 TYPE REF TO zcl_lnt_position.
          t313 = t275->start.
          t310 = t313.
          DATA(t315) = |mapped|.
          t309 = NEW zcl_lnt_lx_identifier( i_start = t310 i_str = t315 ).
          DATA(t316) = VALUE string( ).
          t316 = t2->filename.
          DATA t318 TYPE REF TO zcl_lnt_void_type.
          DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t321) = |RapMethodParameter|.
          DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t322->has = abap_true.
          t322->value = t321.
          t319 = t322.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t318 = zcl_lnt_void_type=>get_db65( i_voided = t319 i_qualified_name = t324 ).
          DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t329.
          t328 = t329.
          DATA(t331) = |exporting|.
          t328->load( ).
          APPEND t331 TO t328->items.
          t328->save( ).
          t325 = t328.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t308 = NEW zcl_lnt_typed_identifier( i_token = t309 i_filename = t316 i_type_9913 = t318 i_meta = t325 i_value = t334 ).
          t307->load( ).
          APPEND t308 TO t307->items.
          t307->save( ).
          DATA(t335) = me->exporting.
          DATA t336 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t337 TYPE REF TO zcl_lnt_lx_identifier.
          DATA t338 TYPE REF TO zcl_lnt_position.
          DATA t341 TYPE REF TO zcl_lnt_position.
          t341 = t275->start.
          t338 = t341.
          DATA(t343) = |reported|.
          t337 = NEW zcl_lnt_lx_identifier( i_start = t338 i_str = t343 ).
          DATA(t344) = VALUE string( ).
          t344 = t2->filename.
          DATA t346 TYPE REF TO zcl_lnt_void_type.
          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t349) = |RapMethodParameter|.
          DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t350->has = abap_true.
          t350->value = t349.
          t347 = t350.
          DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t346 = zcl_lnt_void_type=>get_db65( i_voided = t347 i_qualified_name = t352 ).
          DATA t353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t357 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t357.
          t356 = t357.
          DATA(t359) = |exporting|.
          t356->load( ).
          APPEND t359 TO t356->items.
          t356->save( ).
          t353 = t356.
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t336 = NEW zcl_lnt_typed_identifier( i_token = t337 i_filename = t344 i_type_9913 = t346 i_meta = t353 i_value = t362 ).
          t335->load( ).
          APPEND t336 TO t335->items.
          t335->save( ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t363) = VALUE abap_bool( ).
    t363 = xsdbool( t4 IS BOUND ).
    IF t363 = abap_true.
      DATA t366 TYPE REF TO zcl_lnt_abstract_token.
      DATA t367 TYPE REF TO zcl_lnt_expression_node.
      t367 = t4.
      t366 = t367->get_first_token( ).
      DATA(t369) = me->importing.
      DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t372) = VALUE string( ).
      t372 = t2->filename.
      DATA t374 TYPE REF TO zcl_lnt_void_type.
      DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t377) = |RapMethodParameter|.
      DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t378->has = abap_true.
      t378->value = t377.
      t375 = t378.
      DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t374 = zcl_lnt_void_type=>get_db65( i_voided = t375 i_qualified_name = t380 ).
      DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t384 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t385.
      t384 = t385.
      DATA(t387) = |exporting|.
      t384->load( ).
      APPEND t387 TO t384->items.
      t384->save( ).
      t381 = t384.
      DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t370 = NEW zcl_lnt_typed_identifier( i_token = t366 i_filename = t372 i_type_9913 = t374 i_meta = t381 i_value = t390 ).
      t369->load( ).
      APPEND t370 TO t369->items.
      t369->save( ).
    ENDIF.
    DATA(t391) = VALUE abap_bool( ).
    DATA(t392) = VALUE string( ).
    DATA(t394) = strlen( t3 ).
    t392 = t3.
    IF t392 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t392 TO UPPER CASE.
    ELSE.
      t392 = zlnt_runtime_uppe_91169605024d=>full( t392 ).
    ENDIF.
    DATA(t395) = |CL_ABAP_BEHAVIOR_SAVER|.
    t391 = xsdbool( t392 = t395 ).
    IF t391 = abap_true.
      DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t399.
      t398 = t399.
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
          CLEAR t405.
          t405 = t404->as_ref( ).
          t401 ?= t405.
        ELSE.
          t401 ?= t402.
        ENDIF.
        DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t407.
        DATA t408 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t408.
        DATA t409 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t409.
        t409 = t401.
        DATA t411 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t411.
        t411 = t409->token.
        t408 = t411.
        DATA(t413) = VALUE string( ).
        t413 = t2->filename.
        DATA t415 TYPE REF TO zcl_lnt_void_type.
        CLEAR t415.
        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t416.
        DATA(t418) = |RapMethodParameter|.
        DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t419->has = abap_true.
        t419->value = t418.
        t416 = t419.
        DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t421.
        t415 = zcl_lnt_void_type=>get_db65( i_voided = t416 i_qualified_name = t421 ).
        DATA t422 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t422.
        DATA t427 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t427.
        t427 = t401->meta.
        t422 = t427.
        DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t430.
        t407 = NEW zcl_lnt_typed_identifier( i_token = t408 i_filename = t413 i_type_9913 = t415 i_meta = t422 i_value = t430 ).
        t398->load( ).
        APPEND t407 TO t398->items.
        t398->save( ).
      ENDDO.
      t396 = t398.
      DO.
        DATA(t432) = VALUE abap_bool( ).
        DATA(t433) = VALUE i( ).
        DATA(t434) = me->changing.
        t434->load( ).
        t433 = lines( t434->items ).
        DATA(t435) = 0.
        t432 = xsdbool( t433 > t435 ).
        IF t432 = abap_false.
          EXIT.
        ENDIF.
        DATA t436 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t436.
        DATA t438 TYPE REF TO object.
        CLEAR t438.
        t438 = me->changing->shift( ).
        DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t439.
        CLEAR t436.
        IF t438 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t439 ?= t438.
          DATA t440 TYPE REF TO object.
          CLEAR t440.
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
          CLEAR t447.
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
      DATA(t450) = VALUE i( ).
      DATA(t451) = me->changing.
      t451->load( ).
      t450 = lines( t451->items ).
      t441 = t450.
      DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t455.
      t454 = t455.
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
          CLEAR t461.
          t461 = t460->as_ref( ).
          t457 ?= t461.
        ELSE.
          t457 ?= t458.
        ENDIF.
        DATA t463 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t463.
        DATA t464 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t464.
        DATA t465 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t465.
        t465 = t457.
        DATA t467 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t467.
        t467 = t465->token.
        t464 = t467.
        DATA(t469) = VALUE string( ).
        t469 = t2->filename.
        DATA t471 TYPE REF TO zcl_lnt_void_type.
        CLEAR t471.
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t472.
        DATA(t474) = |RapMethodParameter|.
        DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t475->has = abap_true.
        t475->value = t474.
        t472 = t475.
        DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t477.
        t471 = zcl_lnt_void_type=>get_db65( i_voided = t472 i_qualified_name = t477 ).
        DATA t478 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t478.
        DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t483.
        t483 = t457->meta.
        t478 = t483.
        DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t486.
        t463 = NEW zcl_lnt_typed_identifier( i_token = t464 i_filename = t469 i_type_9913 = t471 i_meta = t478 i_value = t486 ).
        t454->load( ).
        APPEND t463 TO t454->items.
        t454->save( ).
      ENDDO.
      t452 = t454.
      DO.
        DATA(t488) = VALUE abap_bool( ).
        DATA(t489) = VALUE i( ).
        DATA(t490) = me->importing.
        t490->load( ).
        t489 = lines( t490->items ).
        DATA(t491) = 0.
        t488 = xsdbool( t489 > t491 ).
        IF t488 = abap_false.
          EXIT.
        ENDIF.
        DATA t492 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t492.
        DATA t494 TYPE REF TO object.
        CLEAR t494.
        t494 = me->importing->shift( ).
        DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t495.
        CLEAR t492.
        IF t494 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t495 ?= t494.
          DATA t496 TYPE REF TO object.
          CLEAR t496.
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
          CLEAR t503.
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
      DATA(t506) = VALUE i( ).
      DATA(t507) = me->importing.
      t507->load( ).
      t506 = lines( t507->items ).
      t497 = t506.
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
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t15 = t9->find_direct_expression( i_type_9913 = t17 ).
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t18 = xsdbool( t14 IS INITIAL ).
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t14.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      DATA t34 TYPE string.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      t36 = t28->get_first_token( ).
      DATA t38 TYPE string.
      t38 = t36->str.
      t34 = t38.
      DATA(t40) = strlen( t34 ).
      t33 = t34.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      DATA(t41) = |VALUE|.
      t32 = xsdbool( t33 = t41 ).
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
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t52 = t50->children.
        t49 = t52.
        t48 ?= t49.
        DATA(t54) = 1.
        DATA t55 TYPE REF TO object.
        t55 = t48->get( p0 = t54 ).
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
        DATA(t59) = xsdbool( t46 IS INITIAL ).
        IF t59 = abap_true.
          CLEAR t58.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          DATA t63 TYPE REF TO zif_lnt_union_4cf1d054.
          t63 = t46.
          t62 = t63->get_first_token( ).
          t58 = t62.
        ENDIF.
        t44 = t58.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t66) = xsdbool( t44 IS INITIAL ).
        IF t66 = abap_true.
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
        CLEAR t76.
        DATA(t78) = |(|.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t78.
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
      t27 = t31.
      IF t27 = abap_true.
        DATA(t84) = |pass_by_value|.
        t25->load( ).
        APPEND t84 TO t25->items.
        t25->save( ).
      ELSE.
        DATA t85 TYPE abap_bool.
        DATA(t87) = |importing|.
        t85 = t4->includes( p0 = t87 ).
        IF t85 = abap_true.
          DATA(t89) = |read_only|.
          t25->load( ).
          APPEND t89 TO t25->items.
          t25->save( ).
        ENDIF.
      ENDIF.
      DATA t90 TYPE abap_bool.
      t90 = xsdbool( t5 = abap_true ).
      IF t90 = abap_true.
        DATA(t94) = |abstract|.
        t25->load( ).
        APPEND t94 TO t25->items.
        t25->save( ).
      ENDIF.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      t97 = t14.
      DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t102.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t104 = t102->concat( p0 = t4 ).
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t108 = t104->concat( p0 = t25 ).
      t100 = t108.
      t96 = zcl_lnt_sy_method_param=>run_syntax( i_node = t97 i_input_967e = t3 i_meta = t100 ).
      t95 = t96.
      DATA t113 TYPE REF TO zcl_lnt_current_scope.
      t113 = t3->scope.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t115.
      t115 = t95.
      DATA(t120) = VALUE abap_bool( ).
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      t120 = xsdbool( t115 IS INITIAL ).
      IF t120 = abap_true.
      ELSE.
        DATA(t128) = VALUE string( ).
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        t129 = t115.
        DATA(t132) = VALUE string( ).
        DATA t133 TYPE string.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        t136 = t129->token.
        DATA t138 TYPE string.
        t138 = t136->str.
        t133 = t138.
        DATA(t140) = VALUE abap_bool( ).
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
          CLEAR t141.
        ELSE.
          IF t144 > t145 - t143.
            t144 = t145 - t143.
          ENDIF.
          t141 = t142+t143(t144).
        ENDIF.
        DATA(t146) = |!|.
        t140 = xsdbool( t141 = t146 ).
        IF t140 = abap_true.
          DATA(t147) = VALUE string( ).
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
            CLEAR t150.
          ELSE.
            IF t153 > t156 - t152.
              t153 = t156 - t152.
            ENDIF.
            t150 = t148+t152(t153).
          ENDIF.
          t147 = t150.
          t133 = t147.
        ENDIF.
        t132 = t133.
        t128 = t132.
        DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
        t158 = t115.
        t113->add_named_identifier( i_name = t128 i_identifier = t158 ).
      ENDIF.
      t1->load( ).
      APPEND t95 TO t1->items.
      t1->save( ).
      DATA t162 TYPE abap_bool.
      DATA t163 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t165) = |OPTIONAL|.
      t163 = t9->find_direct_token_by_text( i_text = t165 ).
      t162 = xsdbool( t163 IS BOUND ).
      IF t162 = abap_true.
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
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE string.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        t183 = t169->token.
        DATA t185 TYPE string.
        t185 = t183->str.
        t180 = t185.
        DATA(t187) = VALUE abap_bool( ).
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
          CLEAR t188.
        ELSE.
          IF t191 > t192 - t190.
            t191 = t192 - t190.
          ENDIF.
          t188 = t189+t190(t191).
        ENDIF.
        DATA(t193) = |!|.
        t187 = xsdbool( t188 = t193 ).
        IF t187 = abap_true.
          DATA(t194) = VALUE string( ).
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
            CLEAR t197.
          ELSE.
            IF t200 > t203 - t199.
              t200 = t203 - t199.
            ENDIF.
            t197 = t195+t199(t200).
          ENDIF.
          t194 = t197.
          t180 = t194.
        ENDIF.
        t179 = t180.
        t168 = t179.
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
        DATA t208 TYPE abap_bool.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
        t209 = t9->find_first_expression( i_type_9913 = t211 ).
        t208 = xsdbool( t209 IS BOUND ).
        IF t208 = abap_true.
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
          DATA(t225) = VALUE string( ).
          DATA t226 TYPE string.
          DATA t229 TYPE REF TO zcl_lnt_abstract_token.
          t229 = t215->token.
          DATA t231 TYPE string.
          t231 = t229->str.
          t226 = t231.
          DATA(t233) = VALUE abap_bool( ).
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
            CLEAR t234.
          ELSE.
            IF t237 > t238 - t236.
              t237 = t238 - t236.
            ENDIF.
            t234 = t235+t236(t237).
          ENDIF.
          DATA(t239) = |!|.
          t233 = xsdbool( t234 = t239 ).
          IF t233 = abap_true.
            DATA(t240) = VALUE string( ).
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
              CLEAR t243.
            ELSE.
              IF t246 > t249 - t245.
                t246 = t249 - t245.
              ENDIF.
              t243 = t241+t245(t246).
            ENDIF.
            t240 = t243.
            t226 = t240.
          ENDIF.
          t225 = t226.
          t214 = t225.
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
          DATA t257 TYPE REF TO zcl_lnt_expression_node.
          DATA(t259) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
          t257 = t9->find_first_expression( i_type_9913 = t259 ).
          t256 = t257.
          DATA t260 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t260.
          DATA(t261) = xsdbool( t256 IS INITIAL ).
          IF t261 = abap_true.
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
            DATA t286 TYPE abap_bool.
            DATA t287 TYPE REF TO zif_lnt_union_4cf1d054.
            t287 = t254.
            t286 = xsdbool( t287 IS BOUND AND t287 IS INSTANCE OF zcl_lnt_expression_node ).
            t283 = t286.
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
    DATA t295 TYPE abap_bool.
    DATA t296 TYPE i.
    t1->load( ).
    t296 = lines( t1->items ).
    DATA(t298) = 0.
    t295 = xsdbool( t296 > t298 ).
    IF t295 = abap_true.
      RETURN.
    ENDIF.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t302) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
    t300 = t2->find_all_expressions( i_type_9913 = t302 ).
    t299 = t300.
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
      DATA(t311) = VALUE abap_bool( ).
      DATA t312 TYPE REF TO zcl_lnt_expression_node.
      t312 = t304.
      DATA(t314) = VALUE abap_bool( ).
      DATA(t315) = VALUE abap_bool( ).
      DATA t316 TYPE string.
      DATA t317 TYPE string.
      DATA t319 TYPE REF TO zcl_lnt_abstract_token.
      t319 = t312->get_first_token( ).
      DATA t321 TYPE string.
      t321 = t319->str.
      t317 = t321.
      DATA(t323) = strlen( t317 ).
      t316 = t317.
      IF t316 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t316 TO UPPER CASE.
      ELSE.
        t316 = zlnt_runtime_uppe_91169605024d=>full( t316 ).
      ENDIF.
      DATA(t324) = |VALUE|.
      t315 = xsdbool( t316 = t324 ).
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
        DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t335 = t333->children.
        t332 = t335.
        t331 ?= t332.
        DATA(t337) = 1.
        DATA t338 TYPE REF TO object.
        t338 = t331->get( p0 = t337 ).
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
        DATA(t342) = xsdbool( t329 IS INITIAL ).
        IF t342 = abap_true.
          CLEAR t341.
        ELSE.
          DATA t345 TYPE REF TO zcl_lnt_abstract_token.
          DATA t346 TYPE REF TO zif_lnt_union_4cf1d054.
          t346 = t329.
          t345 = t346->get_first_token( ).
          t341 = t345.
        ENDIF.
        t327 = t341.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        DATA(t349) = xsdbool( t327 IS INITIAL ).
        IF t349 = abap_true.
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
        CLEAR t359.
        DATA(t361) = |(|.
        DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t362->has = abap_true.
        t362->value = t361.
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
      t311 = t314.
      IF t311 = abap_true.
        DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t368 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t368.
        t367 = t368.
        DATA(t370) = |pass_by_value|.
        t367->load( ).
        APPEND t370 TO t367->items.
        t367->save( ).
        t310 = t367.
      ELSE.
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t372.
        t310 = t372.
      ENDIF.
      DATA t374 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t379.
      DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t381 = t379->concat( p0 = t4 ).
      DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t385 = t381->concat( p0 = t310 ).
      t377 = t385.
      t374 = zcl_lnt_sy_method_param=>run_syntax( i_node = t304 i_input_967e = t3 i_meta = t377 ).
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
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    t7 = t1->get_first_token( ).
    DATA t9 TYPE string.
    t9 = t7->str.
    t5 = t9.
    DATA(t11) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    DATA(t12) = |VALUE|.
    t3 = xsdbool( t4 = t12 ).
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
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t23 = t21->children.
      t20 = t23.
      t19 ?= t20.
      DATA(t25) = 1.
      DATA t26 TYPE REF TO object.
      t26 = t19->get( p0 = t25 ).
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
      DATA(t30) = xsdbool( t17 IS INITIAL ).
      IF t30 = abap_true.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
        t34 = t17.
        t33 = t34->get_first_token( ).
        t29 = t33.
      ENDIF.
      t15 = t29.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t37) = xsdbool( t15 IS INITIAL ).
      IF t37 = abap_true.
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
      DATA(t49) = |(|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
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
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t3) = i_parameter_5406.
    t2 = me->g_p_d_i_s_ab_ty_mt_pr_ts_mt_pr( i_parameter_5406 = t3 ).
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
