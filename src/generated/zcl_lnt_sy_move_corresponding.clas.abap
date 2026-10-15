* TS: src/abap/5_syntax/statements/move_corresponding.ts:10:1 MoveCorresponding
CLASS zcl_lnt_sy_move_corresponding DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_move_corresponding IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t1.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0.
    t8 = t9->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = t3.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    t11 = t12.
    IF t12 = abap_false.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = t7.
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t20.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t19 = t24.
      t11 = t19.
    ENDIF.
    IF t11 = abap_true.
      DATA t26 TYPE string.
      DATA(t27) = |MoveCorresponding, source or target not found|.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = t2.
      t28 = t29->issues.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA(t31) = t2.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = t1.
      t32 = t33->get_first_token( ).
      DATA(t34) = t26.
      DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t35.
      t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t31 i_token = t32 i_message_26cb = t34 i_fix = t35 ).
      t28->load( ).
      APPEND t30 TO t28->items.
      t28->save( ).
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t38.
    DATA(t39) = abap_true.
    IF t39 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA(t41) = t3.
      t40 = t41.
      t38 = t40.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      t38 = t42.
    ENDIF.
    DATA(t43) = t2.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t47.
    t37 = zcl_lnt_sy_source=>run_syntax( i_node = t38 i_input_967e = t43 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
    t36 = t37.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    DATA(t51) = t7.
    t50 = t51.
    DATA(t52) = t2.
    t49 = zcl_lnt_sy_target=>run_syntax( i_node = t50 i_input_967e = t52 ).
    t48 = t49.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    DATA t58 TYPE REF TO zcl_lnt_current_scope.
    DATA t59 TYPE REF TO zcl_lnt_current_scope.
    DATA(t60) = t2.
    t59 = t60->scope.
    t58 = t59.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    DATA t62 TYPE REF TO zif_lnt_configuration.
    DATA t63 TYPE REF TO zif_lnt_registry.
    DATA(t64) = t58.
    t63 = t64->reg.
    t62 = t63->get_config( ).
    t61 = t62->get_release( ).
    t57 = t61.
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t67.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t67 = zcl_lnt_version_module=>release_b8cd.
    DATA(t68) = |v740sp05|.
    t66 = t67->get( p0 = t68 ).
    t65 = t66.
    t56 = zcl_lnt_version_module=>release_at_least( i_running = t57 i_required = t65 ).
    t55 = xsdbool( t56 = abap_false ).
    t54 = t55.
    IF t55 = abap_true.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE string.
      DATA t71 TYPE REF TO zcl_lnt_current_scope.
      DATA t72 TYPE REF TO zcl_lnt_current_scope.
      DATA(t73) = t2.
      t72 = t73->scope.
      t71 = t72.
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zif_lnt_configuration.
      DATA t76 TYPE REF TO zif_lnt_registry.
      DATA(t77) = t71.
      t76 = t77->reg.
      t75 = t76->get_config( ).
      t74 = t75->get_language_version( ).
      t70 = t74.
      DATA(t78) = |Cloud|.
      t69 = xsdbool( t70 <> t78 ).
      t54 = t69.
    ENDIF.
    t53 = t54.
    IF t54 = abap_true.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE REF TO zcl_lnt_current_scope.
      DATA t82 TYPE REF TO zcl_lnt_current_scope.
      DATA(t83) = t2.
      t82 = t83->scope.
      t81 = t82.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE REF TO zif_lnt_configuration.
      DATA t86 TYPE REF TO zif_lnt_registry.
      DATA(t87) = t81.
      t86 = t87->reg.
      t85 = t86->get_config( ).
      t84 = t85->is_open_abap( ).
      t80 = t84.
      t79 = xsdbool( t80 = abap_false ).
      t53 = t79.
    ENDIF.
    IF t53 = abap_true.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE abap_bool.
      DATA(t90) = t36.
      t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t88 = t89.
      IF t89 = abap_true.
        DATA t91 TYPE abap_bool.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t94 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t95) = t36.
        t94 ?= t95.
        t93 = t94.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE REF TO zcl_lnt_itable_options.
        DATA(t98) = t93.
        t97 = t98->options.
        t96 = t97->zlnt_view_read_sr_ec4602663c93( ).
        t92 = t96.
        DATA(t99) = abap_false.
        t91 = xsdbool( t92 = t99 ).
        t88 = t91.
      ENDIF.
      IF t88 = abap_true.
        DATA t100 TYPE string.
        DATA(t101) = |MOVE-CORRESPONDING with tables possible from v740sp05|.
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t103) = t2.
        t102 = t103->issues.
        DATA t104 TYPE REF TO zcl_lnt_issue.
        DATA(t105) = t2.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t107) = t1.
        t106 = t107->get_first_token( ).
        DATA(t108) = t100.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t109.
        t104 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t105 i_token = t106 i_message_26cb = t108 i_fix = t109 ).
        t102->load( ).
        APPEND t104 TO t102->items.
        t102->save( ).
        RETURN.
      ELSE.
        DATA t110 TYPE abap_bool.
        DATA t111 TYPE abap_bool.
        DATA(t112) = t48.
        t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t110 = t111.
        IF t111 = abap_true.
          DATA t113 TYPE abap_bool.
          DATA t114 TYPE abap_bool.
          DATA t115 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t116 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t117) = t48.
          t116 ?= t117.
          t115 = t116.
          DATA t118 TYPE abap_bool.
          DATA t119 TYPE REF TO zcl_lnt_itable_options.
          DATA(t120) = t115.
          t119 = t120->options.
          t118 = t119->zlnt_view_read_sr_ec4602663c93( ).
          t114 = t118.
          DATA(t121) = abap_false.
          t113 = xsdbool( t114 = t121 ).
          t110 = t113.
        ENDIF.
        IF t110 = abap_true.
          DATA t122 TYPE string.
          DATA(t123) = |MOVE-CORRESPONDING with tables possible from v740sp05|.
          t122 = t123.
          DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t125) = t2.
          t124 = t125->issues.
          DATA t126 TYPE REF TO zcl_lnt_issue.
          DATA(t127) = t2.
          DATA t128 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t129) = t1.
          t128 = t129->get_first_token( ).
          DATA(t130) = t122.
          DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t131.
          t126 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t127 i_token = t128 i_message_26cb = t130 i_fix = t131 ).
          t124->load( ).
          APPEND t126 TO t124->items.
          t124->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d935_eacefec0aaae.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
