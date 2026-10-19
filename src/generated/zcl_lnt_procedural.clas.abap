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
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    t7 = t1->structure.
    t3 = t7.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t3 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_syntax_input.
      DATA t12 TYPE REF TO zcl_lnt_syntax_input.
      DATA t13 TYPE REF TO zcl_lnt_current_scope.
      DATA t14 TYPE REF TO zcl_lnt_current_scope.
      DATA(t15) = me->reg.
      t14 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t15 i_obj_1ed0 = t2 ).
      t13 = t14.
      DATA t17 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_file.
      t19 = t1.
      DATA t21 TYPE string.
      t21 = t19->filename.
      t17 = t21.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t24.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      t25 = t26.
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
      DATA(t31) = |scope|.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
      DATA(t33) = |filename|.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
      ENDIF.
      DATA(t35) = |issues|.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
      ENDIF.
      DATA(t37) = |deferred|.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
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
        DATA t51 TYPE REF TO zcl_lnt_ty_form_definition.
        t51 = NEW zcl_lnt_ty_form_definition( i_node = t43 i_input_967e = t11 ).
        t50 = t51.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t57.
        t56 = t57.
        t56->load( ).
        APPEND t50 TO t56->items.
        t56->save( ).
        t55 = t56.
        t49->add_form_definitions( i_f = t55 ).
      ENDDO.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_structure_node.
    DATA t65 TYPE REF TO zcl_lnt_structure_node.
    t65 = t1->structure.
    t61 = t65.
    DATA(t67) = VALUE abap_bool( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t67 = xsdbool( t61 IS INITIAL ).
    IF t67 = abap_true.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zcl_lnt_structure_node.
    t76 = t61.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t75 = t76->find_all_statements( i_type_9913 = t78 ).
    t74 = t75.
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
      DATA t86 TYPE REF TO zcl_lnt_abap_file.
      t86 = me->find_include( i_node = t80 i_obj_1ed0 = t2 ).
      t85 = t86.
      DATA t89 TYPE abap_bool.
      t89 = xsdbool( t85 IS BOUND ).
      IF t89 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_abap_file.
        t91 = t85.
        me->add_all_form_definitions( i_file = t91 i_obj_1ed0 = t2 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_include.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t4 = i_node->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    t19 = t3.
    t18 = t19->get_first_token( ).
    DATA(t21) = VALUE string( ).
    t21 = t18->str.
    t16 = t21.
    t15 = t16.
    DATA(t23) = VALUE abap_bool( ).
    t23 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_function_group ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      DATA t27 TYPE REF TO zcl_lnt_function_group.
      t27 ?= t2.
      t26 = t27->get_include( i_name = t15 ).
      t25 = t26.
      DATA(t30) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = xsdbool( t25 IS INITIAL ).
      t35 = xsdbool( t36 = abap_false ).
      t30 = t35.
      IF t30 = abap_true.
        result = t25.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_abap_object.
    DATA t44 TYPE REF TO zcl_lnt_abap_object.
    DATA t45 TYPE REF TO zif_lnt_object.
    DATA(t46) = me->reg.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t49) = |PROG|.
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = t49.
    t47 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t55->has = abap_true.
    t55->value = t15.
    t52 = t55.
    t45 = t46->get_object( i_type_9913 = t47 i_name = t52 ).
    DATA t57 TYPE REF TO object.
    t57 = t45.
    t44 ?= t57.
    t43 = t44.
    DATA(t58) = VALUE abap_bool( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = xsdbool( t43 IS INITIAL ).
    t63 = xsdbool( t64 = abap_false ).
    t58 = t63.
    IF t58 = abap_true.
      DATA t68 TYPE REF TO zcl_lnt_abap_file.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t73 = t43->parsed.
      t69 = t73.
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
    DATA t80 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t81 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t83) = |FUGR|.
    t81 = me->reg->get_objects_by_type( i_type_9913 = t83 ).
    t80 = t81->iterate( ).
    t79 = t80.
    DO.
      DATA t85 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t86.
      t86 = t79->next( ).
      t85 = t86.
      DATA(t88) = VALUE abap_bool( ).
      t88 = t85->done.
      IF t88 = abap_true.
        EXIT.
      ENDIF.
      DATA t90 TYPE REF TO zif_lnt_object.
      CLEAR t90.
      DATA t92 TYPE REF TO zif_lnt_object.
      CLEAR t92.
      t92 = t85->value.
      t90 = t92.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      t96 = abap_false.
      DATA t98 TYPE REF TO cx_root.
      CLEAR t98.
      TRY.
          DATA(t99) = VALUE abap_bool( ).
          t99 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_function_group ).
          t95 = t99.
          t96 = abap_true.
        CATCH cx_root INTO t98.
          DATA(t102) = VALUE abap_bool( ).
          t102 = xsdbool( t96 = abap_false ).
          IF t102 = abap_true.
            t79->close( ).
          ENDIF.
          RAISE EXCEPTION t98.
      ENDTRY.
      DATA(t105) = VALUE abap_bool( ).
      t105 = xsdbool( t96 = abap_false ).
      IF t105 = abap_true.
        t79->close( ).
      ENDIF.
      t94 = t95.
      IF t94 = abap_true.
        DATA t109 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t109.
        DATA t111 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t111.
        DATA(t112) = VALUE abap_bool( ).
        t112 = abap_false.
        DATA t114 TYPE REF TO cx_root.
        CLEAR t114.
        TRY.
            DATA t115 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t115.
            DATA t116 TYPE REF TO zcl_lnt_function_group.
            CLEAR t116.
            DATA t118 TYPE REF TO object.
            CLEAR t118.
            t118 = t90.
            t116 ?= t118.
            t115 = t116->get_include( i_name = t15 ).
            t111 = t115.
            t112 = abap_true.
          CATCH cx_root INTO t114.
            DATA(t121) = VALUE abap_bool( ).
            t121 = xsdbool( t112 = abap_false ).
            IF t121 = abap_true.
              t79->close( ).
            ENDIF.
            RAISE EXCEPTION t114.
        ENDTRY.
        DATA(t124) = VALUE abap_bool( ).
        t124 = xsdbool( t112 = abap_false ).
        IF t124 = abap_true.
          t79->close( ).
        ENDIF.
        t109 = t111.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = VALUE abap_bool( ).
        t130 = abap_false.
        DATA t132 TYPE REF TO cx_root.
        CLEAR t132.
        TRY.
            DATA(t133) = VALUE abap_bool( ).
            t133 = xsdbool( t109 IS BOUND ).
            t129 = t133.
            t130 = abap_true.
          CATCH cx_root INTO t132.
            DATA(t136) = VALUE abap_bool( ).
            t136 = xsdbool( t130 = abap_false ).
            IF t136 = abap_true.
              t79->close( ).
            ENDIF.
            RAISE EXCEPTION t132.
        ENDTRY.
        DATA(t139) = VALUE abap_bool( ).
        t139 = xsdbool( t130 = abap_false ).
        IF t139 = abap_true.
          t79->close( ).
        ENDIF.
        t128 = t129.
        IF t128 = abap_true.
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
              DATA(t155) = VALUE abap_bool( ).
              t155 = xsdbool( t146 = abap_false ).
              IF t155 = abap_true.
                t79->close( ).
              ENDIF.
              RAISE EXCEPTION t148.
          ENDTRY.
          DATA(t158) = VALUE abap_bool( ).
          t158 = xsdbool( t146 = abap_false ).
          IF t158 = abap_true.
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
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      t13 = t4->global_parameters.
      t10 = t13.
      t9 = xsdbool( t10 = abap_false ).
      IF t9 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t16.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t19 = t1->get_sequenced_files( ).
      t18 = t19.
      DATA t21 TYPE i.
      DATA t22 TYPE i.
      t18->load( ).
      t22 = lines( t18->items ).
      t21 = t22.
      DATA t24 TYPE i.
      t24 = 0.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t26.
      DO.
        DATA t28 TYPE abap_bool.
        t28 = xsdbool( t24 < t21 ).
        IF t28 = abap_false.
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
        DATA t43 TYPE string.
        t43 = t41->filename.
        t40 = t43.
        DATA t45 TYPE string.
        DATA t46 TYPE string.
        DATA(t47) = |.fugr.|.
        DATA t48 TYPE string.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t53 TYPE string.
        t53 = t4->name.
        t50 = t53.
        DATA(t55) = strlen( t50 ).
        t49 = t50.
        TRANSLATE t49 TO LOWER CASE.
        DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t56.
        DATA(t57) = `\/`.
        DATA(t58) = |g|.
        CREATE OBJECT t56 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t57 flags = t58 checked = abap_true.
        DATA(t59) = |#|.
        DATA(t60) = strlen( t49 ).
        t48 = t56->replace( p0 = t49 p1 = t59 ).
        DATA(t61) = strlen( t47 ).
        t46 = |{ t47 }{ t48 }|.
        DATA(t62) = |.abap|.
        DATA(t63) = strlen( t46 ).
        t45 = |{ t46 }{ t62 }|.
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
        DATA t72 TYPE i.
        DATA(t74) = 1.
        t72 = t24 + t74.
        t24 = t72.
      ENDDO.
      t16 = t26.
      DATA(t76) = VALUE abap_bool( ).
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t76 = xsdbool( t16 IS INITIAL ).
      IF t76 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t83.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t85.
      DATA t87 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t87.
      DATA t89 TYPE REF TO zcl_lnt_structure_node.
      DATA t94 TYPE REF TO zcl_lnt_structure_node.
      t94 = t16->structure.
      t89 = t94.
      DATA t96 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t96.
      DATA(t97) = xsdbool( t89 IS INITIAL ).
      IF t97 = abap_true.
        CLEAR t96.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_statement_node.
        DATA t101 TYPE REF TO zcl_lnt_structure_node.
        t101 = t89.
        DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d506_926db0fe2390.
        t100 = t101->find_first_statement( i_type_9913 = t103 ).
        t96 = t100.
      ENDIF.
      t87 = t96.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t104.
      DATA(t105) = xsdbool( t87 IS INITIAL ).
      IF t105 = abap_true.
        CLEAR t104.
      ELSE.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        DATA t109 TYPE REF TO zcl_lnt_statement_node.
        t109 = t87.
        DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
        t108 = t109->find_first_expression( i_type_9913 = t111 ).
        t104 = t108.
      ENDIF.
      t85 = t104.
      DATA t112 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t112.
      DATA(t113) = xsdbool( t85 IS INITIAL ).
      IF t113 = abap_true.
        CLEAR t112.
      ELSE.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        t117 = t85.
        t116 = t117->get_first_token( ).
        t112 = t116.
      ENDIF.
      t83 = t112.
      DATA(t119) = VALUE abap_bool( ).
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      t119 = xsdbool( t83 IS INITIAL ).
      IF t119 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      t127 = t83.
      DATA t129 TYPE string.
      DATA t130 TYPE REF TO zcl_lnt_abstract_file.
      t130 = t16.
      DATA t133 TYPE string.
      t133 = t130->filename.
      t129 = t133.
      DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t135.
      DATA(t138) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t138->has = abap_true.
      t138->value = abap_true.
      t135 = t138.
      me->add_function_scope( i_definition = t4 i_name_token = t127 i_filename = t129 i_ignore_if_already_exists = t135 ).
    ENDDO.
  ENDMETHOD.

  METHOD find_function_scope.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_node.
    DATA(t3) = i_filename.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_function_group ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = |findFunctionScope, expected function group input|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
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
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t19 = t2->find_first_expression( i_type_9913 = t21 ).
    t18 = t19.
    t17 = t18->get_first_token( ).
    t16 = t17.
    DATA(t22) = VALUE string( ).
    DATA(t23) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    t26 = t16->str.
    t23 = t26.
    t22 = t23.
    DATA t28 TYPE REF TO zcl_lnt_current_scope.
    t28 = me->scope.
    DATA(t30) = VALUE string( ).
    t30 = t22.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    t35 = t2->get_first_token( ).
    DATA t37 TYPE REF TO zcl_lnt_position.
    t37 = t35->start.
    DATA(t39) = VALUE string( ).
    t39 = t3.
    DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t42 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t43) = VALUE string( ).
    t43 = |function|.
    DATA(t45) = VALUE string( ).
    t45 = t30.
    DATA t47 TYPE REF TO zcl_lnt_position.
    t47 = t37.
    DATA(t49) = VALUE string( ).
    t49 = t39.
    DATA t51 TYPE REF TO zcl_lnt_position.
    t42 = NEW zcl_lnt_iscope_identifier( i_stype = t43 i_sname = t45 i_filename = t49 i_start = t47 i_end = t51 ).
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
    DATA(t58) = |stype|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    DATA(t60) = |sname|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
    ENDIF.
    DATA(t62) = |start|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
    ENDIF.
    DATA(t64) = |filename|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
    ENDIF.
    DATA(t66) = |end|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    t41 = t42.
    DATA(t68) = VALUE abap_bool( ).
    DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t70 = t28->current.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t68 = xsdbool( t70 IS INITIAL ).
    IF t68 = abap_true.
      DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t79 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t41 i_parent = t81 ).
      t28->current = t79.
      DELETE t28->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t85 = t28->current.
      t83 = t85.
      DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t92 = t83.
      t90 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t41 i_parent = t92 ).
      t28->current = t90.
      DELETE t28->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t99 = t28->current.
      t98 = t99.
      t83->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t98 ).
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t102 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t103 TYPE REF TO zcl_lnt_function_group.
    t103 ?= t1.
    t102 = t103->get_module( i_name = t22 ).
    t101 = t102.
    DATA(t106) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106 = xsdbool( t101 IS INITIAL ).
    IF t106 = abap_true.
      DATA t113 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t114 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t117) = VALUE string( ).
      DATA(t118) = VALUE string( ).
      DATA(t119) = |Function module definition "|.
      DATA(t121) = strlen( t119 ).
      t118 = |{ t119 }{ t22 }|.
      DATA(t122) = |" not found|.
      DATA(t123) = strlen( t118 ).
      t117 = |{ t118 }{ t122 }|.
      DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t124->has = abap_true.
      t124->value = t117.
      t115 = t124.
      t114 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t115 ).
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
    DATA(t128) = VALUE abap_bool( ).
    DATA(t129) = VALUE abap_bool( ).
    DATA(t133) = VALUE abap_bool( ).
    t133 = t101->global_parameters.
    t129 = t133.
    t128 = xsdbool( t129 = abap_true ).
    IF t128 = abap_true.
      RETURN.
    ENDIF.
    DATA t136 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    t136 = t101.
    DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    me->add_function_scope( i_definition = t136 i_name_token = t16 i_filename = t3 i_ignore_if_already_exists = t140 ).
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
    DATA t13 TYPE REF TO zcl_lnt_ddic.
    DATA(t14) = me->reg.
    t13 = NEW zcl_lnt_ddic( i_reg_f149 = t14 ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t15 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t20 = t1->parameters.
    t17 = t20.
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
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t32 = t22->type_cba0.
      t31 = t32.
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
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t40 = t22->type_cba0.
        t39 = t40->value.
        DATA(t42) = ||.
        t38 = xsdbool( t39 = t42 ).
        t29 = t38.
      ENDIF.
      IF t29 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_any_type.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t44.
        t43 = zcl_lnt_any_type=>get_db65( i_input_967e = t44 ).
        t27 = t43.
      ELSE.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE i( ).
        DATA t47 TYPE string.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t48 = t22->type_cba0.
        t47 = t48->value.
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
        DATA(t52) = 0.
        t45 = xsdbool( t46 >= t52 ).
        IF t45 = abap_true.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t53.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t55 TYPE string.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t56 = t22->type_cba0.
          t55 = t56->value.
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
          DATA(t65) = VALUE string( ).
          DATA(t66) = VALUE string( ).
          IF t53->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t53->load( ).
          CLEAR t66.
          READ TABLE t53->items INDEX 1 INTO t66.
          t65 = t66.
          DATA(t68) = VALUE string( ).
          DATA(t69) = VALUE string( ).
          IF t53->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t53->load( ).
          CLEAR t69.
          READ TABLE t53->items INDEX 2 INTO t69.
          t68 = t69.
          DATA t71 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t71.
          DATA t73 TYPE REF TO zcl_lnt_current_scope.
          t73 = me->scope.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t65.
          t75 = t79.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          DATA(t82) = VALUE abap_bool( ).
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
          t82 = t87.
          IF t82 = abap_true.
            CLEAR t81.
          ELSE.
            DATA t91 TYPE REF TO zif_lnt_class_definition.
            CLEAR t91.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            DATA t96 TYPE string.
            t96 = t75->value.
            DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t98->has = abap_true.
            t98->value = t96.
            t93 = t98.
            DATA t100 TYPE REF TO zif_lnt_class_definition.
            CLEAR t100.
            DATA(t101) = VALUE abap_bool( ).
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
            t101 = t106.
            IF t101 = abap_true.
              CLEAR t100.
            ELSE.
              DATA t110 TYPE REF TO zif_lnt_class_definition.
              CLEAR t110.
              DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t113 = t73->current.
              t112 = t113.
              DATA t115 TYPE REF TO zif_lnt_class_definition.
              CLEAR t115.
              DATA(t116) = xsdbool( t112 IS INITIAL ).
              IF t116 = abap_true.
                CLEAR t115.
              ELSE.
                DATA t119 TYPE REF TO zif_lnt_class_definition.
                DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t120 = t112.
                DATA t122 TYPE string.
                t122 = t93->value.
                t119 = t120->find_class_definition( i_name = t122 ).
                t115 = t119.
              ENDIF.
              t110 = t115.
              DATA t124 TYPE REF TO zif_lnt_class_definition.
              CLEAR t124.
              DATA t125 TYPE abap_bool.
              t125 = xsdbool( t110 IS BOUND ).
              IF t125 = abap_true.
                t124 = t110.
              ELSE.
                DATA t133 TYPE REF TO zcl_lnt_class.
                CLEAR t133.
                DATA t134 TYPE REF TO zcl_lnt_class.
                CLEAR t134.
                DATA t135 TYPE REF TO zif_lnt_object.
                CLEAR t135.
                DATA t136 TYPE REF TO zif_lnt_registry.
                t136 = t73->reg.
                DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t138.
                DATA(t140) = |CLAS|.
                DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t141->has = abap_true.
                t141->value = t140.
                t138 = t141.
                DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t143.
                DATA t145 TYPE string.
                t145 = t93->value.
                DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t147->has = abap_true.
                t147->value = t145.
                t143 = t147.
                t135 = t136->get_object( i_type_9913 = t138 i_name = t143 ).
                DATA t149 TYPE REF TO object.
                t149 = t135.
                t134 ?= t149.
                t133 = t134.
                DATA t150 TYPE REF TO zif_lnt_class_definition.
                CLEAR t150.
                DATA t151 TYPE abap_bool.
                t151 = xsdbool( t133 IS BOUND ).
                IF t151 = abap_true.
                  DATA t153 TYPE REF TO zif_lnt_class_definition.
                  DATA t154 TYPE REF TO zcl_lnt_class.
                  t154 = t133.
                  t153 = t154->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t150 = t153.
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
            DATA t158 TYPE abap_bool.
            t158 = xsdbool( t91 IS BOUND ).
            IF t158 = abap_true.
              DATA t160 TYPE REF TO zif_lnt_interface_definition.
              DATA t161 TYPE REF TO zif_lnt_class_definition.
              t161 = t91.
              t160 ?= t161.
              t157 = t160.
            ELSE.
              DATA t164 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t164.
              DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t166.
              DATA t169 TYPE string.
              t169 = t75->value.
              DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t171->has = abap_true.
              t171->value = t169.
              t166 = t171.
              DATA t173 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t173.
              DATA(t174) = VALUE abap_bool( ).
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
              t174 = t179.
              IF t174 = abap_true.
                CLEAR t173.
              ELSE.
                DATA t183 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t183.
                DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t186 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t186 = t73->current.
                t185 = t186.
                DATA t188 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t188.
                DATA(t189) = xsdbool( t185 IS INITIAL ).
                IF t189 = abap_true.
                  CLEAR t188.
                ELSE.
                  DATA t192 TYPE REF TO zif_lnt_interface_definition.
                  DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t193 = t185.
                  DATA t195 TYPE string.
                  t195 = t166->value.
                  t192 = t193->find_interface_definition( i_name = t195 ).
                  t188 = t192.
                ENDIF.
                t183 = t188.
                DATA t197 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t197.
                DATA t198 TYPE abap_bool.
                t198 = xsdbool( t183 IS BOUND ).
                IF t198 = abap_true.
                  t197 = t183.
                ELSE.
                  DATA t206 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t206.
                  DATA t207 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t207.
                  DATA t208 TYPE REF TO zif_lnt_object.
                  CLEAR t208.
                  DATA t209 TYPE REF TO zif_lnt_registry.
                  t209 = t73->reg.
                  DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t211.
                  DATA(t213) = |INTF|.
                  DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t214->has = abap_true.
                  t214->value = t213.
                  t211 = t214.
                  DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t216.
                  DATA t218 TYPE string.
                  t218 = t166->value.
                  DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t220->has = abap_true.
                  t220->value = t218.
                  t216 = t220.
                  t208 = t209->get_object( i_type_9913 = t211 i_name = t216 ).
                  DATA t222 TYPE REF TO object.
                  t222 = t208.
                  t207 ?= t222.
                  t206 = t207.
                  DATA t223 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t223.
                  DATA t224 TYPE abap_bool.
                  t224 = xsdbool( t206 IS BOUND ).
                  IF t224 = abap_true.
                    DATA t230 TYPE REF TO zif_lnt_interface_definition.
                    t230 = t206->def.
                    t223 = t230.
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
              DATA t234 TYPE abap_bool.
              t234 = xsdbool( t164 IS BOUND ).
              IF t234 = abap_true.
                t233 = t164.
              ELSE.
                CLEAR t233.
              ENDIF.
              t157 = t233.
            ENDIF.
            t81 = t157.
          ENDIF.
          t71 = t81.
          DATA t242 TYPE abap_bool.
          t242 = xsdbool( t71 IS BOUND ).
          IF t242 = abap_true.
            DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t246 TYPE REF TO zif_lnt_type_definitions.
            DATA t247 TYPE REF TO zif_lnt_interface_definition.
            t247 = t71.
            t246 = t247->get_type_definitions( ).
            t245 = t246->get_by_name( i_name = t68 ).
            t244 = t245.
            DATA t250 TYPE abap_bool.
            t250 = xsdbool( t244 IS BOUND ).
            IF t250 = abap_true.
              DATA(t252) = me->scope.
              DATA t253 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t253.
              t253 = t2.
              DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
              t257 = t244.
              DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t259.
              DATA(t260) = |Type|.
              CLEAR t259.
              CREATE OBJECT t259.
              t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t259->sval = t260.
              DATA t262 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t262.
              t252->add_reference( i_usage = t253 i_referencing = t257 i_type_9913 = t259 i_filename = t3 i_extra = t262 ).
              DATA t269 TYPE REF TO zcl_lnt_abstract_type.
              t269 = t244->type_cba0.
              t27 = t269.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t272) = VALUE abap_bool( ).
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      t272 = xsdbool( t27 IS INITIAL ).
      IF t272 = abap_true.
        DATA t281 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t281.
        DATA t282 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t282.
        DATA t283 TYPE REF TO zcl_lnt_ddic.
        t283 = t12.
        DATA t285 TYPE string.
        DATA t286 TYPE string.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t287 = t22->type_cba0.
        t286 = t287->value.
        t285 = t286.
        DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t291 TYPE REF TO zcl_lnt_ilookup_result.
        t291 = t283->lookup_no_void( i_name = t285 ).
        t290 = t291.
        DATA t294 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t294.
        DATA t295 TYPE abap_bool.
        t295 = xsdbool( t290 IS BOUND ).
        IF t295 = abap_true.
          t294 = t290.
        ELSE.
          DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t299.
          DATA t300 TYPE abap_bool.
          DATA t301 TYPE REF TO zif_lnt_registry.
          t301 = t283->reg.
          t300 = t301->in_error_namespace( i_name = t285 ).
          IF t300 = abap_true.
            DATA t304 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t305 TYPE REF TO zcl_lnt_abstract_type.
            DATA t306 TYPE REF TO zcl_lnt_unknown_type.
            DATA t307 TYPE string.
            DATA(t309) = | not found, lookup|.
            DATA(t310) = strlen( t285 ).
            t307 = |{ t285 }{ t309 }|.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            t306 = NEW zcl_lnt_unknown_type( i_error = t307 i_qualified_name = t311 ).
            t305 = t306.
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
            DATA(t315) = |type|.
            DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t316.
            t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
            t299 = t304.
          ELSE.
            DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t317.
            DATA t318 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t318.
            DATA t319 TYPE REF TO zcl_lnt_void_type.
            CLEAR t319.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t320.
            DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t323->has = abap_true.
            t323->value = t285.
            t320 = t323.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t325.
            t319 = zcl_lnt_void_type=>get_db65( i_voided = t320 i_qualified_name = t325 ).
            t318 = t319.
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
            DATA(t329) = |type|.
            DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t330.
            t317->zlnt_json_ownkeys_70e5fd461788->put( p0 = t329 p1 = t330 ).
            t299 = t317.
          ENDIF.
          t294 = t299.
        ENDIF.
        t282 = t294.
        t281 = t282->zlnt_view_read_sr_9be58e2d4893( ).
        t27 = t281.
      ENDIF.
      DATA t332 TYPE abap_bool.
      DATA t333 TYPE string.
      t333 = t22->direction.
      DATA(t335) = |tables|.
      t332 = xsdbool( t333 = t335 ).
      IF t332 = abap_true.
        DATA t336 TYPE abap_bool.
        DATA(t337) = t27.
        t336 = xsdbool( t337 IS BOUND AND t337 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t336 = abap_true.
          DATA t338 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t338.
          DATA t339 TYPE REF TO zcl_lnt_abstract_type.
          DATA t341 TYPE REF TO zcl_lnt_ty_table_type.
          t341 ?= t27.
          DATA t343 TYPE REF TO zcl_lnt_abstract_type.
          t343 = t341->row_type.
          t339 = t343.
          DATA t345 TYPE REF TO zcl_lnt_itable_options.
          DATA t346 TYPE abap_bool.
          t346 = abap_true.
          DATA t348 TYPE string.
          t348 = |DEFAULT|.
          DATA t350 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t350.
          DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t352.
          t345 = NEW zcl_lnt_itable_options( i_with_header = t346 i_key_type = t348 i_primary_key = t350 i_secondary = t352 ).
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
          DATA(t356) = |withHeader|.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
          DATA(t358) = |keyType|.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
          ENDIF.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t361.
          t338 = NEW zcl_lnt_ty_table_type( i_row_type = t339 i_options = t345 i_qualified_name = t360 i_description = t361 ).
          t27 = t338.
        ELSE.
          DATA t362 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t362.
          DATA t363 TYPE REF TO zcl_lnt_abstract_type.
          t363 = t27.
          DATA t365 TYPE REF TO zcl_lnt_itable_options.
          DATA t366 TYPE abap_bool.
          t366 = abap_true.
          DATA t368 TYPE string.
          t368 = |DEFAULT|.
          DATA t370 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t370.
          DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t372.
          t365 = NEW zcl_lnt_itable_options( i_with_header = t366 i_key_type = t368 i_primary_key = t370 i_secondary = t372 ).
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
          DATA(t376) = |withHeader|.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t377.
          t365->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
          DATA(t378) = |keyType|.
          DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t379.
          IF t365->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t365->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
          ENDIF.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t380.
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t381.
          t362 = NEW zcl_lnt_ty_table_type( i_row_type = t363 i_options = t365 i_qualified_name = t380 i_description = t381 ).
          t27 = t362.
        ENDIF.
      ENDIF.
      DATA(t382) = VALUE abap_bool( ).
      DATA t383 TYPE abap_bool.
      DATA t384 TYPE abap_bool.
      DATA(t385) = t27.
      t384 = xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_unknown_type ).
      t383 = t384.
      IF t384 = abap_false.
        DATA t386 TYPE abap_bool.
        DATA(t387) = t27.
        t386 = xsdbool( t387 IS BOUND AND t387 IS INSTANCE OF zcl_lnt_void_type ).
        t383 = t386.
      ENDIF.
      t382 = t383.
      IF t383 = abap_true.
        DATA(t388) = VALUE abap_bool( ).
        DATA t389 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t389.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t391 = t22->type_cba0.
        t390 = t391.
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
          DATA(t403) = 0.
          t397 = xsdbool( t398 >= t403 ).
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
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t408 = t22->type_cba0.
        t407 = t408->value.
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
        CLEAR t418.
        READ TABLE t405->items INDEX 1 INTO t418.
        t417 = t418.
        DATA(t420) = VALUE string( ).
        DATA(t421) = VALUE string( ).
        IF t405->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t405->load( ).
        CLEAR t421.
        READ TABLE t405->items INDEX 2 INTO t421.
        t420 = t421.
        DATA t423 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t423.
        DATA t424 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t424.
        DATA t425 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t425.
        DATA t426 TYPE REF TO zcl_lnt_ddic.
        t426 = t12.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t428.
        DATA(t432) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t432->has = abap_true.
        t432->value = t417.
        t428 = t432.
        DATA t434 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t434.
        DATA(t435) = VALUE abap_bool( ).
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
        t435 = t440.
        IF t435 = abap_true.
          DATA t442 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t443 TYPE REF TO zcl_lnt_abstract_type.
          DATA t444 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t445) = |undefined, lookupTableOrView|.
          DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t446.
          t444 = NEW zcl_lnt_unknown_type( i_error = t445 i_qualified_name = t446 ).
          t443 = t444.
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
          DATA(t450) = |type|.
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t451.
          t442->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
          t434 = t442.
        ELSE.
          DATA t453 TYPE REF TO zcl_lnt_table.
          CLEAR t453.
          DATA t454 TYPE REF TO zcl_lnt_table.
          CLEAR t454.
          DATA t455 TYPE REF TO zif_lnt_object.
          CLEAR t455.
          DATA t456 TYPE REF TO zif_lnt_registry.
          t456 = t426->reg.
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t458.
          DATA(t460) = |TABL|.
          DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t461->has = abap_true.
          t461->value = t460.
          t458 = t461.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t463.
          DATA t465 TYPE string.
          t465 = t428->value.
          DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t467->has = abap_true.
          t467->value = t465.
          t463 = t467.
          t455 = t456->get_object( i_type_9913 = t458 i_name = t463 ).
          DATA t469 TYPE REF TO object.
          t469 = t455.
          t454 ?= t469.
          t453 = t454.
          DATA t470 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t470.
          DATA t471 TYPE abap_bool.
          t471 = xsdbool( t453 IS BOUND ).
          IF t471 = abap_true.
            DATA t473 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t474 TYPE REF TO zcl_lnt_abstract_type.
            DATA t475 TYPE REF TO zcl_lnt_abstract_type.
            DATA t476 TYPE REF TO zcl_lnt_table.
            t476 = t453.
            DATA t478 TYPE REF TO zif_lnt_registry.
            t478 = t426->reg.
            DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t480.
            DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t481.
            t475 = t476->parse_type( i_reg_f149 = t478 i_data_element = t480 i_description = t481 ).
            t474 = t475.
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
            DATA(t487) = |type|.
            DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t488.
            t473->zlnt_json_ownkeys_70e5fd461788->put( p0 = t487 p1 = t488 ).
            DATA(t489) = |object|.
            DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t490.
            IF t473->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t473->zlnt_json_ownkeys_70e5fd461788->put( p0 = t489 p1 = t490 ).
            ENDIF.
            t470 = t473.
          ELSE.
            DATA t492 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t492.
            DATA t493 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t493.
            DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t495.
            DATA t497 TYPE string.
            t497 = t428->value.
            DATA(t499) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t499->has = abap_true.
            t499->value = t497.
            t495 = t499.
            t493 = t426->lookup_ddls( i_name = t495 ).
            t492 = t493.
            DATA t501 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t501.
            DATA t502 TYPE abap_bool.
            t502 = xsdbool( t492 IS BOUND ).
            IF t502 = abap_true.
              t501 = t492.
            ELSE.
              DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t507.
              DATA t510 TYPE string.
              t510 = t428->value.
              DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t512->has = abap_true.
              t512->value = t510.
              t507 = t512.
              DATA t514 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t514.
              DATA(t515) = VALUE abap_bool( ).
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
              t515 = t520.
              IF t515 = abap_true.
                DATA t522 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t523 TYPE REF TO zcl_lnt_abstract_type.
                DATA t524 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t525) = |undefined, lookupView|.
                DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t526.
                t524 = NEW zcl_lnt_unknown_type( i_error = t525 i_qualified_name = t526 ).
                t523 = t524.
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
                DATA(t530) = |type|.
                DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t531.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = t530 p1 = t531 ).
                t514 = t522.
              ELSE.
                DATA t533 TYPE REF TO zcl_lnt_table.
                CLEAR t533.
                DATA t534 TYPE REF TO zcl_lnt_table.
                CLEAR t534.
                DATA t535 TYPE REF TO zif_lnt_object.
                CLEAR t535.
                DATA t536 TYPE REF TO zif_lnt_registry.
                t536 = t426->reg.
                DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t538.
                DATA(t540) = |VIEW|.
                DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t541->has = abap_true.
                t541->value = t540.
                t538 = t541.
                DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t543.
                DATA t545 TYPE string.
                t545 = t507->value.
                DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t547->has = abap_true.
                t547->value = t545.
                t543 = t547.
                t535 = t536->get_object( i_type_9913 = t538 i_name = t543 ).
                DATA t549 TYPE REF TO object.
                t549 = t535.
                t534 ?= t549.
                t533 = t534.
                DATA t550 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t550.
                DATA t551 TYPE abap_bool.
                t551 = xsdbool( t533 IS BOUND ).
                IF t551 = abap_true.
                  DATA t553 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t554 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t555 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t556 TYPE REF TO zcl_lnt_table.
                  t556 = t533.
                  DATA t558 TYPE REF TO zif_lnt_registry.
                  t558 = t426->reg.
                  DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t560.
                  DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t561.
                  t555 = t556->parse_type( i_reg_f149 = t558 i_data_element = t560 i_description = t561 ).
                  t554 = t555.
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
                  DATA(t567) = |type|.
                  DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t568.
                  t553->zlnt_json_ownkeys_70e5fd461788->put( p0 = t567 p1 = t568 ).
                  DATA(t569) = |object|.
                  DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t570.
                  IF t553->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t553->zlnt_json_ownkeys_70e5fd461788->put( p0 = t569 p1 = t570 ).
                  ENDIF.
                  t550 = t553.
                ELSE.
                  DATA t571 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t571.
                  DATA t572 TYPE abap_bool.
                  DATA t573 TYPE REF TO zif_lnt_registry.
                  t573 = t426->reg.
                  DATA t575 TYPE string.
                  t575 = t507->value.
                  t572 = t573->in_error_namespace( i_name = t575 ).
                  IF t572 = abap_true.
                    DATA t577 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t578 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t579 TYPE REF TO zcl_lnt_unknown_type.
                    DATA t580 TYPE string.
                    DATA t581 TYPE string.
                    t581 = t507->value.
                    DATA(t583) = | not found, lookupView|.
                    DATA(t584) = strlen( t581 ).
                    t580 = |{ t581 }{ t583 }|.
                    DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t585.
                    t579 = NEW zcl_lnt_unknown_type( i_error = t580 i_qualified_name = t585 ).
                    t578 = t579.
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
                    DATA(t589) = |type|.
                    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t590.
                    t577->zlnt_json_ownkeys_70e5fd461788->put( p0 = t589 p1 = t590 ).
                    t571 = t577.
                  ELSE.
                    DATA t591 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t591.
                    DATA t592 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t592.
                    DATA t593 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t593.
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
                    t593 = zcl_lnt_void_type=>get_db65( i_voided = t594 i_qualified_name = t600 ).
                    t592 = t593.
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
                    DATA(t604) = |type|.
                    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t605.
                    t591->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
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
        t425 = t434.
        t424 = t425->zlnt_view_read_sr_9be58e2d4893( ).
        t423 = t424.
        DATA t606 TYPE abap_bool.
        DATA t607 TYPE abap_bool.
        t607 = xsdbool( t423 IS BOUND ).
        t606 = t607.
        IF t607 = abap_true.
          DATA t609 TYPE abap_bool.
          t609 = xsdbool( t423 IS BOUND AND t423 IS INSTANCE OF zcl_lnt_structure_type ).
          t606 = t609.
        ENDIF.
        IF t606 = abap_true.
          DATA t611 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t611.
          DATA t614 TYPE REF TO zcl_lnt_structure_type.
          t614 ?= t423.
          DATA t616 TYPE string.
          t616 = t420.
          DATA t618 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t618.
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
          t618 = t619->get( p0 = t621 ).
          t611 = t618.
          DATA t624 TYPE abap_bool.
          t624 = xsdbool( t611 IS BOUND ).
          IF t624 = abap_true.
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
          DATA t640 TYPE abap_bool.
          DATA(t641) = t27.
          t640 = xsdbool( t641 IS BOUND AND t641 IS INSTANCE OF zcl_lnt_unknown_type ).
          t632 = t640.
        ENDIF.
        t631 = t632.
        IF t632 = abap_false.
          DATA t642 TYPE abap_bool.
          DATA(t643) = t27.
          t642 = xsdbool( t643 IS BOUND AND t643 IS INSTANCE OF zcl_lnt_void_type ).
          t631 = t642.
        ENDIF.
        IF t631 = abap_true.
          DATA t644 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t644.
          DATA t646 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t646.
          DATA(t649) = me->scope.
          DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t650.
          DATA(t654) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t654->has = abap_true.
          t654->value = t417.
          t650 = t654.
          DATA t656 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t656.
          DATA(t657) = VALUE abap_bool( ).
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
          t657 = t662.
          IF t657 = abap_true.
            CLEAR t656.
          ELSE.
            DATA t666 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t667 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t667 = t649->current.
            t666 = t667.
            DATA t669 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t669.
            DATA(t670) = xsdbool( t666 IS INITIAL ).
            IF t670 = abap_true.
              CLEAR t669.
            ELSE.
              DATA t673 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t674 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t674 = t666.
              DATA t676 TYPE string.
              t676 = t650->value.
              t673 = t674->find_type( i_name = t676 ).
              t669 = t673.
            ENDIF.
            t656 = t669.
          ENDIF.
          t646 = t656.
          DATA t678 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t678.
          DATA(t679) = xsdbool( t646 IS INITIAL ).
          IF t679 = abap_true.
            CLEAR t678.
          ELSE.
            DATA t686 TYPE REF TO zcl_lnt_abstract_type.
            t686 = t646->type_cba0.
            t678 = t686.
          ENDIF.
          t644 = t678.
          DATA t688 TYPE abap_bool.
          DATA t689 TYPE abap_bool.
          t689 = xsdbool( t644 IS BOUND ).
          t688 = t689.
          IF t689 = abap_true.
            DATA t691 TYPE abap_bool.
            DATA t692 TYPE REF TO zcl_lnt_abstract_type.
            t692 = t644.
            t691 = xsdbool( t692 IS BOUND AND t692 IS INSTANCE OF zcl_lnt_structure_type ).
            t688 = t691.
          ENDIF.
          IF t688 = abap_true.
            DATA t694 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t694.
            DATA t697 TYPE REF TO zcl_lnt_structure_type.
            t697 ?= t644.
            DATA t699 TYPE string.
            t699 = t420.
            DATA t701 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t701.
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
            t701 = t702->get( p0 = t704 ).
            t694 = t701.
            DATA t707 TYPE abap_bool.
            t707 = xsdbool( t694 IS BOUND ).
            IF t707 = abap_true.
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
          DATA t718 TYPE abap_bool.
          DATA(t719) = t27.
          t718 = xsdbool( t719 IS BOUND AND t719 IS INSTANCE OF zcl_lnt_void_type ).
          t715 = t718.
        ENDIF.
        t714 = t715.
        IF t715 = abap_true.
          DATA(t720) = VALUE abap_bool( ).
          DATA t721 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t721.
          DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t723 = t22->type_cba0.
          t722 = t723.
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
            DATA(t735) = 0.
            t729 = xsdbool( t730 >= t735 ).
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
          DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t740 = t22->type_cba0.
          t739 = t740->value.
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
          DATA(t749) = VALUE string( ).
          DATA(t750) = VALUE string( ).
          IF t737->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t737->load( ).
          CLEAR t750.
          READ TABLE t737->items INDEX 1 INTO t750.
          t749 = t750.
          DATA(t752) = VALUE string( ).
          DATA(t753) = VALUE string( ).
          IF t737->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t737->load( ).
          CLEAR t753.
          READ TABLE t737->items INDEX 2 INTO t753.
          t752 = t753.
          DATA t757 TYPE REF TO zcl_lnt_current_scope.
          t757 = me->scope.
          DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t759.
          DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t763->has = abap_true.
          t763->value = t749.
          t759 = t763.
          DATA t765 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t765.
          DATA(t766) = VALUE abap_bool( ).
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
          t766 = t771.
          IF t766 = abap_true.
            CLEAR t765.
          ELSE.
            DATA t775 TYPE REF TO zif_lnt_class_definition.
            CLEAR t775.
            DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t777.
            DATA t780 TYPE string.
            t780 = t759->value.
            DATA(t782) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t782->has = abap_true.
            t782->value = t780.
            t777 = t782.
            DATA t784 TYPE REF TO zif_lnt_class_definition.
            CLEAR t784.
            DATA(t785) = VALUE abap_bool( ).
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
            t785 = t790.
            IF t785 = abap_true.
              CLEAR t784.
            ELSE.
              DATA t794 TYPE REF TO zif_lnt_class_definition.
              CLEAR t794.
              DATA t796 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t797 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t797 = t757->current.
              t796 = t797.
              DATA t799 TYPE REF TO zif_lnt_class_definition.
              CLEAR t799.
              DATA(t800) = xsdbool( t796 IS INITIAL ).
              IF t800 = abap_true.
                CLEAR t799.
              ELSE.
                DATA t803 TYPE REF TO zif_lnt_class_definition.
                DATA t804 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t804 = t796.
                DATA t806 TYPE string.
                t806 = t777->value.
                t803 = t804->find_class_definition( i_name = t806 ).
                t799 = t803.
              ENDIF.
              t794 = t799.
              DATA t808 TYPE REF TO zif_lnt_class_definition.
              CLEAR t808.
              DATA t809 TYPE abap_bool.
              t809 = xsdbool( t794 IS BOUND ).
              IF t809 = abap_true.
                t808 = t794.
              ELSE.
                DATA t817 TYPE REF TO zcl_lnt_class.
                CLEAR t817.
                DATA t818 TYPE REF TO zcl_lnt_class.
                CLEAR t818.
                DATA t819 TYPE REF TO zif_lnt_object.
                CLEAR t819.
                DATA t820 TYPE REF TO zif_lnt_registry.
                t820 = t757->reg.
                DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t822.
                DATA(t824) = |CLAS|.
                DATA(t825) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t825->has = abap_true.
                t825->value = t824.
                t822 = t825.
                DATA t827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t827.
                DATA t829 TYPE string.
                t829 = t777->value.
                DATA(t831) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t831->has = abap_true.
                t831->value = t829.
                t827 = t831.
                t819 = t820->get_object( i_type_9913 = t822 i_name = t827 ).
                DATA t833 TYPE REF TO object.
                t833 = t819.
                t818 ?= t833.
                t817 = t818.
                DATA t834 TYPE REF TO zif_lnt_class_definition.
                CLEAR t834.
                DATA t835 TYPE abap_bool.
                t835 = xsdbool( t817 IS BOUND ).
                IF t835 = abap_true.
                  DATA t837 TYPE REF TO zif_lnt_class_definition.
                  DATA t838 TYPE REF TO zcl_lnt_class.
                  t838 = t817.
                  t837 = t838->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t834 = t837.
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
            DATA t842 TYPE abap_bool.
            t842 = xsdbool( t775 IS BOUND ).
            IF t842 = abap_true.
              DATA t844 TYPE REF TO zif_lnt_interface_definition.
              DATA t845 TYPE REF TO zif_lnt_class_definition.
              t845 = t775.
              t844 ?= t845.
              t841 = t844.
            ELSE.
              DATA t848 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t848.
              DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t850.
              DATA t853 TYPE string.
              t853 = t759->value.
              DATA(t855) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t855->has = abap_true.
              t855->value = t853.
              t850 = t855.
              DATA t857 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t857.
              DATA(t858) = VALUE abap_bool( ).
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
              t858 = t863.
              IF t858 = abap_true.
                CLEAR t857.
              ELSE.
                DATA t867 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t867.
                DATA t869 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t870 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t870 = t757->current.
                t869 = t870.
                DATA t872 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t872.
                DATA(t873) = xsdbool( t869 IS INITIAL ).
                IF t873 = abap_true.
                  CLEAR t872.
                ELSE.
                  DATA t876 TYPE REF TO zif_lnt_interface_definition.
                  DATA t877 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t877 = t869.
                  DATA t879 TYPE string.
                  t879 = t850->value.
                  t876 = t877->find_interface_definition( i_name = t879 ).
                  t872 = t876.
                ENDIF.
                t867 = t872.
                DATA t881 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t881.
                DATA t882 TYPE abap_bool.
                t882 = xsdbool( t867 IS BOUND ).
                IF t882 = abap_true.
                  t881 = t867.
                ELSE.
                  DATA t890 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t890.
                  DATA t891 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t891.
                  DATA t892 TYPE REF TO zif_lnt_object.
                  CLEAR t892.
                  DATA t893 TYPE REF TO zif_lnt_registry.
                  t893 = t757->reg.
                  DATA t895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t895.
                  DATA(t897) = |INTF|.
                  DATA(t898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t898->has = abap_true.
                  t898->value = t897.
                  t895 = t898.
                  DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t900.
                  DATA t902 TYPE string.
                  t902 = t850->value.
                  DATA(t904) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t904->has = abap_true.
                  t904->value = t902.
                  t900 = t904.
                  t892 = t893->get_object( i_type_9913 = t895 i_name = t900 ).
                  DATA t906 TYPE REF TO object.
                  t906 = t892.
                  t891 ?= t906.
                  t890 = t891.
                  DATA t907 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t907.
                  DATA t908 TYPE abap_bool.
                  t908 = xsdbool( t890 IS BOUND ).
                  IF t908 = abap_true.
                    DATA t914 TYPE REF TO zif_lnt_interface_definition.
                    t914 = t890->def.
                    t907 = t914.
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
              DATA t918 TYPE abap_bool.
              t918 = xsdbool( t848 IS BOUND ).
              IF t918 = abap_true.
                t917 = t848.
              ELSE.
                CLEAR t917.
              ENDIF.
              t841 = t917.
            ENDIF.
            t765 = t841.
          ENDIF.
          DATA t926 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t926.
          DATA t927 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t927.
          DATA t928 TYPE REF TO zcl_lnt_object_oriented.
          DATA(t929) = me->scope.
          t928 = NEW zcl_lnt_object_oriented( i_scope = t929 ).
          DATA t931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t931.
          DATA(t934) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t934->has = abap_true.
          t934->value = t752.
          t931 = t934.
          t927 = t928->search_type_name( i_def = t765 i_name = t931 ).
          t926 = t927.
          DATA t936 TYPE abap_bool.
          t936 = xsdbool( t926 IS BOUND ).
          IF t936 = abap_true.
            DATA t944 TYPE REF TO zcl_lnt_abstract_type.
            t944 = t926->type_cba0.
            t27 = t944.
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
        DATA t951 TYPE abap_bool.
        DATA(t952) = t27.
        t951 = xsdbool( t952 IS BOUND AND t952 IS INSTANCE OF zcl_lnt_void_type ).
        t948 = t951.
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
        DATA t957 TYPE REF TO zcl_lnt_abstract_type.
        DATA t959 TYPE string.
        DATA t960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t960 = t22->type_cba0.
        t959 = t960->value.
        DATA t962 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t962.
        DATA t963 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t963.
        DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t964.
        t957 = t12->lookup_builtin_type( i_name = t959 i_length = t962 i_decimals_2eed = t963 i_qualified_name = t964 ).
        t956 = t957.
        DATA t965 TYPE abap_bool.
        t965 = xsdbool( t956 IS BOUND ).
        IF t965 = abap_true.
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
          DATA t981 TYPE abap_bool.
          DATA(t982) = t27.
          t981 = xsdbool( t982 IS BOUND AND t982 IS INSTANCE OF zcl_lnt_unknown_type ).
          t973 = t981.
        ENDIF.
        t972 = t973.
        IF t973 = abap_false.
          DATA t983 TYPE abap_bool.
          DATA(t984) = t27.
          t983 = xsdbool( t984 IS BOUND AND t984 IS INSTANCE OF zcl_lnt_void_type ).
          t972 = t983.
        ENDIF.
        IF t972 = abap_true.
          DATA t985 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t985.
          DATA t987 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t987.
          DATA(t990) = me->scope.
          DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t991.
          DATA t994 TYPE string.
          DATA t995 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t995 = t22->type_cba0.
          t994 = t995->value.
          DATA(t997) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t997->has = abap_true.
          t997->value = t994.
          t991 = t997.
          DATA t999 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t999.
          DATA(t1000) = VALUE abap_bool( ).
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
          t1000 = t1005.
          IF t1000 = abap_true.
            CLEAR t999.
          ELSE.
            DATA t1009 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t1010 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t1010 = t990->current.
            t1009 = t1010.
            DATA t1012 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1012.
            DATA(t1013) = xsdbool( t1009 IS INITIAL ).
            IF t1013 = abap_true.
              CLEAR t1012.
            ELSE.
              DATA t1016 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t1017 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t1017 = t1009.
              DATA t1019 TYPE string.
              t1019 = t991->value.
              t1016 = t1017->find_type( i_name = t1019 ).
              t1012 = t1016.
            ENDIF.
            t999 = t1012.
          ENDIF.
          t987 = t999.
          DATA t1021 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1021.
          DATA(t1022) = xsdbool( t987 IS INITIAL ).
          IF t1022 = abap_true.
            CLEAR t1021.
          ELSE.
            DATA t1029 TYPE REF TO zcl_lnt_abstract_type.
            t1029 = t987->type_cba0.
            t1021 = t1029.
          ENDIF.
          t985 = t1021.
          DATA t1031 TYPE abap_bool.
          t1031 = xsdbool( t985 IS BOUND ).
          IF t1031 = abap_true.
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
          DATA t1047 TYPE abap_bool.
          DATA(t1048) = t27.
          t1047 = xsdbool( t1048 IS BOUND AND t1048 IS INSTANCE OF zcl_lnt_unknown_type ).
          t1039 = t1047.
        ENDIF.
        t1038 = t1039.
        IF t1039 = abap_false.
          DATA t1049 TYPE abap_bool.
          DATA(t1050) = t27.
          t1049 = xsdbool( t1050 IS BOUND AND t1050 IS INSTANCE OF zcl_lnt_void_type ).
          t1038 = t1049.
        ENDIF.
        IF t1038 = abap_true.
          DATA t1051 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1051.
          DATA t1053 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1054 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1056 TYPE string.
          DATA t1057 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1057 = t22->type_cba0.
          t1056 = t1057->value.
          t1054 = me->scope->find_type_pool_type( i_name = t1056 ).
          t1053 = t1054.
          DATA t1059 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1059.
          DATA(t1060) = xsdbool( t1053 IS INITIAL ).
          IF t1060 = abap_true.
            CLEAR t1059.
          ELSE.
            DATA t1067 TYPE REF TO zcl_lnt_abstract_type.
            t1067 = t1053->type_cba0.
            t1059 = t1067.
          ENDIF.
          t1051 = t1059.
          DATA t1069 TYPE abap_bool.
          t1069 = xsdbool( t1051 IS BOUND ).
          IF t1069 = abap_true.
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
        DATA(t1079) = VALUE abap_bool( ).
        DATA(t1080) = VALUE abap_bool( ).
        DATA t1082 TYPE REF TO zcl_lnt_ddic.
        DATA(t1083) = me->reg.
        t1082 = NEW zcl_lnt_ddic( i_reg_f149 = t1083 ).
        DATA t1084 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1085 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1085 = t22->type_cba0.
        t1084 = t1085.
        DATA(t1087) = VALUE abap_bool( ).
        DATA(t1088) = VALUE abap_bool( ).
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
        t1088 = t1093.
        IF t1088 = abap_true.
          t1087 = abap_true.
        ELSE.
          DATA t1096 TYPE abap_bool.
          DATA t1097 TYPE REF TO zif_lnt_registry.
          t1097 = t1082->reg.
          DATA t1099 TYPE string.
          t1099 = t1084->value.
          t1096 = t1097->in_error_namespace( i_name = t1099 ).
          t1087 = t1096.
        ENDIF.
        t1080 = t1087.
        t1079 = xsdbool( t1080 = abap_false ).
        t1076 = t1079.
      ENDIF.
      IF t1076 = abap_true.
        DATA t1102 TYPE REF TO zcl_lnt_void_type.
        DATA t1103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1103 = t22->type_cba0.
        DATA t1105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1105.
        t1102 = zcl_lnt_void_type=>get_db65( i_voided = t1103 i_qualified_name = t1105 ).
        t27 = t1102.
      ENDIF.
      DATA(t1106) = VALUE abap_bool( ).
      DATA t1108 TYPE string.
      DATA t1109 TYPE string.
      DATA t1110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1110 = t22->name.
      t1109 = t1110->value.
      DATA(t1112) = strlen( t1109 ).
      t1108 = t1109.
      IF t1108 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1108 TO UPPER CASE.
      ELSE.
        t1108 = zlnt_runtime_uppe_91169605024d=>full( t1108 ).
      ENDIF.
      t1106 = t15->has( p0 = t1108 ).
      IF t1106 = abap_true.
        CONTINUE.
      ELSE.
        DATA t1114 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t1115 TYPE REF TO zcl_lnt_position.
        DATA t1118 TYPE REF TO zcl_lnt_position.
        t1118 = t2->start.
        t1115 = t1118.
        DATA t1120 TYPE string.
        DATA t1121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1121 = t22->name.
        t1120 = t1121->value.
        t1114 = NEW zcl_lnt_lx_identifier( i_start = t1115 i_str = t1120 ).
        DATA t1123 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1123.
        DATA t1124 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1124.
        DATA t1127 TYPE REF TO zcl_lnt_abstract_type.
        t1127 = t27.
        DATA t1129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t1129.
        DATA t1132 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
        t1132 = t22.
        DATA t1135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t1136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t1136.
        t1135 = t1136.
        DATA t1137 TYPE abap_bool.
        DATA t1138 TYPE string.
        t1138 = t1132->direction.
        DATA(t1140) = |importing|.
        t1137 = xsdbool( t1138 = t1140 ).
        IF t1137 = abap_true.
          DATA(t1142) = |function_module_importing|.
          t1135->load( ).
          APPEND t1142 TO t1135->items.
          t1135->save( ).
        ELSE.
          DATA t1143 TYPE abap_bool.
          DATA t1144 TYPE string.
          t1144 = t1132->direction.
          DATA(t1146) = |exporting|.
          t1143 = xsdbool( t1144 = t1146 ).
          IF t1143 = abap_true.
            DATA(t1148) = |function_module_exporting|.
            t1135->load( ).
            APPEND t1148 TO t1135->items.
            t1135->save( ).
          ELSE.
            DATA t1149 TYPE abap_bool.
            DATA t1150 TYPE string.
            t1150 = t1132->direction.
            DATA(t1152) = |changing|.
            t1149 = xsdbool( t1150 = t1152 ).
            IF t1149 = abap_true.
              DATA(t1154) = |function_module_changing|.
              t1135->load( ).
              APPEND t1154 TO t1135->items.
              t1135->save( ).
            ELSE.
              DATA t1155 TYPE abap_bool.
              DATA t1156 TYPE string.
              t1156 = t1132->direction.
              DATA(t1158) = |tables|.
              t1155 = xsdbool( t1156 = t1158 ).
              IF t1155 = abap_true.
                DATA(t1160) = |function_module_tables|.
                t1135->load( ).
                APPEND t1160 TO t1135->items.
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
          DATA(t1165) = |pass_by_value|.
          t1135->load( ).
          APPEND t1165 TO t1135->items.
          t1135->save( ).
        ENDIF.
        t1129 = t1135.
        DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1168.
        t1124 = NEW zcl_lnt_typed_identifier( i_token = t1114 i_filename = t3 i_type_9913 = t1127 i_meta = t1129 i_value = t1168 ).
        t1123 = t1124.
        DATA t1169 TYPE abap_bool.
        DATA t1170 TYPE abap_bool.
        t1170 = t4->value.
        t1169 = xsdbool( t1170 = abap_true ).
        IF t1169 = abap_true.
          DATA t1175 TYPE REF TO zcl_lnt_current_scope.
          t1175 = me->scope.
          DATA t1177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1178 = t22->name.
          t1177 = t1178.
          DATA t1180 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1180.
          DATA(t1181) = VALUE abap_bool( ).
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
          t1181 = t1186.
          IF t1181 = abap_true.
            CLEAR t1180.
          ELSE.
            DATA t1190 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1190.
            DATA t1192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t1193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t1193 = t1175->current.
            t1192 = t1193.
            DATA t1195 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1195.
            DATA(t1196) = xsdbool( t1192 IS INITIAL ).
            IF t1196 = abap_true.
              CLEAR t1195.
            ELSE.
              DATA t1199 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t1200 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t1200 = t1192.
              DATA t1202 TYPE string.
              t1202 = t1177->value.
              t1199 = t1200->find_variable( i_name = t1202 ).
              t1195 = t1199.
            ENDIF.
            t1190 = t1195.
            DATA t1204 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1204.
            DATA t1205 TYPE abap_bool.
            t1205 = xsdbool( t1190 IS BOUND ).
            IF t1205 = abap_true.
              t1204 = t1190.
            ELSE.
              DATA t1212 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t1212.
              DATA t1214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1214.
              DATA t1216 TYPE string.
              t1216 = t1177->value.
              DATA(t1218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1218->has = abap_true.
              t1218->value = t1216.
              t1214 = t1218.
              t1212 = t1175->find_type_pool_constant( i_name = t1214 ).
              t1204 = t1212.
            ENDIF.
            t1180 = t1204.
          ENDIF.
          DATA(t1220) = VALUE abap_bool( ).
          DATA t1223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1223.
          t1220 = xsdbool( t1180 IS INITIAL ).
          IF t1220 = abap_true.
            DATA t1228 TYPE string.
            DATA t1229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t1229 = t22->name.
            t1228 = t1229->value.
            me->scope->add_named_identifier( i_name = t1228 i_identifier = t1123 ).
          ENDIF.
        ELSE.
          DATA t1233 TYPE string.
          DATA t1234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1234 = t22->name.
          t1233 = t1234->value.
          me->scope->add_named_identifier( i_name = t1233 i_identifier = t1123 ).
        ENDIF.
        DATA t1237 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t1237.
        DATA t1239 TYPE string.
        DATA t1240 TYPE string.
        DATA t1241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1241 = t22->name.
        t1240 = t1241->value.
        DATA(t1243) = strlen( t1240 ).
        t1239 = t1240.
        IF t1239 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1239 TO UPPER CASE.
        ELSE.
          t1239 = zlnt_runtime_uppe_91169605024d=>full( t1239 ).
        ENDIF.
        t1237 = t15->add( p0 = t1239 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD function_module_parameter_meta.
    DATA(t1) = i_param.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE string.
    t5 = t1->direction.
    DATA(t7) = |importing|.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA(t9) = |function_module_importing|.
      t2->load( ).
      APPEND t9 TO t2->items.
      t2->save( ).
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      t11 = t1->direction.
      DATA(t13) = |exporting|.
      t10 = xsdbool( t11 = t13 ).
      IF t10 = abap_true.
        DATA(t15) = |function_module_exporting|.
        t2->load( ).
        APPEND t15 TO t2->items.
        t2->save( ).
      ELSE.
        DATA t16 TYPE abap_bool.
        DATA t17 TYPE string.
        t17 = t1->direction.
        DATA(t19) = |changing|.
        t16 = xsdbool( t17 = t19 ).
        IF t16 = abap_true.
          DATA(t21) = |function_module_changing|.
          t2->load( ).
          APPEND t21 TO t2->items.
          t2->save( ).
        ELSE.
          DATA t22 TYPE abap_bool.
          DATA t23 TYPE string.
          t23 = t1->direction.
          DATA(t25) = |tables|.
          t22 = xsdbool( t23 = t25 ).
          IF t22 = abap_true.
            DATA(t27) = |function_module_tables|.
            t2->load( ).
            APPEND t27 TO t2->items.
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
      DATA(t32) = |pass_by_value|.
      t2->load( ).
      APPEND t32 TO t2->items.
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
