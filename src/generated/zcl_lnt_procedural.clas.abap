* TS: src/abap/5_syntax/_procedural.ts:21:1 Procedural
CLASS zcl_lnt_procedural DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_procedural IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t3) = CAST zcl_lnt_current_scope( t2 ).
    me->scope = t3.
    DATA(t4) = CAST zif_lnt_registry( t1 ).
    me->reg = t4.
  ENDMETHOD.
  METHOD add_all_form_definitions.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = CAST zcl_lnt_abap_file( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA(t8) = CAST zcl_lnt_abap_file( t5 ).
    t7 = t8->structure.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE abap_bool.
    DATA(t10) = CAST zcl_lnt_structure_node( t3 ).
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_syntax_input.
      DATA t12 TYPE REF TO zcl_lnt_syntax_input.
      DATA t13 TYPE REF TO zcl_lnt_current_scope.
      DATA(t14) = CAST zif_lnt_registry( me->reg ).
      DATA(t15) = CAST zcl_lnt_abap_object( t2 ).
      t13 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t14 i_obj_1ed0 = t15 ).
      DATA t16 TYPE string.
      DATA t17 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t18) = CAST zcl_lnt_abap_file( t1 ).
      t17 = t18.
      DATA t19 TYPE string.
      DATA(t20) = CAST zcl_lnt_abstract_file( t17 ).
      t19 = t20->filename.
      t16 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t22.
      t12 = NEW zcl_lnt_syntax_input( i_scope = t13 i_filename = t16 i_issues = t21 i_deferred = t22 ).
      t11 = t12.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      DATA(t25) = CAST zcl_lnt_structure_node( t3 ).
      t24 = t25.
      DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d680_7b1b0c92e5ad ).
      t23 = t24->find_all_structures( i_type_9913 = t26 ).
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      LOOP AT t23->items INTO t28.
        t27 ?= t28.
        DATA t29 TYPE REF TO zcl_lnt_current_scope.
        DATA(t30) = CAST zcl_lnt_current_scope( me->scope ).
        t29 = t30.
        DATA t31 TYPE REF TO zif_lnt_form_definition.
        DATA t32 TYPE REF TO zcl_lnt_ty_form_definition.
        DATA(t33) = CAST zcl_lnt_structure_node( t27 ).
        DATA(t34) = CAST zcl_lnt_syntax_input( t11 ).
        t32 = NEW zcl_lnt_ty_form_definition( i_node = t33 i_input_967e = t34 ).
        t31 = t32.
        DATA(t35) = CAST zcl_lnt_current_scope( t29 ).
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t38.
        t37 = t38.
        DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
        DATA(t40) = CAST zif_lnt_form_definition( t31 ).
        APPEND t40 TO t39->items.
        DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t37 ).
        t36 = t41.
        t35->add_form_definitions( i_f = t36 ).
      ENDLOOP.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    DATA t43 TYPE REF TO zcl_lnt_structure_node.
    DATA t44 TYPE REF TO zcl_lnt_abap_file.
    DATA(t45) = CAST zcl_lnt_abap_file( t1 ).
    t44 = t45.
    DATA t46 TYPE REF TO zcl_lnt_structure_node.
    DATA(t47) = CAST zcl_lnt_abap_file( t44 ).
    t46 = t47->structure.
    t43 = t46.
    t42 = t43.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zcl_lnt_structure_node.
    DATA(t50) = CAST zcl_lnt_structure_node( t42 ).
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    t51 = t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = CAST zcl_lnt_structure_node( t49 ).
    IF t54 IS INITIAL.
      t53 = abap_true.
    ENDIF.
    t48 = t53.
    IF t48 = abap_true.
      RETURN.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zcl_lnt_structure_node.
    DATA(t58) = CAST zcl_lnt_structure_node( t42 ).
    t57 = t58.
    DATA(t59) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d512_11174d785e8e ).
    t56 = t57->find_all_statements( i_type_9913 = t59 ).
    t55 = t56.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    DATA t61 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t61.
    DATA t62 TYPE REF TO object.
    CLEAR t62.
    LOOP AT t60->items INTO t62.
      t61 ?= t62.
      DATA t63 TYPE REF TO zcl_lnt_abap_file.
      DATA t64 TYPE REF TO zcl_lnt_abap_file.
      DATA(t65) = CAST zcl_lnt_statement_node( t61 ).
      DATA(t66) = CAST zcl_lnt_abap_object( t2 ).
      t64 = me->find_include( i_node = t65 i_obj_1ed0 = t66 ).
      t63 = t64.
      DATA t67 TYPE abap_bool.
      DATA(t68) = CAST zcl_lnt_abap_file( t63 ).
      t67 = xsdbool( t68 IS BOUND ).
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_abap_file.
        DATA(t70) = CAST zcl_lnt_abap_file( t63 ).
        t69 = t70.
        DATA(t71) = CAST zcl_lnt_abap_object( t2 ).
        me->add_all_form_definitions( i_file = t69 i_obj_1ed0 = t71 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD find_include.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d83_c58d804fe3d16b ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t3 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t8 ).
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
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = CAST zcl_lnt_expression_node( t3 ).
    t19 = t20.
    t18 = t19->get_first_token(  ).
    t17 = t18.
    DATA t21 TYPE string.
    DATA(t22) = CAST zcl_lnt_abstract_token( t17 ).
    t21 = t22->str.
    t16 = t21.
    t15 = t16.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zcl_lnt_abap_object( t2 ).
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_function_group ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      DATA t27 TYPE REF TO zcl_lnt_function_group.
      DATA(t28) = CAST zcl_lnt_abap_object( t2 ).
      t27 ?= t28.
      DATA(t29) = t15.
      t26 = t27->get_include( i_name = t29 ).
      t25 = t26.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zcl_lnt_abap_file.
      DATA(t32) = CAST zcl_lnt_abap_file( t25 ).
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = CAST zcl_lnt_abap_file( t31 ).
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
          DATA(t41) = CAST zcl_lnt_abap_file( t25 ).
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
    DATA(t46) = CAST zif_lnt_registry( me->reg ).
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
    t57 = t45.
    t44 ?= t57.
    t43 = t44.
    DATA(t58) = VALUE abap_bool( ).
    DATA t59 TYPE REF TO zcl_lnt_abap_object.
    DATA(t60) = CAST zcl_lnt_abap_object( t43 ).
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    t61 = t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = CAST zcl_lnt_abap_object( t59 ).
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
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t70 TYPE REF TO zcl_lnt_abap_object.
        DATA t71 TYPE REF TO zcl_lnt_abap_object.
        DATA(t72) = CAST zcl_lnt_abap_object( t43 ).
        t71 = t72.
        t70 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t74) = CAST zcl_lnt_abap_object( t70 ).
        t73 = t74->parsed.
        t69 = t73.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        READ TABLE t69->items INDEX 1 INTO t75.
        t68 ?= t75.
        t66 = t68.
      ELSE.
        DATA t76 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t76.
        t66 = t76.
      ENDIF.
      result = t66.
      RETURN.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t78) = CAST zif_lnt_registry( me->reg ).
    DATA(t79) = |FUGR|.
    t77 = t78->get_objects_by_type( i_type_9913 = t79 ).
    DATA t80 TYPE REF TO zif_lnt_object.
    CLEAR t80.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    LOOP AT t77->items INTO t81.
      t80 ?= t81.
      DATA t82 TYPE abap_bool.
      DATA(t83) = CAST zif_lnt_object( t80 ).
      t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_function_group ).
      IF t82 = abap_true.
        DATA t84 TYPE REF TO zcl_lnt_abap_file.
        DATA t85 TYPE REF TO zcl_lnt_abap_file.
        DATA t86 TYPE REF TO zcl_lnt_function_group.
        DATA(t87) = CAST zif_lnt_object( t80 ).
        DATA t88 TYPE REF TO object.
        t88 = t87.
        t86 ?= t88.
        DATA(t89) = t15.
        t85 = t86->get_include( i_name = t89 ).
        t84 = t85.
        DATA t90 TYPE abap_bool.
        DATA(t91) = CAST zcl_lnt_abap_file( t84 ).
        t90 = xsdbool( t91 IS BOUND ).
        IF t90 = abap_true.
          DATA t92 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_abap_file.
            DATA(t95) = CAST zcl_lnt_abap_file( t84 ).
            t94 = t95.
            t92 = t94.
          ELSE.
            DATA t96 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t96.
            t92 = t96.
          ENDIF.
          result = t92.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t97 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t97.
    result = t97.

  ENDMETHOD.
  METHOD find_function_group_scope.
    DATA(t1) = CAST zcl_lnt_function_group( i_fg ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_procedural.ts:93|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_function_scope.
    DATA(t1) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t3) = i_filename.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/abap/5_syntax/_procedural.ts:114|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD add_function_scope.
    DATA(t1) = CAST zcl_lnt_fnctn_mdl_dfntn( i_definition ).
    DATA(t2) = CAST zcl_lnt_abstract_token( i_name_token ).
    DATA(t3) = i_filename.
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_ignore_if_already_exists ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/abap/5_syntax/_procedural.ts:134|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD function_module_parameter_meta.
    DATA(t1) = CAST zcl_lnt_ifnctn_mdl_prmtr( i_param ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_procedural.ts:237|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d752_e072d0e4db32.
  ENDMETHOD.
ENDCLASS.
