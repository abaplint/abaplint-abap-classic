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
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    t6 = t1->find_first_expression( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t10 = t6->get_first_token( ).
    ENDIF.
    t4 = t10.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE abap_bool.
    t18 = xsdbool( t4 IS BOUND ).
    t17 = t18.
    IF t18 = abap_true.
      t17 = xsdbool( strlen( t4->str ) > 30 ).
    ENDIF.
    IF t17 = abap_true.
      DATA t31 TYPE string.
      DATA(t32) = |DATA name too long, |.
      DATA t33 TYPE string.
      t33 = t4->str.
      DATA(t39) = strlen( t32 ).
      t31 = |{ t32 }{ t33 }|.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t40 = t2->issues.
      DATA t42 TYPE REF TO zcl_lnt_issue.
      DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t42 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t4 i_message_26cb = t31 i_fix = t47 ).
      t40->load( ).
      APPEND t42 TO t40->items.
      t40->save( ).
    ENDIF.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE abap_bool.
    t49 = xsdbool( t4 IS BOUND ).
    t48 = t49.
    IF t49 = abap_true.
      t48 = xsdbool( t3 IS BOUND ).
    ENDIF.
    IF t48 = abap_true.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA(t55) = t3.
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t53 = t54.
      IF t54 = abap_false.
        DATA(t57) = t3.
        t53 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_c_like_type ).
      ENDIF.
      IF t53 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
        t3 = zcl_lnt_string_type=>get_db65( i_input_967e = t59 ).
      ELSE.
        DATA(t61) = t3.
        IF xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_x_sequence_type ) = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type_data.
          t3 = zcl_lnt_string_type=>get_db65( i_input_967e = t63 ).
        ELSE.
          DATA(t65) = t3.
          IF xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_c_generic_type ) = abap_true.
            DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t68 = t2->issues.
            DATA t70 TYPE REF TO zcl_lnt_issue.
            DATA t75 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t70 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |InlineData, generic type C cannot be used for inferred type| i_fix = t75 ).
            t68->load( ).
            APPEND t70 TO t68->items.
            t68->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t3->is_generic( ) = abap_true.
        DATA t80 TYPE string.
        DATA(t81) = |DATA definition cannot be generic, |.
        DATA t82 TYPE string.
        t82 = t3->zlnt_builtin_clas_3f891b097658( )->name.
        DATA(t86) = strlen( t81 ).
        t80 = |{ t81 }{ t82 }|.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t87 = t2->issues.
        DATA t89 TYPE REF TO zcl_lnt_issue.
        DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t89 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t80 i_fix = t94 ).
        t87->load( ).
        APPEND t89 TO t87->items.
        t87->save( ).
        DATA(t98) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t98.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t3 = zcl_lnt_void_type=>get_db65( i_voided = t99 i_qualified_name = t101 ).
      ENDIF.
      DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      t104 = t4.
      DATA t106 TYPE string.
      t106 = t2->filename.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      t108 = zcl_lnt_sy_inline_data=>strip_derived_from_constant( i_type_9913 = t3 ).
      DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t114.
      t114->load( ).
      APPEND |inline| TO t114->items.
      t114->save( ).
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t102 = NEW zcl_lnt_typed_identifier( i_token = t104 i_filename = t106 i_type_9913 = t108 i_meta = t114 i_value = t120 ).
      DATA t122 TYPE REF TO zcl_lnt_current_scope.
      t122 = t2->scope.
      DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
      t124 = t102.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t124 IS INITIAL ) = abap_true.
      ELSE.
        DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
        t138 = t124.
        DATA t142 TYPE string.
        t142 = t138->token->str.
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
        ELSE.
          IF t153 > t154 - t152.
            t153 = t154 - t152.
          ENDIF.
          t150 = t151+t152(t153).
        ENDIF.
        IF xsdbool( t150 = |!| ) = abap_true.
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
          ELSE.
            IF t162 > t165 - t161.
              t162 = t165 - t161.
            ENDIF.
            t159 = t157+t161(t162).
          ENDIF.
          t142 = t159.
        ENDIF.
        t122->add_named_identifier( i_name = t142 i_identifier = t124 ).
      ENDIF.
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      t169 = t2->scope.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      t171 = t4.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t177->sval = |Write To|.
      DATA t179 TYPE string.
      t179 = t2->filename.
      DATA t181 TYPE REF TO zcl_lnt_ireference_extras.
      t169->add_reference( i_usage = t171 i_referencing = t102 i_type_9913 = t177 i_filename = t179 i_extra = t181 ).
    ELSE.
      IF xsdbool( t4 IS BOUND ) = abap_true.
        DATA t185 TYPE string.
        DATA t186 TYPE string.
        DATA(t187) = |InlineData, could not determine type for "|.
        DATA t188 TYPE string.
        t188 = t4->str.
        DATA(t194) = strlen( t187 ).
        t186 = |{ t187 }{ t188 }|.
        DATA(t196) = strlen( t186 ).
        t185 = |{ t186 }{ |"| }|.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t199 TYPE REF TO zcl_lnt_abstract_token.
        t199 = t4.
        DATA t201 TYPE string.
        t201 = t2->filename.
        DATA t203 TYPE REF TO zcl_lnt_unknown_type.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t203 = NEW zcl_lnt_unknown_type( i_error = t185 i_qualified_name = t205 ).
        DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t209.
        t209->load( ).
        APPEND |inline| TO t209->items.
        t209->save( ).
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t197 = NEW zcl_lnt_typed_identifier( i_token = t199 i_filename = t201 i_type_9913 = t203 i_meta = t209 i_value = t215 ).
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        t217 = t2->scope.
        DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
        t219 = t197.
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t219 IS INITIAL ) = abap_true.
        ELSE.
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          t233 = t219.
          DATA t237 TYPE string.
          t237 = t233->token->str.
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
          ELSE.
            IF t248 > t249 - t247.
              t248 = t249 - t247.
            ENDIF.
            t245 = t246+t247(t248).
          ENDIF.
          IF xsdbool( t245 = |!| ) = abap_true.
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
            ELSE.
              IF t257 > t260 - t256.
                t257 = t260 - t256.
              ENDIF.
              t254 = t252+t256(t257).
            ENDIF.
            t237 = t254.
          ENDIF.
          t217->add_named_identifier( i_name = t237 i_identifier = t219 ).
        ENDIF.
        DATA t264 TYPE REF TO zcl_lnt_current_scope.
        t264 = t2->scope.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        t266 = t4.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t272.
        t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t272->sval = |Write To|.
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
    t2 = t1->data_56cc.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t10 TYPE REF TO zcl_lnt_abstract_type_data.
    t10 = t2.
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
    ELSE.
      t12 = t10->zlnt_view_read_sr_b01015468803( ).
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
    t30 = t27->zlnt_view_read_sr_b01015468803( ).
    DATA t33 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t33 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t27->zlnt_view_read_sr_c978da49ae47( ) i_conversion_exit = t27->zlnt_view_read_sr_dfbdd4b4a00f( ) i_derived_from_constant = t39 i_ddic_name = t27->zlnt_view_read_sr_19ee0de30d00( ) i_rtti_name = t27->zlnt_view_read_sr_a5933bdf8829( ) i_description = t27->zlnt_view_read_sr_b2a3e27508db( ) ).
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ) = abap_true.
      DATA t49 TYPE f.
      DATA t51 TYPE REF TO zcl_lnt_character_type.
      t51 ?= t1.
      t49 = t51->length.
      result = NEW zcl_lnt_character_type( i_length = t49 i_extra = t33 ).
      RETURN.
    ELSE.
      IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ) = abap_true.
        result = zcl_lnt_integer_type=>get_db65( i_input_967e = t33 ).
        RETURN.
      ELSE.
        IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ) = abap_true.
          result = zcl_lnt_string_type=>get_db65( i_input_967e = t33 ).
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
