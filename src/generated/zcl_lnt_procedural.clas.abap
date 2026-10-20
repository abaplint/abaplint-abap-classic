* TS: src/abap/5_syntax/_procedural.ts:21:1 Procedural
CLASS zcl_lnt_procedural DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA scope TYPE REF TO zcl_lnt_current_scope.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_scope TYPE REF TO zcl_lnt_current_scope.
    METHODS add_all_form_definitions IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS find_include IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS find_function_group_scope IMPORTING i_fg TYPE REF TO zcl_lnt_function_group.
    METHODS find_function_scope IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_node TYPE REF TO zcl_lnt_statement_node i_filename TYPE string.
    METHODS add_function_scope IMPORTING i_definition TYPE REF TO zcl_lnt_fnctn_mdl_dfntn i_name_token TYPE REF TO zcl_lnt_abstract_token i_filename TYPE string i_ignore_if_already_exists TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS function_module_parameter_meta IMPORTING i_param TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_procedural IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    me->scope = i_scope.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
    me->reg = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD add_all_form_definitions.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    t3 = t1->structure.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_syntax_input.
      DATA t12 TYPE REF TO zcl_lnt_syntax_input.
      DATA t13 TYPE REF TO zcl_lnt_current_scope.
      DATA(t15) = me->reg.
      t13 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t15 i_obj_1ed0 = t2 ).
      DATA t17 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_file.
      t19 = t1.
      t17 = t19->filename.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      t12 = NEW zcl_lnt_syntax_input( i_scope = t13 i_filename = t17 i_issues = t23 i_deferred = t25 ).
      CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
      t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t27 ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t28 ).
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t29 ).
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t30 ).
      ENDIF.
      CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
      t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t32 ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t34 ).
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |issues| p1 = t36 ).
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |deferred| p1 = t38 ).
      ENDIF.
      t11 = t12.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zcl_lnt_structure_node.
      t40 = t3.
      DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
      t39 = t40->find_all_structures( i_type_9913 = t42 ).
      DATA t43 TYPE REF TO zcl_lnt_structure_node.
      DATA t44 TYPE REF TO object.
      DATA(t45) = VALUE i( ).
      DO.
        t39->load( ).
        IF t45 >= lines( t39->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t39->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA(t49) = me->scope.
        DATA t50 TYPE REF TO zif_lnt_form_definition.
        t50 = NEW zcl_lnt_ty_form_definition( i_node = t43 i_input_967e = t11 ).
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t56.
        t56->load( ).
        APPEND t50 TO t56->items.
        t56->save( ).
        t49->add_form_definitions( i_f = t56 ).
      ENDDO.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_structure_node.
    t61 = t1->structure.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t61 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zcl_lnt_structure_node.
    t76 = t61.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t74 = t76->find_all_statements( i_type_9913 = t78 ).
    DATA t80 TYPE REF TO zcl_lnt_statement_node.
    DATA t81 TYPE REF TO object.
    DATA(t82) = VALUE i( ).
    DO.
      t74->load( ).
      IF t82 >= lines( t74->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t74->items INDEX t82 + 1 INTO t81.
      t82 = t82 + 1.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t80.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t81.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t80 ?= t84.
      ELSE.
        t80 ?= t81.
      ENDIF.
      DATA t85 TYPE REF TO zcl_lnt_abap_file.
      t85 = me->find_include( i_node = t80 i_obj_1ed0 = t2 ).
      IF xsdbool( t85 IS BOUND ) = abap_true.
        me->add_all_form_definitions( i_file = t85 i_obj_1ed0 = t2 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_include.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t3 = i_node->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t15) = VALUE string( ).
    t15 = t3->get_first_token( )->str.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_function_group ) = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA t27 TYPE REF TO zcl_lnt_function_group.
      t27 ?= t2.
      t25 = t27->get_include( i_name = t15 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( xsdbool( t25 IS INITIAL ) = abap_false ) = abap_true.
        result = t25.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_abap_object.
    DATA t44 TYPE REF TO zcl_lnt_abap_object.
    DATA(t46) = me->reg.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = |PROG|.
    t47 = t50.
    DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t55->has = abap_true.
    t55->value = t15.
    DATA t57 TYPE REF TO object.
    t57 = t46->get_object( i_type_9913 = t47 i_name = t55 ).
    t44 ?= t57.
    t43 = t44.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t43 IS INITIAL ) = abap_false ) = abap_true.
      DATA t68 TYPE REF TO zcl_lnt_abap_file.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t69 = t43->parsed.
      DATA t75 TYPE REF TO object.
      t69->load( ).
      READ TABLE t69->items INDEX 1 INTO t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t76 ?= t75.
        DATA t77 TYPE REF TO object.
        t77 = t76->as_ref( ).
        t68 ?= t77.
      ELSE.
        t68 ?= t75.
      ENDIF.
      result = t68.
      RETURN.
    ENDIF.
    DATA t79 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t79 = me->reg->get_objects_by_type( i_type_9913 = |FUGR| )->iterate( ).
    DO.
      DATA t85 TYPE REF TO zcl_lnt_generator_17955b8b.
      t85 = t79->next( ).
      IF t85->done = abap_true.
        EXIT.
      ENDIF.
      DATA t90 TYPE REF TO zif_lnt_object.
      t90 = t85->value.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      t96 = abap_false.
      DATA t98 TYPE REF TO cx_root.
      CLEAR t98.
      TRY.
          t95 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_function_group ).
          t96 = abap_true.
        CATCH cx_root INTO t98.
          IF xsdbool( t96 = abap_false ) = abap_true.
            t79->close( ).
          ENDIF.
          RAISE EXCEPTION t98.
      ENDTRY.
      IF xsdbool( t96 = abap_false ) = abap_true.
        t79->close( ).
      ENDIF.
      IF t95 = abap_true.
        DATA t109 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t109.
        DATA t111 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t111.
        DATA(t112) = VALUE abap_bool( ).
        t112 = abap_false.
        DATA t114 TYPE REF TO cx_root.
        CLEAR t114.
        TRY.
            DATA t116 TYPE REF TO zcl_lnt_function_group.
            CLEAR t116.
            DATA t118 TYPE REF TO object.
            CLEAR t118.
            t118 = t90.
            t116 ?= t118.
            t111 = t116->get_include( i_name = t15 ).
            t112 = abap_true.
          CATCH cx_root INTO t114.
            IF xsdbool( t112 = abap_false ) = abap_true.
              t79->close( ).
            ENDIF.
            RAISE EXCEPTION t114.
        ENDTRY.
        IF xsdbool( t112 = abap_false ) = abap_true.
          t79->close( ).
        ENDIF.
        t109 = t111.
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = VALUE abap_bool( ).
        t130 = abap_false.
        DATA t132 TYPE REF TO cx_root.
        CLEAR t132.
        TRY.
            t129 = xsdbool( t109 IS BOUND ).
            t130 = abap_true.
          CATCH cx_root INTO t132.
            IF xsdbool( t130 = abap_false ) = abap_true.
              t79->close( ).
            ENDIF.
            RAISE EXCEPTION t132.
        ENDTRY.
        IF xsdbool( t130 = abap_false ) = abap_true.
          t79->close( ).
        ENDIF.
        IF t129 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t145.
          DATA(t146) = VALUE abap_bool( ).
          t146 = abap_false.
          DATA t148 TYPE REF TO cx_root.
          CLEAR t148.
          TRY.
              t145 = t109.
              t146 = abap_true.
            CATCH cx_root INTO t148.
              IF xsdbool( t146 = abap_false ) = abap_true.
                t79->close( ).
              ENDIF.
              RAISE EXCEPTION t148.
          ENDTRY.
          IF xsdbool( t146 = abap_false ) = abap_true.
            t79->close( ).
          ENDIF.
          t79->close( ).
          result = t145.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_function_group_scope.
    DATA(t1) = i_fg.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1->get_modules( ).
    DATA t4 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
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
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      IF xsdbool( t4->global_parameters = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t16.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t18 = t1->get_sequenced_files( ).
      DATA t21 TYPE i.
      t18->load( ).
      t21 = lines( t18->items ).
      DATA t24 TYPE i.
      t24 = 0.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t26.
      DO.
        IF xsdbool( t24 < t21 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t31 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t31.
        DATA t33 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t33.
        DATA t36 TYPE REF TO object.
        t36 = t18->get( p0 = t24 ).
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t33.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t36.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t33 ?= t38.
        ELSE.
          t33 ?= t36.
        ENDIF.
        t31 = t33.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE string.
        DATA t41 TYPE REF TO zcl_lnt_abstract_file.
        t41 = t31.
        t40 = t41->filename.
        DATA t45 TYPE string.
        DATA t46 TYPE string.
        DATA(t47) = |.fugr.|.
        DATA t48 TYPE string.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        t50 = t4->name.
        DATA(t55) = strlen( t50 ).
        t49 = t50.
        TRANSLATE t49 TO LOWER CASE.
        DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t56 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
        DATA(t60) = strlen( t49 ).
        t48 = t56->replace( p0 = t49 p1 = |#| ).
        DATA(t61) = strlen( t47 ).
        t46 = |{ t47 }{ t48 }|.
        DATA(t63) = strlen( t46 ).
        t45 = |{ t46 }{ |.abap| }|.
        DATA(t64) = strlen( t40 ).
        DATA t65 TYPE i.
        DATA(t66) = VALUE i( ).
        DATA(t67) = VALUE string( ).
        t65 = strlen( t45 ).
        IF t65 = 0.
          t39 = abap_true.
        ELSEIF t65 <= t64.
          t66 = 0.
          t66 = t64 - t65.
          t67 = t40+t66(t65).
          IF t67 = t45.
            t39 = abap_true.
          ENDIF.
        ENDIF.
        IF t39 = abap_true.
          t26 = t31.
          EXIT.
        ENDIF.
        DATA(t74) = 1.
        t24 = t24 + t74.
      ENDDO.
      t16 = t26.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF xsdbool( t16 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t83.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t85.
      DATA t87 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t87.
      DATA t89 TYPE REF TO zcl_lnt_structure_node.
      t89 = t16->structure.
      DATA t96 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t96.
      IF xsdbool( t89 IS INITIAL ) = abap_true.
        CLEAR t96.
      ELSE.
        DATA t101 TYPE REF TO zcl_lnt_structure_node.
        t101 = t89.
        DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d506_926db0fe2390.
        t96 = t101->find_first_statement( i_type_9913 = t103 ).
      ENDIF.
      t87 = t96.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t104.
      IF xsdbool( t87 IS INITIAL ) = abap_true.
        CLEAR t104.
      ELSE.
        DATA t109 TYPE REF TO zcl_lnt_statement_node.
        t109 = t87.
        DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
        t104 = t109->find_first_expression( i_type_9913 = t111 ).
      ENDIF.
      t85 = t104.
      DATA t112 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t112.
      IF xsdbool( t85 IS INITIAL ) = abap_true.
        CLEAR t112.
      ELSE.
        t112 = t85->get_first_token( ).
      ENDIF.
      t83 = t112.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF xsdbool( t83 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      t127 = t83.
      DATA t129 TYPE string.
      DATA t130 TYPE REF TO zcl_lnt_abstract_file.
      t130 = t16.
      t129 = t130->filename.
      DATA(t138) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t138->has = abap_true.
      t138->value = abap_true.
      me->add_function_scope( i_definition = t4 i_name_token = t127 i_filename = t129 i_ignore_if_already_exists = t138 ).
    ENDDO.
  ENDMETHOD.

  METHOD find_function_scope.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_node.
    DATA(t3) = i_filename.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_function_group ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |findFunctionScope, expected function group input|.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t8.
      TRY.
          t7->source_value ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7->source_value IS NOT BOUND.
        TRY.
            t14 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t7->source_value = t14->source( ).
        ENDIF.
        IF t7->source_value IS NOT BOUND.
          CREATE OBJECT t7->source_value.
          t7->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->source_value->oval = t8.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t16 = t2->find_first_expression( i_type_9913 = t21 )->get_first_token( ).
    DATA(t22) = VALUE string( ).
    t22 = t16->str.
    DATA t28 TYPE REF TO zcl_lnt_current_scope.
    t28 = me->scope.
    DATA t37 TYPE REF TO zcl_lnt_position.
    t37 = t2->get_first_token( )->start.
    DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t42 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t51 TYPE REF TO zcl_lnt_position.
    t42 = NEW zcl_lnt_iscope_identifier( i_stype = |function| i_sname = t22 i_filename = t3 i_start = t37 i_end = t51 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t57 ).
    ENDIF.
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t59 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t61 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t63 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t65 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t67 ).
    ENDIF.
    t41 = t42.
    DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t70 = t28->current.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t70 IS INITIAL ) = abap_true.
      DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t28->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t41 i_parent = t81 ).
      DELETE t28->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t83 = t28->current.
      t28->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t41 i_parent = t83 ).
      DELETE t28->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t99 = t28->current.
      t83->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t99 ).
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t103 TYPE REF TO zcl_lnt_function_group.
    t103 ?= t1.
    t101 = t103->get_module( i_name = t22 ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t101 IS INITIAL ) = abap_true.
      DATA t113 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t114 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t117) = VALUE string( ).
      DATA(t118) = VALUE string( ).
      DATA(t119) = |Function module definition "|.
      DATA(t121) = strlen( t119 ).
      t118 = |{ t119 }{ t22 }|.
      DATA(t123) = strlen( t118 ).
      t117 = |{ t118 }{ |" not found| }|.
      DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t124->has = abap_true.
      t124->value = t117.
      t114 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t124 ).
      t113 = NEW #( ).
      t113->payload = t114.
      CLEAR t113->source_value.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t127 TYPE REF TO object.
      t127 = t114.
      TRY.
          t113->source_value ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113->source_value IS NOT BOUND.
        TRY.
            t126 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t113->source_value = t126->source( ).
        ENDIF.
        IF t113->source_value IS NOT BOUND.
          CREATE OBJECT t113->source_value.
          t113->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->source_value->oval = t114.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t113.
    ENDIF.
    IF xsdbool( t101->global_parameters = abap_true ) = abap_true.
      RETURN.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    me->add_function_scope( i_definition = t101 i_name_token = t16 i_filename = t3 i_ignore_if_already_exists = t140 ).
  ENDMETHOD.

  METHOD add_function_scope.
    DATA(t1) = i_definition.
    DATA(t2) = i_name_token.
    DATA(t3) = i_filename.
    DATA(t4) = i_ignore_if_already_exists.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t10->has = abap_true.
      t10->value = abap_false.
      t4 = t10.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_ddic.
    DATA(t14) = me->reg.
    t12 = NEW zcl_lnt_ddic( i_reg_f149 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t15 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = t1->parameters.
    DATA t22 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t17->load( ).
      IF t24 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t17->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t31 = t22->type_cba0.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA(t36) = VALUE abap_bool( ).
      IF t31 IS INITIAL.
        t36 = abap_true.
      ELSEIF t31->has = abap_false.
        t36 = abap_true.
      ENDIF.
      t30 = t36.
      t29 = t30.
      IF t30 = abap_false.
        t29 = xsdbool( t22->type_cba0->value = || ).
      ENDIF.
      IF t29 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t44.
        t27 = zcl_lnt_any_type=>get_db65( i_input_967e = t44 ).
      ELSE.
        DATA(t46) = VALUE i( ).
        DATA t47 TYPE string.
        t47 = t22->type_cba0->value.
        DATA(t50) = |=>|.
        DATA(t51) = strlen( t47 ).
        IF t50 IS INITIAL.
          t46 = 0.
        ELSE.
          FIND t50 IN t47 MATCH OFFSET t46.
          IF sy-subrc <> 0.
            t46 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t46 >= 0 ) = abap_true.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t53.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t55 TYPE string.
          t55 = t22->type_cba0->value.
          DATA(t58) = |=>|.
          DATA(t59) = strlen( t55 ).
          DATA t60 TYPE i.
          DATA(t61) = VALUE i( ).
          DATA(t62) = VALUE i( ).
          DATA t63 TYPE i.
          DATA(t64) = VALUE string( ).
          CREATE OBJECT t54.
          t63 = strlen( t58 ).
          t60 = 0.
          IF t63 = 0.
            WHILE t60 < t59.
              t64 = t55+t60(1).
              APPEND t64 TO t54->items.
              t60 = t60 + 1.
            ENDWHILE.
          ELSE.
            WHILE t60 <= t59.
              FIND FIRST OCCURRENCE OF t58 IN SECTION OFFSET t60 OF t55 MATCH OFFSET t61.
              IF sy-subrc = 0.
                t62 = t61 - t60.
              ELSE.
                t61 = -1.
                t62 = t59 - t60.
              ENDIF.
              CLEAR t64.
              IF t62 > 0.
                t64 = t55+t60(t62).
              ENDIF.
              APPEND t64 TO t54->items.
              IF t61 < 0.
                EXIT.
              ENDIF.
              t60 = t61 + t63.
            ENDWHILE.
          ENDIF.
          t53 = t54.
          DATA(t66) = VALUE string( ).
          IF t53->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t53->load( ).
          READ TABLE t53->items INDEX 1 INTO t66.
          DATA(t68) = VALUE string( ).
          DATA(t69) = VALUE string( ).
          IF t53->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t53->load( ).
          READ TABLE t53->items INDEX 2 INTO t69.
          t68 = t69.
          DATA t71 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t71.
          DATA t73 TYPE REF TO zcl_lnt_current_scope.
          t73 = me->scope.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t66.
          t75 = t79.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t83 = t75.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          DATA(t87) = VALUE abap_bool( ).
          IF t83 IS INITIAL.
            t87 = abap_true.
          ELSEIF t83->has = abap_false.
            t87 = abap_true.
          ENDIF.
          IF t87 = abap_true.
            CLEAR t81.
          ELSE.
            DATA t91 TYPE REF TO zif_lnt_class_definition.
            CLEAR t91.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t96 TYPE string.
            t96 = t75->value.
            DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t98->has = abap_true.
            t98->value = t96.
            t93 = t98.
            DATA t100 TYPE REF TO zif_lnt_class_definition.
            CLEAR t100.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t102 = t93.
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t104.
            DATA(t106) = VALUE abap_bool( ).
            IF t102 IS INITIAL.
              t106 = abap_true.
            ELSEIF t102->has = abap_false.
              t106 = abap_true.
            ENDIF.
            IF t106 = abap_true.
              CLEAR t100.
            ELSE.
              DATA t110 TYPE REF TO zif_lnt_class_definition.
              CLEAR t110.
              DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t112 = t73->current.
              DATA t115 TYPE REF TO zif_lnt_class_definition.
              CLEAR t115.
              IF xsdbool( t112 IS INITIAL ) = abap_true.
                CLEAR t115.
              ELSE.
                DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t120 = t112.
                DATA t122 TYPE string.
                t122 = t93->value.
                t115 = t120->find_class_definition( i_name = t122 ).
              ENDIF.
              t110 = t115.
              DATA t124 TYPE REF TO zif_lnt_class_definition.
              CLEAR t124.
              IF xsdbool( t110 IS BOUND ) = abap_true.
                t124 = t110.
              ELSE.
                DATA t133 TYPE REF TO zcl_lnt_class.
                DATA t134 TYPE REF TO zcl_lnt_class.
                CLEAR t134.
                DATA t136 TYPE REF TO zif_lnt_registry.
                t136 = t73->reg.
                DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t138.
                DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t141->has = abap_true.
                t141->value = |CLAS|.
                t138 = t141.
                DATA t145 TYPE string.
                t145 = t93->value.
                DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t147->has = abap_true.
                t147->value = t145.
                DATA t149 TYPE REF TO object.
                t149 = t136->get_object( i_type_9913 = t138 i_name = t147 ).
                t134 ?= t149.
                t133 = t134.
                DATA t150 TYPE REF TO zif_lnt_class_definition.
                CLEAR t150.
                IF xsdbool( t133 IS BOUND ) = abap_true.
                  t150 = t133->gt_dfn_ins_src_obj_cls_ts_clss( ).
                ELSE.
                  CLEAR t150.
                ENDIF.
                t124 = t150.
              ENDIF.
              t100 = t124.
            ENDIF.
            t91 = t100.
            DATA t157 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t157.
            IF xsdbool( t91 IS BOUND ) = abap_true.
              DATA t160 TYPE REF TO zif_lnt_interface_definition.
              DATA t161 TYPE REF TO zif_lnt_class_definition.
              t161 = t91.
              t160 ?= t161.
              t157 = t160.
            ELSE.
              DATA t164 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t164.
              DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t169 TYPE string.
              t169 = t75->value.
              DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t171->has = abap_true.
              t171->value = t169.
              t166 = t171.
              DATA t173 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t173.
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t175 = t166.
              DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t177.
              DATA(t179) = VALUE abap_bool( ).
              IF t175 IS INITIAL.
                t179 = abap_true.
              ELSEIF t175->has = abap_false.
                t179 = abap_true.
              ENDIF.
              IF t179 = abap_true.
                CLEAR t173.
              ELSE.
                DATA t183 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t183.
                DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t185 = t73->current.
                DATA t188 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t188.
                IF xsdbool( t185 IS INITIAL ) = abap_true.
                  CLEAR t188.
                ELSE.
                  DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t193 = t185.
                  DATA t195 TYPE string.
                  t195 = t166->value.
                  t188 = t193->find_interface_definition( i_name = t195 ).
                ENDIF.
                t183 = t188.
                DATA t197 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t197.
                IF xsdbool( t183 IS BOUND ) = abap_true.
                  t197 = t183.
                ELSE.
                  DATA t206 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t207 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t207.
                  DATA t209 TYPE REF TO zif_lnt_registry.
                  t209 = t73->reg.
                  DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t211.
                  DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t214->has = abap_true.
                  t214->value = |INTF|.
                  t211 = t214.
                  DATA t218 TYPE string.
                  t218 = t166->value.
                  DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t220->has = abap_true.
                  t220->value = t218.
                  DATA t222 TYPE REF TO object.
                  t222 = t209->get_object( i_type_9913 = t211 i_name = t220 ).
                  t207 ?= t222.
                  t206 = t207.
                  DATA t223 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t223.
                  IF xsdbool( t206 IS BOUND ) = abap_true.
                    t223 = t206->def.
                  ELSE.
                    CLEAR t223.
                  ENDIF.
                  t197 = t223.
                ENDIF.
                t173 = t197.
              ENDIF.
              t164 = t173.
              DATA t233 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t233.
              IF xsdbool( t164 IS BOUND ) = abap_true.
                t233 = t164.
              ELSE.
                CLEAR t233.
              ENDIF.
              t157 = t233.
            ENDIF.
            t81 = t157.
          ENDIF.
          t71 = t81.
          IF xsdbool( t71 IS BOUND ) = abap_true.
            DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
            t244 = t71->get_type_definitions( )->get_by_name( i_name = t68 ).
            IF xsdbool( t244 IS BOUND ) = abap_true.
              DATA(t252) = me->scope.
              DATA t253 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t253.
              t253 = t2.
              DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
              t257 = t244.
              DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t259.
              CLEAR t259.
              CREATE OBJECT t259.
              t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t259->sval = |Type|.
              DATA t262 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t262.
              t252->add_reference( i_usage = t253 i_referencing = t257 i_type_9913 = t259 i_filename = t3 i_extra = t262 ).
              t27 = t244->type_cba0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      IF xsdbool( t27 IS INITIAL ) = abap_true.
        DATA t283 TYPE REF TO zcl_lnt_ddic.
        t283 = t12.
        DATA t285 TYPE string.
        t285 = t22->type_cba0->value.
        DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
        t290 = t283->lookup_no_void( i_name = t285 ).
        DATA t294 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t294.
        IF xsdbool( t290 IS BOUND ) = abap_true.
          t294 = t290.
        ELSE.
          DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t299.
          DATA t301 TYPE REF TO zif_lnt_registry.
          t301 = t283->reg.
          IF t301->in_error_namespace( i_name = t285 ) = abap_true.
            DATA t304 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t305 TYPE REF TO zcl_lnt_abstract_type.
            DATA t307 TYPE string.
            DATA(t310) = strlen( t285 ).
            t307 = |{ t285 }{ | not found, lookup| }|.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            t305 = NEW zcl_lnt_unknown_type( i_error = t307 i_qualified_name = t311 ).
            DATA t312 TYPE REF TO zif_lnt_object.
            CLEAR t312.
            t304 = NEW zcl_lnt_ilookup_result( i_type_9913 = t305 i_object_19cd = t312 ).
            CREATE OBJECT t304->zlnt_view_ownkeys_b0e8086400eb.
            t304->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t314.
            t304->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t314 ).
            CREATE OBJECT t304->zlnt_json_ownkeys_70e5fd461788.
            t304->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t316.
            t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t316 ).
            t299 = t304.
          ELSE.
            DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t318 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t318.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t320.
            DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t323->has = abap_true.
            t323->value = t285.
            t320 = t323.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t325.
            t318 = zcl_lnt_void_type=>get_db65( i_voided = t320 i_qualified_name = t325 ).
            DATA t326 TYPE REF TO zif_lnt_object.
            CLEAR t326.
            t317 = NEW zcl_lnt_ilookup_result( i_type_9913 = t318 i_object_19cd = t326 ).
            CREATE OBJECT t317->zlnt_view_ownkeys_b0e8086400eb.
            t317->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t328.
            t317->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t328 ).
            CREATE OBJECT t317->zlnt_json_ownkeys_70e5fd461788.
            t317->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t330.
            t317->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t330 ).
            t299 = t317.
          ENDIF.
          t294 = t299.
        ENDIF.
        t27 = t294->zlnt_view_read_sr_9be58e2d4893( ).
      ENDIF.
      IF xsdbool( t22->direction = |tables| ) = abap_true.
        DATA(t337) = t27.
        IF xsdbool( t337 IS BOUND AND t337 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
          DATA t339 TYPE REF TO zcl_lnt_abstract_type.
          DATA t341 TYPE REF TO zcl_lnt_ty_table_type.
          t341 ?= t27.
          t339 = t341->row_type.
          DATA t345 TYPE REF TO zcl_lnt_itable_options.
          DATA t350 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t350.
          DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t352.
          t345 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t350 i_secondary = t352 ).
          CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
          t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t354.
          t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t354 ).
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t355.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t355 ).
          ENDIF.
          CREATE OBJECT t345->zlnt_json_ownkeys_70e5fd461788.
          t345->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t357 ).
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t359 ).
          ENDIF.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t361.
          t27 = NEW zcl_lnt_ty_table_type( i_row_type = t339 i_options = t345 i_qualified_name = t360 i_description = t361 ).
        ELSE.
          DATA t363 TYPE REF TO zcl_lnt_abstract_type.
          t363 = t27.
          DATA t365 TYPE REF TO zcl_lnt_itable_options.
          DATA t370 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t370.
          DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t372.
          t365 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t370 i_secondary = t372 ).
          CREATE OBJECT t365->zlnt_view_ownkeys_b0e8086400eb.
          t365->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t374.
          t365->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t374 ).
          DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t375.
          IF t365->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t365->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t375 ).
          ENDIF.
          CREATE OBJECT t365->zlnt_json_ownkeys_70e5fd461788.
          t365->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t377.
          t365->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t377 ).
          DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t379.
          IF t365->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t365->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t379 ).
          ENDIF.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t380.
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t381.
          t27 = NEW zcl_lnt_ty_table_type( i_row_type = t363 i_options = t365 i_qualified_name = t380 i_description = t381 ).
        ENDIF.
      ENDIF.
      DATA(t382) = VALUE abap_bool( ).
      DATA t383 TYPE abap_bool.
      DATA t384 TYPE abap_bool.
      DATA(t385) = t27.
      t384 = xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_unknown_type ).
      t383 = t384.
      IF t384 = abap_false.
        DATA(t387) = t27.
        t383 = xsdbool( t387 IS BOUND AND t387 IS INSTANCE OF zcl_lnt_void_type ).
      ENDIF.
      t382 = t383.
      IF t383 = abap_true.
        DATA(t388) = VALUE abap_bool( ).
        DATA t389 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t389.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t390 = t22->type_cba0.
        DATA t393 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t393.
        DATA(t394) = VALUE abap_bool( ).
        IF t390 IS INITIAL.
          t394 = abap_true.
        ELSEIF t390->has = abap_false.
          t394 = abap_true.
        ENDIF.
        IF t394 = abap_true.
          CLEAR t393.
        ELSE.
          DATA(t397) = VALUE abap_bool( ).
          DATA(t398) = VALUE i( ).
          DATA t399 TYPE string.
          t399 = t390->value.
          DATA(t401) = |-|.
          DATA(t402) = strlen( t399 ).
          IF t401 IS INITIAL.
            t398 = 0.
          ELSE.
            FIND t401 IN t399 MATCH OFFSET t398.
            IF sy-subrc <> 0.
              t398 = -1.
            ENDIF.
          ENDIF.
          t397 = xsdbool( t398 >= 0 ).
          DATA(t404) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t404->has = abap_true.
          t404->value = t397.
          t393 = t404.
        ENDIF.
        t389 = t393.
        IF t389 IS BOUND.
          IF t389->has = abap_true.
            t388 = xsdbool( t389->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t382 = t388.
      ENDIF.
      IF t382 = abap_true.
        DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t405.
        DATA t406 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t407 TYPE string.
        t407 = t22->type_cba0->value.
        DATA(t410) = |-|.
        DATA(t411) = strlen( t407 ).
        DATA t412 TYPE i.
        DATA(t413) = VALUE i( ).
        DATA(t414) = VALUE i( ).
        DATA t415 TYPE i.
        DATA(t416) = VALUE string( ).
        CREATE OBJECT t406.
        t415 = strlen( t410 ).
        t412 = 0.
        IF t415 = 0.
          WHILE t412 < t411.
            t416 = t407+t412(1).
            APPEND t416 TO t406->items.
            t412 = t412 + 1.
          ENDWHILE.
        ELSE.
          WHILE t412 <= t411.
            FIND FIRST OCCURRENCE OF t410 IN SECTION OFFSET t412 OF t407 MATCH OFFSET t413.
            IF sy-subrc = 0.
              t414 = t413 - t412.
            ELSE.
              t413 = -1.
              t414 = t411 - t412.
            ENDIF.
            CLEAR t416.
            IF t414 > 0.
              t416 = t407+t412(t414).
            ENDIF.
            APPEND t416 TO t406->items.
            IF t413 < 0.
              EXIT.
            ENDIF.
            t412 = t413 + t415.
          ENDWHILE.
        ENDIF.
        t405 = t406.
        DATA(t417) = VALUE string( ).
        DATA(t418) = VALUE string( ).
        IF t405->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t405->load( ).
        READ TABLE t405->items INDEX 1 INTO t418.
        t417 = t418.
        DATA(t420) = VALUE string( ).
        DATA(t421) = VALUE string( ).
        IF t405->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t405->load( ).
        READ TABLE t405->items INDEX 2 INTO t421.
        t420 = t421.
        DATA t423 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t423.
        DATA t426 TYPE REF TO zcl_lnt_ddic.
        t426 = t12.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t432) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t432->has = abap_true.
        t432->value = t417.
        t428 = t432.
        DATA t434 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t434.
        DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t436 = t428.
        DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t438.
        DATA(t440) = VALUE abap_bool( ).
        IF t436 IS INITIAL.
          t440 = abap_true.
        ELSEIF t436->has = abap_false.
          t440 = abap_true.
        ENDIF.
        IF t440 = abap_true.
          DATA t442 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t443 TYPE REF TO zcl_lnt_abstract_type.
          DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t446.
          t443 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t446 ).
          DATA t447 TYPE REF TO zif_lnt_object.
          CLEAR t447.
          t442 = NEW zcl_lnt_ilookup_result( i_type_9913 = t443 i_object_19cd = t447 ).
          CREATE OBJECT t442->zlnt_view_ownkeys_b0e8086400eb.
          t442->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t449.
          t442->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t449 ).
          CREATE OBJECT t442->zlnt_json_ownkeys_70e5fd461788.
          t442->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t451.
          t442->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t451 ).
          t434 = t442.
        ELSE.
          DATA t453 TYPE REF TO zcl_lnt_table.
          DATA t454 TYPE REF TO zcl_lnt_table.
          CLEAR t454.
          DATA t456 TYPE REF TO zif_lnt_registry.
          t456 = t426->reg.
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t458.
          DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t461->has = abap_true.
          t461->value = |TABL|.
          t458 = t461.
          DATA t465 TYPE string.
          t465 = t428->value.
          DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t467->has = abap_true.
          t467->value = t465.
          DATA t469 TYPE REF TO object.
          t469 = t456->get_object( i_type_9913 = t458 i_name = t467 ).
          t454 ?= t469.
          t453 = t454.
          DATA t470 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t470.
          IF xsdbool( t453 IS BOUND ) = abap_true.
            DATA t473 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t474 TYPE REF TO zcl_lnt_abstract_type.
            DATA t476 TYPE REF TO zcl_lnt_table.
            t476 = t453.
            DATA t478 TYPE REF TO zif_lnt_registry.
            t478 = t426->reg.
            DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t480.
            DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t481.
            t474 = t476->parse_type( i_reg_f149 = t478 i_data_element = t480 i_description = t481 ).
            DATA t482 TYPE REF TO zif_lnt_object.
            t482 = t453.
            t473 = NEW zcl_lnt_ilookup_result( i_type_9913 = t474 i_object_19cd = t482 ).
            CREATE OBJECT t473->zlnt_view_ownkeys_b0e8086400eb.
            t473->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t485.
            t473->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t485 ).
            DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t486.
            IF t473->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t473->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t486 ).
            ENDIF.
            CREATE OBJECT t473->zlnt_json_ownkeys_70e5fd461788.
            t473->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t488.
            t473->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t488 ).
            DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t490.
            IF t473->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t473->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t490 ).
            ENDIF.
            t470 = t473.
          ELSE.
            DATA t492 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t497 TYPE string.
            t497 = t428->value.
            DATA(t499) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t499->has = abap_true.
            t499->value = t497.
            t492 = t426->lookup_ddls( i_name = t499 ).
            DATA t501 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t501.
            IF xsdbool( t492 IS BOUND ) = abap_true.
              t501 = t492.
            ELSE.
              DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t510 TYPE string.
              t510 = t428->value.
              DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t512->has = abap_true.
              t512->value = t510.
              t507 = t512.
              DATA t514 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t514.
              DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t516 = t507.
              DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t518.
              DATA(t520) = VALUE abap_bool( ).
              IF t516 IS INITIAL.
                t520 = abap_true.
              ELSEIF t516->has = abap_false.
                t520 = abap_true.
              ENDIF.
              IF t520 = abap_true.
                DATA t522 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t523 TYPE REF TO zcl_lnt_abstract_type.
                DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t526.
                t523 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t526 ).
                DATA t527 TYPE REF TO zif_lnt_object.
                CLEAR t527.
                t522 = NEW zcl_lnt_ilookup_result( i_type_9913 = t523 i_object_19cd = t527 ).
                CREATE OBJECT t522->zlnt_view_ownkeys_b0e8086400eb.
                t522->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t529.
                t522->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t529 ).
                CREATE OBJECT t522->zlnt_json_ownkeys_70e5fd461788.
                t522->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t531.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t531 ).
                t514 = t522.
              ELSE.
                DATA t533 TYPE REF TO zcl_lnt_table.
                DATA t534 TYPE REF TO zcl_lnt_table.
                CLEAR t534.
                DATA t536 TYPE REF TO zif_lnt_registry.
                t536 = t426->reg.
                DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t538.
                DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t541->has = abap_true.
                t541->value = |VIEW|.
                t538 = t541.
                DATA t545 TYPE string.
                t545 = t507->value.
                DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t547->has = abap_true.
                t547->value = t545.
                DATA t549 TYPE REF TO object.
                t549 = t536->get_object( i_type_9913 = t538 i_name = t547 ).
                t534 ?= t549.
                t533 = t534.
                DATA t550 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t550.
                IF xsdbool( t533 IS BOUND ) = abap_true.
                  DATA t553 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t554 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t556 TYPE REF TO zcl_lnt_table.
                  t556 = t533.
                  DATA t558 TYPE REF TO zif_lnt_registry.
                  t558 = t426->reg.
                  DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t560.
                  DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t561.
                  t554 = t556->parse_type( i_reg_f149 = t558 i_data_element = t560 i_description = t561 ).
                  DATA t562 TYPE REF TO zif_lnt_object.
                  t562 = t533.
                  t553 = NEW zcl_lnt_ilookup_result( i_type_9913 = t554 i_object_19cd = t562 ).
                  CREATE OBJECT t553->zlnt_view_ownkeys_b0e8086400eb.
                  t553->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t565.
                  t553->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t565 ).
                  DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t566.
                  IF t553->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t553->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t566 ).
                  ENDIF.
                  CREATE OBJECT t553->zlnt_json_ownkeys_70e5fd461788.
                  t553->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t568.
                  t553->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t568 ).
                  DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t570.
                  IF t553->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t553->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t570 ).
                  ENDIF.
                  t550 = t553.
                ELSE.
                  DATA t571 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t571.
                  DATA t573 TYPE REF TO zif_lnt_registry.
                  t573 = t426->reg.
                  DATA t575 TYPE string.
                  t575 = t507->value.
                  IF t573->in_error_namespace( i_name = t575 ) = abap_true.
                    DATA t577 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t578 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t580 TYPE string.
                    DATA t581 TYPE string.
                    t581 = t507->value.
                    DATA(t584) = strlen( t581 ).
                    t580 = |{ t581 }{ | not found, lookupView| }|.
                    DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t585.
                    t578 = NEW zcl_lnt_unknown_type( i_error = t580 i_qualified_name = t585 ).
                    DATA t586 TYPE REF TO zif_lnt_object.
                    CLEAR t586.
                    t577 = NEW zcl_lnt_ilookup_result( i_type_9913 = t578 i_object_19cd = t586 ).
                    CREATE OBJECT t577->zlnt_view_ownkeys_b0e8086400eb.
                    t577->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t588.
                    t577->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t588 ).
                    CREATE OBJECT t577->zlnt_json_ownkeys_70e5fd461788.
                    t577->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t590.
                    t577->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t590 ).
                    t571 = t577.
                  ELSE.
                    DATA t591 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t592 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t592.
                    DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t594.
                    DATA t596 TYPE string.
                    t596 = t507->value.
                    DATA(t598) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t598->has = abap_true.
                    t598->value = t596.
                    t594 = t598.
                    DATA t600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t600.
                    t592 = zcl_lnt_void_type=>get_db65( i_voided = t594 i_qualified_name = t600 ).
                    DATA t601 TYPE REF TO zif_lnt_object.
                    CLEAR t601.
                    t591 = NEW zcl_lnt_ilookup_result( i_type_9913 = t592 i_object_19cd = t601 ).
                    CREATE OBJECT t591->zlnt_view_ownkeys_b0e8086400eb.
                    t591->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t603.
                    t591->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t603 ).
                    CREATE OBJECT t591->zlnt_json_ownkeys_70e5fd461788.
                    t591->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t605.
                    t591->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t605 ).
                    t571 = t591.
                  ENDIF.
                  t550 = t571.
                ENDIF.
                t514 = t550.
              ENDIF.
              t501 = t514.
            ENDIF.
            t470 = t501.
          ENDIF.
          t434 = t470.
        ENDIF.
        t423 = t434->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t606 TYPE abap_bool.
        DATA t607 TYPE abap_bool.
        t607 = xsdbool( t423 IS BOUND ).
        t606 = t607.
        IF t607 = abap_true.
          t606 = xsdbool( t423 IS BOUND AND t423 IS INSTANCE OF zcl_lnt_structure_type ).
        ENDIF.
        IF t606 = abap_true.
          DATA t611 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t611.
          DATA t614 TYPE REF TO zcl_lnt_structure_type.
          t614 ?= t423.
          DATA t616 TYPE string.
          t616 = t420.
          DATA t619 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          t619 = t614->indexed.
          DATA t621 TYPE string.
          DATA(t623) = strlen( t616 ).
          t621 = t616.
          IF t621 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t621 TO UPPER CASE.
          ELSE.
            t621 = zlnt_runtime_uppe_91169605024d=>full( t621 ).
          ENDIF.
          t611 = t619->get( p0 = t621 ).
          IF xsdbool( t611 IS BOUND ) = abap_true.
            t27 = t611.
          ENDIF.
        ENDIF.
        DATA(t631) = VALUE abap_bool( ).
        DATA(t632) = VALUE abap_bool( ).
        DATA(t633) = VALUE abap_bool( ).
        DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t636.
        t633 = xsdbool( t27 IS INITIAL ).
        t632 = t633.
        IF t633 = abap_false.
          DATA(t641) = t27.
          t632 = xsdbool( t641 IS BOUND AND t641 IS INSTANCE OF zcl_lnt_unknown_type ).
        ENDIF.
        t631 = t632.
        IF t632 = abap_false.
          DATA(t643) = t27.
          t631 = xsdbool( t643 IS BOUND AND t643 IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        IF t631 = abap_true.
          DATA t644 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t644.
          DATA t646 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t646.
          DATA(t649) = me->scope.
          DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t654) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t654->has = abap_true.
          t654->value = t417.
          t650 = t654.
          DATA t656 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t656.
          DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t658 = t650.
          DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t660.
          DATA(t662) = VALUE abap_bool( ).
          IF t658 IS INITIAL.
            t662 = abap_true.
          ELSEIF t658->has = abap_false.
            t662 = abap_true.
          ENDIF.
          IF t662 = abap_true.
            CLEAR t656.
          ELSE.
            DATA t666 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t666 = t649->current.
            DATA t669 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t669.
            IF xsdbool( t666 IS INITIAL ) = abap_true.
              CLEAR t669.
            ELSE.
              DATA t674 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t674 = t666.
              DATA t676 TYPE string.
              t676 = t650->value.
              t669 = t674->find_type( i_name = t676 ).
            ENDIF.
            t656 = t669.
          ENDIF.
          t646 = t656.
          DATA t678 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t678.
          IF xsdbool( t646 IS INITIAL ) = abap_true.
            CLEAR t678.
          ELSE.
            t678 = t646->type_cba0.
          ENDIF.
          t644 = t678.
          DATA t688 TYPE abap_bool.
          DATA t689 TYPE abap_bool.
          t689 = xsdbool( t644 IS BOUND ).
          t688 = t689.
          IF t689 = abap_true.
            DATA t692 TYPE REF TO zcl_lnt_abstract_type.
            t692 = t644.
            t688 = xsdbool( t692 IS BOUND AND t692 IS INSTANCE OF zcl_lnt_structure_type ).
          ENDIF.
          IF t688 = abap_true.
            DATA t694 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t694.
            DATA t697 TYPE REF TO zcl_lnt_structure_type.
            t697 ?= t644.
            DATA t699 TYPE string.
            t699 = t420.
            DATA t702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t702 = t697->indexed.
            DATA t704 TYPE string.
            DATA(t706) = strlen( t699 ).
            t704 = t699.
            IF t704 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t704 TO UPPER CASE.
            ELSE.
              t704 = zlnt_runtime_uppe_91169605024d=>full( t704 ).
            ENDIF.
            t694 = t702->get( p0 = t704 ).
            IF xsdbool( t694 IS BOUND ) = abap_true.
              t27 = t694.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t714) = VALUE abap_bool( ).
        DATA t715 TYPE abap_bool.
        DATA t716 TYPE abap_bool.
        DATA(t717) = t27.
        t716 = xsdbool( t717 IS BOUND AND t717 IS INSTANCE OF zcl_lnt_unknown_type ).
        t715 = t716.
        IF t716 = abap_false.
          DATA(t719) = t27.
          t715 = xsdbool( t719 IS BOUND AND t719 IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t714 = t715.
        IF t715 = abap_true.
          DATA(t720) = VALUE abap_bool( ).
          DATA t721 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t721.
          DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t722 = t22->type_cba0.
          DATA t725 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t725.
          DATA(t726) = VALUE abap_bool( ).
          IF t722 IS INITIAL.
            t726 = abap_true.
          ELSEIF t722->has = abap_false.
            t726 = abap_true.
          ENDIF.
          IF t726 = abap_true.
            CLEAR t725.
          ELSE.
            DATA(t729) = VALUE abap_bool( ).
            DATA(t730) = VALUE i( ).
            DATA t731 TYPE string.
            t731 = t722->value.
            DATA(t733) = |=>|.
            DATA(t734) = strlen( t731 ).
            IF t733 IS INITIAL.
              t730 = 0.
            ELSE.
              FIND t733 IN t731 MATCH OFFSET t730.
              IF sy-subrc <> 0.
                t730 = -1.
              ENDIF.
            ENDIF.
            t729 = xsdbool( t730 >= 0 ).
            DATA(t736) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t736->has = abap_true.
            t736->value = t729.
            t725 = t736.
          ENDIF.
          t721 = t725.
          IF t721 IS BOUND.
            IF t721->has = abap_true.
              t720 = xsdbool( t721->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t714 = t720.
        ENDIF.
        IF t714 = abap_true.
          DATA t737 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t737.
          DATA t738 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t739 TYPE string.
          t739 = t22->type_cba0->value.
          DATA(t742) = |=>|.
          DATA(t743) = strlen( t739 ).
          DATA t744 TYPE i.
          DATA(t745) = VALUE i( ).
          DATA(t746) = VALUE i( ).
          DATA t747 TYPE i.
          DATA(t748) = VALUE string( ).
          CREATE OBJECT t738.
          t747 = strlen( t742 ).
          t744 = 0.
          IF t747 = 0.
            WHILE t744 < t743.
              t748 = t739+t744(1).
              APPEND t748 TO t738->items.
              t744 = t744 + 1.
            ENDWHILE.
          ELSE.
            WHILE t744 <= t743.
              FIND FIRST OCCURRENCE OF t742 IN SECTION OFFSET t744 OF t739 MATCH OFFSET t745.
              IF sy-subrc = 0.
                t746 = t745 - t744.
              ELSE.
                t745 = -1.
                t746 = t743 - t744.
              ENDIF.
              CLEAR t748.
              IF t746 > 0.
                t748 = t739+t744(t746).
              ENDIF.
              APPEND t748 TO t738->items.
              IF t745 < 0.
                EXIT.
              ENDIF.
              t744 = t745 + t747.
            ENDWHILE.
          ENDIF.
          t737 = t738.
          DATA(t750) = VALUE string( ).
          IF t737->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t737->load( ).
          READ TABLE t737->items INDEX 1 INTO t750.
          DATA(t753) = VALUE string( ).
          IF t737->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t737->load( ).
          READ TABLE t737->items INDEX 2 INTO t753.
          DATA t757 TYPE REF TO zcl_lnt_current_scope.
          t757 = me->scope.
          DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t763->has = abap_true.
          t763->value = t750.
          t759 = t763.
          DATA t765 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t765.
          DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t767 = t759.
          DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t769.
          DATA(t771) = VALUE abap_bool( ).
          IF t767 IS INITIAL.
            t771 = abap_true.
          ELSEIF t767->has = abap_false.
            t771 = abap_true.
          ENDIF.
          IF t771 = abap_true.
            CLEAR t765.
          ELSE.
            DATA t775 TYPE REF TO zif_lnt_class_definition.
            CLEAR t775.
            DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t780 TYPE string.
            t780 = t759->value.
            DATA(t782) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t782->has = abap_true.
            t782->value = t780.
            t777 = t782.
            DATA t784 TYPE REF TO zif_lnt_class_definition.
            CLEAR t784.
            DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t786 = t777.
            DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t788.
            DATA(t790) = VALUE abap_bool( ).
            IF t786 IS INITIAL.
              t790 = abap_true.
            ELSEIF t786->has = abap_false.
              t790 = abap_true.
            ENDIF.
            IF t790 = abap_true.
              CLEAR t784.
            ELSE.
              DATA t794 TYPE REF TO zif_lnt_class_definition.
              CLEAR t794.
              DATA t796 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t796 = t757->current.
              DATA t799 TYPE REF TO zif_lnt_class_definition.
              CLEAR t799.
              IF xsdbool( t796 IS INITIAL ) = abap_true.
                CLEAR t799.
              ELSE.
                DATA t804 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t804 = t796.
                DATA t806 TYPE string.
                t806 = t777->value.
                t799 = t804->find_class_definition( i_name = t806 ).
              ENDIF.
              t794 = t799.
              DATA t808 TYPE REF TO zif_lnt_class_definition.
              CLEAR t808.
              IF xsdbool( t794 IS BOUND ) = abap_true.
                t808 = t794.
              ELSE.
                DATA t817 TYPE REF TO zcl_lnt_class.
                DATA t818 TYPE REF TO zcl_lnt_class.
                CLEAR t818.
                DATA t820 TYPE REF TO zif_lnt_registry.
                t820 = t757->reg.
                DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t822.
                DATA(t825) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t825->has = abap_true.
                t825->value = |CLAS|.
                t822 = t825.
                DATA t829 TYPE string.
                t829 = t777->value.
                DATA(t831) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t831->has = abap_true.
                t831->value = t829.
                DATA t833 TYPE REF TO object.
                t833 = t820->get_object( i_type_9913 = t822 i_name = t831 ).
                t818 ?= t833.
                t817 = t818.
                DATA t834 TYPE REF TO zif_lnt_class_definition.
                CLEAR t834.
                IF xsdbool( t817 IS BOUND ) = abap_true.
                  t834 = t817->gt_dfn_ins_src_obj_cls_ts_clss( ).
                ELSE.
                  CLEAR t834.
                ENDIF.
                t808 = t834.
              ENDIF.
              t784 = t808.
            ENDIF.
            t775 = t784.
            DATA t841 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t841.
            IF xsdbool( t775 IS BOUND ) = abap_true.
              DATA t844 TYPE REF TO zif_lnt_interface_definition.
              DATA t845 TYPE REF TO zif_lnt_class_definition.
              t845 = t775.
              t844 ?= t845.
              t841 = t844.
            ELSE.
              DATA t848 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t848.
              DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t853 TYPE string.
              t853 = t759->value.
              DATA(t855) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t855->has = abap_true.
              t855->value = t853.
              t850 = t855.
              DATA t857 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t857.
              DATA t859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t859 = t850.
              DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t861.
              DATA(t863) = VALUE abap_bool( ).
              IF t859 IS INITIAL.
                t863 = abap_true.
              ELSEIF t859->has = abap_false.
                t863 = abap_true.
              ENDIF.
              IF t863 = abap_true.
                CLEAR t857.
              ELSE.
                DATA t867 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t867.
                DATA t869 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t869 = t757->current.
                DATA t872 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t872.
                IF xsdbool( t869 IS INITIAL ) = abap_true.
                  CLEAR t872.
                ELSE.
                  DATA t877 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t877 = t869.
                  DATA t879 TYPE string.
                  t879 = t850->value.
                  t872 = t877->find_interface_definition( i_name = t879 ).
                ENDIF.
                t867 = t872.
                DATA t881 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t881.
                IF xsdbool( t867 IS BOUND ) = abap_true.
                  t881 = t867.
                ELSE.
                  DATA t890 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t891 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t891.
                  DATA t893 TYPE REF TO zif_lnt_registry.
                  t893 = t757->reg.
                  DATA t895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t895.
                  DATA(t898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t898->has = abap_true.
                  t898->value = |INTF|.
                  t895 = t898.
                  DATA t902 TYPE string.
                  t902 = t850->value.
                  DATA(t904) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t904->has = abap_true.
                  t904->value = t902.
                  DATA t906 TYPE REF TO object.
                  t906 = t893->get_object( i_type_9913 = t895 i_name = t904 ).
                  t891 ?= t906.
                  t890 = t891.
                  DATA t907 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t907.
                  IF xsdbool( t890 IS BOUND ) = abap_true.
                    t907 = t890->def.
                  ELSE.
                    CLEAR t907.
                  ENDIF.
                  t881 = t907.
                ENDIF.
                t857 = t881.
              ENDIF.
              t848 = t857.
              DATA t917 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t917.
              IF xsdbool( t848 IS BOUND ) = abap_true.
                t917 = t848.
              ELSE.
                CLEAR t917.
              ENDIF.
              t841 = t917.
            ENDIF.
            t765 = t841.
          ENDIF.
          DATA t926 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t928 TYPE REF TO zcl_lnt_object_oriented.
          DATA(t929) = me->scope.
          t928 = NEW zcl_lnt_object_oriented( i_scope = t929 ).
          DATA(t934) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t934->has = abap_true.
          t934->value = t753.
          t926 = t928->search_type_name( i_def = t765 i_name = t934 ).
          IF xsdbool( t926 IS BOUND ) = abap_true.
            t27 = t926->type_cba0.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t947) = VALUE abap_bool( ).
      DATA t948 TYPE abap_bool.
      DATA t949 TYPE abap_bool.
      DATA(t950) = t27.
      t949 = xsdbool( t950 IS BOUND AND t950 IS INSTANCE OF zcl_lnt_unknown_type ).
      t948 = t949.
      IF t949 = abap_false.
        DATA(t952) = t27.
        t948 = xsdbool( t952 IS BOUND AND t952 IS INSTANCE OF zcl_lnt_void_type ).
      ENDIF.
      t947 = t948.
      IF t948 = abap_true.
        DATA(t953) = VALUE abap_bool( ).
        DATA t954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t954 = t22->type_cba0.
        IF t954 IS BOUND.
          IF t954->has = abap_true.
            t953 = xsdbool( strlen( t954->value ) > 0 ).
          ENDIF.
        ENDIF.
        t947 = t953.
      ENDIF.
      IF t947 = abap_true.
        DATA t956 TYPE REF TO zcl_lnt_abstract_type.
        DATA t959 TYPE string.
        t959 = t22->type_cba0->value.
        DATA t962 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t962.
        DATA t963 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t963.
        DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t964.
        t956 = t12->lookup_builtin_type( i_name = t959 i_length = t962 i_decimals_2eed = t963 i_qualified_name = t964 ).
        IF xsdbool( t956 IS BOUND ) = abap_true.
          t27 = t956.
        ENDIF.
        DATA(t972) = VALUE abap_bool( ).
        DATA(t973) = VALUE abap_bool( ).
        DATA(t974) = VALUE abap_bool( ).
        DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t977.
        t974 = xsdbool( t27 IS INITIAL ).
        t973 = t974.
        IF t974 = abap_false.
          DATA(t982) = t27.
          t973 = xsdbool( t982 IS BOUND AND t982 IS INSTANCE OF zcl_lnt_unknown_type ).
        ENDIF.
        t972 = t973.
        IF t973 = abap_false.
          DATA(t984) = t27.
          t972 = xsdbool( t984 IS BOUND AND t984 IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        IF t972 = abap_true.
          DATA t985 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t985.
          DATA t987 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t987.
          DATA(t990) = me->scope.
          DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t994 TYPE string.
          t994 = t22->type_cba0->value.
          DATA(t997) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t997->has = abap_true.
          t997->value = t994.
          t991 = t997.
          DATA t999 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t999.
          DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1001 = t991.
          DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1003.
          DATA(t1005) = VALUE abap_bool( ).
          IF t1001 IS INITIAL.
            t1005 = abap_true.
          ELSEIF t1001->has = abap_false.
            t1005 = abap_true.
          ENDIF.
          IF t1005 = abap_true.
            CLEAR t999.
          ELSE.
            DATA t1009 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t1009 = t990->current.
            DATA t1012 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1012.
            IF xsdbool( t1009 IS INITIAL ) = abap_true.
              CLEAR t1012.
            ELSE.
              DATA t1017 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t1017 = t1009.
              DATA t1019 TYPE string.
              t1019 = t991->value.
              t1012 = t1017->find_type( i_name = t1019 ).
            ENDIF.
            t999 = t1012.
          ENDIF.
          t987 = t999.
          DATA t1021 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1021.
          IF xsdbool( t987 IS INITIAL ) = abap_true.
            CLEAR t1021.
          ELSE.
            t1021 = t987->type_cba0.
          ENDIF.
          t985 = t1021.
          IF xsdbool( t985 IS BOUND ) = abap_true.
            t27 = t985.
          ENDIF.
        ENDIF.
        DATA(t1038) = VALUE abap_bool( ).
        DATA(t1039) = VALUE abap_bool( ).
        DATA(t1040) = VALUE abap_bool( ).
        DATA t1043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1043.
        t1040 = xsdbool( t27 IS INITIAL ).
        t1039 = t1040.
        IF t1040 = abap_false.
          DATA(t1048) = t27.
          t1039 = xsdbool( t1048 IS BOUND AND t1048 IS INSTANCE OF zcl_lnt_unknown_type ).
        ENDIF.
        t1038 = t1039.
        IF t1039 = abap_false.
          DATA(t1050) = t27.
          t1038 = xsdbool( t1050 IS BOUND AND t1050 IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        IF t1038 = abap_true.
          DATA t1051 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1051.
          DATA t1053 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1056 TYPE string.
          t1056 = t22->type_cba0->value.
          t1053 = me->scope->find_type_pool_type( i_name = t1056 ).
          DATA t1059 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1059.
          IF xsdbool( t1053 IS INITIAL ) = abap_true.
            CLEAR t1059.
          ELSE.
            t1059 = t1053->type_cba0.
          ENDIF.
          t1051 = t1059.
          IF xsdbool( t1051 IS BOUND ) = abap_true.
            t27 = t1051.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t1076 TYPE abap_bool.
      DATA t1077 TYPE abap_bool.
      DATA(t1078) = t27.
      t1077 = xsdbool( t1078 IS BOUND AND t1078 IS INSTANCE OF zcl_lnt_unknown_type ).
      t1076 = t1077.
      IF t1077 = abap_true.
        DATA t1082 TYPE REF TO zcl_lnt_ddic.
        DATA(t1083) = me->reg.
        t1082 = NEW zcl_lnt_ddic( i_reg_f149 = t1083 ).
        DATA t1084 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1084 = t22->type_cba0.
        DATA(t1087) = VALUE abap_bool( ).
        DATA t1089 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1089 = t1084.
        DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1091.
        DATA(t1093) = VALUE abap_bool( ).
        IF t1089 IS INITIAL.
          t1093 = abap_true.
        ELSEIF t1089->has = abap_false.
          t1093 = abap_true.
        ENDIF.
        IF t1093 = abap_true.
          t1087 = abap_true.
        ELSE.
          DATA t1097 TYPE REF TO zif_lnt_registry.
          t1097 = t1082->reg.
          DATA t1099 TYPE string.
          t1099 = t1084->value.
          t1087 = t1097->in_error_namespace( i_name = t1099 ).
        ENDIF.
        t1076 = xsdbool( t1087 = abap_false ).
      ENDIF.
      IF t1076 = abap_true.
        DATA t1103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1103 = t22->type_cba0.
        DATA t1105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1105.
        t27 = zcl_lnt_void_type=>get_db65( i_voided = t1103 i_qualified_name = t1105 ).
      ENDIF.
      DATA t1108 TYPE string.
      DATA t1109 TYPE string.
      t1109 = t22->name->value.
      DATA(t1112) = strlen( t1109 ).
      t1108 = t1109.
      IF t1108 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1108 TO UPPER CASE.
      ELSE.
        t1108 = zlnt_runtime_uppe_91169605024d=>full( t1108 ).
      ENDIF.
      IF t15->has( p0 = t1108 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t1114 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t1115 TYPE REF TO zcl_lnt_position.
      t1115 = t2->start.
      DATA t1120 TYPE string.
      t1120 = t22->name->value.
      t1114 = NEW zcl_lnt_lx_identifier( i_start = t1115 i_str = t1120 ).
      DATA t1123 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t1123.
      DATA t1127 TYPE REF TO zcl_lnt_abstract_type.
      t1127 = t27.
      DATA t1129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t1129.
      DATA t1132 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
      t1132 = t22.
      DATA t1135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t1135.
      IF xsdbool( t1132->direction = |importing| ) = abap_true.
        t1135->load( ).
        APPEND |function_module_importing| TO t1135->items.
        t1135->save( ).
      ELSE.
        IF xsdbool( t1132->direction = |exporting| ) = abap_true.
          t1135->load( ).
          APPEND |function_module_exporting| TO t1135->items.
          t1135->save( ).
        ELSE.
          IF xsdbool( t1132->direction = |changing| ) = abap_true.
            t1135->load( ).
            APPEND |function_module_changing| TO t1135->items.
            t1135->save( ).
          ELSE.
            IF xsdbool( t1132->direction = |tables| ) = abap_true.
              t1135->load( ).
              APPEND |function_module_tables| TO t1135->items.
              t1135->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1161) = VALUE abap_bool( ).
      DATA t1162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1162 = t1132->pass_by_value.
      IF t1162 IS BOUND.
        IF t1162->has = abap_true.
          t1161 = xsdbool( t1162->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t1161 = abap_true.
        t1135->load( ).
        APPEND |pass_by_value| TO t1135->items.
        t1135->save( ).
      ENDIF.
      t1129 = t1135.
      DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1168.
      t1123 = NEW zcl_lnt_typed_identifier( i_token = t1114 i_filename = t3 i_type_9913 = t1127 i_meta = t1129 i_value = t1168 ).
      IF xsdbool( t4->value = abap_true ) = abap_true.
        DATA t1175 TYPE REF TO zcl_lnt_current_scope.
        t1175 = me->scope.
        DATA t1177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1177 = t22->name.
        DATA t1180 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1180.
        DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1182 = t1177.
        DATA t1184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1184.
        DATA(t1186) = VALUE abap_bool( ).
        IF t1182 IS INITIAL.
          t1186 = abap_true.
        ELSEIF t1182->has = abap_false.
          t1186 = abap_true.
        ENDIF.
        IF t1186 = abap_true.
          CLEAR t1180.
        ELSE.
          DATA t1190 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1190.
          DATA t1192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t1192 = t1175->current.
          DATA t1195 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1195.
          IF xsdbool( t1192 IS INITIAL ) = abap_true.
            CLEAR t1195.
          ELSE.
            DATA t1200 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t1200 = t1192.
            DATA t1202 TYPE string.
            t1202 = t1177->value.
            t1195 = t1200->find_variable( i_name = t1202 ).
          ENDIF.
          t1190 = t1195.
          DATA t1204 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1204.
          IF xsdbool( t1190 IS BOUND ) = abap_true.
            t1204 = t1190.
          ELSE.
            DATA t1216 TYPE string.
            t1216 = t1177->value.
            DATA(t1218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1218->has = abap_true.
            t1218->value = t1216.
            t1204 = t1175->find_type_pool_constant( i_name = t1218 ).
          ENDIF.
          t1180 = t1204.
        ENDIF.
        DATA t1223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1223.
        IF xsdbool( t1180 IS INITIAL ) = abap_true.
          DATA t1228 TYPE string.
          t1228 = t22->name->value.
          me->scope->add_named_identifier( i_name = t1228 i_identifier = t1123 ).
        ENDIF.
      ELSE.
        DATA t1233 TYPE string.
        t1233 = t22->name->value.
        me->scope->add_named_identifier( i_name = t1233 i_identifier = t1123 ).
      ENDIF.
      DATA t1237 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t1237.
      DATA t1239 TYPE string.
      DATA t1240 TYPE string.
      t1240 = t22->name->value.
      DATA(t1243) = strlen( t1240 ).
      t1239 = t1240.
      IF t1239 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1239 TO UPPER CASE.
      ELSE.
        t1239 = zlnt_runtime_uppe_91169605024d=>full( t1239 ).
      ENDIF.
      t1237 = t15->add( p0 = t1239 ).

    ENDDO.
  ENDMETHOD.

  METHOD function_module_parameter_meta.
    DATA(t1) = i_param.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    IF xsdbool( t1->direction = |importing| ) = abap_true.
      t2->load( ).
      APPEND |function_module_importing| TO t2->items.
      t2->save( ).
    ELSE.
      IF xsdbool( t1->direction = |exporting| ) = abap_true.
        t2->load( ).
        APPEND |function_module_exporting| TO t2->items.
        t2->save( ).
      ELSE.
        IF xsdbool( t1->direction = |changing| ) = abap_true.
          t2->load( ).
          APPEND |function_module_changing| TO t2->items.
          t2->save( ).
        ELSE.
          IF xsdbool( t1->direction = |tables| ) = abap_true.
            t2->load( ).
            APPEND |function_module_tables| TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t29 = t1->pass_by_value.
    IF t29 IS BOUND.
      IF t29->has = abap_true.
        t28 = xsdbool( t29->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t28 = abap_true.
      t2->load( ).
      APPEND |pass_by_value| TO t2->items.
      t2->save( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d774_0b2655d82e4e.
  ENDMETHOD.
ENDCLASS.
