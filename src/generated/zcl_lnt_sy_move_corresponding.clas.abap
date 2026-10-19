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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t4 = t1->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0.
    t8 = t1->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12 = xsdbool( t3 IS INITIAL ).
    t11 = t12.
    IF t12 = abap_false.
      DATA(t19) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t19 = xsdbool( t7 IS INITIAL ).
      t11 = t19.
    ENDIF.
    IF t11 = abap_true.
      DATA(t27) = |MoveCorresponding, source or target not found|.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t28 = t2->issues.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      t32 = t1->get_first_token( ).
      DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t32 i_message_26cb = t27 i_fix = t35 ).
      t28->load( ).
      APPEND t30 TO t28->items.
      t28->save( ).
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type.
    DATA t37 TYPE REF TO zcl_lnt_abstract_type.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    t38 = t3.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t37 = zcl_lnt_sy_source=>run_syntax( i_node = t38 i_input_967e = t2 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
    t36 = t37.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    t50 = t7.
    t49 = zcl_lnt_sy_target=>run_syntax( i_node = t50 i_input_967e = t2 ).
    t48 = t49.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    DATA t59 TYPE REF TO zcl_lnt_current_scope.
    t59 = t2->scope.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    DATA t62 TYPE REF TO zif_lnt_configuration.
    DATA t63 TYPE REF TO zif_lnt_registry.
    t63 = t59->reg.
    t62 = t63->get_config( ).
    t61 = t62->get_release( ).
    t57 = t61.
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    DATA t66 TYPE REF TO zcl_lnt_abap_release.
    DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
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
      DATA t72 TYPE REF TO zcl_lnt_current_scope.
      t72 = t2->scope.
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zif_lnt_configuration.
      DATA t76 TYPE REF TO zif_lnt_registry.
      t76 = t72->reg.
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
      DATA t82 TYPE REF TO zcl_lnt_current_scope.
      t82 = t2->scope.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE REF TO zif_lnt_configuration.
      DATA t86 TYPE REF TO zif_lnt_registry.
      t86 = t82->reg.
      t85 = t86->get_config( ).
      t84 = t85->is_open_abap( ).
      t80 = t84.
      t79 = xsdbool( t80 = abap_false ).
      t53 = t79.
    ENDIF.
    IF t53 = abap_true.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE abap_bool.
      t89 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t88 = t89.
      IF t89 = abap_true.
        DATA t91 TYPE abap_bool.
        DATA t92 TYPE abap_bool.
        DATA t94 TYPE REF TO zcl_lnt_ty_table_type.
        t94 ?= t36.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE REF TO zcl_lnt_itable_options.
        t97 = t94->options.
        t96 = t97->zlnt_view_read_sr_ec4602663c93( ).
        t92 = t96.
        t91 = xsdbool( t92 = abap_false ).
        t88 = t91.
      ENDIF.
      IF t88 = abap_true.
        DATA(t101) = |MOVE-CORRESPONDING with tables possible from v740sp05|.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t102 = t2->issues.
        DATA t104 TYPE REF TO zcl_lnt_issue.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        t106 = t1->get_first_token( ).
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t104 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t106 i_message_26cb = t101 i_fix = t109 ).
        t102->load( ).
        APPEND t104 TO t102->items.
        t102->save( ).
        RETURN.
      ELSE.
        DATA t110 TYPE abap_bool.
        DATA t111 TYPE abap_bool.
        t111 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t110 = t111.
        IF t111 = abap_true.
          DATA t113 TYPE abap_bool.
          DATA t114 TYPE abap_bool.
          DATA t116 TYPE REF TO zcl_lnt_ty_table_type.
          t116 ?= t48.
          DATA t118 TYPE abap_bool.
          DATA t119 TYPE REF TO zcl_lnt_itable_options.
          t119 = t116->options.
          t118 = t119->zlnt_view_read_sr_ec4602663c93( ).
          t114 = t118.
          t113 = xsdbool( t114 = abap_false ).
          t110 = t113.
        ENDIF.
        IF t110 = abap_true.
          DATA(t123) = |MOVE-CORRESPONDING with tables possible from v740sp05|.
          DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t124 = t2->issues.
          DATA t126 TYPE REF TO zcl_lnt_issue.
          DATA t128 TYPE REF TO zcl_lnt_abstract_token.
          t128 = t1->get_first_token( ).
          DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t126 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t128 i_message_26cb = t123 i_fix = t131 ).
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
