* TS: src/abap/types/form_definition.ts:13:1 FormDefinition
CLASS zcl_lnt_ty_form_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_form_definition.
    DATA node TYPE REF TO zcl_lnt_statement_node.
    DATA table_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA using_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA changing_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_node TYPE REF TO zif_lnt_union_8249fcb1 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_tables_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_using_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_changing_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_tables IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_type IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_params IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_form_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_structure_node ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_statement_node.
      DATA t8 TYPE REF TO zcl_lnt_statement_node.
      DATA t9 TYPE REF TO zcl_lnt_structure_node.
      DATA(t10) = t1.
      DATA t11 TYPE REF TO object.
      t11 = t10.
      t9 ?= t11.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d500_8dad0123027e.
      t8 = t9->find_first_statement( i_type_9913 = t12 ).
      t7 = t8.
      t4 = t7.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      DATA(t14) = t1.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t4 = t13.
    ENDIF.
    t3 = t4.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = t3.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t17 = t18->find_first_expression( i_type_9913 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = t16.
    t24 = t25.
    t23 = t24->get_first_token( ).
    t22 = t23.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA(t27) = t22.
    t26 = t27->start.
    t21 = t26.
    t20 = t21.
    DATA t28 TYPE string.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = t16.
    t30 = t31.
    t29 = t30->concat_tokens( ).
    t28 = t29.
    DATA t32 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t33 TYPE REF TO zcl_lnt_lx_identifier.
    DATA(t34) = t20.
    DATA(t35) = t28.
    t33 = NEW zcl_lnt_lx_identifier( i_start = t34 i_str = t35 ).
    t32 = t33.
    DATA(t36) = t32.
    DATA t37 TYPE string.
    DATA(t38) = t2.
    t37 = t38->filename.
    super->constructor( i_token = t36 i_filename = t37 ).
    DATA(t39) = t3.
    me->node = t39.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t41) = t2.
    t40 = me->find_tables( i_input_967e = t41 ).
    me->table_parameters = t40.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tableParameters`.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d192_2948974be5fb.
    t43 = t44.
    DATA t45 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t46) = t2.
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA(t50) = me->node.
    DATA(t51) = t43.
    t49 = t50->find_first_expression( i_type_9913 = t51 ).
    t48 = t49.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA(t55) = t48.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    t56 = t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = t54.
    IF t59 IS INITIAL.
      t58 = abap_true.
    ENDIF.
    t53 = t58.
    IF t53 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t60.
      t52 = t60.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA(t63) = t48.
      t62 = t63.
      DATA(t64) = t45.
      t61 = me->find_params( i_node = t62 i_input_967e = t64 ).
      t52 = t61.
    ENDIF.
    t47 = t52.
    t42 = t47.
    me->using_parameters = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `usingParameters`.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d184_78321de353a4.
    t66 = t67.
    DATA t68 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t69) = t2.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zcl_lnt_expression_node.
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    DATA(t73) = me->node.
    DATA(t74) = t66.
    t72 = t73->find_first_expression( i_type_9913 = t74 ).
    t71 = t72.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zcl_lnt_expression_node.
    DATA(t78) = t71.
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
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t83.
      t75 = t83.
    ELSE.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      DATA(t86) = t71.
      t85 = t86.
      DATA(t87) = t68.
      t84 = me->find_params( i_node = t85 i_input_967e = t87 ).
      t75 = t84.
    ENDIF.
    t70 = t75.
    t65 = t70.
    me->changing_parameters = t65.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `changingParameters`.
  ENDMETHOD.

  METHOD get_tables_parameters.
    DATA(t1) = me->table_parameters.
    result = t1.

  ENDMETHOD.

  METHOD get_using_parameters.
    DATA(t1) = me->using_parameters.
    result = t1.

  ENDMETHOD.

  METHOD get_changing_parameters.
    DATA(t1) = me->changing_parameters.
    result = t1.

  ENDMETHOD.

  METHOD find_tables.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = me->node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d191_203ebd87c4e5.
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = t4.
    t17 = t18.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
    t16 = t17->find_all_expressions( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    DATA(t22) = VALUE i( ).
    DO.
      t16->load( ).
      IF t22 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t16->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE i.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t30) = t20.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t29.
      t31 = t32->children.
      t28 = t31.
      t27 ?= t28.
      t27->load( ).
      t26 = lines( t27->items ).
      DATA(t33) = 1.
      t25 = xsdbool( t26 = t33 ).
      IF t25 = abap_true.
        DATA(t34) = t2.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = t20.
        t36 = t37->get_first_token( ).
        DATA t38 TYPE string.
        DATA(t39) = t1.
        t38 = t39->filename.
        DATA t40 TYPE REF TO zcl_lnt_void_type.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = |FORM:UNTYPED|.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t43.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          t41 = t45.
        ENDIF.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t51.
          t50 = t51.
          DATA(t52) = t50.
          DATA(t53) = |form_parameter|.
          t52->load( ).
          APPEND t53 TO t52->items.
          t52->save( ).
          DATA(t54) = t50.
          t49 = t54.
          t47 = t49.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t55.
          t47 = t55.
        ENDIF.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        t35 = NEW zcl_lnt_typed_identifier( i_token = t36 i_filename = t38 i_type_9913 = t40 i_meta = t47 i_value = t56 ).
        t34->load( ).
        APPEND t35 TO t34->items.
        t34->save( ).
      ELSE.
        DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t59) = t20.
        DATA(t60) = t1.
        t58 = zcl_lnt_sy_form_param=>run_syntax( i_node = t59 i_input_967e = t60 ).
        t57 = t58.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t64) = t57.
        t63 = t64.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t66) = t63.
        t65 = t66->type_cba0.
        t62 = t65.
        t61 = t62.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA t70 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t71) = t20.
        DATA(t72) = |STRUCTURE|.
        t70 = t71->find_direct_token_by_text( i_text = t72 ).
        t69 = t70.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        t73 = t74.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = t69.
        IF t77 IS INITIAL.
          t76 = abap_true.
        ENDIF.
        t75 = xsdbool( t76 = abap_false ).
        t68 = t75.
        t67 = t68.
        DATA(t78) = t67.
        IF t78 = abap_true.
          DATA t79 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t79.
          DATA(t80) = t61.
          DATA t81 TYPE REF TO zcl_lnt_itable_options.
          DATA t82 TYPE abap_bool.
          DATA(t83) = abap_true.
          t82 = t83.
          DATA t84 TYPE string.
          DATA(t85) = |DEFAULT|.
          t84 = t85.
          DATA t86 TYPE REF TO zcl_lnt_itable_key.
          DATA t87 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t87.
          t86 = t87.
          DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t89.
          t88 = t89.
          t81 = NEW zcl_lnt_itable_options( i_with_header = t82 i_key_type = t84 i_primary_key = t86 i_secondary = t88 ).
          CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
          t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t90 ).
          ENDIF.
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t91 ).
          ENDIF.
          CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
          t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t92) = |withHeader|.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
          ENDIF.
          DATA(t94) = |keyType|.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
          ENDIF.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t79 = NEW zcl_lnt_ty_table_type( i_row_type = t80 i_options = t81 i_qualified_name = t96 i_description = t97 ).
          t61 = t79.
        ENDIF.
        DATA t98 TYPE abap_bool.
        DATA(t99) = t61.
        t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t98 = abap_true.
          DATA t100 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t100.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          DATA t102 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t103 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t104) = t61.
          t103 ?= t104.
          t102 = t103.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t106) = t102.
          t105 = t106->row_type.
          t101 = t105.
          DATA t107 TYPE REF TO zcl_lnt_itable_options.
          DATA t108 TYPE abap_bool.
          DATA(t109) = abap_true.
          t108 = t109.
          DATA t110 TYPE string.
          DATA(t111) = |DEFAULT|.
          t110 = t111.
          DATA t112 TYPE REF TO zcl_lnt_itable_key.
          DATA t113 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t113.
          t112 = t113.
          DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t115.
          t114 = t115.
          t107 = NEW zcl_lnt_itable_options( i_with_header = t108 i_key_type = t110 i_primary_key = t112 i_secondary = t114 ).
          CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
          t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t116 ).
          ENDIF.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t117 ).
          ENDIF.
          CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
          t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t118) = |withHeader|.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
          ENDIF.
          DATA(t120) = |keyType|.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t100 = NEW zcl_lnt_ty_table_type( i_row_type = t101 i_options = t107 i_qualified_name = t122 i_description = t123 ).
          t61 = t100.
        ELSE.
          DATA t124 TYPE abap_bool.
          DATA t125 TYPE abap_bool.
          DATA t126 TYPE abap_bool.
          DATA(t127) = t61.
          t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_unknown_type ).
          t125 = xsdbool( t126 = abap_false ).
          t124 = t125.
          IF t125 = abap_true.
            DATA t128 TYPE abap_bool.
            DATA t129 TYPE abap_bool.
            DATA(t130) = t61.
            t129 = xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_void_type ).
            t128 = xsdbool( t129 = abap_false ).
            t124 = t128.
          ENDIF.
          IF t124 = abap_true.
            DATA t131 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t132) = |FORM TABLES type must be table type|.
            DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t133.
            t131 = NEW zcl_lnt_unknown_type( i_error = t132 i_qualified_name = t133 ).
            t61 = t131.
          ENDIF.
        ENDIF.
        DATA(t134) = t2.
        DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t135.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t138) = t57.
        t137 = t138.
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t140) = t137.
        t139 = t140->token.
        t136 = t139.
        DATA t141 TYPE string.
        DATA(t142) = t1.
        t141 = t142->filename.
        DATA(t143) = t61.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t148) = t57.
          t147 = t148.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t150) = t147.
          t149 = t150->meta.
          t146 = t149.
          t144 = t146.
        ELSE.
          DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t151.
          t144 = t151.
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        t135 = NEW zcl_lnt_typed_identifier( i_token = t136 i_filename = t141 i_type_9913 = t143 i_meta = t144 i_value = t152 ).
        t134->load( ).
        APPEND t135 TO t134->items.
        t134->save( ).
      ENDIF.
    ENDDO.
    DATA(t153) = t2.
    result = t153.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = me->node.
    DATA(t6) = t1.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t3.
    t16 = t17.
    DATA(t18) = t2.
    t15 = me->find_params( i_node = t16 i_input_967e = t18 ).
    result = t15.

  ENDMETHOD.

  METHOD find_params.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
    t5 = t6->find_all_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t15) = t8.
      DATA(t16) = t2.
      t14 = zcl_lnt_sy_form_param=>run_syntax( i_node = t15 i_input_967e = t16 ).
      t13 = t14.
      DATA(t17) = t3.
      DATA(t18) = t13.
      t17->load( ).
      APPEND t18 TO t17->items.
      t17->save( ).
    ENDDO.
    DATA(t19) = t3.
    result = t19.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1057_6c3f2e767f11.
  ENDMETHOD.

  METHOD zif_lnt_form_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_tables_parameters.
    result = me->get_tables_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_using_parameters.
    result = me->get_using_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_changing_parameters.
    result = me->get_changing_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_form_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.
ENDCLASS.
