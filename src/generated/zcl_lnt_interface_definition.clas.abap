* TS: src/abap/types/interface_definition.ts:22:1 InterfaceDefinition
CLASS zcl_lnt_interface_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_interface_definition.
    INTERFACES zif_lnt_union_865ccdda.
    DATA attributes TYPE REF TO zif_lnt_attributes.
    DATA implementing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA type_definitions TYPE REF TO zif_lnt_type_definitions.
    DATA method_definitions TYPE REF TO zif_lnt_method_definitions.
    DATA events_f95a TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA global_value TYPE abap_bool.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_super_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_implementing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_aliases RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_events RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_attributes RETURNING VALUE(result) TYPE REF TO zif_lnt_attributes.
    METHODS get_type_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_type_definitions.
    METHODS is_local RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_global RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_method_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definitions.
    METHODS check_method_name_length IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_interfaces_exists IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_structure_node.
    METHODS parse IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_structure_node.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_interface_definition IMPLEMENTATION.
  METHOD constructor.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_structure.
    DATA(t6) = CAST zcl_lnt_structure_node( t1 ).
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_interface ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |InterfaceDefinition, unexpected node type|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_statement_node.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    DATA(t20) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d522_37de97ed1215 ).
    t19 = t20->find_first_statement( i_type_9913 = t21 ).
    t18 = t19.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db ).
    t17 = t18->find_first_expression( i_type_9913 = t22 ).
    t16 = t17.
    t15 = t16->get_first_token( ).
    t14 = t15.
    DATA(t23) = CAST zcl_lnt_abstract_token( t14 ).
    DATA t24 TYPE string.
    DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
    t24 = t25->filename.
    super->constructor( i_token = t23 i_filename = t24 ).
    DATA t26 TYPE REF TO zcl_lnt_current_scope.
    DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
    t26 = t27->scope.
    DATA(t28) = CAST zcl_lnt_interface_definition( me ).
    t26->add_interface_definition( i_i = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    me->events_f95a = t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    me->implementing = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA(t34) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c ).
    t33 = t34->find_first_expression( i_type_9913 = t35 ).
    t32 = t33.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = CAST zcl_lnt_expression_node( t32 ).
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t38 = xsdbool( t39 = abap_false ).
    t31 = t38.
    me->global_value = t31.
    DATA t41 TYPE REF TO zcl_lnt_current_scope.
    DATA t42 TYPE REF TO zcl_lnt_current_scope.
    DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
    t42 = t43->scope.
    t41 = t42.
    DATA t44 TYPE string.
    DATA t45 TYPE string.
    DATA t46 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t47) = CAST zcl_lnt_abstract_token( t14 ).
    t46 = t47.
    DATA t48 TYPE string.
    DATA(t49) = CAST zcl_lnt_abstract_token( t46 ).
    t48 = t49->str.
    t45 = t48.
    t44 = t45.
    DATA t50 TYPE REF TO zcl_lnt_position.
    DATA t51 TYPE REF TO zcl_lnt_position.
    DATA t52 TYPE REF TO zcl_lnt_abstract_token.
    DATA t53 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t54) = CAST zcl_lnt_structure_node( t1 ).
    t53 = t54->get_first_token( ).
    t52 = t53.
    DATA t55 TYPE REF TO zcl_lnt_position.
    DATA(t56) = CAST zcl_lnt_abstract_token( t52 ).
    t55 = t56->start.
    t51 = t55.
    t50 = t51.
    DATA t57 TYPE string.
    DATA t58 TYPE string.
    DATA(t59) = CAST zcl_lnt_syntax_input( t2 ).
    t58 = t59->filename.
    t57 = t58.
    DATA t60 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t61 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t62) = |interface|.
    DATA(t63) = t44.
    DATA(t64) = t57.
    DATA(t65) = CAST zcl_lnt_position( t50 ).
    DATA t66 TYPE REF TO zcl_lnt_position.
    CLEAR t66.
    t61 = NEW zcl_lnt_iscope_identifier( i_stype = t62 i_sname = t63 i_filename = t64 i_start = t65 i_end = t66 ).
    t60 = t61.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t70) = CAST zcl_lnt_current_scope( t41 ).
    t69 = t70->current.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    t71 = t72.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = CAST zcl_lnt_spaghetti_scope_node( t68 ).
    IF t74 IS INITIAL.
      t73 = abap_true.
    ENDIF.
    t67 = t73.
    IF t67 = abap_true.
      DATA(t75) = CAST zcl_lnt_current_scope( t41 ).
      DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t76.
      DATA(t77) = abap_true.
      IF t77 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t79) = CAST zcl_lnt_iscope_identifier( t60 ).
        DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t80.
        t78 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t79 i_parent = t80 ).
        t76 = t78.
      ELSE.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t81.
        t76 = t81.
      ENDIF.
      t75->current = t76.
    ELSE.
      DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t85) = CAST zcl_lnt_current_scope( t41 ).
      t84 = t85->current.
      t83 = t84.
      t82 = t83.
      DATA(t86) = CAST zcl_lnt_current_scope( t41 ).
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t87.
      DATA(t88) = abap_true.
      IF t88 = abap_true.
        DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t89.
        DATA(t90) = CAST zcl_lnt_iscope_identifier( t60 ).
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA(t93) = CAST zcl_lnt_spaghetti_scope_node( t82 ).
          t91 = t93.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t94.
          t91 = t94.
        ENDIF.
        t89 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t90 i_parent = t91 ).
        t87 = t89.
      ELSE.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t95.
        t87 = t95.
      ENDIF.
      t86->current = t87.
      DATA(t96) = CAST zcl_lnt_spaghetti_scope_node( t82 ).
      DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t99) = CAST zcl_lnt_current_scope( t41 ).
      t98 = t99->current.
      t97 = t98.
      t96->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t97 ).
    ENDIF.
    DATA(t100) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t101) = CAST zcl_lnt_structure_node( t1 ).
    me->parse( i_input_967e = t100 i_node = t101 ).
    DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_current_scope.
    DATA(t104) = CAST zcl_lnt_syntax_input( t2 ).
    t103 = t104->scope.
    DATA t105 TYPE REF TO zcl_lnt_position.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_abstract_token.
    DATA t107 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t108) = CAST zcl_lnt_structure_node( t1 ).
    t107 = t108->get_last_token( ).
    t106 = t107.
    DATA t109 TYPE REF TO zcl_lnt_position.
    CLEAR t109.
    DATA t110 TYPE int8.
    DATA t111 TYPE REF TO zcl_lnt_position.
    DATA t112 TYPE REF TO zcl_lnt_position.
    DATA(t113) = CAST zcl_lnt_abstract_token( t106 ).
    t112 = t113->start.
    t111 = t112.
    DATA t114 TYPE int8.
    DATA(t115) = CAST zcl_lnt_position( t111 ).
    t114 = t115->row.
    t110 = t114.
    DATA t116 TYPE int8.
    DATA t117 TYPE int8.
    DATA t118 TYPE REF TO zcl_lnt_position.
    DATA t119 TYPE REF TO zcl_lnt_position.
    DATA(t120) = CAST zcl_lnt_abstract_token( t106 ).
    t119 = t120->start.
    t118 = t119.
    DATA t121 TYPE int8.
    DATA(t122) = CAST zcl_lnt_position( t118 ).
    t121 = t122->col.
    t117 = t121.
    DATA t123 TYPE int8.
    DATA t124 TYPE i.
    DATA t125 TYPE string.
    DATA(t126) = CAST zcl_lnt_abstract_token( t106 ).
    t125 = t126->str.
    DATA(t127) = strlen( t125 ).
    t124 = t127.
    t123 = t124.
    t116 = t117 + t123.
    IF t116 < range_int8_bound_min OR t116 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t109 = NEW zcl_lnt_position( i_row = t110 i_col = t116 ).
    t105 = t109.
    t102 = t103->pop( i_end = t105 ).
    DATA(t128) = CAST zcl_lnt_syntax_input( t2 ).
    me->check_method_name_length( i_input_967e = t128 ).
  ENDMETHOD.

  METHOD get_super_class.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD get_implementing.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->implementing ).
    result = t1.

  ENDMETHOD.

  METHOD get_aliases.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->aliases_62bb ).
    result = t1.

  ENDMETHOD.

  METHOD get_events.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->events_f95a ).
    result = t1.

  ENDMETHOD.

  METHOD get_attributes.
    DATA(t1) = CAST zif_lnt_attributes( me->attributes ).
    result = t1.

  ENDMETHOD.

  METHOD get_type_definitions.
    DATA(t1) = CAST zif_lnt_type_definitions( me->type_definitions ).
    result = t1.

  ENDMETHOD.

  METHOD is_local.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/interface_definition.ts:76|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_global.
    DATA(t1) = CONV abap_bool( me->global_value ).
    result = t1.

  ENDMETHOD.

  METHOD get_method_definitions.
    DATA(t1) = CAST zif_lnt_method_definitions( me->method_definitions ).
    result = t1.

  ENDMETHOD.

  METHOD check_method_name_length.
    DATA(t1) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = CAST zif_lnt_method_definitions( me->method_definitions ).
    t2 = t3->get_all( ).
    DATA t4 TYPE REF TO zif_lnt_method_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t2->items INTO t5.
      t4 ?= t5.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE i.
      DATA t8 TYPE string.
      DATA(t9) = CAST zif_lnt_method_definition( t4 ).
      t8 = t9->get_name( ).
      DATA(t10) = strlen( t8 ).
      t7 = t10.
      DATA(t11) = 30.
      t6 = xsdbool( t7 > t11 ).
      IF t6 = abap_true.
        DATA t12 TYPE string.
        DATA t13 TYPE string.
        DATA t14 TYPE string.
        DATA(t15) = |Method name "|.
        DATA t16 TYPE string.
        DATA(t17) = CAST zif_lnt_method_definition( t4 ).
        t16 = t17->get_name( ).
        DATA(t18) = strlen( t15 ).
        t14 = |{ t15 }{ t16 }|.
        DATA(t19) = |" is too long, maximum length is 30 characters|.
        DATA(t20) = strlen( t14 ).
        t13 = |{ t14 }{ t19 }|.
        t12 = t13.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t22) = CAST zcl_lnt_syntax_input( t1 ).
        t21 = t22->issues.
        DATA t23 TYPE REF TO zcl_lnt_issue.
        DATA(t24) = CAST zcl_lnt_syntax_input( t1 ).
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = CAST zif_lnt_method_definition( t4 ).
        t25 = t26->get_token( ).
        DATA(t27) = t12.
        DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t28.
        t23 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t24 i_token = t25 i_message_26cb = t27 i_fix = t28 ).
        APPEND t23 TO t21->items.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_interfaces_exists.
    DATA(t1) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t2) = CAST zcl_lnt_structure_node( i_node ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_structure_node( t2 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c ).
    t3 = t4->find_all_statements( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = CAST zcl_lnt_statement_node( t6 ).
      DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db ).
      t11 = t12->find_direct_expression( i_type_9913 = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = CAST zcl_lnt_expression_node( t10 ).
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t17.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zcl_lnt_abstract_token.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = CAST zcl_lnt_expression_node( t10 ).
        t19 = t20.
        t18 = t19->get_first_token( ).
        t14 = t18.
      ENDIF.
      t9 = t14.
      t8 = t9.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = CAST zcl_lnt_abstract_token( t8 ).
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = CAST zcl_lnt_abstract_token( t23 ).
      IF t27 IS INITIAL.
        t26 = abap_true.
      ENDIF.
      IF t26 = abap_true.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        t25 = t28.
      ELSE.
        DATA t29 TYPE string.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t32) = CAST zcl_lnt_abstract_token( t23 ).
        t31 = t32.
        t30 = t31.
        DATA t33 TYPE string.
        DATA(t34) = CAST zcl_lnt_abstract_token( t30 ).
        t33 = t34->str.
        t29 = t33.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t29.
        t25 = t35.
      ENDIF.
      t22 = t25.
      t21 = t22.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
      IF t37 IS BOUND.
        IF t37->has = abap_true.
          t36 = xsdbool( strlen( t37->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t36 = abap_true.
        DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( me->implementing ).
        DATA t39 TYPE REF TO zcl_lnt_iimplementing.
        DATA t40 TYPE string.
        DATA(t41) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
        t40 = t41->value.
        DATA(t42) = abap_false.
        t39 = NEW zcl_lnt_iimplementing( i_name = t40 i_partial = t42 ).
        APPEND t39 TO t38->items.
        DATA t43 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t43.
        DATA t44 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_current_scope.
        DATA t46 TYPE REF TO zcl_lnt_current_scope.
        DATA(t47) = CAST zcl_lnt_syntax_input( t1 ).
        t46 = t47->scope.
        t45 = t46.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t50) = abap_true.
        IF t50 = abap_true.
          DATA t51 TYPE string.
          DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t51 = t52->value.
          DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t53->has = abap_true.
          t53->value = t51.
          t49 = t53.
        ELSE.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          t49 = t54.
        ENDIF.
        t48 = t49.
        DATA t55 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t55.
        DATA(t56) = VALUE abap_bool( ).
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t58) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
        t57 = t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        t59 = t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = CAST zlnt_runtime_opti_4ba3bdccd169( t57 ).
        IF t62 IS INITIAL.
          t61 = abap_true.
        ELSEIF t62->has = abap_false.
          t61 = abap_true.
        ENDIF.
        t56 = t61.
        IF t56 = abap_true.
          DATA t63 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t63.
          t55 = t63.
        ELSE.
          DATA t64 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t64.
          DATA t65 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t65.
          DATA t66 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t66.
          DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t69) = CAST zcl_lnt_current_scope( t45 ).
          t68 = t69->current.
          t67 = t68.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t70.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = CAST zcl_lnt_spaghetti_scope_node( t67 ).
          IF t72 IS INITIAL.
            t71 = abap_true.
          ENDIF.
          IF t71 = abap_true.
            DATA t73 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t73.
            t70 = t73.
          ELSE.
            DATA t74 TYPE REF TO zif_lnt_interface_definition.
            DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t76) = CAST zcl_lnt_spaghetti_scope_node( t67 ).
            t75 = t76.
            DATA t77 TYPE string.
            DATA(t78) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
            t77 = t78->value.
            t74 = t75->find_interface_definition( i_name = t77 ).
            t70 = t74.
          ENDIF.
          t66 = t70.
          t65 = t66.
          DATA t79 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t79.
          DATA t80 TYPE abap_bool.
          DATA(t81) = CAST zif_lnt_interface_definition( t65 ).
          t80 = xsdbool( t81 IS BOUND ).
          IF t80 = abap_true.
            DATA t82 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t82.
            DATA(t83) = abap_true.
            IF t83 = abap_true.
              DATA t84 TYPE REF TO zif_lnt_interface_definition.
              DATA(t85) = CAST zif_lnt_interface_definition( t65 ).
              t84 = t85.
              t82 = t84.
            ELSE.
              DATA t86 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t86.
              t82 = t86.
            ENDIF.
            t79 = t82.
          ELSE.
            DATA t87 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t87.
            DATA t88 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t88.
            DATA t89 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t89.
            DATA t90 TYPE REF TO zif_lnt_object.
            CLEAR t90.
            DATA t91 TYPE REF TO zif_lnt_registry.
            DATA(t92) = CAST zcl_lnt_current_scope( t45 ).
            t91 = t92->reg.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            DATA(t94) = abap_true.
            IF t94 = abap_true.
              DATA(t95) = |INTF|.
              DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t96->has = abap_true.
              t96->value = t95.
              t93 = t96.
            ELSE.
              DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t97.
              t93 = t97.
            ENDIF.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA(t99) = abap_true.
            IF t99 = abap_true.
              DATA t100 TYPE string.
              DATA(t101) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
              t100 = t101->value.
              DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t102->has = abap_true.
              t102->value = t100.
              t98 = t102.
            ELSE.
              DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t103.
              t98 = t103.
            ENDIF.
            t90 = t91->get_object( i_type_9913 = t93 i_name = t98 ).
            DATA t104 TYPE REF TO object.
            t104 = t90.
            t89 ?= t104.
            t88 = t89.
            DATA t105 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t105.
            DATA t106 TYPE abap_bool.
            DATA(t107) = CAST zcl_lnt_ob_interface( t88 ).
            t106 = xsdbool( t107 IS BOUND ).
            IF t106 = abap_true.
              DATA t108 TYPE REF TO zif_lnt_interface_definition.
              DATA t109 TYPE REF TO zcl_lnt_ob_interface.
              DATA t110 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t111) = CAST zcl_lnt_ob_interface( t88 ).
              t110 = t111.
              t109 = t110.
              DATA t112 TYPE REF TO zif_lnt_interface_definition.
              DATA(t113) = CAST zcl_lnt_ob_interface( t109 ).
              t112 = t113->def.
              t108 = t112.
              t105 = t108.
            ELSE.
              DATA t114 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t114.
              t105 = t114.
            ENDIF.
            t87 = t105.
            t79 = t87.
          ENDIF.
          t64 = t79.
          t55 = t64.
        ENDIF.
        t44 = t55.
        t43 = t44.
        DATA t115 TYPE abap_bool.
        DATA(t116) = CAST zif_lnt_interface_definition( t43 ).
        t115 = xsdbool( t116 IS BOUND ).
        IF t115 = abap_true.
          DATA t117 TYPE REF TO zcl_lnt_current_scope.
          DATA(t118) = CAST zcl_lnt_syntax_input( t1 ).
          t117 = t118->scope.
          DATA(t119) = CAST zcl_lnt_abstract_token( t8 ).
          DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t120.
          DATA(t121) = abap_true.
          IF t121 = abap_true.
            DATA t122 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t123 TYPE REF TO zif_lnt_interface_definition.
            DATA(t124) = CAST zif_lnt_interface_definition( t43 ).
            t123 = t124.
            t122 ?= t123.
            t120 = t122.
          ELSE.
            DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t125.
            t120 = t125.
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t127) = |Object|.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t126->sval = t127.
          DATA(t128) = CONV string( me->filename ).
          DATA t129 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t129.
          DATA(t130) = abap_true.
          IF t130 = abap_true.
            DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t131.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            DATA(t133) = abap_true.
            IF t133 = abap_true.
              DATA t134 TYPE string.
              DATA t135 TYPE string.
              DATA(t136) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
              t135 = t136->value.
              DATA(t137) = strlen( t135 ).
              t134 = t135.
              IF t134 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t134 TO UPPER CASE.
              ELSE.
                t134 = zlnt_runtime_uppe_91169605024d=>full( t134 ).
              ENDIF.
              DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t138->has = abap_true.
              t138->value = t134.
              t132 = t138.
            ELSE.
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t139.
              t132 = t139.
            ENDIF.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            DATA(t141) = abap_true.
            IF t141 = abap_true.
              DATA(t142) = |INTF|.
              DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t143->has = abap_true.
              t143->value = t142.
              t140 = t143.
            ELSE.
              DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t144.
              t140 = t144.
            ENDIF.
            DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t145.
            t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t140 i_found_qualified = t145 ).
            t129 = t131.
          ELSE.
            DATA t146 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t146.
            t129 = t146.
          ENDIF.
          t117->add_reference( i_usage = t119 i_referencing = t120 i_type_9913 = t126 i_filename = t128 i_extra = t129 ).
        ELSE.
          DATA(t147) = VALUE abap_bool( ).
          DATA(t148) = VALUE abap_bool( ).
          DATA t149 TYPE REF TO zcl_lnt_ddic.
          DATA t150 TYPE REF TO zcl_lnt_ddic.
          DATA t151 TYPE REF TO zcl_lnt_current_scope.
          DATA t152 TYPE REF TO zcl_lnt_current_scope.
          DATA(t153) = CAST zcl_lnt_syntax_input( t1 ).
          t152 = t153->scope.
          t151 = t152.
          DATA t154 TYPE REF TO zcl_lnt_ddic.
          DATA t155 TYPE REF TO zif_lnt_registry.
          DATA(t156) = CAST zcl_lnt_current_scope( t151 ).
          t155 = t156->reg.
          t154 = NEW zcl_lnt_ddic( i_reg_f149 = t155 ).
          t150 = t154.
          t149 = t150.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA t160 TYPE string.
            DATA(t161) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
            t160 = t161->value.
            DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t162->has = abap_true.
            t162->value = t160.
            t158 = t162.
          ELSE.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            t158 = t163.
          ENDIF.
          t157 = t158.
          DATA(t164) = VALUE abap_bool( ).
          DATA(t165) = VALUE abap_bool( ).
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t167) = CAST zlnt_runtime_opti_4ba3bdccd169( t157 ).
          t166 = t167.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          t168 = t169.
          DATA(t170) = VALUE abap_bool( ).
          DATA(t171) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
          IF t171 IS INITIAL.
            t170 = abap_true.
          ELSEIF t171->has = abap_false.
            t170 = abap_true.
          ENDIF.
          t165 = t170.
          IF t165 = abap_true.
            DATA(t172) = abap_true.
            t164 = t172.
          ELSE.
            DATA t173 TYPE abap_bool.
            DATA t174 TYPE REF TO zif_lnt_registry.
            DATA(t175) = CAST zcl_lnt_ddic( t149 ).
            t174 = t175->reg.
            DATA t176 TYPE string.
            DATA(t177) = CAST zlnt_runtime_opti_4ba3bdccd169( t157 ).
            t176 = t177->value.
            t173 = t174->in_error_namespace( i_name = t176 ).
            t164 = t173.
          ENDIF.
          t148 = t164.
          DATA(t178) = abap_false.
          t147 = xsdbool( t148 = t178 ).
          IF t147 = abap_true.
            DATA t179 TYPE REF TO zcl_lnt_current_scope.
            DATA(t180) = CAST zcl_lnt_syntax_input( t1 ).
            t179 = t180->scope.
            DATA(t181) = CAST zcl_lnt_abstract_token( t8 ).
            DATA t182 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t182.
            DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t184) = |Object (Void)|.
            CREATE OBJECT t183.
            t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t183->sval = t184.
            DATA(t185) = CONV string( me->filename ).
            DATA t186 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t186.
            t179->add_reference( i_usage = t181 i_referencing = t182 i_type_9913 = t183 i_filename = t185 i_extra = t186 ).
          ELSE.
            DATA t187 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t187.
            DATA t188 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t188.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t189.
            DATA(t190) = abap_true.
            IF t190 = abap_true.
              DATA t191 TYPE string.
              DATA t192 TYPE string.
              DATA(t193) = |Interface |.
              DATA t194 TYPE string.
              DATA(t195) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
              t194 = t195->value.
              DATA(t196) = strlen( t193 ).
              t192 = |{ t193 }{ t194 }|.
              DATA(t197) = | unknown|.
              DATA(t198) = strlen( t192 ).
              t191 = |{ t192 }{ t197 }|.
              DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t199->has = abap_true.
              t199->value = t191.
              t189 = t199.
            ELSE.
              DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t200.
              t189 = t200.
            ENDIF.
            t188 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t189 ).
            t187 = NEW #( ).
            t187->payload = t188.
            RAISE EXCEPTION t187.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t2) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t3) = CAST zcl_lnt_syntax_input( t1 ).
    DATA(t4) = CAST zcl_lnt_structure_node( t2 ).
    me->check_interfaces_exists( i_input_967e = t3 i_node = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_object_oriented.
    DATA t6 TYPE REF TO zcl_lnt_object_oriented.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    DATA(t8) = CAST zcl_lnt_syntax_input( t1 ).
    t7 = t8->scope.
    t6 = NEW zcl_lnt_object_oriented( i_scope = t7 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t10) = CAST zcl_lnt_object_oriented( t5 ).
    DATA(t11) = CAST zcl_lnt_interface_definition( me ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    t9 = t10->from_interfaces( i_definition = t11 i_skip_34cc = t12 ).
    DATA t13 TYPE REF TO zcl_lnt_attributes.
    DATA(t14) = CAST zcl_lnt_structure_node( t2 ).
    DATA(t15) = CAST zcl_lnt_syntax_input( t1 ).
    t13 = NEW zcl_lnt_attributes( i_node = t14 i_input_967e = t15 ).
    me->attributes = t13.
    DATA t16 TYPE REF TO zif_lnt_type_definitions.
    DATA(t17) = CAST zif_lnt_attributes( me->attributes ).
    t16 = t17->get_types( ).
    me->type_definitions = t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zif_lnt_attributes( me->attributes ).
    t18 = t19->get_aliases( ).
    me->aliases_62bb = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = CAST zcl_lnt_structure_node( t2 ).
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d471_fd10061a16af ).
    t21 = t22->find_all_statements( i_type_9913 = t23 ).
    t20 = t21.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    LOOP AT t24->items INTO t26.
      t25 ?= t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = CAST zcl_lnt_statement_node( t25 ).
      DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0 ).
      t32 = t33->find_direct_expression( i_type_9913 = t34 ).
      t31 = t32.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = CAST zcl_lnt_expression_node( t31 ).
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      IF t36 = abap_true.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t35 = t38.
      ELSE.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        DATA(t41) = CAST zcl_lnt_expression_node( t31 ).
        t40 = t41.
        t39 = t40->concat_tokens( ).
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t39.
        t35 = t42.
      ENDIF.
      t30 = t35.
      t29 = t30.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = CAST zlnt_runtime_opti_4ba3bdccd169( t29 ).
      IF t45 IS INITIAL.
        t44 = abap_true.
      ELSEIF t45->has = abap_false.
        t44 = abap_true.
      ENDIF.
      IF t44 = abap_true.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t43 = t46.
      ELSE.
        DATA t47 TYPE string.
        DATA t48 TYPE string.
        DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t29 ).
        t48 = t49->value.
        DATA(t50) = strlen( t48 ).
        t47 = t48.
        IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t47 TO UPPER CASE.
        ELSE.
          t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
        ENDIF.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t47.
        t43 = t51.
      ENDIF.
      t28 = t43.
      t27 = t28.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zif_lnt_event_definition.
      CLEAR t53.
      DATA t54 TYPE REF TO zif_lnt_event_definition.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( me->events_f95a ).
      t55 = t56.
      DATA t57 TYPE i.
      DATA t58 TYPE i.
      DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
      t58 = lines( t59->items ).
      t57 = t58.
      DATA t60 TYPE i.
      DATA(t61) = 0.
      t60 = t61.
      DATA t62 TYPE REF TO zif_lnt_event_definition.
      DATA t63 TYPE REF TO zif_lnt_event_definition.
      CLEAR t63.
      t62 = t63.
      DO.
        DATA t64 TYPE abap_bool.
        DATA(t65) = t60.
        DATA(t66) = t57.
        t64 = xsdbool( t65 < t66 ).
        IF t64 = abap_false.
          EXIT.
        ENDIF.
        DATA t67 TYPE REF TO zif_lnt_event_definition.
        DATA t68 TYPE REF TO zif_lnt_event_definition.
        DATA t69 TYPE REF TO zif_lnt_event_definition.
        DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
        DATA(t71) = t60.
        DATA t72 TYPE REF TO object.
        t72 = t70->get( p0 = t71 ).
        t69 ?= t72.
        t68 = t69.
        t67 = t68.
        DATA(t73) = VALUE abap_bool( ).
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE string.
          DATA t77 TYPE string.
          DATA(t78) = CAST zif_lnt_event_definition( t67 ).
          t77 = t78->get_name( ).
          DATA(t79) = strlen( t77 ).
          t76 = t77.
          IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t76 TO UPPER CASE.
          ELSE.
            t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
          ENDIF.
          DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t80->has = abap_true.
          t80->value = t76.
          t74 = t80.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          t74 = t81.
        ENDIF.
        DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t27 ).
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        IF t74 IS BOUND.
          t83 = t74->has.
        ENDIF.
        IF t82 IS BOUND.
          t84 = t82->has.
        ENDIF.
        IF t83 = t84.
          IF t83 = abap_false.
            t73 = abap_true.
          ELSEIF t74->value = t82->value.
            t73 = abap_true.
          ENDIF.
        ENDIF.
        IF t73 = abap_true.
          DATA t85 TYPE REF TO zif_lnt_event_definition.
          CLEAR t85.
          DATA(t86) = abap_true.
          IF t86 = abap_true.
            DATA(t87) = CAST zif_lnt_event_definition( t67 ).
            t85 = t87.
          ELSE.
            DATA t88 TYPE REF TO zif_lnt_event_definition.
            CLEAR t88.
            t85 = t88.
          ENDIF.
          t62 = t85.
          EXIT.
        ENDIF.
        DATA t89 TYPE i.
        DATA(t90) = t60.
        DATA(t91) = 1.
        t89 = t90 + t91.
        t60 = t89.
      ENDDO.
      DATA(t92) = CAST zif_lnt_event_definition( t62 ).
      t54 = t92.
      t53 = t54.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      t93 = t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = CAST zif_lnt_event_definition( t53 ).
      IF t97 IS INITIAL.
        t96 = abap_true.
      ENDIF.
      t95 = xsdbool( t96 = abap_false ).
      t52 = t95.
      IF t52 = abap_true.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t99) = CAST zcl_lnt_syntax_input( t1 ).
        t98 = t99->issues.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        CLEAR t100.
        DATA(t101) = CAST zcl_lnt_syntax_input( t1 ).
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t103) = CAST zcl_lnt_statement_node( t25 ).
        t102 = t103->get_first_token( ).
        DATA(t104) = VALUE string( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = |Event |.
        DATA(t107) = VALUE string( ).
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t109) = CAST zlnt_runtime_opti_4ba3bdccd169( t27 ).
        t108 = t109.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = CAST zlnt_runtime_opti_4ba3bdccd169( t108 ).
        IF t112 IS INITIAL.
          t111 = abap_true.
        ELSEIF t112->has = abap_false.
          t111 = abap_true.
        ENDIF.
        IF t111 = abap_true.
          DATA(t113) = |undefined|.
          t110 = t113.
        ELSE.
          DATA t114 TYPE string.
          DATA(t115) = CAST zlnt_runtime_opti_4ba3bdccd169( t108 ).
          t114 = t115->value.
          t110 = t114.
        ENDIF.
        t107 = t110.
        DATA(t116) = strlen( t106 ).
        t105 = |{ t106 }{ t107 }|.
        DATA(t117) = | already defined|.
        DATA(t118) = strlen( t105 ).
        t104 = |{ t105 }{ t117 }|.
        DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t119.
        t100 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t101 i_token = t102 i_message_26cb = t104 i_fix = t119 ).
        APPEND t100 TO t98->items.
        CONTINUE.
      ENDIF.
      DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( me->events_f95a ).
      DATA t121 TYPE REF TO zcl_lnt_event_definition.
      DATA(t122) = CAST zcl_lnt_statement_node( t25 ).
      DATA(t123) = CONV int8( 3 ).
      DATA(t124) = CAST zcl_lnt_syntax_input( t1 ).
      t121 = NEW zcl_lnt_event_definition( i_node = t122 i_visibility_33e6 = t123 i_input_967e = t124 ).
      APPEND t121 TO t120->items.
    ENDLOOP.
    DATA t125 TYPE REF TO zcl_lnt_method_definitions.
    DATA(t126) = CAST zcl_lnt_structure_node( t2 ).
    DATA(t127) = CAST zcl_lnt_syntax_input( t1 ).
    t125 = NEW zcl_lnt_method_definitions( i_node = t126 i_input_967e = t127 ).
    me->method_definitions = t125.
    DATA(t128) = VALUE abap_bool( ).
    DATA t129 TYPE REF TO zif_lnt_method_definition.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_method_definition.
    CLEAR t130.
    DATA(t131) = CAST zif_lnt_method_definitions( me->method_definitions ).
    DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t132.
    DATA(t133) = abap_true.
    IF t133 = abap_true.
      DATA(t134) = |CONSTRUCTOR|.
      DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t135->has = abap_true.
      t135->value = t134.
      t132 = t135.
    ELSE.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      t132 = t136.
    ENDIF.
    t130 = t131->get_by_name( i_name = t132 ).
    t129 = t130.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    t137 = t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = VALUE abap_bool( ).
    DATA(t141) = CAST zif_lnt_method_definition( t129 ).
    IF t141 IS INITIAL.
      t140 = abap_true.
    ENDIF.
    t139 = xsdbool( t140 = abap_false ).
    t128 = t139.
    IF t128 = abap_true.
      DATA t142 TYPE REF TO zif_lnt_method_definition.
      CLEAR t142.
      DATA t143 TYPE REF TO zif_lnt_method_definition.
      CLEAR t143.
      DATA t144 TYPE REF TO zif_lnt_method_definition.
      CLEAR t144.
      DATA(t145) = CAST zif_lnt_method_definitions( me->method_definitions ).
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      DATA(t147) = abap_true.
      IF t147 = abap_true.
        DATA(t148) = |CONSTRUCTOR|.
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = t148.
        t146 = t149.
      ELSE.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        t146 = t150.
      ENDIF.
      t144 = t145->get_by_name( i_name = t146 ).
      t143 = t144.
      t142 = t143.
      DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t152) = CAST zcl_lnt_syntax_input( t1 ).
      t151 = t152->issues.
      DATA t153 TYPE REF TO zcl_lnt_issue.
      DATA(t154) = CAST zcl_lnt_syntax_input( t1 ).
      DATA t155 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t156) = CAST zif_lnt_method_definition( t142 ).
      t155 = t156->get_token( ).
      DATA(t157) = |Interfaces cannot have constructor methods|.
      DATA t158 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t158.
      t153 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t154 i_token = t155 i_message_26cb = t157 i_fix = t158 ).
      APPEND t153 TO t151->items.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1038_cab5fff85ba2.
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_attributes.
    result = me->get_attributes( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_type_definitions.
    result = me->get_type_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_method_definitions.
    result = me->get_method_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_events.
    result = me->get_events( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~is_global.
    result = me->is_global( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_super_class.
    result = me->get_super_class( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_aliases.
    result = me->get_aliases( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_implementing.
    result = me->get_implementing( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_aliases.
    result = me->get_aliases( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_attributes.
    result = me->get_attributes( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_events.
    result = me->get_events( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_implementing.
    result = me->get_implementing( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_method_definitions.
    result = me->get_method_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_super_class.
    result = me->get_super_class( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_type_definitions.
    result = me->get_type_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~is_global.
    result = me->is_global( ).
  ENDMETHOD.
ENDCLASS.
