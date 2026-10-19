* TS: src/abap/5_syntax/statements/fieldsymbol.ts:10:1 FieldSymbol
CLASS zcl_lnt_sy_field_symbol DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_field_symbol IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = xsdbool( t9 IS INITIAL ).
    IF t12 = abap_true.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      t15 = t16->get_first_token( ).
      t11 = t15.
    ENDIF.
    t7 = t11.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19 = xsdbool( t3 IS INITIAL ).
    t18 = t19.
    IF t19 = abap_false.
      DATA(t26) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t26 = xsdbool( t7 IS INITIAL ).
      t18 = t26.
    ENDIF.
    IF t18 = abap_true.
      RETURN.
    ENDIF.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE i.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    t36 = t3.
    t35 = t36->concat_tokens( ).
    t34 = strlen( t35 ).
    DATA(t39) = 30.
    t33 = xsdbool( t34 > t39 ).
    IF t33 = abap_true.
      DATA t41 TYPE string.
      DATA(t42) = |FIELD-SYMBOLS name too long, |.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      t44 = t3.
      t43 = t44->concat_tokens( ).
      DATA(t46) = strlen( t42 ).
      t41 = |{ t42 }{ t43 }|.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t47 = t2->issues.
      DATA t49 TYPE REF TO zcl_lnt_issue.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      t51 = t7.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t49 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t51 i_message_26cb = t41 i_fix = t54 ).
      t47->load( ).
      APPEND t49 TO t47->items.
      t47->save( ).
    ENDIF.
    DATA t55 TYPE abap_bool.
    DATA t56 TYPE i.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zcl_lnt_abstract_node.
    t59 = t1.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t61 = t59->children.
    t58 = t61.
    t57 ?= t58.
    t57->load( ).
    t56 = lines( t57->items ).
    DATA(t63) = 5.
    t55 = xsdbool( t56 = t63 ).
    IF t55 = abap_true.
      DATA t65 TYPE REF TO zcl_lnt_current_scope.
      t65 = t2->scope.
      DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      t71 = t7.
      DATA t73 TYPE string.
      t73 = t2->filename.
      DATA t75 TYPE REF TO zcl_lnt_void_type.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t78) = |FS-SIMPLE|.
      DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t79->has = abap_true.
      t79->value = t78.
      t76 = t79.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t75 = zcl_lnt_void_type=>get_db65( i_voided = t76 i_qualified_name = t81 ).
      DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t70 = NEW zcl_lnt_typed_identifier( i_token = t71 i_filename = t73 i_type_9913 = t75 i_meta = t82 i_value = t83 ).
      t67 = t70.
      DATA(t85) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85 = xsdbool( t67 IS INITIAL ).
      IF t85 = abap_true.
      ELSE.
        DATA(t93) = VALUE string( ).
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        t94 = t67.
        DATA(t97) = VALUE string( ).
        DATA t98 TYPE string.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        t101 = t94->token.
        DATA t103 TYPE string.
        t103 = t101->str.
        t98 = t103.
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = t98.
        DATA(t108) = 0.
        DATA(t109) = 1.
        DATA(t110) = strlen( t107 ).
        IF t108 < 0.
          t108 = t108 + t110.
          IF t108 < 0.
            t108 = 0.
          ENDIF.
        ENDIF.
        IF t108 > t110 OR t109 <= 0.
          CLEAR t106.
        ELSE.
          IF t109 > t110 - t108.
            t109 = t110 - t108.
          ENDIF.
          t106 = t107+t108(t109).
        ENDIF.
        DATA(t111) = |!|.
        t105 = xsdbool( t106 = t111 ).
        IF t105 = abap_true.
          DATA(t112) = VALUE string( ).
          DATA t113 TYPE string.
          t113 = t98.
          DATA(t115) = VALUE string( ).
          DATA(t117) = 1.
          DATA t118 TYPE i.
          t118 = strlen( t113 ).
          DATA(t121) = strlen( t113 ).
          IF t117 < 0.
            t117 = t117 + t121.
            IF t117 < 0.
              t117 = 0.
            ENDIF.
          ENDIF.
          IF t117 > t121 OR t118 <= 0.
            CLEAR t115.
          ELSE.
            IF t118 > t121 - t117.
              t118 = t121 - t117.
            ENDIF.
            t115 = t113+t117(t118).
          ENDIF.
          t112 = t115.
          t98 = t112.
        ENDIF.
        t97 = t98.
        t93 = t97.
        DATA t123 TYPE REF TO zcl_lnt_typed_identifier.
        t123 = t67.
        t65->add_named_identifier( i_name = t93 i_identifier = t123 ).
      ENDIF.
      RETURN.
    ENDIF.
    DATA t125 TYPE REF TO zcl_lnt_abstract_type.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type.
    DATA t127 TYPE REF TO zcl_lnt_basic_types.
    t127 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t126 = t127->parse_type( i_node = t1 i_qualified_name = t130 ).
    t125 = t126.
    DATA t131 TYPE abap_bool.
    t131 = xsdbool( t125 IS BOUND ).
    IF t131 = abap_true.
      DATA t134 TYPE REF TO zcl_lnt_current_scope.
      t134 = t2->scope.
      DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t140 TYPE REF TO zcl_lnt_abstract_token.
      t140 = t7.
      DATA t142 TYPE string.
      t142 = t2->filename.
      DATA t144 TYPE REF TO zcl_lnt_abstract_type.
      t144 = t125.
      DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t139 = NEW zcl_lnt_typed_identifier( i_token = t140 i_filename = t142 i_type_9913 = t144 i_meta = t146 i_value = t147 ).
      t136 = t139.
      DATA(t149) = VALUE abap_bool( ).
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t149 = xsdbool( t136 IS INITIAL ).
      IF t149 = abap_true.
      ELSE.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
        t158 = t136.
        DATA(t161) = VALUE string( ).
        DATA t162 TYPE string.
        DATA t165 TYPE REF TO zcl_lnt_abstract_token.
        t165 = t158->token.
        DATA t167 TYPE string.
        t167 = t165->str.
        t162 = t167.
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = VALUE string( ).
        DATA(t171) = t162.
        DATA(t172) = 0.
        DATA(t173) = 1.
        DATA(t174) = strlen( t171 ).
        IF t172 < 0.
          t172 = t172 + t174.
          IF t172 < 0.
            t172 = 0.
          ENDIF.
        ENDIF.
        IF t172 > t174 OR t173 <= 0.
          CLEAR t170.
        ELSE.
          IF t173 > t174 - t172.
            t173 = t174 - t172.
          ENDIF.
          t170 = t171+t172(t173).
        ENDIF.
        DATA(t175) = |!|.
        t169 = xsdbool( t170 = t175 ).
        IF t169 = abap_true.
          DATA(t176) = VALUE string( ).
          DATA t177 TYPE string.
          t177 = t162.
          DATA(t179) = VALUE string( ).
          DATA(t181) = 1.
          DATA t182 TYPE i.
          t182 = strlen( t177 ).
          DATA(t185) = strlen( t177 ).
          IF t181 < 0.
            t181 = t181 + t185.
            IF t181 < 0.
              t181 = 0.
            ENDIF.
          ENDIF.
          IF t181 > t185 OR t182 <= 0.
            CLEAR t179.
          ELSE.
            IF t182 > t185 - t181.
              t182 = t185 - t181.
            ENDIF.
            t179 = t177+t181(t182).
          ENDIF.
          t176 = t179.
          t162 = t176.
        ENDIF.
        t161 = t162.
        t157 = t161.
        DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
        t187 = t136.
        t134->add_named_identifier( i_name = t157 i_identifier = t187 ).
      ENDIF.
      RETURN.
    ENDIF.
    DATA t190 TYPE REF TO zcl_lnt_current_scope.
    t190 = t2->scope.
    DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t196 TYPE REF TO zcl_lnt_abstract_token.
    t196 = t7.
    DATA t198 TYPE string.
    t198 = t2->filename.
    DATA t200 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t201) = |Fieldsymbol, fallback|.
    DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t200 = NEW zcl_lnt_unknown_type( i_error = t201 i_qualified_name = t202 ).
    DATA t203 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t195 = NEW zcl_lnt_typed_identifier( i_token = t196 i_filename = t198 i_type_9913 = t200 i_meta = t203 i_value = t204 ).
    t192 = t195.
    DATA(t206) = VALUE abap_bool( ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t206 = xsdbool( t192 IS INITIAL ).
    IF t206 = abap_true.
    ELSE.
      DATA(t214) = VALUE string( ).
      DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
      t215 = t192.
      DATA(t218) = VALUE string( ).
      DATA t219 TYPE string.
      DATA t222 TYPE REF TO zcl_lnt_abstract_token.
      t222 = t215->token.
      DATA t224 TYPE string.
      t224 = t222->str.
      t219 = t224.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = VALUE string( ).
      DATA(t228) = t219.
      DATA(t229) = 0.
      DATA(t230) = 1.
      DATA(t231) = strlen( t228 ).
      IF t229 < 0.
        t229 = t229 + t231.
        IF t229 < 0.
          t229 = 0.
        ENDIF.
      ENDIF.
      IF t229 > t231 OR t230 <= 0.
        CLEAR t227.
      ELSE.
        IF t230 > t231 - t229.
          t230 = t231 - t229.
        ENDIF.
        t227 = t228+t229(t230).
      ENDIF.
      DATA(t232) = |!|.
      t226 = xsdbool( t227 = t232 ).
      IF t226 = abap_true.
        DATA(t233) = VALUE string( ).
        DATA t234 TYPE string.
        t234 = t219.
        DATA(t236) = VALUE string( ).
        DATA(t238) = 1.
        DATA t239 TYPE i.
        t239 = strlen( t234 ).
        DATA(t242) = strlen( t234 ).
        IF t238 < 0.
          t238 = t238 + t242.
          IF t238 < 0.
            t238 = 0.
          ENDIF.
        ENDIF.
        IF t238 > t242 OR t239 <= 0.
          CLEAR t236.
        ELSE.
          IF t239 > t242 - t238.
            t239 = t242 - t238.
          ENDIF.
          t236 = t234+t238(t239).
        ENDIF.
        t233 = t236.
        t219 = t233.
      ENDIF.
      t218 = t219.
      t214 = t218.
      DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
      t244 = t192.
      t190->add_named_identifier( i_name = t214 i_identifier = t244 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d900_7047e86f643a.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
