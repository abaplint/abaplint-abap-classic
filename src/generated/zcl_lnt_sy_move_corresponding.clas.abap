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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0.
    t7 = t1->find_direct_expression( i_type_9913 = t10 ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12 = xsdbool( t3 IS INITIAL ).
    t11 = t12.
    IF t12 = abap_false.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11 = xsdbool( t7 IS INITIAL ).
    ENDIF.
    IF t11 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t28 = t2->issues.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |MoveCorresponding, source or target not found| i_fix = t35 ).
      t28->load( ).
      APPEND t30 TO t28->items.
      t28->save( ).
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t36 = zcl_lnt_sy_source=>run_syntax( i_node = t3 i_input_967e = t2 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    t48 = zcl_lnt_sy_target=>run_syntax( i_node = t7 i_input_967e = t2 ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    t57 = t2->scope->reg->get_config( )->get_release( ).
    DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t67 = zcl_lnt_version_module=>release_b8cd.
    t55 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t57 i_required = t67->get( p0 = |v740sp05| ) ) = abap_false ).
    t54 = t55.
    IF t55 = abap_true.
      DATA t76 TYPE REF TO zif_lnt_registry.
      t76 = t2->scope->reg.
      t54 = xsdbool( t76->get_config( )->get_language_version( ) <> |Cloud| ).
    ENDIF.
    t53 = t54.
    IF t54 = abap_true.
      t53 = xsdbool( t2->scope->reg->get_config( )->is_open_abap( ) = abap_false ).
    ENDIF.
    IF t53 = abap_true.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE abap_bool.
      t89 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t88 = t89.
      IF t89 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_ty_table_type.
        t94 ?= t36.
        DATA t97 TYPE REF TO zcl_lnt_itable_options.
        t97 = t94->options.
        t88 = xsdbool( t97->zlnt_view_read_sr_ec4602663c93( ) = abap_false ).
      ENDIF.
      IF t88 = abap_true.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t102 = t2->issues.
        DATA t104 TYPE REF TO zcl_lnt_issue.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t104 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |MOVE-CORRESPONDING with tables possible from v740sp05| i_fix = t109 ).
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
          DATA t116 TYPE REF TO zcl_lnt_ty_table_type.
          t116 ?= t48.
          DATA t119 TYPE REF TO zcl_lnt_itable_options.
          t119 = t116->options.
          t110 = xsdbool( t119->zlnt_view_read_sr_ec4602663c93( ) = abap_false ).
        ENDIF.
        IF t110 = abap_true.
          DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t124 = t2->issues.
          DATA t126 TYPE REF TO zcl_lnt_issue.
          DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t126 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |MOVE-CORRESPONDING with tables possible from v740sp05| i_fix = t131 ).
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
