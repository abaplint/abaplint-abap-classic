* TS: src/abap/5_syntax/statements/type.ts:9:1 Type
CLASS zcl_lnt_sy_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_qualified_name_prefix.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t5 = t1->find_first_expression( i_type_9913 = t7 ).
    IF xsdbool( t5 IS BOUND ) = abap_true.
      result = zcl_lnt_sy_type_table=>run_syntax( i_node = t1 i_input_967e = t2 i_qualified_name_prefix = t3 ).
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
    t14 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->simple_type( i_node = t1 i_qualified_name_prefix = t3 ).
    IF xsdbool( t14 IS BOUND ) = abap_true.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      t27 = t14.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t27 IS INITIAL ) = abap_true.
      ELSE.
        t30 = t27->type_cba0.
      ENDIF.
      t25 = t30.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
      ELSE.
        DATA t43 TYPE abap_bool.
        t43 = t25->is_generic( ).
        DATA(t46) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t46->has = abap_true.
        t46->value = t43.
        t39 = t46.
      ENDIF.
      t24 = t39.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t50) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t50->has = abap_true.
      t50->value = abap_true.
      t47 = t50.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t24 IS BOUND.
        t52 = t24->has.
      ENDIF.
      IF t47 IS BOUND.
        t53 = t47->has.
      ENDIF.
      IF t52 = t53.
        IF t52 = abap_false.
          t23 = abap_true.
        ELSEIF t24->value = t47->value.
          t23 = abap_true.
        ENDIF.
      ENDIF.
      t22 = t23.
      IF t23 = abap_true.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
        t58 = t14.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t58 IS INITIAL ) = abap_true.
        ELSE.
          t61 = t58->type_cba0.
        ENDIF.
        t56 = t61.
        DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        IF xsdbool( t56 IS INITIAL ) = abap_true.
        ELSE.
          DATA t74 TYPE abap_bool.
          t74 = t56->contains_void( ).
          DATA(t77) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t77->has = abap_true.
          t77->value = t74.
          t70 = t77.
        ENDIF.
        t55 = t70.
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t81) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t81->has = abap_true.
        t81->value = abap_false.
        t78 = t81.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        IF t55 IS BOUND.
          t83 = t55->has.
        ENDIF.
        IF t78 IS BOUND.
          t84 = t78->has.
        ENDIF.
        IF t83 = t84.
          IF t83 = abap_false.
            t54 = abap_true.
          ELSEIF t55->value = t78->value.
            t54 = abap_true.
          ENDIF.
        ENDIF.
        t22 = t54.
      ENDIF.
      IF t22 = abap_true.
        DATA(t85) = VALUE string( ).
        DATA(t87) = |TYPES definition cannot be generic, |.
        DATA(t88) = VALUE string( ).
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        t89 = t14.
        DATA t93 TYPE string.
        t93 = t89->token->str.
        DATA(t101) = VALUE string( ).
        DATA(t102) = t93.
        DATA(t103) = 0.
        DATA(t104) = 1.
        DATA(t105) = strlen( t102 ).
        IF t103 < 0.
          t103 = t103 + t105.
          IF t103 < 0.
            t103 = 0.
          ENDIF.
        ENDIF.
        IF t103 > t105 OR t104 <= 0.
        ELSE.
          IF t104 > t105 - t103.
            t104 = t105 - t103.
          ENDIF.
          t101 = t102+t103(t104).
        ENDIF.
        IF xsdbool( t101 = |!| ) = abap_true.
          DATA t108 TYPE string.
          t108 = t93.
          DATA(t110) = VALUE string( ).
          DATA(t112) = 1.
          DATA t113 TYPE i.
          t113 = strlen( t108 ).
          DATA(t116) = strlen( t108 ).
          IF t112 < 0.
            t112 = t112 + t116.
            IF t112 < 0.
              t112 = 0.
            ENDIF.
          ENDIF.
          IF t112 > t116 OR t113 <= 0.
          ELSE.
            IF t113 > t116 - t112.
              t113 = t116 - t112.
            ENDIF.
            t110 = t108+t112(t113).
          ENDIF.
          t93 = t110.
        ENDIF.
        t88 = t93.
        DATA(t118) = strlen( t87 ).
        t85 = |{ t87 }{ t88 }|.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t119 = t2->issues.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t121 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t85 i_fix = t126 ).
        t119->load( ).
        APPEND t121 TO t119->items.
        t119->save( ).
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
        t131 = t14.
        t130 = t131->token.
        DATA t136 TYPE string.
        t136 = t2->filename.
        DATA(t141) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t141.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        result = NEW zcl_lnt_typed_identifier( i_token = t130 i_filename = t136 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t142 i_qualified_name = t144 ) i_meta = t145 i_value = t146 ).
        RETURN.
      ENDIF.
      DATA t148 TYPE abap_bool.
      DATA t149 TYPE abap_bool.
      t149 = t2->scope->is_any_oo( ).
      t148 = t149.
      IF t149 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_abstract_type.
        t153 = t14->type_cba0.
        t148 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_packed_type ).
      ENDIF.
      IF t148 = abap_true.
        DATA(t159) = VALUE string( ).
        DATA t160 TYPE string.
        DATA t161 TYPE string.
        t161 = t1->concat_tokens( ).
        DATA(t163) = strlen( t161 ).
        t160 = t161.
        IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t160 TO UPPER CASE.
        ELSE.
          t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
        ENDIF.
        t159 = t160.
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = VALUE abap_bool( ).
        DATA(t167) = VALUE i( ).
        DATA(t169) = | TYPE P |.
        DATA(t170) = strlen( t159 ).
        IF t169 IS INITIAL.
          t167 = 0.
        ELSE.
          FIND t169 IN t159 MATCH OFFSET t167.
          IF sy-subrc <> 0.
            t167 = -1.
          ENDIF.
        ENDIF.
        t166 = xsdbool( t167 >= 0 ).
        t165 = t166.
        IF t166 = abap_false.
          DATA(t173) = VALUE i( ).
          DATA(t175) = | TYPE P.|.
          DATA(t176) = strlen( t159 ).
          IF t175 IS INITIAL.
            t173 = 0.
          ELSE.
            FIND t175 IN t159 MATCH OFFSET t173.
            IF sy-subrc <> 0.
              t173 = -1.
            ENDIF.
          ENDIF.
          t165 = xsdbool( t173 >= 0 ).
        ENDIF.
        t164 = t165.
        IF t165 = abap_true.
          DATA(t180) = VALUE i( ).
          DATA(t182) = | DECIMALS |.
          DATA(t183) = strlen( t159 ).
          IF t182 IS INITIAL.
            t180 = 0.
          ELSE.
            FIND t182 IN t159 MATCH OFFSET t180.
            IF sy-subrc <> 0.
              t180 = -1.
            ENDIF.
          ENDIF.
          t164 = xsdbool( xsdbool( t180 >= 0 ) = abap_false ).
        ENDIF.
        IF t164 = abap_true.
          DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t188 = t2->issues.
          DATA t190 TYPE REF TO zcl_lnt_issue.
          DATA t195 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t190 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Specify DECIMALS in OO context for packed| i_fix = t195 ).
          t188->load( ).
          APPEND t190 TO t188->items.
          t188->save( ).
          DATA t199 TYPE REF TO zcl_lnt_abstract_token.
          DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
          t200 = t14.
          t199 = t200->token.
          DATA t205 TYPE string.
          t205 = t2->filename.
          DATA(t210) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t211->has = abap_true.
          t211->value = t210.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          result = NEW zcl_lnt_typed_identifier( i_token = t199 i_filename = t205 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t211 i_qualified_name = t213 ) i_meta = t214 i_value = t215 ).
          RETURN.
        ENDIF.
      ENDIF.
      result = t14.
      RETURN.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_expression_node.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t222 = t1->find_first_expression( i_type_9913 = t225 ).
    IF xsdbool( t222 IS BOUND ) = abap_true.
      DATA t231 TYPE REF TO zcl_lnt_abstract_token.
      t231 = t222->get_first_token( ).
      DATA t234 TYPE string.
      t234 = t2->filename.
      DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t239 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t231 i_filename = t234 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |Type, fallback| i_qualified_name = t238 ) i_meta = t239 i_value = t240 ).
      RETURN.
    ENDIF.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d979_1a91b28d9760.
  ENDMETHOD.
ENDCLASS.
