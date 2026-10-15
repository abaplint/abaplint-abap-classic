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
    DATA(t2) = i_scope.
    DATA(t3) = t2.
    me->scope = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
    DATA(t4) = t1.
    me->reg = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD add_all_form_definitions.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA(t8) = t5.
    t7 = t8->structure.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t3.
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_syntax_input.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_syntax_input.
      DATA t13 TYPE REF TO zcl_lnt_current_scope.
      DATA t14 TYPE REF TO zcl_lnt_current_scope.
      DATA(t15) = me->reg.
      DATA(t16) = t2.
      t14 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t15 i_obj_1ed0 = t16 ).
      t13 = t14.
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t20) = t1.
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = t19.
      t21 = t22->filename.
      t18 = t21.
      t17 = t18.
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
      CLEAR t27.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t27 ).
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t28 ).
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t29 ).
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t30 ).
      ENDIF.
      CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
      t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t31) = |scope|.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
      ENDIF.
      DATA(t33) = |filename|.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
      ENDIF.
      DATA(t35) = |issues|.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
      ENDIF.
      DATA(t37) = |deferred|.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
      ENDIF.
      t11 = t12.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zcl_lnt_structure_node.
      DATA(t41) = t3.
      t40 = t41.
      DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
      t39 = t40->find_all_structures( i_type_9913 = t42 ).
      DATA t43 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
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
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        DATA(t49) = me->scope.
        t48 = t49.
        DATA t50 TYPE REF TO zif_lnt_form_definition.
        DATA t51 TYPE REF TO zcl_lnt_ty_form_definition.
        DATA(t52) = t43.
        DATA(t53) = t11.
        t51 = NEW zcl_lnt_ty_form_definition( i_node = t52 i_input_967e = t53 ).
        t50 = t51.
        DATA(t54) = t48.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t57.
        t56 = t57.
        DATA(t58) = t56.
        DATA(t59) = t50.
        t58->load( ).
        APPEND t59 TO t58->items.
        t58->save( ).
        DATA(t60) = t56.
        t55 = t60.
        t54->add_form_definitions( i_f = t55 ).
      ENDDO.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_structure_node.
    DATA t62 TYPE REF TO zcl_lnt_structure_node.
    DATA t63 TYPE REF TO zcl_lnt_abap_file.
    DATA(t64) = t1.
    t63 = t64.
    DATA t65 TYPE REF TO zcl_lnt_structure_node.
    DATA(t66) = t63.
    t65 = t66->structure.
    t62 = t65.
    t61 = t62.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zcl_lnt_structure_node.
    DATA(t69) = t61.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    t70 = t71.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = t68.
    IF t73 IS INITIAL.
      t72 = abap_true.
    ENDIF.
    t67 = t72.
    IF t67 = abap_true.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zcl_lnt_structure_node.
    DATA(t77) = t61.
    t76 = t77.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t75 = t76->find_all_statements( i_type_9913 = t78 ).
    t74 = t75.
    DATA(t79) = t74.
    DATA t80 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t80.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    DATA(t82) = VALUE i( ).
    DO.
      t79->load( ).
      IF t82 >= lines( t79->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t79->items INDEX t82 + 1 INTO t81.
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
      DATA(t87) = t80.
      DATA(t88) = t2.
      t86 = me->find_include( i_node = t87 i_obj_1ed0 = t88 ).
      t85 = t86.
      DATA t89 TYPE abap_bool.
      DATA(t90) = t85.
      t89 = xsdbool( t90 IS BOUND ).
      IF t89 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_abap_file.
        DATA(t92) = t85.
        t91 = t92.
        DATA(t93) = t2.
        me->add_all_form_definitions( i_file = t91 i_obj_1ed0 = t93 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_include.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
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
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE string( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA(t20) = t3.
    t19 = t20.
    t18 = t19->get_first_token( ).
    t17 = t18.
    DATA(t21) = VALUE string( ).
    DATA(t22) = t17.
    t21 = t22->str.
    t16 = t21.
    t15 = t16.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t2.
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_function_group ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_function_group.
      CLEAR t27.
      DATA(t28) = t2.
      t27 ?= t28.
      DATA(t29) = t15.
      t26 = t27->get_include( i_name = t29 ).
      t25 = t26.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t31.
      DATA(t32) = t25.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t31.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      t35 = xsdbool( t36 = abap_false ).
      t30 = t35.
      IF t30 = abap_true.
        DATA t38 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t38.
        DATA(t39) = abap_true.
        IF t39 = abap_true.
          DATA t40 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t40.
          DATA(t41) = t25.
          t40 = t41.
          t38 = t40.
        ELSE.
          DATA t42 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t42.
          t38 = t42.
        ENDIF.
        result = t38.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_object.
    CLEAR t45.
    DATA(t46) = me->reg.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA(t48) = abap_true.
    IF t48 = abap_true.
      DATA(t49) = |PROG|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t47 = t51.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    DATA(t53) = abap_true.
    IF t53 = abap_true.
      DATA(t54) = t15.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t54.
      t52 = t55.
    ELSE.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      t52 = t56.
    ENDIF.
    t45 = t46->get_object( i_type_9913 = t47 i_name = t52 ).
    DATA t57 TYPE REF TO object.
    CLEAR t57.
    t57 = t45.
    t44 ?= t57.
    t43 = t44.
    DATA(t58) = VALUE abap_bool( ).
    DATA t59 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t59.
    DATA(t60) = t43.
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    t61 = t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = t59.
    IF t65 IS INITIAL.
      t64 = abap_true.
    ENDIF.
    t63 = xsdbool( t64 = abap_false ).
    t58 = t63.
    IF t58 = abap_true.
      DATA t66 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t66.
      DATA(t67) = abap_true.
      IF t67 = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t68.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t71.
        DATA(t72) = t43.
        t71 = t72.
        t70 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t73.
        DATA(t74) = t70.
        t73 = t74->parsed.
        t69 = t73.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        t69->load( ).
        CLEAR t75.
        READ TABLE t69->items INDEX 1 INTO t75.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        CLEAR t68.
        IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t76 ?= t75.
          DATA t77 TYPE REF TO object.
          CLEAR t77.
          t77 = t76->as_ref( ).
          t68 ?= t77.
        ELSE.
          t68 ?= t75.
        ENDIF.
        t66 = t68.
      ELSE.
        DATA t78 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t78.
        t66 = t78.
      ENDIF.
      result = t66.
      RETURN.
    ENDIF.
    DATA t79 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t81.
    DATA(t82) = me->reg.
    DATA(t83) = |FUGR|.
    t81 = t82->get_objects_by_type( i_type_9913 = t83 ).
    t80 = t81->iterate( ).
    t79 = t80.
    DO.
      DATA(t84) = abap_true.
      IF t84 = abap_false.
        EXIT.
      ENDIF.
      DATA t85 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t86.
      DATA(t87) = t79.
      t86 = t87->next( ).
      t85 = t86.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t85.
      t88 = t89->done.
      IF t88 = abap_true.
        EXIT.
      ENDIF.
      DATA t90 TYPE REF TO zif_lnt_object.
      CLEAR t90.
      DATA t91 TYPE REF TO zif_lnt_object.
      CLEAR t91.
      DATA t92 TYPE REF TO zif_lnt_object.
      CLEAR t92.
      DATA(t93) = t85.
      t92 = t93->value.
      t91 = t92.
      t90 = t91.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = abap_false.
      t96 = t97.
      DATA t98 TYPE REF TO cx_root.
      CLEAR t98.
      TRY.
          DATA(t99) = VALUE abap_bool( ).
          DATA(t100) = t90.
          t99 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_function_group ).
          t95 = t99.
          DATA(t101) = abap_true.
          t96 = t101.
        CATCH cx_root INTO t98.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = t96.
          t102 = xsdbool( t103 = abap_false ).
          IF t102 = abap_true.
            DATA(t104) = t79.
            t104->close( ).
          ENDIF.
          RAISE EXCEPTION t98.
      ENDTRY.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = t96.
      t105 = xsdbool( t106 = abap_false ).
      IF t105 = abap_true.
        DATA(t107) = t79.
        t107->close( ).
      ENDIF.
      DATA(t108) = t95.
      t94 = t108.
      IF t94 = abap_true.
        DATA t109 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t111.
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = abap_false.
        t112 = t113.
        DATA t114 TYPE REF TO cx_root.
        CLEAR t114.
        TRY.
            DATA t115 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t115.
            DATA t116 TYPE REF TO zcl_lnt_function_group.
            CLEAR t116.
            DATA(t117) = t90.
            DATA t118 TYPE REF TO object.
            CLEAR t118.
            t118 = t117.
            t116 ?= t118.
            DATA(t119) = t15.
            t115 = t116->get_include( i_name = t119 ).
            t111 = t115.
            DATA(t120) = abap_true.
            t112 = t120.
          CATCH cx_root INTO t114.
            DATA(t121) = VALUE abap_bool( ).
            DATA(t122) = t112.
            t121 = xsdbool( t122 = abap_false ).
            IF t121 = abap_true.
              DATA(t123) = t79.
              t123->close( ).
            ENDIF.
            RAISE EXCEPTION t114.
        ENDTRY.
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = t112.
        t124 = xsdbool( t125 = abap_false ).
        IF t124 = abap_true.
          DATA(t126) = t79.
          t126->close( ).
        ENDIF.
        DATA(t127) = t111.
        t110 = t127.
        t109 = t110.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = VALUE abap_bool( ).
        DATA(t131) = abap_false.
        t130 = t131.
        DATA t132 TYPE REF TO cx_root.
        CLEAR t132.
        TRY.
            DATA(t133) = VALUE abap_bool( ).
            DATA(t134) = t109.
            t133 = xsdbool( t134 IS BOUND ).
            t129 = t133.
            DATA(t135) = abap_true.
            t130 = t135.
          CATCH cx_root INTO t132.
            DATA(t136) = VALUE abap_bool( ).
            DATA(t137) = t130.
            t136 = xsdbool( t137 = abap_false ).
            IF t136 = abap_true.
              DATA(t138) = t79.
              t138->close( ).
            ENDIF.
            RAISE EXCEPTION t132.
        ENDTRY.
        DATA(t139) = VALUE abap_bool( ).
        DATA(t140) = t130.
        t139 = xsdbool( t140 = abap_false ).
        IF t139 = abap_true.
          DATA(t141) = t79.
          t141->close( ).
        ENDIF.
        DATA(t142) = t129.
        t128 = t142.
        IF t128 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t143.
          DATA t144 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t144.
          DATA t145 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t145.
          DATA(t146) = VALUE abap_bool( ).
          DATA(t147) = abap_false.
          t146 = t147.
          DATA t148 TYPE REF TO cx_root.
          CLEAR t148.
          TRY.
              DATA t149 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t149.
              DATA(t150) = abap_true.
              IF t150 = abap_true.
                DATA t151 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t151.
                DATA(t152) = t109.
                t151 = t152.
                t149 = t151.
              ELSE.
                DATA t153 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t153.
                t149 = t153.
              ENDIF.
              t145 = t149.
              DATA(t154) = abap_true.
              t146 = t154.
            CATCH cx_root INTO t148.
              DATA(t155) = VALUE abap_bool( ).
              DATA(t156) = t146.
              t155 = xsdbool( t156 = abap_false ).
              IF t155 = abap_true.
                DATA(t157) = t79.
                t157->close( ).
              ENDIF.
              RAISE EXCEPTION t148.
          ENDTRY.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = t146.
          t158 = xsdbool( t159 = abap_false ).
          IF t158 = abap_true.
            DATA(t160) = t79.
            t160->close( ).
          ENDIF.
          DATA(t161) = t145.
          t144 = t161.
          t143 = t144.
          DATA(t162) = t79.
          t162->close( ).
          DATA(t163) = t143.
          result = t163.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t164 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t164.
    result = t164.

  ENDMETHOD.

  METHOD find_function_group_scope.
    DATA(t1) = i_fg.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = t3->get_modules( ).
    DATA t4 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
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
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      DATA(t12) = t4.
      t11 = t12.
      DATA t13 TYPE abap_bool.
      DATA(t14) = t11.
      t13 = t14->global_parameters.
      t10 = t13.
      DATA(t15) = abap_false.
      t9 = xsdbool( t10 = t15 ).
      IF t9 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t1.
      t19 = t20->get_sequenced_files( ).
      t18 = t19.
      DATA t21 TYPE i.
      DATA t22 TYPE i.
      DATA(t23) = t18.
      t23->load( ).
      t22 = lines( t23->items ).
      t21 = t22.
      DATA t24 TYPE i.
      DATA(t25) = 0.
      t24 = t25.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      DATA t27 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t27.
      t26 = t27.
      DO.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t24.
        DATA(t30) = t21.
        t28 = xsdbool( t29 < t30 ).
        IF t28 = abap_false.
          EXIT.
        ENDIF.
        DATA t31 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t33.
        DATA(t34) = t18.
        DATA(t35) = t24.
        DATA t36 TYPE REF TO object.
        t36 = t34->get( p0 = t35 ).
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
        t32 = t33.
        t31 = t32.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE string.
        DATA t41 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t42) = t31.
        t41 = t42.
        DATA t43 TYPE string.
        DATA(t44) = t41.
        t43 = t44->filename.
        t40 = t43.
        DATA t45 TYPE string.
        DATA t46 TYPE string.
        DATA(t47) = |.fugr.|.
        DATA t48 TYPE string.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        DATA(t52) = t4.
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = t51.
        t53 = t54->name.
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
          DATA t68 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA(t70) = t31.
            t68 = t70.
          ELSE.
            DATA t71 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t71.
            t68 = t71.
          ENDIF.
          t26 = t68.
          EXIT.
        ENDIF.
        DATA t72 TYPE i.
        DATA(t73) = t24.
        DATA(t74) = 1.
        t72 = t73 + t74.
        t24 = t72.
      ENDDO.
      DATA(t75) = t26.
      t17 = t75.
      t16 = t17.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zcl_lnt_abap_file.
      DATA(t78) = t16.
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
        CONTINUE.
      ENDIF.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t86.
      DATA t87 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t88.
      DATA t89 TYPE REF TO zcl_lnt_structure_node.
      DATA t90 TYPE REF TO zcl_lnt_structure_node.
      DATA t91 TYPE REF TO zcl_lnt_abap_file.
      DATA t92 TYPE REF TO zcl_lnt_abap_file.
      DATA(t93) = t16.
      t92 = t93.
      t91 = t92.
      DATA t94 TYPE REF TO zcl_lnt_structure_node.
      DATA(t95) = t91.
      t94 = t95->structure.
      t90 = t94.
      t89 = t90.
      DATA t96 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t96.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = t89.
      IF t98 IS INITIAL.
        t97 = abap_true.
      ENDIF.
      IF t97 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t99.
        t96 = t99.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_statement_node.
        DATA t101 TYPE REF TO zcl_lnt_structure_node.
        DATA(t102) = t89.
        t101 = t102.
        DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d506_926db0fe2390.
        t100 = t101->find_first_statement( i_type_9913 = t103 ).
        t96 = t100.
      ENDIF.
      t88 = t96.
      t87 = t88.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = t87.
      IF t106 IS INITIAL.
        t105 = abap_true.
      ENDIF.
      IF t105 = abap_true.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t107.
        t104 = t107.
      ELSE.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        DATA t109 TYPE REF TO zcl_lnt_statement_node.
        DATA(t110) = t87.
        t109 = t110.
        DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
        t108 = t109->find_first_expression( i_type_9913 = t111 ).
        t104 = t108.
      ENDIF.
      t86 = t104.
      t85 = t86.
      DATA t112 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t112.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t85.
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      IF t113 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t115.
        t112 = t115.
      ELSE.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        DATA(t118) = t85.
        t117 = t118.
        t116 = t117->get_first_token( ).
        t112 = t116.
      ENDIF.
      t84 = t112.
      t83 = t84.
      DATA(t119) = VALUE abap_bool( ).
      DATA t120 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t121) = t83.
      t120 = t121.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      t122 = t123.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = t120.
      IF t125 IS INITIAL.
        t124 = abap_true.
      ENDIF.
      t119 = t124.
      IF t119 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t126) = t4.
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t128) = t83.
      t127 = t128.
      DATA t129 TYPE string.
      DATA t130 TYPE REF TO zcl_lnt_abstract_file.
      DATA t131 TYPE REF TO zcl_lnt_abap_file.
      DATA(t132) = t16.
      t131 = t132.
      t130 = t131.
      DATA t133 TYPE string.
      DATA(t134) = t130.
      t133 = t134->filename.
      t129 = t133.
      DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t135.
      DATA(t136) = abap_true.
      IF t136 = abap_true.
        DATA(t137) = abap_true.
        DATA(t138) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t138->has = abap_true.
        t138->value = t137.
        t135 = t138.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t139.
        t135 = t139.
      ENDIF.
      me->add_function_scope( i_definition = t126 i_name_token = t127 i_filename = t129 i_ignore_if_already_exists = t135 ).
    ENDDO.
  ENDMETHOD.

  METHOD find_function_scope.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_node.
    DATA(t3) = i_filename.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_function_group ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |findFunctionScope, expected function group input|.
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
      CLEAR t7->source_value.
      IF t8 IS BOUND.
        DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t14.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        CLEAR t14.
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
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA(t20) = t2.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t19 = t20->find_first_expression( i_type_9913 = t21 ).
    t18 = t19.
    t17 = t18->get_first_token( ).
    t16 = t17.
    DATA(t22) = VALUE string( ).
    DATA(t23) = VALUE string( ).
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t24.
    DATA(t25) = t16.
    t24 = t25.
    DATA(t26) = VALUE string( ).
    DATA(t27) = t24.
    t26 = t27->str.
    t23 = t26.
    t22 = t23.
    DATA t28 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t28.
    DATA(t29) = me->scope.
    t28 = t29.
    DATA(t30) = VALUE string( ).
    DATA(t31) = t22.
    t30 = t31.
    DATA t32 TYPE REF TO zcl_lnt_position.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_position.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t35.
    DATA(t36) = t2.
    t35 = t36->get_first_token( ).
    t34 = t35.
    DATA t37 TYPE REF TO zcl_lnt_position.
    CLEAR t37.
    DATA(t38) = t34.
    t37 = t38->start.
    t33 = t37.
    t32 = t33.
    DATA(t39) = VALUE string( ).
    DATA(t40) = t3.
    t39 = t40.
    DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t42.
    DATA(t43) = VALUE string( ).
    DATA(t44) = |function|.
    t43 = t44.
    DATA(t45) = VALUE string( ).
    DATA(t46) = t30.
    t45 = t46.
    DATA t47 TYPE REF TO zcl_lnt_position.
    CLEAR t47.
    DATA(t48) = t32.
    t47 = t48.
    DATA(t49) = VALUE string( ).
    DATA(t50) = t39.
    t49 = t50.
    DATA t51 TYPE REF TO zcl_lnt_position.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_position.
    CLEAR t52.
    t51 = t52.
    t42 = NEW zcl_lnt_iscope_identifier( i_stype = t43 i_sname = t45 i_filename = t49 i_start = t47 i_end = t51 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t57 ).
    ENDIF.
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t58) = |stype|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    ENDIF.
    DATA(t60) = |sname|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
    ENDIF.
    DATA(t62) = |start|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
    ENDIF.
    DATA(t64) = |filename|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
    ENDIF.
    DATA(t66) = |end|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    t41 = t42.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t69.
    DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t70.
    DATA(t71) = t28.
    t70 = t71->current.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    t72 = t73.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = t69.
    IF t75 IS INITIAL.
      t74 = abap_true.
    ENDIF.
    t68 = t74.
    IF t68 = abap_true.
      DATA(t76) = t28.
      DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t77.
      DATA(t78) = abap_true.
      IF t78 = abap_true.
        DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t79.
        DATA(t80) = t41.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t81.
        t79 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t80 i_parent = t81 ).
        t77 = t79.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t82.
        t77 = t82.
      ENDIF.
      t76->current = t77.
      DELETE t76->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t85.
      DATA(t86) = t28.
      t85 = t86->current.
      t84 = t85.
      t83 = t84.
      DATA(t87) = t28.
      DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t88.
      DATA(t89) = abap_true.
      IF t89 = abap_true.
        DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t90.
        DATA(t91) = t41.
        DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA(t94) = t83.
          t92 = t94.
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t95.
          t92 = t95.
        ENDIF.
        t90 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t91 i_parent = t92 ).
        t88 = t90.
      ELSE.
        DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t96.
        t88 = t96.
      ENDIF.
      t87->current = t88.
      DELETE t87->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t97) = t83.
      DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t99.
      DATA(t100) = t28.
      t99 = t100->current.
      t98 = t99.
      t97->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t98 ).
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_function_group.
    CLEAR t103.
    DATA(t104) = t1.
    t103 ?= t104.
    DATA(t105) = t22.
    t102 = t103->get_module( i_name = t105 ).
    t101 = t102.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t107.
    DATA(t108) = t101.
    t107 = t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    t109 = t110.
    DATA(t111) = VALUE abap_bool( ).
    DATA(t112) = t107.
    IF t112 IS INITIAL.
      t111 = abap_true.
    ENDIF.
    t106 = t111.
    IF t106 = abap_true.
      DATA t113 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t113.
      DATA t114 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      DATA(t116) = abap_true.
      IF t116 = abap_true.
        DATA(t117) = VALUE string( ).
        DATA(t118) = VALUE string( ).
        DATA(t119) = |Function module definition "|.
        DATA(t120) = t22.
        DATA(t121) = strlen( t119 ).
        t118 = |{ t119 }{ t120 }|.
        DATA(t122) = |" not found|.
        DATA(t123) = strlen( t118 ).
        t117 = |{ t118 }{ t122 }|.
        DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t124->has = abap_true.
        t124->value = t117.
        t115 = t124.
      ELSE.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        t115 = t125.
      ENDIF.
      t114 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t115 ).
      t113 = NEW #( ).
      t113->payload = t114.
      CLEAR t113->source_value.
      IF t114 IS BOUND.
        DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t126.
        DATA t127 TYPE REF TO object.
        CLEAR t127.
        CLEAR t126.
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
      ENDIF.
      RAISE EXCEPTION t113.
    ENDIF.
    DATA(t128) = VALUE abap_bool( ).
    DATA(t129) = VALUE abap_bool( ).
    DATA t130 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t130.
    DATA t131 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t131.
    DATA(t132) = t101.
    t131 = t132.
    t130 = t131.
    DATA(t133) = VALUE abap_bool( ).
    DATA(t134) = t130.
    t133 = t134->global_parameters.
    t129 = t133.
    DATA(t135) = abap_true.
    t128 = xsdbool( t129 = t135 ).
    IF t128 = abap_true.
      RETURN.
    ENDIF.
    DATA t136 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t136.
    DATA(t137) = t101.
    t136 = t137.
    DATA(t138) = t16.
    DATA(t139) = t3.
    DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t140.
    me->add_function_scope( i_definition = t136 i_name_token = t138 i_filename = t139 i_ignore_if_already_exists = t140 ).
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
      DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = abap_false.
        DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_ddic.
    DATA t13 TYPE REF TO zcl_lnt_ddic.
    DATA(t14) = me->reg.
    t13 = NEW zcl_lnt_ddic( i_reg_f149 = t14 ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t16) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA(t19) = t1.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t21) = t18.
    t20 = t21->parameters.
    t17 = t20.
    DATA t22 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t28.
      t27 = t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t33) = t22.
      t32 = t33->type_cba0.
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t31.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ELSEIF t37->has = abap_false.
        t36 = abap_true.
      ENDIF.
      t30 = t36.
      t29 = t30.
      IF t30 = abap_false.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t41) = t22.
        t40 = t41->type_cba0.
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
        DATA(t49) = t22.
        t48 = t49->type_cba0.
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
          DATA(t57) = t22.
          t56 = t57->type_cba0.
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
          DATA(t67) = t53.
          IF t67->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          CLEAR t66.
          READ TABLE t67->items INDEX 1 INTO t66.
          t65 = t66.
          DATA(t68) = VALUE string( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = t53.
          IF t70->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t70->load( ).
          CLEAR t69.
          READ TABLE t70->items INDEX 2 INTO t69.
          t68 = t69.
          DATA t71 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t71.
          DATA t72 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_current_scope.
          DATA(t74) = me->scope.
          t73 = t74.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA(t78) = t65.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t78.
            t76 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t76 = t80.
          ENDIF.
          t75 = t76.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          DATA(t82) = VALUE abap_bool( ).
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t84) = t75.
          t83 = t84.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          t85 = t86.
          DATA(t87) = VALUE abap_bool( ).
          DATA(t88) = t83.
          IF t88 IS INITIAL.
            t87 = abap_true.
          ELSEIF t88->has = abap_false.
            t87 = abap_true.
          ENDIF.
          t82 = t87.
          IF t82 = abap_true.
            DATA t89 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t89.
            t81 = t89.
          ELSE.
            DATA t90 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t90.
            DATA t91 TYPE REF TO zif_lnt_class_definition.
            CLEAR t91.
            DATA t92 TYPE REF TO zif_lnt_class_definition.
            CLEAR t92.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            DATA(t95) = abap_true.
            IF t95 = abap_true.
              DATA t96 TYPE string.
              DATA(t97) = t75.
              t96 = t97->value.
              DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t98->has = abap_true.
              t98->value = t96.
              t94 = t98.
            ELSE.
              DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t99.
              t94 = t99.
            ENDIF.
            t93 = t94.
            DATA t100 TYPE REF TO zif_lnt_class_definition.
            CLEAR t100.
            DATA(t101) = VALUE abap_bool( ).
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t103) = t93.
            t102 = t103.
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t105.
            t104 = t105.
            DATA(t106) = VALUE abap_bool( ).
            DATA(t107) = t102.
            IF t107 IS INITIAL.
              t106 = abap_true.
            ELSEIF t107->has = abap_false.
              t106 = abap_true.
            ENDIF.
            t101 = t106.
            IF t101 = abap_true.
              DATA t108 TYPE REF TO zif_lnt_class_definition.
              CLEAR t108.
              t100 = t108.
            ELSE.
              DATA t109 TYPE REF TO zif_lnt_class_definition.
              CLEAR t109.
              DATA t110 TYPE REF TO zif_lnt_class_definition.
              CLEAR t110.
              DATA t111 TYPE REF TO zif_lnt_class_definition.
              CLEAR t111.
              DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t114) = t73.
              t113 = t114->current.
              t112 = t113.
              DATA t115 TYPE REF TO zif_lnt_class_definition.
              CLEAR t115.
              DATA(t116) = VALUE abap_bool( ).
              DATA(t117) = t112.
              IF t117 IS INITIAL.
                t116 = abap_true.
              ENDIF.
              IF t116 = abap_true.
                DATA t118 TYPE REF TO zif_lnt_class_definition.
                CLEAR t118.
                t115 = t118.
              ELSE.
                DATA t119 TYPE REF TO zif_lnt_class_definition.
                DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t121) = t112.
                t120 = t121.
                DATA t122 TYPE string.
                DATA(t123) = t93.
                t122 = t123->value.
                t119 = t120->find_class_definition( i_name = t122 ).
                t115 = t119.
              ENDIF.
              t111 = t115.
              t110 = t111.
              DATA t124 TYPE REF TO zif_lnt_class_definition.
              CLEAR t124.
              DATA t125 TYPE abap_bool.
              DATA(t126) = t110.
              t125 = xsdbool( t126 IS BOUND ).
              IF t125 = abap_true.
                DATA t127 TYPE REF TO zif_lnt_class_definition.
                CLEAR t127.
                DATA(t128) = abap_true.
                IF t128 = abap_true.
                  DATA t129 TYPE REF TO zif_lnt_class_definition.
                  DATA(t130) = t110.
                  t129 = t130.
                  t127 = t129.
                ELSE.
                  DATA t131 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t131.
                  t127 = t131.
                ENDIF.
                t124 = t127.
              ELSE.
                DATA t132 TYPE REF TO zif_lnt_class_definition.
                CLEAR t132.
                DATA t133 TYPE REF TO zcl_lnt_class.
                CLEAR t133.
                DATA t134 TYPE REF TO zcl_lnt_class.
                CLEAR t134.
                DATA t135 TYPE REF TO zif_lnt_object.
                CLEAR t135.
                DATA t136 TYPE REF TO zif_lnt_registry.
                DATA(t137) = t73.
                t136 = t137->reg.
                DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t138.
                DATA(t139) = abap_true.
                IF t139 = abap_true.
                  DATA(t140) = |CLAS|.
                  DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t141->has = abap_true.
                  t141->value = t140.
                  t138 = t141.
                ELSE.
                  DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t142.
                  t138 = t142.
                ENDIF.
                DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t143.
                DATA(t144) = abap_true.
                IF t144 = abap_true.
                  DATA t145 TYPE string.
                  DATA(t146) = t93.
                  t145 = t146->value.
                  DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t147->has = abap_true.
                  t147->value = t145.
                  t143 = t147.
                ELSE.
                  DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t148.
                  t143 = t148.
                ENDIF.
                t135 = t136->get_object( i_type_9913 = t138 i_name = t143 ).
                DATA t149 TYPE REF TO object.
                t149 = t135.
                t134 ?= t149.
                t133 = t134.
                DATA t150 TYPE REF TO zif_lnt_class_definition.
                CLEAR t150.
                DATA t151 TYPE abap_bool.
                DATA(t152) = t133.
                t151 = xsdbool( t152 IS BOUND ).
                IF t151 = abap_true.
                  DATA t153 TYPE REF TO zif_lnt_class_definition.
                  DATA t154 TYPE REF TO zcl_lnt_class.
                  DATA(t155) = t133.
                  t154 = t155.
                  t153 = t154->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t150 = t153.
                ELSE.
                  DATA t156 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t156.
                  t150 = t156.
                ENDIF.
                t132 = t150.
                t124 = t132.
              ENDIF.
              t109 = t124.
              t100 = t109.
            ENDIF.
            t92 = t100.
            t91 = t92.
            DATA t157 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t157.
            DATA t158 TYPE abap_bool.
            DATA(t159) = t91.
            t158 = xsdbool( t159 IS BOUND ).
            IF t158 = abap_true.
              DATA t160 TYPE REF TO zif_lnt_interface_definition.
              DATA t161 TYPE REF TO zif_lnt_class_definition.
              DATA(t162) = t91.
              t161 = t162.
              t160 ?= t161.
              t157 = t160.
            ELSE.
              DATA t163 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t163.
              DATA t164 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t164.
              DATA t165 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t165.
              DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t166.
              DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t167.
              DATA(t168) = abap_true.
              IF t168 = abap_true.
                DATA t169 TYPE string.
                DATA(t170) = t75.
                t169 = t170->value.
                DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t171->has = abap_true.
                t171->value = t169.
                t167 = t171.
              ELSE.
                DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t172.
                t167 = t172.
              ENDIF.
              t166 = t167.
              DATA t173 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t173.
              DATA(t174) = VALUE abap_bool( ).
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t176) = t166.
              t175 = t176.
              DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t178.
              t177 = t178.
              DATA(t179) = VALUE abap_bool( ).
              DATA(t180) = t175.
              IF t180 IS INITIAL.
                t179 = abap_true.
              ELSEIF t180->has = abap_false.
                t179 = abap_true.
              ENDIF.
              t174 = t179.
              IF t174 = abap_true.
                DATA t181 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t181.
                t173 = t181.
              ELSE.
                DATA t182 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t182.
                DATA t183 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t183.
                DATA t184 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t184.
                DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t186 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t187) = t73.
                t186 = t187->current.
                t185 = t186.
                DATA t188 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t188.
                DATA(t189) = VALUE abap_bool( ).
                DATA(t190) = t185.
                IF t190 IS INITIAL.
                  t189 = abap_true.
                ENDIF.
                IF t189 = abap_true.
                  DATA t191 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t191.
                  t188 = t191.
                ELSE.
                  DATA t192 TYPE REF TO zif_lnt_interface_definition.
                  DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t194) = t185.
                  t193 = t194.
                  DATA t195 TYPE string.
                  DATA(t196) = t166.
                  t195 = t196->value.
                  t192 = t193->find_interface_definition( i_name = t195 ).
                  t188 = t192.
                ENDIF.
                t184 = t188.
                t183 = t184.
                DATA t197 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t197.
                DATA t198 TYPE abap_bool.
                DATA(t199) = t183.
                t198 = xsdbool( t199 IS BOUND ).
                IF t198 = abap_true.
                  DATA t200 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t200.
                  DATA(t201) = abap_true.
                  IF t201 = abap_true.
                    DATA t202 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t203) = t183.
                    t202 = t203.
                    t200 = t202.
                  ELSE.
                    DATA t204 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t204.
                    t200 = t204.
                  ENDIF.
                  t197 = t200.
                ELSE.
                  DATA t205 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t205.
                  DATA t206 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t206.
                  DATA t207 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t207.
                  DATA t208 TYPE REF TO zif_lnt_object.
                  CLEAR t208.
                  DATA t209 TYPE REF TO zif_lnt_registry.
                  DATA(t210) = t73.
                  t209 = t210->reg.
                  DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t211.
                  DATA(t212) = abap_true.
                  IF t212 = abap_true.
                    DATA(t213) = |INTF|.
                    DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t214->has = abap_true.
                    t214->value = t213.
                    t211 = t214.
                  ELSE.
                    DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t215.
                    t211 = t215.
                  ENDIF.
                  DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t216.
                  DATA(t217) = abap_true.
                  IF t217 = abap_true.
                    DATA t218 TYPE string.
                    DATA(t219) = t166.
                    t218 = t219->value.
                    DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t220->has = abap_true.
                    t220->value = t218.
                    t216 = t220.
                  ELSE.
                    DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t221.
                    t216 = t221.
                  ENDIF.
                  t208 = t209->get_object( i_type_9913 = t211 i_name = t216 ).
                  DATA t222 TYPE REF TO object.
                  t222 = t208.
                  t207 ?= t222.
                  t206 = t207.
                  DATA t223 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t223.
                  DATA t224 TYPE abap_bool.
                  DATA(t225) = t206.
                  t224 = xsdbool( t225 IS BOUND ).
                  IF t224 = abap_true.
                    DATA t226 TYPE REF TO zif_lnt_interface_definition.
                    DATA t227 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t228 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t229) = t206.
                    t228 = t229.
                    t227 = t228.
                    DATA t230 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t231) = t227.
                    t230 = t231->def.
                    t226 = t230.
                    t223 = t226.
                  ELSE.
                    DATA t232 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t232.
                    t223 = t232.
                  ENDIF.
                  t205 = t223.
                  t197 = t205.
                ENDIF.
                t182 = t197.
                t173 = t182.
              ENDIF.
              t165 = t173.
              t164 = t165.
              DATA t233 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t233.
              DATA t234 TYPE abap_bool.
              DATA(t235) = t164.
              t234 = xsdbool( t235 IS BOUND ).
              IF t234 = abap_true.
                DATA t236 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t236.
                DATA(t237) = abap_true.
                IF t237 = abap_true.
                  DATA t238 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t239) = t164.
                  t238 = t239.
                  t236 = t238.
                ELSE.
                  DATA t240 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t240.
                  t236 = t240.
                ENDIF.
                t233 = t236.
              ELSE.
                DATA t241 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t241.
                t233 = t241.
              ENDIF.
              t163 = t233.
              t157 = t163.
            ENDIF.
            t90 = t157.
            t81 = t90.
          ENDIF.
          t72 = t81.
          t71 = t72.
          DATA t242 TYPE abap_bool.
          DATA(t243) = t71.
          t242 = xsdbool( t243 IS BOUND ).
          IF t242 = abap_true.
            DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t246 TYPE REF TO zif_lnt_type_definitions.
            DATA t247 TYPE REF TO zif_lnt_interface_definition.
            DATA(t248) = t71.
            t247 = t248.
            t246 = t247->get_type_definitions( ).
            DATA(t249) = t68.
            t245 = t246->get_by_name( i_name = t249 ).
            t244 = t245.
            DATA t250 TYPE abap_bool.
            DATA(t251) = t244.
            t250 = xsdbool( t251 IS BOUND ).
            IF t250 = abap_true.
              DATA(t252) = me->scope.
              DATA t253 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t253.
              DATA(t254) = abap_true.
              IF t254 = abap_true.
                DATA(t255) = t2.
                t253 = t255.
              ELSE.
                DATA t256 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t256.
                t253 = t256.
              ENDIF.
              DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t258) = t244.
              t257 = t258.
              DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t259.
              DATA(t260) = |Type|.
              CLEAR t259.
              CREATE OBJECT t259.
              t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t259->sval = t260.
              DATA(t261) = t3.
              DATA t262 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t262.
              t252->add_reference( i_usage = t253 i_referencing = t257 i_type_9913 = t259 i_filename = t261 i_extra = t262 ).
              DATA t263 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t263.
              DATA(t264) = abap_true.
              IF t264 = abap_true.
                DATA t265 TYPE REF TO zcl_lnt_abstract_type.
                DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t268) = t244.
                t267 = t268.
                t266 = t267.
                DATA t269 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t270) = t266.
                t269 = t270->type_cba0.
                t265 = t269.
                t263 = t265.
              ELSE.
                DATA t271 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t271.
                t263 = t271.
              ENDIF.
              t27 = t263.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t272) = VALUE abap_bool( ).
      DATA t273 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t274) = t27.
      t273 = t274.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      t275 = t276.
      DATA(t277) = VALUE abap_bool( ).
      DATA(t278) = t273.
      IF t278 IS INITIAL.
        t277 = abap_true.
      ENDIF.
      t272 = t277.
      IF t272 = abap_true.
        DATA t279 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t279.
        DATA(t280) = abap_true.
        IF t280 = abap_true.
          DATA t281 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t281.
          DATA t282 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t282.
          DATA t283 TYPE REF TO zcl_lnt_ddic.
          DATA(t284) = t12.
          t283 = t284.
          DATA t285 TYPE string.
          DATA t286 TYPE string.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t288) = t22.
          t287 = t288->type_cba0.
          t286 = t287->value.
          t285 = t286.
          DATA t289 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t289.
          DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t291 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t292) = t283.
          DATA(t293) = t285.
          t291 = t292->lookup_no_void( i_name = t293 ).
          t290 = t291.
          DATA t294 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t294.
          DATA t295 TYPE abap_bool.
          DATA(t296) = t290.
          t295 = xsdbool( t296 IS BOUND ).
          IF t295 = abap_true.
            DATA t297 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t298) = t290.
            t297 = t298.
            t294 = t297.
          ELSE.
            DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t299.
            DATA t300 TYPE abap_bool.
            DATA t301 TYPE REF TO zif_lnt_registry.
            DATA(t302) = t283.
            t301 = t302->reg.
            DATA(t303) = t285.
            t300 = t301->in_error_namespace( i_name = t303 ).
            IF t300 = abap_true.
              DATA t304 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t305 TYPE REF TO zcl_lnt_abstract_type.
              DATA t306 TYPE REF TO zcl_lnt_unknown_type.
              DATA t307 TYPE string.
              DATA(t308) = t285.
              DATA(t309) = | not found, lookup|.
              DATA(t310) = strlen( t308 ).
              t307 = |{ t308 }{ t309 }|.
              DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t311.
              t306 = NEW zcl_lnt_unknown_type( i_error = t307 i_qualified_name = t311 ).
              t305 = t306.
              DATA t312 TYPE REF TO zif_lnt_object.
              DATA t313 TYPE REF TO zif_lnt_object.
              CLEAR t313.
              t312 = t313.
              t304 = NEW zcl_lnt_ilookup_result( i_type_9913 = t305 i_object_19cd = t312 ).
              CREATE OBJECT t304->zlnt_view_ownkeys_b0e8086400eb.
              t304->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t314.
              IF t304->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t304->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t314 ).
              ENDIF.
              CREATE OBJECT t304->zlnt_json_ownkeys_70e5fd461788.
              t304->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t315) = |type|.
              DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t316.
              IF t304->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
              ENDIF.
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
              DATA(t321) = abap_true.
              IF t321 = abap_true.
                DATA(t322) = t285.
                DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t323->has = abap_true.
                t323->value = t322.
                t320 = t323.
              ELSE.
                DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t324.
                t320 = t324.
              ENDIF.
              DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t325.
              t319 = zcl_lnt_void_type=>get_db65( i_voided = t320 i_qualified_name = t325 ).
              t318 = t319.
              DATA t326 TYPE REF TO zif_lnt_object.
              DATA t327 TYPE REF TO zif_lnt_object.
              CLEAR t327.
              t326 = t327.
              t317 = NEW zcl_lnt_ilookup_result( i_type_9913 = t318 i_object_19cd = t326 ).
              CREATE OBJECT t317->zlnt_view_ownkeys_b0e8086400eb.
              t317->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t328.
              IF t317->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t317->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t328 ).
              ENDIF.
              CREATE OBJECT t317->zlnt_json_ownkeys_70e5fd461788.
              t317->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t329) = |type|.
              DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t330.
              IF t317->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t317->zlnt_json_ownkeys_70e5fd461788->put( p0 = t329 p1 = t330 ).
              ENDIF.
              t299 = t317.
            ENDIF.
            t294 = t299.
          ENDIF.
          t289 = t294.
          t282 = t289.
          t281 = t282->zlnt_view_read_sr_9be58e2d4893( ).
          t279 = t281.
        ELSE.
          DATA t331 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t331.
          t279 = t331.
        ENDIF.
        t27 = t279.
      ENDIF.
      DATA t332 TYPE abap_bool.
      DATA t333 TYPE string.
      DATA(t334) = t22.
      t333 = t334->direction.
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
          DATA t340 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t341 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t342) = t27.
          t341 ?= t342.
          t340 = t341.
          DATA t343 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t344) = t340.
          t343 = t344->row_type.
          t339 = t343.
          DATA t345 TYPE REF TO zcl_lnt_itable_options.
          DATA t346 TYPE abap_bool.
          DATA(t347) = abap_true.
          t346 = t347.
          DATA t348 TYPE string.
          DATA(t349) = |DEFAULT|.
          t348 = t349.
          DATA t350 TYPE REF TO zcl_lnt_itable_key.
          DATA t351 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t351.
          t350 = t351.
          DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t353.
          t352 = t353.
          t345 = NEW zcl_lnt_itable_options( i_with_header = t346 i_key_type = t348 i_primary_key = t350 i_secondary = t352 ).
          CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
          t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t354.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t354 ).
          ENDIF.
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
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
          ENDIF.
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
          DATA(t364) = t27.
          t363 = t364.
          DATA t365 TYPE REF TO zcl_lnt_itable_options.
          DATA t366 TYPE abap_bool.
          DATA(t367) = abap_true.
          t366 = t367.
          DATA t368 TYPE string.
          DATA(t369) = |DEFAULT|.
          t368 = t369.
          DATA t370 TYPE REF TO zcl_lnt_itable_key.
          DATA t371 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t371.
          t370 = t371.
          DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t373.
          t372 = t373.
          t365 = NEW zcl_lnt_itable_options( i_with_header = t366 i_key_type = t368 i_primary_key = t370 i_secondary = t372 ).
          CREATE OBJECT t365->zlnt_view_ownkeys_b0e8086400eb.
          t365->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t374.
          IF t365->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t365->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t374 ).
          ENDIF.
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
          IF t365->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t365->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
          ENDIF.
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
        DATA(t392) = t22.
        t391 = t392->type_cba0.
        t390 = t391.
        DATA t393 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t393.
        DATA(t394) = VALUE abap_bool( ).
        DATA(t395) = t390.
        IF t395 IS INITIAL.
          t394 = abap_true.
        ELSEIF t395->has = abap_false.
          t394 = abap_true.
        ENDIF.
        IF t394 = abap_true.
          DATA t396 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t396.
          t393 = t396.
        ELSE.
          DATA(t397) = VALUE abap_bool( ).
          DATA(t398) = VALUE i( ).
          DATA t399 TYPE string.
          DATA(t400) = t390.
          t399 = t400->value.
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
        DATA(t409) = t22.
        t408 = t409->type_cba0.
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
        DATA(t419) = t405.
        IF t419->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t419->load( ).
        CLEAR t418.
        READ TABLE t419->items INDEX 1 INTO t418.
        t417 = t418.
        DATA(t420) = VALUE string( ).
        DATA(t421) = VALUE string( ).
        DATA(t422) = t405.
        IF t422->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t422->load( ).
        CLEAR t421.
        READ TABLE t422->items INDEX 2 INTO t421.
        t420 = t421.
        DATA t423 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t423.
        DATA t424 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t424.
        DATA t425 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t425.
        DATA t426 TYPE REF TO zcl_lnt_ddic.
        DATA(t427) = t12.
        t426 = t427.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t428.
        DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t429.
        DATA(t430) = abap_true.
        IF t430 = abap_true.
          DATA(t431) = t417.
          DATA(t432) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t432->has = abap_true.
          t432->value = t431.
          t429 = t432.
        ELSE.
          DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t433.
          t429 = t433.
        ENDIF.
        t428 = t429.
        DATA t434 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t434.
        DATA(t435) = VALUE abap_bool( ).
        DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t437) = t428.
        t436 = t437.
        DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t439.
        t438 = t439.
        DATA(t440) = VALUE abap_bool( ).
        DATA(t441) = t436.
        IF t441 IS INITIAL.
          t440 = abap_true.
        ELSEIF t441->has = abap_false.
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
          DATA t448 TYPE REF TO zif_lnt_object.
          CLEAR t448.
          t447 = t448.
          t442 = NEW zcl_lnt_ilookup_result( i_type_9913 = t443 i_object_19cd = t447 ).
          CREATE OBJECT t442->zlnt_view_ownkeys_b0e8086400eb.
          t442->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t449.
          IF t442->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t442->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t449 ).
          ENDIF.
          CREATE OBJECT t442->zlnt_json_ownkeys_70e5fd461788.
          t442->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t450) = |type|.
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t451.
          IF t442->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t442->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
          ENDIF.
          t434 = t442.
        ELSE.
          DATA t452 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t452.
          DATA t453 TYPE REF TO zcl_lnt_table.
          CLEAR t453.
          DATA t454 TYPE REF TO zcl_lnt_table.
          CLEAR t454.
          DATA t455 TYPE REF TO zif_lnt_object.
          CLEAR t455.
          DATA t456 TYPE REF TO zif_lnt_registry.
          DATA(t457) = t426.
          t456 = t457->reg.
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t458.
          DATA(t459) = abap_true.
          IF t459 = abap_true.
            DATA(t460) = |TABL|.
            DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t461->has = abap_true.
            t461->value = t460.
            t458 = t461.
          ELSE.
            DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t462.
            t458 = t462.
          ENDIF.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t463.
          DATA(t464) = abap_true.
          IF t464 = abap_true.
            DATA t465 TYPE string.
            DATA(t466) = t428.
            t465 = t466->value.
            DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t467->has = abap_true.
            t467->value = t465.
            t463 = t467.
          ELSE.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t468.
            t463 = t468.
          ENDIF.
          t455 = t456->get_object( i_type_9913 = t458 i_name = t463 ).
          DATA t469 TYPE REF TO object.
          t469 = t455.
          t454 ?= t469.
          t453 = t454.
          DATA t470 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t470.
          DATA t471 TYPE abap_bool.
          DATA(t472) = t453.
          t471 = xsdbool( t472 IS BOUND ).
          IF t471 = abap_true.
            DATA t473 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t474 TYPE REF TO zcl_lnt_abstract_type.
            DATA t475 TYPE REF TO zcl_lnt_abstract_type.
            DATA t476 TYPE REF TO zcl_lnt_table.
            DATA(t477) = t453.
            t476 = t477.
            DATA t478 TYPE REF TO zif_lnt_registry.
            DATA(t479) = t426.
            t478 = t479->reg.
            DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t480.
            DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t481.
            t475 = t476->parse_type( i_reg_f149 = t478 i_data_element = t480 i_description = t481 ).
            t474 = t475.
            DATA t482 TYPE REF TO zif_lnt_object.
            DATA t483 TYPE REF TO zcl_lnt_table.
            DATA(t484) = t453.
            t483 = t484.
            t482 = t483.
            t473 = NEW zcl_lnt_ilookup_result( i_type_9913 = t474 i_object_19cd = t482 ).
            CREATE OBJECT t473->zlnt_view_ownkeys_b0e8086400eb.
            t473->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t485.
            IF t473->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t473->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t485 ).
            ENDIF.
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
            IF t473->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t473->zlnt_json_ownkeys_70e5fd461788->put( p0 = t487 p1 = t488 ).
            ENDIF.
            DATA(t489) = |object|.
            DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t490.
            IF t473->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t473->zlnt_json_ownkeys_70e5fd461788->put( p0 = t489 p1 = t490 ).
            ENDIF.
            t470 = t473.
          ELSE.
            DATA t491 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t491.
            DATA t492 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t492.
            DATA t493 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t493.
            DATA(t494) = t426.
            DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t495.
            DATA(t496) = abap_true.
            IF t496 = abap_true.
              DATA t497 TYPE string.
              DATA(t498) = t428.
              t497 = t498->value.
              DATA(t499) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t499->has = abap_true.
              t499->value = t497.
              t495 = t499.
            ELSE.
              DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t500.
              t495 = t500.
            ENDIF.
            t493 = t494->lookup_ddls( i_name = t495 ).
            t492 = t493.
            DATA t501 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t501.
            DATA t502 TYPE abap_bool.
            DATA(t503) = t492.
            t502 = xsdbool( t503 IS BOUND ).
            IF t502 = abap_true.
              DATA t504 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t505) = t492.
              t504 = t505.
              t501 = t504.
            ELSE.
              DATA t506 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t506.
              DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t507.
              DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t508.
              DATA(t509) = abap_true.
              IF t509 = abap_true.
                DATA t510 TYPE string.
                DATA(t511) = t428.
                t510 = t511->value.
                DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t512->has = abap_true.
                t512->value = t510.
                t508 = t512.
              ELSE.
                DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t513.
                t508 = t513.
              ENDIF.
              t507 = t508.
              DATA t514 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t514.
              DATA(t515) = VALUE abap_bool( ).
              DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t517) = t507.
              t516 = t517.
              DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t519.
              t518 = t519.
              DATA(t520) = VALUE abap_bool( ).
              DATA(t521) = t516.
              IF t521 IS INITIAL.
                t520 = abap_true.
              ELSEIF t521->has = abap_false.
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
                DATA t528 TYPE REF TO zif_lnt_object.
                CLEAR t528.
                t527 = t528.
                t522 = NEW zcl_lnt_ilookup_result( i_type_9913 = t523 i_object_19cd = t527 ).
                CREATE OBJECT t522->zlnt_view_ownkeys_b0e8086400eb.
                t522->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t529.
                IF t522->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t522->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t529 ).
                ENDIF.
                CREATE OBJECT t522->zlnt_json_ownkeys_70e5fd461788.
                t522->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t530) = |type|.
                DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t531.
                IF t522->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = t530 p1 = t531 ).
                ENDIF.
                t514 = t522.
              ELSE.
                DATA t532 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t532.
                DATA t533 TYPE REF TO zcl_lnt_table.
                CLEAR t533.
                DATA t534 TYPE REF TO zcl_lnt_table.
                CLEAR t534.
                DATA t535 TYPE REF TO zif_lnt_object.
                CLEAR t535.
                DATA t536 TYPE REF TO zif_lnt_registry.
                DATA(t537) = t426.
                t536 = t537->reg.
                DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t538.
                DATA(t539) = abap_true.
                IF t539 = abap_true.
                  DATA(t540) = |VIEW|.
                  DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t541->has = abap_true.
                  t541->value = t540.
                  t538 = t541.
                ELSE.
                  DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t542.
                  t538 = t542.
                ENDIF.
                DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t543.
                DATA(t544) = abap_true.
                IF t544 = abap_true.
                  DATA t545 TYPE string.
                  DATA(t546) = t507.
                  t545 = t546->value.
                  DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t547->has = abap_true.
                  t547->value = t545.
                  t543 = t547.
                ELSE.
                  DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t548.
                  t543 = t548.
                ENDIF.
                t535 = t536->get_object( i_type_9913 = t538 i_name = t543 ).
                DATA t549 TYPE REF TO object.
                t549 = t535.
                t534 ?= t549.
                t533 = t534.
                DATA t550 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t550.
                DATA t551 TYPE abap_bool.
                DATA(t552) = t533.
                t551 = xsdbool( t552 IS BOUND ).
                IF t551 = abap_true.
                  DATA t553 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t554 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t555 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t556 TYPE REF TO zcl_lnt_table.
                  DATA(t557) = t533.
                  t556 = t557.
                  DATA t558 TYPE REF TO zif_lnt_registry.
                  DATA(t559) = t426.
                  t558 = t559->reg.
                  DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t560.
                  DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t561.
                  t555 = t556->parse_type( i_reg_f149 = t558 i_data_element = t560 i_description = t561 ).
                  t554 = t555.
                  DATA t562 TYPE REF TO zif_lnt_object.
                  DATA t563 TYPE REF TO zcl_lnt_table.
                  DATA(t564) = t533.
                  t563 = t564.
                  t562 = t563.
                  t553 = NEW zcl_lnt_ilookup_result( i_type_9913 = t554 i_object_19cd = t562 ).
                  CREATE OBJECT t553->zlnt_view_ownkeys_b0e8086400eb.
                  t553->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t565.
                  IF t553->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t553->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t565 ).
                  ENDIF.
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
                  IF t553->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t553->zlnt_json_ownkeys_70e5fd461788->put( p0 = t567 p1 = t568 ).
                  ENDIF.
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
                  DATA(t574) = t426.
                  t573 = t574->reg.
                  DATA t575 TYPE string.
                  DATA(t576) = t507.
                  t575 = t576->value.
                  t572 = t573->in_error_namespace( i_name = t575 ).
                  IF t572 = abap_true.
                    DATA t577 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t578 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t579 TYPE REF TO zcl_lnt_unknown_type.
                    DATA t580 TYPE string.
                    DATA t581 TYPE string.
                    DATA(t582) = t507.
                    t581 = t582->value.
                    DATA(t583) = | not found, lookupView|.
                    DATA(t584) = strlen( t581 ).
                    t580 = |{ t581 }{ t583 }|.
                    DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t585.
                    t579 = NEW zcl_lnt_unknown_type( i_error = t580 i_qualified_name = t585 ).
                    t578 = t579.
                    DATA t586 TYPE REF TO zif_lnt_object.
                    DATA t587 TYPE REF TO zif_lnt_object.
                    CLEAR t587.
                    t586 = t587.
                    t577 = NEW zcl_lnt_ilookup_result( i_type_9913 = t578 i_object_19cd = t586 ).
                    CREATE OBJECT t577->zlnt_view_ownkeys_b0e8086400eb.
                    t577->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t588.
                    IF t577->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t577->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t588 ).
                    ENDIF.
                    CREATE OBJECT t577->zlnt_json_ownkeys_70e5fd461788.
                    t577->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t589) = |type|.
                    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t590.
                    IF t577->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t577->zlnt_json_ownkeys_70e5fd461788->put( p0 = t589 p1 = t590 ).
                    ENDIF.
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
                    DATA(t595) = abap_true.
                    IF t595 = abap_true.
                      DATA t596 TYPE string.
                      DATA(t597) = t507.
                      t596 = t597->value.
                      DATA(t598) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t598->has = abap_true.
                      t598->value = t596.
                      t594 = t598.
                    ELSE.
                      DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t599.
                      t594 = t599.
                    ENDIF.
                    DATA t600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t600.
                    t593 = zcl_lnt_void_type=>get_db65( i_voided = t594 i_qualified_name = t600 ).
                    t592 = t593.
                    DATA t601 TYPE REF TO zif_lnt_object.
                    DATA t602 TYPE REF TO zif_lnt_object.
                    CLEAR t602.
                    t601 = t602.
                    t591 = NEW zcl_lnt_ilookup_result( i_type_9913 = t592 i_object_19cd = t601 ).
                    CREATE OBJECT t591->zlnt_view_ownkeys_b0e8086400eb.
                    t591->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t603.
                    IF t591->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t591->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t603 ).
                    ENDIF.
                    CREATE OBJECT t591->zlnt_json_ownkeys_70e5fd461788.
                    t591->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t604) = |type|.
                    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t605.
                    IF t591->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t591->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
                    ENDIF.
                    t571 = t591.
                  ENDIF.
                  t550 = t571.
                ENDIF.
                t532 = t550.
                t514 = t532.
              ENDIF.
              t506 = t514.
              t501 = t506.
            ENDIF.
            t491 = t501.
            t470 = t491.
          ENDIF.
          t452 = t470.
          t434 = t452.
        ENDIF.
        t425 = t434.
        t424 = t425->zlnt_view_read_sr_9be58e2d4893( ).
        t423 = t424.
        DATA t606 TYPE abap_bool.
        DATA t607 TYPE abap_bool.
        DATA(t608) = t423.
        t607 = xsdbool( t608 IS BOUND ).
        t606 = t607.
        IF t607 = abap_true.
          DATA t609 TYPE abap_bool.
          DATA(t610) = t423.
          t609 = xsdbool( t610 IS BOUND AND t610 IS INSTANCE OF zcl_lnt_structure_type ).
          t606 = t609.
        ENDIF.
        IF t606 = abap_true.
          DATA t611 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t611.
          DATA t612 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t612.
          DATA t613 TYPE REF TO zcl_lnt_structure_type.
          DATA t614 TYPE REF TO zcl_lnt_structure_type.
          DATA(t615) = t423.
          t614 ?= t615.
          t613 = t614.
          DATA t616 TYPE string.
          DATA(t617) = t420.
          t616 = t617.
          DATA t618 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t618.
          DATA t619 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          DATA(t620) = t613.
          t619 = t620->indexed.
          DATA t621 TYPE string.
          DATA(t622) = t616.
          DATA(t623) = strlen( t622 ).
          t621 = t622.
          IF t621 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t621 TO UPPER CASE.
          ELSE.
            t621 = zlnt_runtime_uppe_91169605024d=>full( t621 ).
          ENDIF.
          t618 = t619->get( p0 = t621 ).
          t612 = t618.
          t611 = t612.
          DATA t624 TYPE abap_bool.
          DATA(t625) = t611.
          t624 = xsdbool( t625 IS BOUND ).
          IF t624 = abap_true.
            DATA t626 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t626.
            DATA(t627) = abap_true.
            IF t627 = abap_true.
              DATA t628 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t629) = t611.
              t628 = t629.
              t626 = t628.
            ELSE.
              DATA t630 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t630.
              t626 = t630.
            ENDIF.
            t27 = t626.
          ENDIF.
        ENDIF.
        DATA(t631) = VALUE abap_bool( ).
        DATA(t632) = VALUE abap_bool( ).
        DATA(t633) = VALUE abap_bool( ).
        DATA t634 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t635) = t27.
        t634 = t635.
        DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t637.
        t636 = t637.
        DATA(t638) = VALUE abap_bool( ).
        DATA(t639) = t634.
        IF t639 IS INITIAL.
          t638 = abap_true.
        ENDIF.
        t633 = t638.
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
          DATA t645 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t645.
          DATA t646 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t646.
          DATA t647 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t647.
          DATA t648 TYPE REF TO zcl_lnt_current_scope.
          DATA(t649) = me->scope.
          t648 = t649.
          DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t650.
          DATA t651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t651.
          DATA(t652) = abap_true.
          IF t652 = abap_true.
            DATA(t653) = t417.
            DATA(t654) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t654->has = abap_true.
            t654->value = t653.
            t651 = t654.
          ELSE.
            DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t655.
            t651 = t655.
          ENDIF.
          t650 = t651.
          DATA t656 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t656.
          DATA(t657) = VALUE abap_bool( ).
          DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t659) = t650.
          t658 = t659.
          DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t661.
          t660 = t661.
          DATA(t662) = VALUE abap_bool( ).
          DATA(t663) = t658.
          IF t663 IS INITIAL.
            t662 = abap_true.
          ELSEIF t663->has = abap_false.
            t662 = abap_true.
          ENDIF.
          t657 = t662.
          IF t657 = abap_true.
            DATA t664 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t664.
            t656 = t664.
          ELSE.
            DATA t665 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t665.
            DATA t666 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t667 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t668) = t648.
            t667 = t668->current.
            t666 = t667.
            DATA t669 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t669.
            DATA(t670) = VALUE abap_bool( ).
            DATA(t671) = t666.
            IF t671 IS INITIAL.
              t670 = abap_true.
            ENDIF.
            IF t670 = abap_true.
              DATA t672 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t672.
              t669 = t672.
            ELSE.
              DATA t673 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t674 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t675) = t666.
              t674 = t675.
              DATA t676 TYPE string.
              DATA(t677) = t650.
              t676 = t677->value.
              t673 = t674->find_type( i_name = t676 ).
              t669 = t673.
            ENDIF.
            t665 = t669.
            t656 = t665.
          ENDIF.
          t647 = t656.
          t646 = t647.
          DATA t678 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t678.
          DATA(t679) = VALUE abap_bool( ).
          DATA(t680) = t646.
          IF t680 IS INITIAL.
            t679 = abap_true.
          ENDIF.
          IF t679 = abap_true.
            DATA t681 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t681.
            t678 = t681.
          ELSE.
            DATA t682 TYPE REF TO zcl_lnt_abstract_type.
            DATA t683 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t684 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t685) = t646.
            t684 = t685.
            t683 = t684.
            DATA t686 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t687) = t683.
            t686 = t687->type_cba0.
            t682 = t686.
            t678 = t682.
          ENDIF.
          t645 = t678.
          t644 = t645.
          DATA t688 TYPE abap_bool.
          DATA t689 TYPE abap_bool.
          DATA(t690) = t644.
          t689 = xsdbool( t690 IS BOUND ).
          t688 = t689.
          IF t689 = abap_true.
            DATA t691 TYPE abap_bool.
            DATA t692 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t693) = t644.
            t692 = t693.
            t691 = xsdbool( t692 IS BOUND AND t692 IS INSTANCE OF zcl_lnt_structure_type ).
            t688 = t691.
          ENDIF.
          IF t688 = abap_true.
            DATA t694 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t694.
            DATA t695 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t695.
            DATA t696 TYPE REF TO zcl_lnt_structure_type.
            DATA t697 TYPE REF TO zcl_lnt_structure_type.
            DATA(t698) = t644.
            t697 ?= t698.
            t696 = t697.
            DATA t699 TYPE string.
            DATA(t700) = t420.
            t699 = t700.
            DATA t701 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t701.
            DATA t702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t703) = t696.
            t702 = t703->indexed.
            DATA t704 TYPE string.
            DATA(t705) = t699.
            DATA(t706) = strlen( t705 ).
            t704 = t705.
            IF t704 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t704 TO UPPER CASE.
            ELSE.
              t704 = zlnt_runtime_uppe_91169605024d=>full( t704 ).
            ENDIF.
            t701 = t702->get( p0 = t704 ).
            t695 = t701.
            t694 = t695.
            DATA t707 TYPE abap_bool.
            DATA(t708) = t694.
            t707 = xsdbool( t708 IS BOUND ).
            IF t707 = abap_true.
              DATA t709 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t709.
              DATA(t710) = abap_true.
              IF t710 = abap_true.
                DATA t711 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t712) = t694.
                t711 = t712.
                t709 = t711.
              ELSE.
                DATA t713 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t713.
                t709 = t713.
              ENDIF.
              t27 = t709.
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
          DATA(t724) = t22.
          t723 = t724->type_cba0.
          t722 = t723.
          DATA t725 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t725.
          DATA(t726) = VALUE abap_bool( ).
          DATA(t727) = t722.
          IF t727 IS INITIAL.
            t726 = abap_true.
          ELSEIF t727->has = abap_false.
            t726 = abap_true.
          ENDIF.
          IF t726 = abap_true.
            DATA t728 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t728.
            t725 = t728.
          ELSE.
            DATA(t729) = VALUE abap_bool( ).
            DATA(t730) = VALUE i( ).
            DATA t731 TYPE string.
            DATA(t732) = t722.
            t731 = t732->value.
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
          DATA(t741) = t22.
          t740 = t741->type_cba0.
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
          DATA(t751) = t737.
          IF t751->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t751->load( ).
          CLEAR t750.
          READ TABLE t751->items INDEX 1 INTO t750.
          t749 = t750.
          DATA(t752) = VALUE string( ).
          DATA(t753) = VALUE string( ).
          DATA(t754) = t737.
          IF t754->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t754->load( ).
          CLEAR t753.
          READ TABLE t754->items INDEX 2 INTO t753.
          t752 = t753.
          DATA t755 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t755.
          DATA t756 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t756.
          DATA t757 TYPE REF TO zcl_lnt_current_scope.
          DATA(t758) = me->scope.
          t757 = t758.
          DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t759.
          DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t760.
          DATA(t761) = abap_true.
          IF t761 = abap_true.
            DATA(t762) = t749.
            DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t763->has = abap_true.
            t763->value = t762.
            t760 = t763.
          ELSE.
            DATA t764 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t764.
            t760 = t764.
          ENDIF.
          t759 = t760.
          DATA t765 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t765.
          DATA(t766) = VALUE abap_bool( ).
          DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t768) = t759.
          t767 = t768.
          DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t770.
          t769 = t770.
          DATA(t771) = VALUE abap_bool( ).
          DATA(t772) = t767.
          IF t772 IS INITIAL.
            t771 = abap_true.
          ELSEIF t772->has = abap_false.
            t771 = abap_true.
          ENDIF.
          t766 = t771.
          IF t766 = abap_true.
            DATA t773 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t773.
            t765 = t773.
          ELSE.
            DATA t774 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t774.
            DATA t775 TYPE REF TO zif_lnt_class_definition.
            CLEAR t775.
            DATA t776 TYPE REF TO zif_lnt_class_definition.
            CLEAR t776.
            DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t777.
            DATA t778 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t778.
            DATA(t779) = abap_true.
            IF t779 = abap_true.
              DATA t780 TYPE string.
              DATA(t781) = t759.
              t780 = t781->value.
              DATA(t782) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t782->has = abap_true.
              t782->value = t780.
              t778 = t782.
            ELSE.
              DATA t783 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t783.
              t778 = t783.
            ENDIF.
            t777 = t778.
            DATA t784 TYPE REF TO zif_lnt_class_definition.
            CLEAR t784.
            DATA(t785) = VALUE abap_bool( ).
            DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t787) = t777.
            t786 = t787.
            DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t789.
            t788 = t789.
            DATA(t790) = VALUE abap_bool( ).
            DATA(t791) = t786.
            IF t791 IS INITIAL.
              t790 = abap_true.
            ELSEIF t791->has = abap_false.
              t790 = abap_true.
            ENDIF.
            t785 = t790.
            IF t785 = abap_true.
              DATA t792 TYPE REF TO zif_lnt_class_definition.
              CLEAR t792.
              t784 = t792.
            ELSE.
              DATA t793 TYPE REF TO zif_lnt_class_definition.
              CLEAR t793.
              DATA t794 TYPE REF TO zif_lnt_class_definition.
              CLEAR t794.
              DATA t795 TYPE REF TO zif_lnt_class_definition.
              CLEAR t795.
              DATA t796 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t797 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t798) = t757.
              t797 = t798->current.
              t796 = t797.
              DATA t799 TYPE REF TO zif_lnt_class_definition.
              CLEAR t799.
              DATA(t800) = VALUE abap_bool( ).
              DATA(t801) = t796.
              IF t801 IS INITIAL.
                t800 = abap_true.
              ENDIF.
              IF t800 = abap_true.
                DATA t802 TYPE REF TO zif_lnt_class_definition.
                CLEAR t802.
                t799 = t802.
              ELSE.
                DATA t803 TYPE REF TO zif_lnt_class_definition.
                DATA t804 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t805) = t796.
                t804 = t805.
                DATA t806 TYPE string.
                DATA(t807) = t777.
                t806 = t807->value.
                t803 = t804->find_class_definition( i_name = t806 ).
                t799 = t803.
              ENDIF.
              t795 = t799.
              t794 = t795.
              DATA t808 TYPE REF TO zif_lnt_class_definition.
              CLEAR t808.
              DATA t809 TYPE abap_bool.
              DATA(t810) = t794.
              t809 = xsdbool( t810 IS BOUND ).
              IF t809 = abap_true.
                DATA t811 TYPE REF TO zif_lnt_class_definition.
                CLEAR t811.
                DATA(t812) = abap_true.
                IF t812 = abap_true.
                  DATA t813 TYPE REF TO zif_lnt_class_definition.
                  DATA(t814) = t794.
                  t813 = t814.
                  t811 = t813.
                ELSE.
                  DATA t815 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t815.
                  t811 = t815.
                ENDIF.
                t808 = t811.
              ELSE.
                DATA t816 TYPE REF TO zif_lnt_class_definition.
                CLEAR t816.
                DATA t817 TYPE REF TO zcl_lnt_class.
                CLEAR t817.
                DATA t818 TYPE REF TO zcl_lnt_class.
                CLEAR t818.
                DATA t819 TYPE REF TO zif_lnt_object.
                CLEAR t819.
                DATA t820 TYPE REF TO zif_lnt_registry.
                DATA(t821) = t757.
                t820 = t821->reg.
                DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t822.
                DATA(t823) = abap_true.
                IF t823 = abap_true.
                  DATA(t824) = |CLAS|.
                  DATA(t825) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t825->has = abap_true.
                  t825->value = t824.
                  t822 = t825.
                ELSE.
                  DATA t826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t826.
                  t822 = t826.
                ENDIF.
                DATA t827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t827.
                DATA(t828) = abap_true.
                IF t828 = abap_true.
                  DATA t829 TYPE string.
                  DATA(t830) = t777.
                  t829 = t830->value.
                  DATA(t831) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t831->has = abap_true.
                  t831->value = t829.
                  t827 = t831.
                ELSE.
                  DATA t832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t832.
                  t827 = t832.
                ENDIF.
                t819 = t820->get_object( i_type_9913 = t822 i_name = t827 ).
                DATA t833 TYPE REF TO object.
                t833 = t819.
                t818 ?= t833.
                t817 = t818.
                DATA t834 TYPE REF TO zif_lnt_class_definition.
                CLEAR t834.
                DATA t835 TYPE abap_bool.
                DATA(t836) = t817.
                t835 = xsdbool( t836 IS BOUND ).
                IF t835 = abap_true.
                  DATA t837 TYPE REF TO zif_lnt_class_definition.
                  DATA t838 TYPE REF TO zcl_lnt_class.
                  DATA(t839) = t817.
                  t838 = t839.
                  t837 = t838->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t834 = t837.
                ELSE.
                  DATA t840 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t840.
                  t834 = t840.
                ENDIF.
                t816 = t834.
                t808 = t816.
              ENDIF.
              t793 = t808.
              t784 = t793.
            ENDIF.
            t776 = t784.
            t775 = t776.
            DATA t841 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t841.
            DATA t842 TYPE abap_bool.
            DATA(t843) = t775.
            t842 = xsdbool( t843 IS BOUND ).
            IF t842 = abap_true.
              DATA t844 TYPE REF TO zif_lnt_interface_definition.
              DATA t845 TYPE REF TO zif_lnt_class_definition.
              DATA(t846) = t775.
              t845 = t846.
              t844 ?= t845.
              t841 = t844.
            ELSE.
              DATA t847 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t847.
              DATA t848 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t848.
              DATA t849 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t849.
              DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t850.
              DATA t851 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t851.
              DATA(t852) = abap_true.
              IF t852 = abap_true.
                DATA t853 TYPE string.
                DATA(t854) = t759.
                t853 = t854->value.
                DATA(t855) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t855->has = abap_true.
                t855->value = t853.
                t851 = t855.
              ELSE.
                DATA t856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t856.
                t851 = t856.
              ENDIF.
              t850 = t851.
              DATA t857 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t857.
              DATA(t858) = VALUE abap_bool( ).
              DATA t859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t860) = t850.
              t859 = t860.
              DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t862.
              t861 = t862.
              DATA(t863) = VALUE abap_bool( ).
              DATA(t864) = t859.
              IF t864 IS INITIAL.
                t863 = abap_true.
              ELSEIF t864->has = abap_false.
                t863 = abap_true.
              ENDIF.
              t858 = t863.
              IF t858 = abap_true.
                DATA t865 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t865.
                t857 = t865.
              ELSE.
                DATA t866 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t866.
                DATA t867 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t867.
                DATA t868 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t868.
                DATA t869 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t870 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t871) = t757.
                t870 = t871->current.
                t869 = t870.
                DATA t872 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t872.
                DATA(t873) = VALUE abap_bool( ).
                DATA(t874) = t869.
                IF t874 IS INITIAL.
                  t873 = abap_true.
                ENDIF.
                IF t873 = abap_true.
                  DATA t875 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t875.
                  t872 = t875.
                ELSE.
                  DATA t876 TYPE REF TO zif_lnt_interface_definition.
                  DATA t877 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t878) = t869.
                  t877 = t878.
                  DATA t879 TYPE string.
                  DATA(t880) = t850.
                  t879 = t880->value.
                  t876 = t877->find_interface_definition( i_name = t879 ).
                  t872 = t876.
                ENDIF.
                t868 = t872.
                t867 = t868.
                DATA t881 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t881.
                DATA t882 TYPE abap_bool.
                DATA(t883) = t867.
                t882 = xsdbool( t883 IS BOUND ).
                IF t882 = abap_true.
                  DATA t884 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t884.
                  DATA(t885) = abap_true.
                  IF t885 = abap_true.
                    DATA t886 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t887) = t867.
                    t886 = t887.
                    t884 = t886.
                  ELSE.
                    DATA t888 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t888.
                    t884 = t888.
                  ENDIF.
                  t881 = t884.
                ELSE.
                  DATA t889 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t889.
                  DATA t890 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t890.
                  DATA t891 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t891.
                  DATA t892 TYPE REF TO zif_lnt_object.
                  CLEAR t892.
                  DATA t893 TYPE REF TO zif_lnt_registry.
                  DATA(t894) = t757.
                  t893 = t894->reg.
                  DATA t895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t895.
                  DATA(t896) = abap_true.
                  IF t896 = abap_true.
                    DATA(t897) = |INTF|.
                    DATA(t898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t898->has = abap_true.
                    t898->value = t897.
                    t895 = t898.
                  ELSE.
                    DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t899.
                    t895 = t899.
                  ENDIF.
                  DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t900.
                  DATA(t901) = abap_true.
                  IF t901 = abap_true.
                    DATA t902 TYPE string.
                    DATA(t903) = t850.
                    t902 = t903->value.
                    DATA(t904) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t904->has = abap_true.
                    t904->value = t902.
                    t900 = t904.
                  ELSE.
                    DATA t905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t905.
                    t900 = t905.
                  ENDIF.
                  t892 = t893->get_object( i_type_9913 = t895 i_name = t900 ).
                  DATA t906 TYPE REF TO object.
                  t906 = t892.
                  t891 ?= t906.
                  t890 = t891.
                  DATA t907 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t907.
                  DATA t908 TYPE abap_bool.
                  DATA(t909) = t890.
                  t908 = xsdbool( t909 IS BOUND ).
                  IF t908 = abap_true.
                    DATA t910 TYPE REF TO zif_lnt_interface_definition.
                    DATA t911 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t912 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t913) = t890.
                    t912 = t913.
                    t911 = t912.
                    DATA t914 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t915) = t911.
                    t914 = t915->def.
                    t910 = t914.
                    t907 = t910.
                  ELSE.
                    DATA t916 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t916.
                    t907 = t916.
                  ENDIF.
                  t889 = t907.
                  t881 = t889.
                ENDIF.
                t866 = t881.
                t857 = t866.
              ENDIF.
              t849 = t857.
              t848 = t849.
              DATA t917 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t917.
              DATA t918 TYPE abap_bool.
              DATA(t919) = t848.
              t918 = xsdbool( t919 IS BOUND ).
              IF t918 = abap_true.
                DATA t920 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t920.
                DATA(t921) = abap_true.
                IF t921 = abap_true.
                  DATA t922 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t923) = t848.
                  t922 = t923.
                  t920 = t922.
                ELSE.
                  DATA t924 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t924.
                  t920 = t924.
                ENDIF.
                t917 = t920.
              ELSE.
                DATA t925 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t925.
                t917 = t925.
              ENDIF.
              t847 = t917.
              t841 = t847.
            ENDIF.
            t774 = t841.
            t765 = t774.
          ENDIF.
          t756 = t765.
          t755 = t756.
          DATA t926 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t926.
          DATA t927 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t927.
          DATA t928 TYPE REF TO zcl_lnt_object_oriented.
          DATA(t929) = me->scope.
          t928 = NEW zcl_lnt_object_oriented( i_scope = t929 ).
          DATA(t930) = t755.
          DATA t931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t931.
          DATA(t932) = abap_true.
          IF t932 = abap_true.
            DATA(t933) = t752.
            DATA(t934) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t934->has = abap_true.
            t934->value = t933.
            t931 = t934.
          ELSE.
            DATA t935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t935.
            t931 = t935.
          ENDIF.
          t927 = t928->search_type_name( i_def = t930 i_name = t931 ).
          t926 = t927.
          DATA t936 TYPE abap_bool.
          DATA(t937) = t926.
          t936 = xsdbool( t937 IS BOUND ).
          IF t936 = abap_true.
            DATA t938 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t938.
            DATA(t939) = abap_true.
            IF t939 = abap_true.
              DATA t940 TYPE REF TO zcl_lnt_abstract_type.
              DATA t941 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t942 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t943) = t926.
              t942 = t943.
              t941 = t942.
              DATA t944 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t945) = t941.
              t944 = t945->type_cba0.
              t940 = t944.
              t938 = t940.
            ELSE.
              DATA t946 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t946.
              t938 = t946.
            ENDIF.
            t27 = t938.
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
        DATA(t955) = t22.
        t954 = t955->type_cba0.
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
        DATA(t958) = t12.
        DATA t959 TYPE string.
        DATA t960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t961) = t22.
        t960 = t961->type_cba0.
        t959 = t960->value.
        DATA t962 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t962.
        DATA t963 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t963.
        DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t964.
        t957 = t958->lookup_builtin_type( i_name = t959 i_length = t962 i_decimals_2eed = t963 i_qualified_name = t964 ).
        t956 = t957.
        DATA t965 TYPE abap_bool.
        DATA(t966) = t956.
        t965 = xsdbool( t966 IS BOUND ).
        IF t965 = abap_true.
          DATA t967 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t967.
          DATA(t968) = abap_true.
          IF t968 = abap_true.
            DATA t969 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t970) = t956.
            t969 = t970.
            t967 = t969.
          ELSE.
            DATA t971 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t971.
            t967 = t971.
          ENDIF.
          t27 = t967.
        ENDIF.
        DATA(t972) = VALUE abap_bool( ).
        DATA(t973) = VALUE abap_bool( ).
        DATA(t974) = VALUE abap_bool( ).
        DATA t975 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t976) = t27.
        t975 = t976.
        DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t978.
        t977 = t978.
        DATA(t979) = VALUE abap_bool( ).
        DATA(t980) = t975.
        IF t980 IS INITIAL.
          t979 = abap_true.
        ENDIF.
        t974 = t979.
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
          DATA t986 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t986.
          DATA t987 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t987.
          DATA t988 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t988.
          DATA t989 TYPE REF TO zcl_lnt_current_scope.
          DATA(t990) = me->scope.
          t989 = t990.
          DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t991.
          DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t992.
          DATA(t993) = abap_true.
          IF t993 = abap_true.
            DATA t994 TYPE string.
            DATA t995 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t996) = t22.
            t995 = t996->type_cba0.
            t994 = t995->value.
            DATA(t997) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t997->has = abap_true.
            t997->value = t994.
            t992 = t997.
          ELSE.
            DATA t998 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t998.
            t992 = t998.
          ENDIF.
          t991 = t992.
          DATA t999 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t999.
          DATA(t1000) = VALUE abap_bool( ).
          DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1002) = t991.
          t1001 = t1002.
          DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1004.
          t1003 = t1004.
          DATA(t1005) = VALUE abap_bool( ).
          DATA(t1006) = t1001.
          IF t1006 IS INITIAL.
            t1005 = abap_true.
          ELSEIF t1006->has = abap_false.
            t1005 = abap_true.
          ENDIF.
          t1000 = t1005.
          IF t1000 = abap_true.
            DATA t1007 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1007.
            t999 = t1007.
          ELSE.
            DATA t1008 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1008.
            DATA t1009 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t1010 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t1011) = t989.
            t1010 = t1011->current.
            t1009 = t1010.
            DATA t1012 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1012.
            DATA(t1013) = VALUE abap_bool( ).
            DATA(t1014) = t1009.
            IF t1014 IS INITIAL.
              t1013 = abap_true.
            ENDIF.
            IF t1013 = abap_true.
              DATA t1015 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t1015.
              t1012 = t1015.
            ELSE.
              DATA t1016 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t1017 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t1018) = t1009.
              t1017 = t1018.
              DATA t1019 TYPE string.
              DATA(t1020) = t991.
              t1019 = t1020->value.
              t1016 = t1017->find_type( i_name = t1019 ).
              t1012 = t1016.
            ENDIF.
            t1008 = t1012.
            t999 = t1008.
          ENDIF.
          t988 = t999.
          t987 = t988.
          DATA t1021 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1021.
          DATA(t1022) = VALUE abap_bool( ).
          DATA(t1023) = t987.
          IF t1023 IS INITIAL.
            t1022 = abap_true.
          ENDIF.
          IF t1022 = abap_true.
            DATA t1024 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1024.
            t1021 = t1024.
          ELSE.
            DATA t1025 TYPE REF TO zcl_lnt_abstract_type.
            DATA t1026 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1027 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1028) = t987.
            t1027 = t1028.
            t1026 = t1027.
            DATA t1029 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1030) = t1026.
            t1029 = t1030->type_cba0.
            t1025 = t1029.
            t1021 = t1025.
          ENDIF.
          t986 = t1021.
          t985 = t986.
          DATA t1031 TYPE abap_bool.
          DATA(t1032) = t985.
          t1031 = xsdbool( t1032 IS BOUND ).
          IF t1031 = abap_true.
            DATA t1033 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1033.
            DATA(t1034) = abap_true.
            IF t1034 = abap_true.
              DATA t1035 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1036) = t985.
              t1035 = t1036.
              t1033 = t1035.
            ELSE.
              DATA t1037 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1037.
              t1033 = t1037.
            ENDIF.
            t27 = t1033.
          ENDIF.
        ENDIF.
        DATA(t1038) = VALUE abap_bool( ).
        DATA(t1039) = VALUE abap_bool( ).
        DATA(t1040) = VALUE abap_bool( ).
        DATA t1041 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1042) = t27.
        t1041 = t1042.
        DATA t1043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1044.
        t1043 = t1044.
        DATA(t1045) = VALUE abap_bool( ).
        DATA(t1046) = t1041.
        IF t1046 IS INITIAL.
          t1045 = abap_true.
        ENDIF.
        t1040 = t1045.
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
          DATA t1052 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1052.
          DATA t1053 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1054 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t1055) = me->scope.
          DATA t1056 TYPE string.
          DATA t1057 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1058) = t22.
          t1057 = t1058->type_cba0.
          t1056 = t1057->value.
          t1054 = t1055->find_type_pool_type( i_name = t1056 ).
          t1053 = t1054.
          DATA t1059 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1059.
          DATA(t1060) = VALUE abap_bool( ).
          DATA(t1061) = t1053.
          IF t1061 IS INITIAL.
            t1060 = abap_true.
          ENDIF.
          IF t1060 = abap_true.
            DATA t1062 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1062.
            t1059 = t1062.
          ELSE.
            DATA t1063 TYPE REF TO zcl_lnt_abstract_type.
            DATA t1064 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1065 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1066) = t1053.
            t1065 = t1066.
            t1064 = t1065.
            DATA t1067 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1068) = t1064.
            t1067 = t1068->type_cba0.
            t1063 = t1067.
            t1059 = t1063.
          ENDIF.
          t1052 = t1059.
          t1051 = t1052.
          DATA t1069 TYPE abap_bool.
          DATA(t1070) = t1051.
          t1069 = xsdbool( t1070 IS BOUND ).
          IF t1069 = abap_true.
            DATA t1071 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1071.
            DATA(t1072) = abap_true.
            IF t1072 = abap_true.
              DATA t1073 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1074) = t1051.
              t1073 = t1074.
              t1071 = t1073.
            ELSE.
              DATA t1075 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1075.
              t1071 = t1075.
            ENDIF.
            t27 = t1071.
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
        DATA t1081 TYPE REF TO zcl_lnt_ddic.
        DATA t1082 TYPE REF TO zcl_lnt_ddic.
        DATA(t1083) = me->reg.
        t1082 = NEW zcl_lnt_ddic( i_reg_f149 = t1083 ).
        t1081 = t1082.
        DATA t1084 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1085 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1086) = t22.
        t1085 = t1086->type_cba0.
        t1084 = t1085.
        DATA(t1087) = VALUE abap_bool( ).
        DATA(t1088) = VALUE abap_bool( ).
        DATA t1089 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1090) = t1084.
        t1089 = t1090.
        DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1092.
        t1091 = t1092.
        DATA(t1093) = VALUE abap_bool( ).
        DATA(t1094) = t1089.
        IF t1094 IS INITIAL.
          t1093 = abap_true.
        ELSEIF t1094->has = abap_false.
          t1093 = abap_true.
        ENDIF.
        t1088 = t1093.
        IF t1088 = abap_true.
          DATA(t1095) = abap_true.
          t1087 = t1095.
        ELSE.
          DATA t1096 TYPE abap_bool.
          DATA t1097 TYPE REF TO zif_lnt_registry.
          DATA(t1098) = t1081.
          t1097 = t1098->reg.
          DATA t1099 TYPE string.
          DATA(t1100) = t1084.
          t1099 = t1100->value.
          t1096 = t1097->in_error_namespace( i_name = t1099 ).
          t1087 = t1096.
        ENDIF.
        t1080 = t1087.
        DATA(t1101) = abap_false.
        t1079 = xsdbool( t1080 = t1101 ).
        t1076 = t1079.
      ENDIF.
      IF t1076 = abap_true.
        DATA t1102 TYPE REF TO zcl_lnt_void_type.
        DATA t1103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1104) = t22.
        t1103 = t1104->type_cba0.
        DATA t1105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1105.
        t1102 = zcl_lnt_void_type=>get_db65( i_voided = t1103 i_qualified_name = t1105 ).
        t27 = t1102.
      ENDIF.
      DATA(t1106) = VALUE abap_bool( ).
      DATA(t1107) = t15.
      DATA t1108 TYPE string.
      DATA t1109 TYPE string.
      DATA t1110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1111) = t22.
      t1110 = t1111->name.
      t1109 = t1110->value.
      DATA(t1112) = strlen( t1109 ).
      t1108 = t1109.
      IF t1108 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1108 TO UPPER CASE.
      ELSE.
        t1108 = zlnt_runtime_uppe_91169605024d=>full( t1108 ).
      ENDIF.
      t1106 = t1107->has( p0 = t1108 ).
      IF t1106 = abap_true.
        CONTINUE.
      ELSE.
        DATA t1113 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t1114 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t1115 TYPE REF TO zcl_lnt_position.
        DATA t1116 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t1117) = t2.
        t1116 = t1117.
        DATA t1118 TYPE REF TO zcl_lnt_position.
        DATA(t1119) = t1116.
        t1118 = t1119->start.
        t1115 = t1118.
        DATA t1120 TYPE string.
        DATA t1121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1122) = t22.
        t1121 = t1122->name.
        t1120 = t1121->value.
        t1114 = NEW zcl_lnt_lx_identifier( i_start = t1115 i_str = t1120 ).
        t1113 = t1114.
        DATA t1123 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1123.
        DATA t1124 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1124.
        DATA(t1125) = t1113.
        DATA(t1126) = t3.
        DATA t1127 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1128) = t27.
        t1127 = t1128.
        DATA t1129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t1129.
        DATA(t1130) = abap_true.
        IF t1130 = abap_true.
          DATA t1131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1131.
          DATA t1132 TYPE REF TO zcl_lnt_ifnctn_mdl_prmtr.
          DATA(t1133) = t22.
          t1132 = t1133.
          DATA t1134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1134.
          DATA t1135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t1136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1136.
          t1135 = t1136.
          DATA t1137 TYPE abap_bool.
          DATA t1138 TYPE string.
          DATA(t1139) = t1132.
          t1138 = t1139->direction.
          DATA(t1140) = |importing|.
          t1137 = xsdbool( t1138 = t1140 ).
          IF t1137 = abap_true.
            DATA(t1141) = t1135.
            DATA(t1142) = |function_module_importing|.
            t1141->load( ).
            APPEND t1142 TO t1141->items.
            t1141->save( ).
          ELSE.
            DATA t1143 TYPE abap_bool.
            DATA t1144 TYPE string.
            DATA(t1145) = t1132.
            t1144 = t1145->direction.
            DATA(t1146) = |exporting|.
            t1143 = xsdbool( t1144 = t1146 ).
            IF t1143 = abap_true.
              DATA(t1147) = t1135.
              DATA(t1148) = |function_module_exporting|.
              t1147->load( ).
              APPEND t1148 TO t1147->items.
              t1147->save( ).
            ELSE.
              DATA t1149 TYPE abap_bool.
              DATA t1150 TYPE string.
              DATA(t1151) = t1132.
              t1150 = t1151->direction.
              DATA(t1152) = |changing|.
              t1149 = xsdbool( t1150 = t1152 ).
              IF t1149 = abap_true.
                DATA(t1153) = t1135.
                DATA(t1154) = |function_module_changing|.
                t1153->load( ).
                APPEND t1154 TO t1153->items.
                t1153->save( ).
              ELSE.
                DATA t1155 TYPE abap_bool.
                DATA t1156 TYPE string.
                DATA(t1157) = t1132.
                t1156 = t1157->direction.
                DATA(t1158) = |tables|.
                t1155 = xsdbool( t1156 = t1158 ).
                IF t1155 = abap_true.
                  DATA(t1159) = t1135.
                  DATA(t1160) = |function_module_tables|.
                  t1159->load( ).
                  APPEND t1160 TO t1159->items.
                  t1159->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA(t1161) = VALUE abap_bool( ).
          DATA t1162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t1163) = t1132.
          t1162 = t1163->pass_by_value.
          IF t1162 IS BOUND.
            IF t1162->has = abap_true.
              t1161 = xsdbool( t1162->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t1161 = abap_true.
            DATA(t1164) = t1135.
            DATA(t1165) = |pass_by_value|.
            t1164->load( ).
            APPEND t1165 TO t1164->items.
            t1164->save( ).
          ENDIF.
          DATA(t1166) = t1135.
          t1134 = t1166.
          t1131 = t1134.
          t1129 = t1131.
        ELSE.
          DATA t1167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1167.
          t1129 = t1167.
        ENDIF.
        DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1168.
        t1124 = NEW zcl_lnt_typed_identifier( i_token = t1125 i_filename = t1126 i_type_9913 = t1127 i_meta = t1129 i_value = t1168 ).
        t1123 = t1124.
        DATA t1169 TYPE abap_bool.
        DATA t1170 TYPE abap_bool.
        DATA(t1171) = t4.
        t1170 = t1171->value.
        DATA(t1172) = abap_true.
        t1169 = xsdbool( t1170 = t1172 ).
        IF t1169 = abap_true.
          DATA t1173 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1173.
          DATA t1174 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1174.
          DATA t1175 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1176) = me->scope.
          t1175 = t1176.
          DATA t1177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1179) = t22.
          t1178 = t1179->name.
          t1177 = t1178.
          DATA t1180 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1180.
          DATA(t1181) = VALUE abap_bool( ).
          DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1183) = t1177.
          t1182 = t1183.
          DATA t1184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1185.
          t1184 = t1185.
          DATA(t1186) = VALUE abap_bool( ).
          DATA(t1187) = t1182.
          IF t1187 IS INITIAL.
            t1186 = abap_true.
          ELSEIF t1187->has = abap_false.
            t1186 = abap_true.
          ENDIF.
          t1181 = t1186.
          IF t1181 = abap_true.
            DATA t1188 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1188.
            t1180 = t1188.
          ELSE.
            DATA t1189 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1189.
            DATA t1190 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1190.
            DATA t1191 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1191.
            DATA t1192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t1193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t1194) = t1175.
            t1193 = t1194->current.
            t1192 = t1193.
            DATA t1195 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1195.
            DATA(t1196) = VALUE abap_bool( ).
            DATA(t1197) = t1192.
            IF t1197 IS INITIAL.
              t1196 = abap_true.
            ENDIF.
            IF t1196 = abap_true.
              DATA t1198 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t1198.
              t1195 = t1198.
            ELSE.
              DATA t1199 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t1200 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t1201) = t1192.
              t1200 = t1201.
              DATA t1202 TYPE string.
              DATA(t1203) = t1177.
              t1202 = t1203->value.
              t1199 = t1200->find_variable( i_name = t1202 ).
              t1195 = t1199.
            ENDIF.
            t1191 = t1195.
            t1190 = t1191.
            DATA t1204 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1204.
            DATA t1205 TYPE abap_bool.
            DATA(t1206) = t1190.
            t1205 = xsdbool( t1206 IS BOUND ).
            IF t1205 = abap_true.
              DATA t1207 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t1207.
              DATA(t1208) = abap_true.
              IF t1208 = abap_true.
                DATA t1209 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t1210) = t1190.
                t1209 = t1210.
                t1207 = t1209.
              ELSE.
                DATA t1211 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t1211.
                t1207 = t1211.
              ENDIF.
              t1204 = t1207.
            ELSE.
              DATA t1212 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t1212.
              DATA(t1213) = t1175.
              DATA t1214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1214.
              DATA(t1215) = abap_true.
              IF t1215 = abap_true.
                DATA t1216 TYPE string.
                DATA(t1217) = t1177.
                t1216 = t1217->value.
                DATA(t1218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1218->has = abap_true.
                t1218->value = t1216.
                t1214 = t1218.
              ELSE.
                DATA t1219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1219.
                t1214 = t1219.
              ENDIF.
              t1212 = t1213->find_type_pool_constant( i_name = t1214 ).
              t1204 = t1212.
            ENDIF.
            t1189 = t1204.
            t1180 = t1189.
          ENDIF.
          t1174 = t1180.
          t1173 = t1174.
          DATA(t1220) = VALUE abap_bool( ).
          DATA t1221 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t1222) = t1173.
          t1221 = t1222.
          DATA t1223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1224.
          t1223 = t1224.
          DATA(t1225) = VALUE abap_bool( ).
          DATA(t1226) = t1221.
          IF t1226 IS INITIAL.
            t1225 = abap_true.
          ENDIF.
          t1220 = t1225.
          IF t1220 = abap_true.
            DATA(t1227) = me->scope.
            DATA t1228 TYPE string.
            DATA t1229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t1230) = t22.
            t1229 = t1230->name.
            t1228 = t1229->value.
            DATA(t1231) = t1123.
            t1227->add_named_identifier( i_name = t1228 i_identifier = t1231 ).
          ENDIF.
        ELSE.
          DATA(t1232) = me->scope.
          DATA t1233 TYPE string.
          DATA t1234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1235) = t22.
          t1234 = t1235->name.
          t1233 = t1234->value.
          DATA(t1236) = t1123.
          t1232->add_named_identifier( i_name = t1233 i_identifier = t1236 ).
        ENDIF.
        DATA t1237 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t1237.
        DATA(t1238) = t15.
        DATA t1239 TYPE string.
        DATA t1240 TYPE string.
        DATA t1241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1242) = t22.
        t1241 = t1242->name.
        t1240 = t1241->value.
        DATA(t1243) = strlen( t1240 ).
        t1239 = t1240.
        IF t1239 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1239 TO UPPER CASE.
        ELSE.
          t1239 = zlnt_runtime_uppe_91169605024d=>full( t1239 ).
        ENDIF.
        t1237 = t1238->add( p0 = t1239 ).
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
    DATA(t6) = t1.
    t5 = t6->direction.
    DATA(t7) = |importing|.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA(t8) = t2.
      DATA(t9) = |function_module_importing|.
      t8->load( ).
      APPEND t9 TO t8->items.
      t8->save( ).
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA(t12) = t1.
      t11 = t12->direction.
      DATA(t13) = |exporting|.
      t10 = xsdbool( t11 = t13 ).
      IF t10 = abap_true.
        DATA(t14) = t2.
        DATA(t15) = |function_module_exporting|.
        t14->load( ).
        APPEND t15 TO t14->items.
        t14->save( ).
      ELSE.
        DATA t16 TYPE abap_bool.
        DATA t17 TYPE string.
        DATA(t18) = t1.
        t17 = t18->direction.
        DATA(t19) = |changing|.
        t16 = xsdbool( t17 = t19 ).
        IF t16 = abap_true.
          DATA(t20) = t2.
          DATA(t21) = |function_module_changing|.
          t20->load( ).
          APPEND t21 TO t20->items.
          t20->save( ).
        ELSE.
          DATA t22 TYPE abap_bool.
          DATA t23 TYPE string.
          DATA(t24) = t1.
          t23 = t24->direction.
          DATA(t25) = |tables|.
          t22 = xsdbool( t23 = t25 ).
          IF t22 = abap_true.
            DATA(t26) = t2.
            DATA(t27) = |function_module_tables|.
            t26->load( ).
            APPEND t27 TO t26->items.
            t26->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t30) = t1.
    t29 = t30->pass_by_value.
    IF t29 IS BOUND.
      IF t29->has = abap_true.
        t28 = xsdbool( t29->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t28 = abap_true.
      DATA(t31) = t2.
      DATA(t32) = |pass_by_value|.
      t31->load( ).
      APPEND t32 TO t31->items.
      t31->save( ).
    ENDIF.
    DATA(t33) = t2.
    result = t33.

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
