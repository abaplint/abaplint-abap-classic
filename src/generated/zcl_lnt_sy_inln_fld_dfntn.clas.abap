* TS: src/abap/5_syntax/expressions/inline_field_definition.ts:12:1 InlineFieldDefinition
CLASS zcl_lnt_sy_inln_fld_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inln_fld_dfntn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t10 = t1->find_direct_expression( i_type_9913 = t13 ).
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t10 IS BOUND ) = abap_true.
      t14 = t10.
    ELSE.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t14 = t1->find_direct_expression( i_type_9913 = t20 ).
    ENDIF.
    t8 = t14.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
    ELSE.
      t21 = t8->get_first_token( ).
    ENDIF.
    t6 = t21.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t36 = t1->find_direct_expression( i_type_9913 = t39 ).
    IF xsdbool( t36 IS BOUND ) = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t52 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t4 = zcl_lnt_sy_source=>run_syntax( i_node = t36 i_input_967e = t2 i_target_type = t49 i_write_reference = t50 i_allow_generic_deference = t51 i_read_reference = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t53 = t1->find_direct_expression( i_type_9913 = t56 ).
    IF xsdbool( t53 IS BOUND ) = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t4 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->parse_type( i_node = t53 i_qualified_name = t64 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t3 IS INITIAL ) = abap_false ) = abap_true.
      t4 = t3.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t4 = NEW zcl_lnt_unknown_type( i_error = |InlineFieldDefinition, fallback| i_qualified_name = t87 ).
    ENDIF.
    DATA t88 TYPE string.
    t88 = t6->str.
    DATA t98 TYPE REF TO zcl_lnt_current_scope.
    t98 = t2->scope.
    DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t105->has = abap_true.
    t105->value = t88.
    t101 = t105.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t109 = t101.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = VALUE abap_bool( ).
    IF t109 IS INITIAL.
      t113 = abap_true.
    ELSEIF t109->has = abap_false.
      t113 = abap_true.
    ENDIF.
    IF t113 = abap_true.
    ELSE.
      DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t119 = t98->current.
      DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
      IF xsdbool( t119 IS INITIAL ) = abap_true.
      ELSE.
        DATA t127 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t127 = t119.
        DATA t129 TYPE string.
        t129 = t101->value.
        t122 = t127->find_variable( i_name = t129 ).
      ENDIF.
      t117 = t122.
      DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
      IF xsdbool( t117 IS BOUND ) = abap_true.
        t131 = t117.
      ELSE.
        DATA t143 TYPE string.
        t143 = t101->value.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = t143.
        t131 = t98->find_type_pool_constant( i_name = t145 ).
      ENDIF.
      t107 = t131.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t107 IS INITIAL ) = abap_false ) = abap_true.
      DATA t153 TYPE string.
      DATA t154 TYPE string.
      DATA(t155) = |Variable |.
      DATA(t157) = strlen( t155 ).
      t154 = |{ t155 }{ t88 }|.
      DATA(t159) = strlen( t154 ).
      t153 = |{ t154 }{ | already defined| }|.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t160 = t2->issues.
      DATA t162 TYPE REF TO zcl_lnt_issue.
      DATA t167 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t162 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t153 i_fix = t167 ).
      t160->load( ).
      APPEND t162 TO t160->items.
      t160->save( ).
      DATA(t171) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t172->has = abap_true.
      t172->value = t171.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t172 i_qualified_name = t174 ).
      RETURN.
    ENDIF.
    DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t177 TYPE REF TO zcl_lnt_abstract_token.
    t177 = t6.
    DATA t179 TYPE string.
    t179 = t2->filename.
    DATA t181 TYPE REF TO zcl_lnt_abstract_type.
    t181 = t4.
    DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t186.
    t186->load( ).
    APPEND |inline| TO t186->items.
    t186->save( ).
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t175 = NEW zcl_lnt_typed_identifier( i_token = t177 i_filename = t179 i_type_9913 = t181 i_meta = t186 i_value = t192 ).
    DATA t193 TYPE REF TO zcl_lnt_current_scope.
    t193 = t2->scope.
    DATA t195 TYPE REF TO zcl_lnt_abstract_token.
    t195 = t6.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t201.
    t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t201->sval = |Write To|.
    DATA t203 TYPE string.
    t203 = t2->filename.
    DATA t205 TYPE REF TO zcl_lnt_ireference_extras.
    t193->add_reference( i_usage = t195 i_referencing = t175 i_type_9913 = t201 i_filename = t203 i_extra = t205 ).
    DATA t207 TYPE REF TO zcl_lnt_current_scope.
    t207 = t2->scope.
    DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
    t209 = t175.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t209 IS INITIAL ) = abap_true.
    ELSE.
      DATA t223 TYPE REF TO zcl_lnt_fi_identifier.
      t223 = t209.
      DATA t227 TYPE string.
      t227 = t223->token->str.
      DATA(t235) = VALUE string( ).
      DATA(t236) = t227.
      DATA(t237) = 0.
      DATA(t238) = 1.
      DATA(t239) = strlen( t236 ).
      IF t237 < 0.
        t237 = t237 + t239.
        IF t237 < 0.
          t237 = 0.
        ENDIF.
      ENDIF.
      IF t237 > t239 OR t238 <= 0.
      ELSE.
        IF t238 > t239 - t237.
          t238 = t239 - t237.
        ENDIF.
        t235 = t236+t237(t238).
      ENDIF.
      IF xsdbool( t235 = |!| ) = abap_true.
        DATA t242 TYPE string.
        t242 = t227.
        DATA(t244) = VALUE string( ).
        DATA(t246) = 1.
        DATA t247 TYPE i.
        t247 = strlen( t242 ).
        DATA(t250) = strlen( t242 ).
        IF t246 < 0.
          t246 = t246 + t250.
          IF t246 < 0.
            t246 = 0.
          ENDIF.
        ENDIF.
        IF t246 > t250 OR t247 <= 0.
        ELSE.
          IF t247 > t250 - t246.
            t247 = t250 - t246.
          ENDIF.
          t244 = t242+t246(t247).
        ENDIF.
        t227 = t244.
      ENDIF.
      t207->add_named_identifier( i_name = t227 i_identifier = t209 ).
    ENDIF.
    result = t4.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d812_6d0e6cec98f8.
  ENDMETHOD.
ENDCLASS.
