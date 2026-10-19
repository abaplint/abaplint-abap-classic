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
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_structure_node.
      DATA t11 TYPE REF TO object.
      t11 = t1.
      t9 ?= t11.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d500_8dad0123027e.
      t4 = t9->find_first_statement( i_type_9913 = t12 ).
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      DATA t15 TYPE REF TO object.
      t15 = t1.
      t13 ?= t15.
      t4 = t13.
    ENDIF.
    t3 = t4.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t16 = t3->find_first_expression( i_type_9913 = t19 ).
    DATA t26 TYPE REF TO zcl_lnt_position.
    t26 = t16->get_first_token( )->start.
    DATA t33 TYPE REF TO zcl_lnt_lx_identifier.
    t33 = NEW zcl_lnt_lx_identifier( i_start = t26 i_str = t16->concat_tokens( ) ).
    DATA t37 TYPE string.
    t37 = t2->filename.
    super->constructor( i_token = t33 i_filename = t37 ).
    me->node = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
    me->table_parameters = me->find_tables( i_input_967e = t2 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tableParameters`.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d192_2948974be5fb.
    t48 = me->node->find_first_expression( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t48 IS INITIAL ) = abap_true.
      CREATE OBJECT t52.
    ELSE.
      t52 = me->find_params( i_node = t48 i_input_967e = t2 ).
    ENDIF.
    me->using_parameters = t52.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `usingParameters`.
    DATA t71 TYPE REF TO zcl_lnt_expression_node.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d184_78321de353a4.
    t71 = me->node->find_first_expression( i_type_9913 = t74 ).
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t71 IS INITIAL ) = abap_true.
      CREATE OBJECT t75.
    ELSE.
      t75 = me->find_params( i_node = t71 i_input_967e = t2 ).
    ENDIF.
    me->changing_parameters = t75.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `changingParameters`.
  ENDMETHOD.

  METHOD get_tables_parameters.
    result = me->table_parameters.

  ENDMETHOD.

  METHOD get_using_parameters.
    result = me->using_parameters.

  ENDMETHOD.

  METHOD get_changing_parameters.
    result = me->changing_parameters.

  ENDMETHOD.

  METHOD find_tables.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d191_203ebd87c4e5.
    t4 = me->node->find_first_expression( i_type_9913 = t7 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    t17 = t4.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
    t16 = t17->find_all_expressions( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO object.
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
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_abstract_node.
      t29 = t20.
      t28 = t29->children.
      t27 ?= t28.
      t27->load( ).
      IF xsdbool( lines( t27->items ) = 1 ) = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        t36 = t20->get_first_token( ).
        DATA t38 TYPE string.
        t38 = t1->filename.
        DATA t40 TYPE REF TO zcl_lnt_void_type.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = |FORM:UNTYPED|.
        t41 = t44.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t47.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t50.
        t50->load( ).
        APPEND |form_parameter| TO t50->items.
        t50->save( ).
        t47 = t50.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        t35 = NEW zcl_lnt_typed_identifier( i_token = t36 i_filename = t38 i_type_9913 = t40 i_meta = t47 i_value = t56 ).
        t2->load( ).
        APPEND t35 TO t2->items.
        t2->save( ).
      ELSE.
        DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
        t57 = zcl_lnt_sy_form_param=>run_syntax( i_node = t20 i_input_967e = t1 ).
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        t61 = t57->type_cba0.
        DATA t70 TYPE REF TO zcl_lnt_abstract_token.
        t70 = t20->find_direct_token_by_text( i_text = |STRUCTURE| ).
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF xsdbool( xsdbool( t70 IS INITIAL ) = abap_false ) = abap_true.
          DATA t81 TYPE REF TO zcl_lnt_itable_options.
          DATA t86 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t86.
          DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t88.
          t81 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t86 i_secondary = t88 ).
          CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
          t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t90 ).
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t91 ).
          ENDIF.
          CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
          t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t93 ).
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t95 ).
          ENDIF.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t61 = NEW zcl_lnt_ty_table_type( i_row_type = t61 i_options = t81 i_qualified_name = t96 i_description = t97 ).
        ENDIF.
        DATA(t99) = t61.
        IF xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          DATA t103 TYPE REF TO zcl_lnt_ty_table_type.
          t103 ?= t61.
          t101 = t103->row_type.
          DATA t107 TYPE REF TO zcl_lnt_itable_options.
          DATA t112 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t112.
          DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t114.
          t107 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t112 i_secondary = t114 ).
          CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
          t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t116 ).
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t117 ).
          ENDIF.
          CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
          t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t119 ).
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t61 = NEW zcl_lnt_ty_table_type( i_row_type = t101 i_options = t107 i_qualified_name = t122 i_description = t123 ).
        ELSE.
          DATA t124 TYPE abap_bool.
          DATA t125 TYPE abap_bool.
          DATA(t127) = t61.
          t125 = xsdbool( xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
          t124 = t125.
          IF t125 = abap_true.
            DATA(t130) = t61.
            t124 = xsdbool( xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
          ENDIF.
          IF t124 = abap_true.
            DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t133.
            t61 = NEW zcl_lnt_unknown_type( i_error = |FORM TABLES type must be table type| i_qualified_name = t133 ).
          ENDIF.
        ENDIF.
        DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t135.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        t137 = t57.
        t136 = t137->token.
        DATA t141 TYPE string.
        t141 = t1->filename.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t144.
        t144 = t57->meta.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        t135 = NEW zcl_lnt_typed_identifier( i_token = t136 i_filename = t141 i_type_9913 = t61 i_meta = t144 i_value = t152 ).
        t2->load( ).
        APPEND t135 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_type.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = i_type_9913.
    t3 = me->node->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    result = me->find_params( i_node = t3 i_input_967e = t2 ).

  ENDMETHOD.

  METHOD find_params.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
    t5 = t1->find_all_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO object.
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
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      t14 = zcl_lnt_sy_form_param=>run_syntax( i_node = t8 i_input_967e = t2 ).
      t3->load( ).
      APPEND t14 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

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
