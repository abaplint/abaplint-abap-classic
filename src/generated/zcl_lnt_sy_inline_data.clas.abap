* TS: src/abap/5_syntax/expressions/inline_data.ts:9:1 InlineData
CLASS zcl_lnt_sy_inline_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS strip_derived_from_constant IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inline_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    t7 = t1->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t11) = xsdbool( t6 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t6.
      t14 = t15->get_first_token( ).
      t10 = t14.
    ENDIF.
    t4 = t10.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE abap_bool.
    t18 = xsdbool( t4 IS BOUND ).
    t17 = t18.
    IF t18 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE i.
      DATA t22 TYPE string.
      DATA t26 TYPE string.
      t26 = t4->str.
      t22 = t26.
      t21 = strlen( t22 ).
      DATA(t29) = 30.
      t20 = xsdbool( t21 > t29 ).
      t17 = t20.
    ENDIF.
    IF t17 = abap_true.
      DATA t31 TYPE string.
      DATA(t32) = |DATA name too long, |.
      DATA t33 TYPE string.
      DATA t37 TYPE string.
      t37 = t4->str.
      t33 = t37.
      DATA(t39) = strlen( t32 ).
      t31 = |{ t32 }{ t33 }|.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t40 = t2->issues.
      DATA t42 TYPE REF TO zcl_lnt_issue.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      t44 = t4.
      DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t42 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t44 i_message_26cb = t31 i_fix = t47 ).
      t40->load( ).
      APPEND t42 TO t40->items.
      t40->save( ).
    ENDIF.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE abap_bool.
    t49 = xsdbool( t4 IS BOUND ).
    t48 = t49.
    IF t49 = abap_true.
      DATA t51 TYPE abap_bool.
      t51 = xsdbool( t3 IS BOUND ).
      t48 = t51.
    ENDIF.
    IF t48 = abap_true.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA(t55) = t3.
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t53 = t54.
      IF t54 = abap_false.
        DATA t56 TYPE abap_bool.
        DATA(t57) = t3.
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_c_like_type ).
        t53 = t56.
      ENDIF.
      IF t53 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_string_type.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
        t58 = zcl_lnt_string_type=>get_db65( i_input_967e = t59 ).
        t3 = t58.
      ELSE.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t3.
        t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_x_sequence_type ).
        IF t60 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_string_type.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type_data.
          t62 = zcl_lnt_string_type=>get_db65( i_input_967e = t63 ).
          t3 = t62.
        ELSE.
          DATA t64 TYPE abap_bool.
          DATA(t65) = t3.
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_c_generic_type ).
          IF t64 = abap_true.
            DATA(t67) = |InlineData, generic type C cannot be used for inferred type|.
            DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t68 = t2->issues.
            DATA t70 TYPE REF TO zcl_lnt_issue.
            DATA t72 TYPE REF TO zcl_lnt_abstract_token.
            t72 = t1->get_first_token( ).
            DATA t75 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t70 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t72 i_message_26cb = t67 i_fix = t75 ).
            t68->load( ).
            APPEND t70 TO t68->items.
            t68->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t76 TYPE abap_bool.
      DATA t77 TYPE REF TO zcl_lnt_abstract_type.
      t77 = t3.
      t76 = t77->is_generic( ).
      IF t76 = abap_true.
        DATA t80 TYPE string.
        DATA(t81) = |DATA definition cannot be generic, |.
        DATA t82 TYPE string.
        DATA t83 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type.
        t84 = t3.
        t83 = t84->zlnt_builtin_clas_3f891b097658( ).
        t82 = t83->name.
        DATA(t86) = strlen( t81 ).
        t80 = |{ t81 }{ t82 }|.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t87 = t2->issues.
        DATA t89 TYPE REF TO zcl_lnt_issue.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        t91 = t1->get_first_token( ).
        DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t89 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t91 i_message_26cb = t80 i_fix = t94 ).
        t87->load( ).
        APPEND t89 TO t87->items.
        t87->save( ).
        DATA t95 TYPE REF TO zcl_lnt_void_type.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t98) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t98.
        t96 = t99.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t95 = zcl_lnt_void_type=>get_db65( i_voided = t96 i_qualified_name = t101 ).
        t3 = t95.
      ENDIF.
      DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      t104 = t4.
      DATA t106 TYPE string.
      t106 = t2->filename.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      t109 = t3.
      t108 = zcl_lnt_sy_inline_data=>strip_derived_from_constant( i_type_9913 = t109 ).
      DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t115.
      t114 = t115.
      DATA(t117) = |inline|.
      t114->load( ).
      APPEND t117 TO t114->items.
      t114->save( ).
      t111 = t114.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t103 = NEW zcl_lnt_typed_identifier( i_token = t104 i_filename = t106 i_type_9913 = t108 i_meta = t111 i_value = t120 ).
      t102 = t103.
      DATA t122 TYPE REF TO zcl_lnt_current_scope.
      t122 = t2->scope.
      DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
      t124 = t102.
      DATA(t129) = VALUE abap_bool( ).
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t129 = xsdbool( t124 IS INITIAL ).
      IF t129 = abap_true.
      ELSE.
        DATA(t137) = VALUE string( ).
        DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
        t138 = t124.
        DATA(t141) = VALUE string( ).
        DATA t142 TYPE string.
        DATA t145 TYPE REF TO zcl_lnt_abstract_token.
        t145 = t138->token.
        DATA t147 TYPE string.
        t147 = t145->str.
        t142 = t147.
        DATA(t149) = VALUE abap_bool( ).
        DATA(t150) = VALUE string( ).
        DATA(t151) = t142.
        DATA(t152) = 0.
        DATA(t153) = 1.
        DATA(t154) = strlen( t151 ).
        IF t152 < 0.
          t152 = t152 + t154.
          IF t152 < 0.
            t152 = 0.
          ENDIF.
        ENDIF.
        IF t152 > t154 OR t153 <= 0.
          CLEAR t150.
        ELSE.
          IF t153 > t154 - t152.
            t153 = t154 - t152.
          ENDIF.
          t150 = t151+t152(t153).
        ENDIF.
        DATA(t155) = |!|.
        t149 = xsdbool( t150 = t155 ).
        IF t149 = abap_true.
          DATA(t156) = VALUE string( ).
          DATA t157 TYPE string.
          t157 = t142.
          DATA(t159) = VALUE string( ).
          DATA(t161) = 1.
          DATA t162 TYPE i.
          t162 = strlen( t157 ).
          DATA(t165) = strlen( t157 ).
          IF t161 < 0.
            t161 = t161 + t165.
            IF t161 < 0.
              t161 = 0.
            ENDIF.
          ENDIF.
          IF t161 > t165 OR t162 <= 0.
            CLEAR t159.
          ELSE.
            IF t162 > t165 - t161.
              t162 = t165 - t161.
            ENDIF.
            t159 = t157+t161(t162).
          ENDIF.
          t156 = t159.
          t142 = t156.
        ENDIF.
        t141 = t142.
        t137 = t141.
        DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
        t167 = t124.
        t122->add_named_identifier( i_name = t137 i_identifier = t167 ).
      ENDIF.
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      t169 = t2->scope.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      t171 = t4.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t178) = |Write To|.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t177->sval = t178.
      DATA t179 TYPE string.
      t179 = t2->filename.
      DATA t181 TYPE REF TO zcl_lnt_ireference_extras.
      t169->add_reference( i_usage = t171 i_referencing = t102 i_type_9913 = t177 i_filename = t179 i_extra = t181 ).
    ELSE.
      DATA t182 TYPE abap_bool.
      t182 = xsdbool( t4 IS BOUND ).
      IF t182 = abap_true.
        DATA t185 TYPE string.
        DATA t186 TYPE string.
        DATA(t187) = |InlineData, could not determine type for "|.
        DATA t188 TYPE string.
        DATA t192 TYPE string.
        t192 = t4->str.
        t188 = t192.
        DATA(t194) = strlen( t187 ).
        t186 = |{ t187 }{ t188 }|.
        DATA(t195) = |"|.
        DATA(t196) = strlen( t186 ).
        t185 = |{ t186 }{ t195 }|.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t198 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t199 TYPE REF TO zcl_lnt_abstract_token.
        t199 = t4.
        DATA t201 TYPE string.
        t201 = t2->filename.
        DATA t203 TYPE REF TO zcl_lnt_unknown_type.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t203 = NEW zcl_lnt_unknown_type( i_error = t185 i_qualified_name = t205 ).
        DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t210.
        t209 = t210.
        DATA(t212) = |inline|.
        t209->load( ).
        APPEND t212 TO t209->items.
        t209->save( ).
        t206 = t209.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t198 = NEW zcl_lnt_typed_identifier( i_token = t199 i_filename = t201 i_type_9913 = t203 i_meta = t206 i_value = t215 ).
        t197 = t198.
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        t217 = t2->scope.
        DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
        t219 = t197.
        DATA(t224) = VALUE abap_bool( ).
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t224 = xsdbool( t219 IS INITIAL ).
        IF t224 = abap_true.
        ELSE.
          DATA(t232) = VALUE string( ).
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          t233 = t219.
          DATA(t236) = VALUE string( ).
          DATA t237 TYPE string.
          DATA t240 TYPE REF TO zcl_lnt_abstract_token.
          t240 = t233->token.
          DATA t242 TYPE string.
          t242 = t240->str.
          t237 = t242.
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = VALUE string( ).
          DATA(t246) = t237.
          DATA(t247) = 0.
          DATA(t248) = 1.
          DATA(t249) = strlen( t246 ).
          IF t247 < 0.
            t247 = t247 + t249.
            IF t247 < 0.
              t247 = 0.
            ENDIF.
          ENDIF.
          IF t247 > t249 OR t248 <= 0.
            CLEAR t245.
          ELSE.
            IF t248 > t249 - t247.
              t248 = t249 - t247.
            ENDIF.
            t245 = t246+t247(t248).
          ENDIF.
          DATA(t250) = |!|.
          t244 = xsdbool( t245 = t250 ).
          IF t244 = abap_true.
            DATA(t251) = VALUE string( ).
            DATA t252 TYPE string.
            t252 = t237.
            DATA(t254) = VALUE string( ).
            DATA(t256) = 1.
            DATA t257 TYPE i.
            t257 = strlen( t252 ).
            DATA(t260) = strlen( t252 ).
            IF t256 < 0.
              t256 = t256 + t260.
              IF t256 < 0.
                t256 = 0.
              ENDIF.
            ENDIF.
            IF t256 > t260 OR t257 <= 0.
              CLEAR t254.
            ELSE.
              IF t257 > t260 - t256.
                t257 = t260 - t256.
              ENDIF.
              t254 = t252+t256(t257).
            ENDIF.
            t251 = t254.
            t237 = t251.
          ENDIF.
          t236 = t237.
          t232 = t236.
          DATA t262 TYPE REF TO zcl_lnt_typed_identifier.
          t262 = t219.
          t217->add_named_identifier( i_name = t232 i_identifier = t262 ).
        ENDIF.
        DATA t264 TYPE REF TO zcl_lnt_current_scope.
        t264 = t2->scope.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        t266 = t4.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t273) = |Write To|.
        CREATE OBJECT t272.
        t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t272->sval = t273.
        DATA t274 TYPE string.
        t274 = t2->filename.
        DATA t276 TYPE REF TO zcl_lnt_ireference_extras.
        t264->add_reference( i_usage = t266 i_referencing = t197 i_type_9913 = t272 i_filename = t274 i_extra = t276 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD strip_derived_from_constant.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t6 TYPE REF TO zcl_lnt_abstract_type_data.
    t6 = t1->data_56cc.
    t2 = t6.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t10 TYPE REF TO zcl_lnt_abstract_type_data.
    t10 = t2.
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t13) = xsdbool( t10 IS INITIAL ).
    IF t13 = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type_data.
      t17 = t10.
      t16 = t17->zlnt_view_read_sr_b01015468803( ).
      t12 = t16.
    ENDIF.
    t9 = t12.
    DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t22) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t22->has = abap_true.
    t22->value = abap_true.
    t19 = t22.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t24 = t9->has.
    ENDIF.
    IF t19 IS BOUND.
      t25 = t19->has.
    ENDIF.
    IF t24 = t25.
      IF t24 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t19->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      t8 = abap_false.
    ELSE.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_abstract_type_data.
    t27 = t2.
    DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t31 = t27->zlnt_view_read_sr_b01015468803( ).
    t30 = t31.
    DATA t33 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t35 = t27->zlnt_view_read_sr_c978da49ae47( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t37 = t27->zlnt_view_read_sr_dfbdd4b4a00f( ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t40 = t27->zlnt_view_read_sr_19ee0de30d00( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t42 = t27->zlnt_view_read_sr_a5933bdf8829( ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t44 = t27->zlnt_view_read_sr_b2a3e27508db( ).
    t34 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t35 i_conversion_exit = t37 i_derived_from_constant = t39 i_ddic_name = t40 i_rtti_name = t42 i_description = t44 ).
    t33 = t34.
    DATA t46 TYPE abap_bool.
    t46 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_character_type.
      DATA t49 TYPE f.
      DATA t51 TYPE REF TO zcl_lnt_character_type.
      t51 ?= t1.
      DATA t53 TYPE f.
      t53 = t51->length.
      t49 = t53.
      DATA t55 TYPE REF TO zcl_lnt_abstract_type_data.
      t55 = t33.
      t48 = NEW zcl_lnt_character_type( i_length = t49 i_extra = t55 ).
      result = t48.
      RETURN.
    ELSE.
      DATA t59 TYPE abap_bool.
      t59 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
      IF t59 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_integer_type.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type_data.
        t62 = t33.
        t61 = zcl_lnt_integer_type=>get_db65( i_input_967e = t62 ).
        result = t61.
        RETURN.
      ELSE.
        DATA t66 TYPE abap_bool.
        t66 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_string_type.
          DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
          t69 = t33.
          t68 = zcl_lnt_string_type=>get_db65( i_input_967e = t69 ).
          result = t68.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d811_4af0000f48d5.
  ENDMETHOD.
ENDCLASS.
