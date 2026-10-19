* TS: src/abap/5_syntax/statements/class_data.ts:9:1 ClassData
CLASS zcl_lnt_sy_statem_class_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_class_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t3 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      t11 = t3.
      t10 = zcl_lnt_sy_data_definition=>run_syntax( i_node = t11 i_input_967e = t2 ).
      t9 = t10.
      DATA(t14) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t14 = xsdbool( t9 IS INITIAL ).
      IF t14 = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      t27 = t9.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t31) = xsdbool( t27 IS INITIAL ).
      IF t31 = abap_true.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_abstract_type.
        t37 = t27->type_cba0.
        t30 = t37.
      ENDIF.
      t25 = t30.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t40) = xsdbool( t25 IS INITIAL ).
      IF t40 = abap_true.
      ELSE.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        t44 = t25.
        t43 = t44->is_generic( ).
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
        t58 = t9.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t62) = xsdbool( t58 IS INITIAL ).
        IF t62 = abap_true.
        ELSE.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          t68 = t58->type_cba0.
          t61 = t68.
        ENDIF.
        t56 = t61.
        DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t71) = xsdbool( t56 IS INITIAL ).
        IF t71 = abap_true.
        ELSE.
          DATA t74 TYPE abap_bool.
          DATA t75 TYPE REF TO zcl_lnt_abstract_type.
          t75 = t56.
          t74 = t75->contains_void( ).
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
        DATA(t86) = VALUE string( ).
        DATA(t87) = |DATA definition cannot be generic, |.
        DATA(t88) = VALUE string( ).
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        t89 = t9.
        DATA(t92) = VALUE string( ).
        DATA t93 TYPE string.
        DATA t96 TYPE REF TO zcl_lnt_abstract_token.
        t96 = t89->token.
        DATA t98 TYPE string.
        t98 = t96->str.
        t93 = t98.
        DATA(t100) = VALUE abap_bool( ).
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
          CLEAR t101.
        ELSE.
          IF t104 > t105 - t103.
            t104 = t105 - t103.
          ENDIF.
          t101 = t102+t103(t104).
        ENDIF.
        DATA(t106) = |!|.
        t100 = xsdbool( t101 = t106 ).
        IF t100 = abap_true.
          DATA(t107) = VALUE string( ).
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
            CLEAR t110.
          ELSE.
            IF t113 > t116 - t112.
              t113 = t116 - t112.
            ENDIF.
            t110 = t108+t112(t113).
          ENDIF.
          t107 = t110.
          t93 = t107.
        ENDIF.
        t92 = t93.
        t88 = t92.
        DATA(t118) = strlen( t87 ).
        t86 = |{ t87 }{ t88 }|.
        t85 = t86.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t119 = t2->issues.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        t123 = t1->get_first_token( ).
        DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t121 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t123 i_message_26cb = t85 i_fix = t126 ).
        t119->load( ).
        APPEND t121 TO t119->items.
        t119->save( ).
        DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
        t131 = t9.
        DATA t134 TYPE REF TO zcl_lnt_abstract_token.
        t134 = t131->token.
        t130 = t134.
        DATA t136 TYPE string.
        t136 = t2->filename.
        DATA t138 TYPE REF TO zcl_lnt_void_type.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t141) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t141.
        t139 = t142.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t138 = zcl_lnt_void_type=>get_db65( i_voided = t139 i_qualified_name = t144 ).
        DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t129 = NEW zcl_lnt_typed_identifier( i_token = t130 i_filename = t136 i_type_9913 = t138 i_meta = t145 i_value = t146 ).
        result = t129.
        RETURN.
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t151.
      DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t159 = t9->meta.
      t155 = t159.
      t153 = t151->concat( p0 = t155 ).
      t152 = t153.
      DATA(t162) = |static|.
      t152->load( ).
      APPEND t162 TO t152->items.
      t152->save( ).
      DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t167 TYPE REF TO zcl_lnt_abstract_token.
      DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
      t168 = t9.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      t171 = t168->token.
      t167 = t171.
      DATA t173 TYPE string.
      t173 = t2->filename.
      DATA t175 TYPE REF TO zcl_lnt_abstract_type.
      DATA t179 TYPE REF TO zcl_lnt_abstract_type.
      t179 = t9->type_cba0.
      t175 = t179.
      DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t181 = t152.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t191 = t9->value.
      t185 = t191.
      t166 = NEW zcl_lnt_typed_identifier( i_token = t167 i_filename = t173 i_type_9913 = t175 i_meta = t181 i_value = t185 ).
      result = t166.
      RETURN.
    ENDIF.
    DATA t195 TYPE REF TO zcl_lnt_expression_node.
    DATA t196 TYPE REF TO zcl_lnt_expression_node.
    DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t196 = t1->find_first_expression( i_type_9913 = t198 ).
    t195 = t196.
    DATA t199 TYPE abap_bool.
    t199 = xsdbool( t195 IS BOUND ).
    IF t199 = abap_true.
      DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t204 TYPE REF TO zcl_lnt_abstract_token.
      DATA t205 TYPE REF TO zcl_lnt_expression_node.
      t205 = t195.
      t204 = t205->get_first_token( ).
      DATA t207 TYPE string.
      t207 = t2->filename.
      DATA t209 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t210) = |class data, fallback|.
      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t209 = NEW zcl_lnt_unknown_type( i_error = t210 i_qualified_name = t211 ).
      DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t203 = NEW zcl_lnt_typed_identifier( i_token = t204 i_filename = t207 i_type_9913 = t209 i_meta = t212 i_value = t213 ).
      result = t203.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d870_4a696a04c465.
  ENDMETHOD.
ENDCLASS.
