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
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t11 = t1->find_direct_expression( i_type_9913 = t13 ).
    t10 = t11.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE abap_bool.
    t15 = xsdbool( t10 IS BOUND ).
    IF t15 = abap_true.
      t14 = t10.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t18 = t1->find_direct_expression( i_type_9913 = t20 ).
      t14 = t18.
    ENDIF.
    t8 = t14.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t22) = xsdbool( t8 IS INITIAL ).
    IF t22 = abap_true.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      t26 = t8.
      t25 = t26->get_first_token( ).
      t21 = t25.
    ENDIF.
    t6 = t21.
    DATA(t28) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t28 = xsdbool( t6 IS INITIAL ).
    IF t28 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t37 = t1->find_direct_expression( i_type_9913 = t39 ).
    t36 = t37.
    DATA t40 TYPE abap_bool.
    t40 = xsdbool( t36 IS BOUND ).
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      t43 = t36.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t52 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t42 = zcl_lnt_sy_source=>run_syntax( i_node = t43 i_input_967e = t2 i_target_type = t49 i_write_reference = t50 i_allow_generic_deference = t51 i_read_reference = t52 ).
      t4 = t42.
    ENDIF.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t54 = t1->find_direct_expression( i_type_9913 = t56 ).
    t53 = t54.
    DATA t57 TYPE abap_bool.
    t57 = xsdbool( t53 IS BOUND ).
    IF t57 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      DATA t60 TYPE REF TO zcl_lnt_basic_types.
      t60 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      t62 = t53.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = t60->parse_type( i_node = t62 i_qualified_name = t64 ).
      t4 = t59.
    ENDIF.
    DATA(t65) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = xsdbool( t3 IS INITIAL ).
    t70 = xsdbool( t71 = abap_false ).
    t65 = t70.
    IF t65 = abap_true.
      t4 = t3.
    ENDIF.
    DATA(t78) = VALUE abap_bool( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78 = xsdbool( t4 IS INITIAL ).
    IF t78 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t86) = |InlineFieldDefinition, fallback|.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t85 = NEW zcl_lnt_unknown_type( i_error = t86 i_qualified_name = t87 ).
      t4 = t85.
    ENDIF.
    DATA t88 TYPE string.
    DATA t93 TYPE string.
    t93 = t6->str.
    t88 = t93.
    DATA(t95) = VALUE abap_bool( ).
    DATA t98 TYPE REF TO zcl_lnt_current_scope.
    DATA t99 TYPE REF TO zcl_lnt_current_scope.
    t99 = t2->scope.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t105->has = abap_true.
    t105->value = t88.
    t101 = t105.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t109 = t101.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = VALUE abap_bool( ).
    IF t109 IS INITIAL.
      t113 = abap_true.
    ELSEIF t109->has = abap_false.
      t113 = abap_true.
    ENDIF.
    t108 = t113.
    IF t108 = abap_true.
    ELSE.
      DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t120 = t98->current.
      t119 = t120.
      DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t123) = xsdbool( t119 IS INITIAL ).
      IF t123 = abap_true.
      ELSE.
        DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t127 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t127 = t119.
        DATA t129 TYPE string.
        t129 = t101->value.
        t126 = t127->find_variable( i_name = t129 ).
        t122 = t126.
      ENDIF.
      t117 = t122.
      DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t132 TYPE abap_bool.
      t132 = xsdbool( t117 IS BOUND ).
      IF t132 = abap_true.
        t131 = t117.
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t143 TYPE string.
        t143 = t101->value.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = t143.
        t141 = t145.
        t139 = t98->find_type_pool_constant( i_name = t141 ).
        t131 = t139.
      ENDIF.
      t107 = t131.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = VALUE abap_bool( ).
    DATA(t150) = xsdbool( t107 IS INITIAL ).
    t149 = xsdbool( t150 = abap_false ).
    t95 = t149.
    IF t95 = abap_true.
      DATA t153 TYPE string.
      DATA t154 TYPE string.
      DATA(t155) = |Variable |.
      DATA(t157) = strlen( t155 ).
      t154 = |{ t155 }{ t88 }|.
      DATA(t158) = | already defined|.
      DATA(t159) = strlen( t154 ).
      t153 = |{ t154 }{ t158 }|.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t160 = t2->issues.
      DATA t162 TYPE REF TO zcl_lnt_issue.
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      t164 = t1->get_first_token( ).
      DATA t167 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t162 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t164 i_message_26cb = t153 i_fix = t167 ).
      t160->load( ).
      APPEND t162 TO t160->items.
      t160->save( ).
      DATA t168 TYPE REF TO zcl_lnt_void_type.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t171) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t172->has = abap_true.
      t172->value = t171.
      t169 = t172.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t168 = zcl_lnt_void_type=>get_db65( i_voided = t169 i_qualified_name = t174 ).
      result = t168.
      RETURN.
    ENDIF.
    DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t177 TYPE REF TO zcl_lnt_abstract_token.
    t177 = t6.
    DATA t179 TYPE string.
    t179 = t2->filename.
    DATA t181 TYPE REF TO zcl_lnt_abstract_type.
    t181 = t4.
    DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t187.
    t186 = t187.
    DATA(t189) = |inline|.
    t186->load( ).
    APPEND t189 TO t186->items.
    t186->save( ).
    t183 = t186.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t176 = NEW zcl_lnt_typed_identifier( i_token = t177 i_filename = t179 i_type_9913 = t181 i_meta = t183 i_value = t192 ).
    t175 = t176.
    DATA t193 TYPE REF TO zcl_lnt_current_scope.
    t193 = t2->scope.
    DATA t195 TYPE REF TO zcl_lnt_abstract_token.
    t195 = t6.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t202) = |Write To|.
    CREATE OBJECT t201.
    t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t201->sval = t202.
    DATA t203 TYPE string.
    t203 = t2->filename.
    DATA t205 TYPE REF TO zcl_lnt_ireference_extras.
    t193->add_reference( i_usage = t195 i_referencing = t175 i_type_9913 = t201 i_filename = t203 i_extra = t205 ).
    DATA t207 TYPE REF TO zcl_lnt_current_scope.
    t207 = t2->scope.
    DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
    t209 = t175.
    DATA(t214) = VALUE abap_bool( ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t214 = xsdbool( t209 IS INITIAL ).
    IF t214 = abap_true.
    ELSE.
      DATA(t222) = VALUE string( ).
      DATA t223 TYPE REF TO zcl_lnt_fi_identifier.
      t223 = t209.
      DATA(t226) = VALUE string( ).
      DATA t227 TYPE string.
      DATA t230 TYPE REF TO zcl_lnt_abstract_token.
      t230 = t223->token.
      DATA t232 TYPE string.
      t232 = t230->str.
      t227 = t232.
      DATA(t234) = VALUE abap_bool( ).
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
        CLEAR t235.
      ELSE.
        IF t238 > t239 - t237.
          t238 = t239 - t237.
        ENDIF.
        t235 = t236+t237(t238).
      ENDIF.
      DATA(t240) = |!|.
      t234 = xsdbool( t235 = t240 ).
      IF t234 = abap_true.
        DATA(t241) = VALUE string( ).
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
          CLEAR t244.
        ELSE.
          IF t247 > t250 - t246.
            t247 = t250 - t246.
          ENDIF.
          t244 = t242+t246(t247).
        ENDIF.
        t241 = t244.
        t227 = t241.
      ENDIF.
      t226 = t227.
      t222 = t226.
      DATA t252 TYPE REF TO zcl_lnt_typed_identifier.
      t252 = t209.
      t207->add_named_identifier( i_name = t222 i_identifier = t252 ).
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
