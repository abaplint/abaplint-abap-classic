* TS: src/abap/5_syntax/expressions/target.ts:18:1 Target
CLASS zcl_lnt_sy_target DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_target IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE string( ).
    t3 = t1->concat_tokens( ).
    DATA(t7) = VALUE i( ).
    DATA(t9) = |-|.
    DATA(t10) = strlen( t3 ).
    IF t9 IS INITIAL.
      t7 = 0.
    ELSE.
      FIND t9 IN t3 MATCH OFFSET t7.
      IF sy-subrc <> 0.
        t7 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t7 >= 0 ) = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_current_scope.
      t14 = t2->scope.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t3.
      t17 = t21.
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = t17.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t29) = VALUE abap_bool( ).
      IF t25 IS INITIAL.
        t29 = abap_true.
      ELSEIF t25->has = abap_false.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t35 = t14->current.
        DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t35 IS INITIAL ) = abap_true.
        ELSE.
          DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t43 = t35.
          DATA(t45) = VALUE string( ).
          t45 = t17->value.
          t38 = t43->find_variable( i_name = t45 ).
        ENDIF.
        t33 = t38.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t33 IS BOUND ) = abap_true.
          t47 = t33.
        ELSE.
          DATA(t59) = VALUE string( ).
          t59 = t17->value.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t59.
          t47 = t14->find_type_pool_constant( i_name = t61 ).
        ENDIF.
        t23 = t47.
      ENDIF.
      t12 = t23.
      IF xsdbool( t12 IS BOUND ) = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_current_scope.
        t65 = t2->scope.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        t67 = t1->get_first_token( ).
        DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
        t72 = t12.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t74.
        t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t74->sval = |Write To|.
        DATA(t76) = VALUE string( ).
        t76 = t2->filename.
        DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
        t65->add_reference( i_usage = t67 i_referencing = t72 i_type_9913 = t74 i_filename = t76 i_extra = t78 ).
        result = t12->type_cba0.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zcl_lnt_abstract_node.
    t91 = t1.
    t89 ?= t91->children.
    t88 = t89.
    DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t96 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t98 TYPE REF TO object.
    t88->load( ).
    READ TABLE t88->items INDEX 1 INTO t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t99 ?= t98.
      DATA t100 TYPE REF TO object.
      t100 = t99->as_ref( ).
      t96 ?= t100.
    ELSE.
      t96 ?= t98.
    ENDIF.
    t95 = t96.
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t102 = xsdbool( t95 IS INITIAL ).
    t101 = t102.
    IF t102 = abap_false.
      t101 = xsdbool( xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
    ENDIF.
    IF t101 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_abstract_type.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    t115 ?= t95.
    t113 = zcl_lnt_sy_target=>find_top( i_node = t115 i_input_967e = t2 ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t113 IS INITIAL ) = abap_true.
      DATA(t126) = VALUE string( ).
      DATA(t128) = VALUE string( ).
      DATA(t129) = |"|.
      DATA(t130) = VALUE string( ).
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      t133 ?= t95.
      t130 = t133->get_first_token( )->str.
      DATA(t138) = strlen( t129 ).
      t128 = |{ t129 }{ t130 }|.
      DATA(t140) = strlen( t128 ).
      t126 = |{ t128 }{ |" not found, Target| }|.
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t141 = t2->issues.
      DATA t143 TYPE REF TO zcl_lnt_issue.
      DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t143 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t126 i_fix = t148 ).
      t141->load( ).
      APPEND t143 TO t141->items.
      t141->save( ).
      DATA(t152) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t153->has = abap_true.
      t153->value = t152.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t153 i_qualified_name = t155 ).
      RETURN.
    ENDIF.
    DATA(t156) = VALUE int8( ).
    t156 = CONV int8( 1 ).
    DO.
      DATA(t160) = VALUE int8( ).
      t88->load( ).
      t160 = lines( t88->items ).
      IF xsdbool( t156 <= t160 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t163 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t163.
      DATA t164 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t164.
      DATA(t166) = VALUE i( ).
      t166 = t156.
      t166 = t166 + 1.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      t88->load( ).
      CLEAR t168.
      READ TABLE t88->items INDEX t166 INTO t168.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      CLEAR t164.
      IF t168 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t169 ?= t168.
        DATA t170 TYPE REF TO object.
        t170 = t169->as_ref( ).
        t164 ?= t170.
      ELSE.
        t164 ?= t168.
      ENDIF.
      t163 = t164.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      CLEAR t174.
      IF xsdbool( t163 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA(t180) = CONV int8( 1 ).
      t156 = t156 + t180.
      DATA t182 TYPE REF TO object.
      t182 = t163->get_db65( ).
      IF xsdbool( t182 IS BOUND AND t182 IS INSTANCE OF zcl_lnt_dash ) = abap_true.
        DATA(t185) = t113.
        IF xsdbool( t185 IS BOUND AND t185 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t189) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t190->has = abap_true.
          t190->value = t189.
          t187 = t190.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          result = zcl_lnt_void_type=>get_db65( i_voided = t187 i_qualified_name = t192 ).
          RETURN.
        ELSE.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = t113.
          t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t194 = t195.
          IF t195 = abap_true.
            DATA t199 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t199.
            t199 ?= t113.
            t194 = t199->options->zlnt_view_read_sr_ec4602663c93( ).
          ENDIF.
          t193 = t194.
          IF t194 = abap_true.
            DATA t205 TYPE REF TO zcl_lnt_abstract_type.
            DATA t207 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t207.
            t207 ?= t113.
            t205 = t207->row_type.
            t193 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_unknown_type ).
          ENDIF.
          IF t193 = abap_true.
            DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t212.
            DATA(t214) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t215->has = abap_true.
            t215->value = t214.
            t212 = t215.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            result = zcl_lnt_void_type=>get_db65( i_voided = t212 i_qualified_name = t217 ).
            RETURN.
          ELSE.
            DATA(t218) = VALUE abap_bool( ).
            DATA(t219) = VALUE abap_bool( ).
            DATA(t220) = VALUE abap_bool( ).
            DATA(t221) = t113.
            t220 = xsdbool( t221 IS BOUND AND t221 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t219 = t220.
            IF t220 = abap_true.
              DATA t224 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t224.
              t224 ?= t113.
              t219 = t224->options->zlnt_view_read_sr_ec4602663c93( ).
            ENDIF.
            t218 = t219.
            IF t219 = abap_true.
              DATA t230 TYPE REF TO zcl_lnt_abstract_type.
              DATA t232 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t232.
              t232 ?= t113.
              t230 = t232->row_type.
              t218 = xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_void_type ).
            ENDIF.
            IF t218 = abap_true.
              DATA t240 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t240.
              t240 ?= t113.
              result = t240->row_type.
              RETURN.
            ELSE.
              DATA(t245) = VALUE abap_bool( ).
              DATA(t246) = VALUE abap_bool( ).
              DATA(t247) = VALUE abap_bool( ).
              DATA(t249) = t113.
              t247 = xsdbool( xsdbool( t249 IS BOUND AND t249 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ).
              t246 = t247.
              IF t247 = abap_true.
                DATA(t251) = VALUE abap_bool( ).
                DATA(t252) = VALUE abap_bool( ).
                DATA(t253) = VALUE abap_bool( ).
                DATA(t254) = t113.
                t253 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t252 = t253.
                IF t253 = abap_true.
                  DATA t257 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t257.
                  t257 ?= t113.
                  t252 = t257->options->zlnt_view_read_sr_ec4602663c93( ).
                ENDIF.
                t251 = t252.
                IF t252 = abap_true.
                  DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t265.
                  t265 ?= t113.
                  t263 = t265->row_type.
                  t251 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_structure_type ).
                ENDIF.
                t246 = xsdbool( t251 = abap_false ).
              ENDIF.
              t245 = t246.
              IF t246 = abap_true.
                DATA(t271) = t113.
                t245 = xsdbool( xsdbool( t271 IS BOUND AND t271 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
              ENDIF.
              IF t245 = abap_true.
                DATA(t272) = VALUE string( ).
                DATA(t274) = VALUE string( ).
                DATA(t275) = VALUE string( ).
                DATA(t276) = |Not a structure, target, |.
                DATA(t277) = VALUE string( ).
                DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t278.
                DATA t280 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t280.
                DATA t282 TYPE REF TO zcl_lnt_abstract_type.
                t282 = t113.
                DATA t284 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t284.
                IF xsdbool( t282 IS INITIAL ) = abap_true.
                  CLEAR t284.
                ELSE.
                  t284 = t282->zlnt_builtin_clas_3f891b097658( ).
                ENDIF.
                t280 = t284.
                DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t291.
                IF xsdbool( t280 IS INITIAL ) = abap_true.
                  CLEAR t291.
                ELSE.
                  DATA(t295) = VALUE string( ).
                  t295 = t280->name.
                  DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t298->has = abap_true.
                  t298->value = t295.
                  t291 = t298.
                ENDIF.
                t278 = t291.
                DATA(t299) = VALUE string( ).
                DATA(t300) = VALUE abap_bool( ).
                IF t278 IS INITIAL.
                  t300 = abap_true.
                ELSEIF t278->has = abap_false.
                  t300 = abap_true.
                ENDIF.
                IF t300 = abap_true.
                  t299 = |undefined|.
                ELSE.
                  t299 = t278->value.
                ENDIF.
                t277 = t299.
                DATA(t305) = strlen( t276 ).
                t275 = |{ t276 }{ t277 }|.
                DATA(t307) = strlen( t275 ).
                t274 = |{ t275 }{ |, | }|.
                DATA(t308) = VALUE string( ).
                t308 = t163->concat_tokens( ).
                DATA(t310) = strlen( t274 ).
                t272 = |{ t274 }{ t308 }|.
                DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t311 = t2->issues.
                DATA t313 TYPE REF TO zcl_lnt_issue.
                DATA t315 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t315.
                t315 = t1->get_first_token( ).
                DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t318.
                t313 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t315 i_message_26cb = t272 i_fix = t318 ).
                t311->load( ).
                APPEND t313 TO t311->items.
                t311->save( ).
                DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t320.
                DATA(t322) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t323->has = abap_true.
                t323->value = t322.
                t320 = t323.
                DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t325.
                result = zcl_lnt_void_type=>get_db65( i_voided = t320 i_qualified_name = t325 ).
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t327 TYPE REF TO object.
        t327 = t163->get_db65( ).
        IF xsdbool( t327 IS BOUND AND t327 IS INSTANCE OF zcl_lnt_instance_arrow ) = abap_true.
          DATA(t329) = VALUE abap_bool( ).
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = VALUE abap_bool( ).
          DATA(t333) = t113.
          t331 = xsdbool( xsdbool( t333 IS BOUND AND t333 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_false ).
          t330 = t331.
          IF t331 = abap_true.
            DATA(t336) = t113.
            t330 = xsdbool( xsdbool( t336 IS BOUND AND t336 IS INSTANCE OF zcl_lnt_data_reference ) = abap_false ).
          ENDIF.
          t329 = t330.
          IF t330 = abap_true.
            DATA(t339) = t113.
            t329 = xsdbool( xsdbool( t339 IS BOUND AND t339 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
          ENDIF.
          IF t329 = abap_true.
            DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t342 = t2->issues.
            DATA t344 TYPE REF TO zcl_lnt_issue.
            DATA t346 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t346.
            t346 = t1->get_first_token( ).
            DATA t349 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t349.
            t344 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t346 i_message_26cb = |Not an object reference, target| i_fix = t349 ).
            t342->load( ).
            APPEND t344 TO t342->items.
            t342->save( ).
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            DATA(t353) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t354->has = abap_true.
            t354->value = t353.
            t351 = t354.
            DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t356.
            result = zcl_lnt_void_type=>get_db65( i_voided = t351 i_qualified_name = t356 ).
            RETURN.
          ENDIF.
        ELSE.
          DATA t358 TYPE REF TO object.
          t358 = t163->get_db65( ).
          IF xsdbool( t358 IS BOUND AND t358 IS INSTANCE OF zcl_lnt_st_dereference ) = abap_true.
            DATA(t360) = VALUE abap_bool( ).
            DATA(t361) = VALUE abap_bool( ).
            DATA(t363) = t113.
            t361 = xsdbool( xsdbool( t363 IS BOUND AND t363 IS INSTANCE OF zcl_lnt_data_reference ) = abap_false ).
            t360 = t361.
            IF t361 = abap_true.
              DATA(t366) = t113.
              t360 = xsdbool( xsdbool( t366 IS BOUND AND t366 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
            ENDIF.
            IF t360 = abap_true.
              DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t369 = t2->issues.
              DATA t371 TYPE REF TO zcl_lnt_issue.
              DATA t373 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t373.
              t373 = t1->get_first_token( ).
              DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t376.
              t371 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t373 i_message_26cb = |Not an object reference, target| i_fix = t376 ).
              t369->load( ).
              APPEND t371 TO t369->items.
              t369->save( ).
              DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t378.
              DATA(t380) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t381->has = abap_true.
              t381->value = t380.
              t378 = t381.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t383.
              result = zcl_lnt_void_type=>get_db65( i_voided = t378 i_qualified_name = t383 ).
              RETURN.
            ENDIF.
            DATA(t386) = t113.
            IF xsdbool( xsdbool( t386 IS BOUND AND t386 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
              DATA t391 TYPE REF TO zcl_lnt_data_reference.
              CLEAR t391.
              t391 ?= t113.
              t113 = t391->type_cba0.
            ENDIF.
          ELSE.
            DATA t397 TYPE REF TO object.
            t397 = t163->get_db65( ).
            IF xsdbool( t397 IS BOUND AND t397 IS INSTANCE OF zcl_lnt_st_component_name ) = abap_true.
              DATA t401 TYPE REF TO zif_lnt_node.
              CLEAR t401.
              t401 ?= t163.
              t113 = zcl_lnt_sy_component_name=>run_syntax( i_context = t113 i_node = t401 i_input_967e = t2 ).
            ELSE.
              DATA t405 TYPE REF TO object.
              t405 = t163->get_db65( ).
              IF xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_table_body ) = abap_true.
                DATA(t407) = VALUE abap_bool( ).
                DATA(t408) = VALUE abap_bool( ).
                DATA(t409) = VALUE abap_bool( ).
                DATA(t410) = VALUE abap_bool( ).
                DATA(t412) = t113.
                t410 = xsdbool( xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
                t409 = t410.
                IF t410 = abap_true.
                  DATA(t415) = t113.
                  t409 = xsdbool( xsdbool( t415 IS BOUND AND t415 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
                ENDIF.
                t408 = t409.
                IF t409 = abap_true.
                  DATA(t418) = t113.
                  t408 = xsdbool( xsdbool( t418 IS BOUND AND t418 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                ENDIF.
                t407 = t408.
                IF t408 = abap_true.
                  DATA(t421) = t113.
                  t407 = xsdbool( xsdbool( t421 IS BOUND AND t421 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                ENDIF.
                IF t407 = abap_true.
                  DATA(t422) = VALUE string( ).
                  DATA(t424) = VALUE string( ).
                  DATA(t425) = |Not an internal table, "|.
                  DATA(t426) = VALUE string( ).
                  t426 = t1->concat_tokens( ).
                  DATA(t428) = strlen( t425 ).
                  t424 = |{ t425 }{ t426 }|.
                  DATA(t430) = strlen( t424 ).
                  t422 = |{ t424 }{ |"| }|.
                  DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t431 = t2->issues.
                  DATA t433 TYPE REF TO zcl_lnt_issue.
                  DATA t435 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t435.
                  t435 = t1->get_first_token( ).
                  DATA t438 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t438.
                  t433 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t435 i_message_26cb = t422 i_fix = t438 ).
                  t431->load( ).
                  APPEND t433 TO t431->items.
                  t431->save( ).
                  DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t440.
                  DATA(t442) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t443->has = abap_true.
                  t443->value = t442.
                  t440 = t443.
                  DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t445.
                  result = zcl_lnt_void_type=>get_db65( i_voided = t440 i_qualified_name = t445 ).
                  RETURN.
                ENDIF.
                DATA(t446) = VALUE abap_bool( ).
                DATA(t447) = VALUE abap_bool( ).
                DATA(t448) = t113.
                t447 = xsdbool( t448 IS BOUND AND t448 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t446 = t447.
                IF t447 = abap_true.
                  DATA t451 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t451.
                  t451 ?= t113.
                  t446 = t451->options->zlnt_view_read_sr_ec4602663c93( ).
                ENDIF.
                IF t446 = abap_true.
                  DATA t457 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t457.
                  DATA t459 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t459.
                  t459 ?= t113.
                  t457 = t459->row_type.
                  DATA t463 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t463.
                  DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t464.
                  DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t465.
                  TRY.
                      t465 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
                    CATCH zlnt_exception_js_ebcc2df7d5e4.
                      DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t467->has = abap_true.
                      t467->value = `Invalid JSON`.
                      DATA(t468) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t467 ).
                      DATA(t469) = NEW zlnt_exception_cl_30eec8e8805d( ).
                      t469->payload = t468.
                      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t470.
                      CLEAR t470.
                      DATA t471 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t471.
                      DATA t472 TYPE REF TO object.
                      CLEAR t472.
                      CLEAR t471.
                      t472 = t468.
                      TRY.
                          t470 ?= t472.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t470 IS NOT BOUND.
                        TRY.
                            t471 ?= t468.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                        IF t471 IS BOUND.
                          t470 = t471->source( ).
                        ENDIF.
                        IF t470 IS NOT BOUND.
                          CREATE OBJECT t470.
                          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          t470->oval = t468.
                        ENDIF.
                      ENDIF.
                      t469->source_value = t470.
                      RAISE EXCEPTION t469.
                  ENDTRY.
                  t464 = t465.
                  DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t473.
                  DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t474.
                  DATA t475 TYPE REF TO zcl_lnt_itable_options.
                  DATA t477 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t477.
                  t477 ?= t113.
                  t475 = t477->options.
                  CLEAR t474.
                  IF t475 IS BOUND.
                    DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t481.
                    DATA t482 TYPE REF TO object.
                    CLEAR t481.
                    t482 = t475.
                    TRY.
                        t474 ?= t482.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t474 IS NOT BOUND.
                      TRY.
                          t481 ?= t475.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t481 IS BOUND.
                        t474 = t481->source( ).
                      ENDIF.
                      IF t474 IS NOT BOUND.
                        CREATE OBJECT t474.
                        t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t474->oval = t475.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                  t473 = t474.
                  DATA(t484) = VALUE abap_bool( ).
                  IF t473 IS NOT BOUND.
                    t484 = abap_true.
                  ELSE.
                    t484 = xsdbool( t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                  ENDIF.
                  IF xsdbool( t484 = abap_false ) = abap_true.
                    DATA t486 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t486.
                    t486 = zlnt_runtime_ownk_4497b85e405d=>keys( t473 ).
                    DATA(t488) = VALUE string( ).
                    t486->dense( ).
                    DATA(t489) = VALUE i( ).
                    DO.
                      t486->load( ).
                      IF t489 >= lines( t486->items ).
                        EXIT.
                      ENDIF.
                      CLEAR t488.
                      READ TABLE t486->items INDEX t489 + 1 INTO t488.
                      IF t486->has( t489 ) = abap_false.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t489 = t489 + 1.
                      t464->put( p0 = t488 p1 = t473->get( p0 = t488 ) ).
                    ENDDO.
                  ENDIF.
                  DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t497.
                  CLEAR t497.
                  CREATE OBJECT t497.
                  t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  t497->bval = abap_false.
                  t464->put( p0 = |withHeader| p1 = t497 ).
                  DATA t499 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t499.
                  CLEAR t499.
                  IF t464 IS BOUND.
                    IF t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t499 ?= t464->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t499 IS NOT BOUND.
                      IF t464->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t501 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t501.
                        IF t464->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t501 ?= t464->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t501->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t502) = VALUE abap_bool( ).
                      DATA(t503) = VALUE string( ).
                      DATA t504 TYPE REF TO zcl_lnt_itable_key.
                      CLEAR t504.
                      DATA t505 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t505.
                      t499 = NEW zcl_lnt_itable_options( view_source = t464 i_with_header = t502 i_key_type = t503 i_primary_key = t504 i_secondary = t505 ).
                    ENDIF.
                  ENDIF.
                  t463 = t499.
                  DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t507.
                  t113 = NEW zcl_lnt_ty_table_type( i_row_type = t457 i_options = t463 i_qualified_name = t506 i_description = t507 ).
                ENDIF.
              ELSE.
                DATA(t508) = VALUE abap_bool( ).
                DATA(t509) = VALUE abap_bool( ).
                t509 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_expression_node ).
                t508 = t509.
                IF t509 = abap_true.
                  DATA t512 TYPE REF TO zif_lnt_statement_runnable.
                  DATA t513 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t513.
                  t513 ?= t163.
                  t512 = t513->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t508 = xsdbool( t512 IS BOUND AND t512 IS INSTANCE OF zcl_lnt_st_table_expression ).
                ENDIF.
                IF t508 = abap_true.
                  DATA(t516) = VALUE abap_bool( ).
                  DATA(t517) = VALUE abap_bool( ).
                  DATA(t518) = VALUE abap_bool( ).
                  DATA(t520) = t113.
                  t518 = xsdbool( xsdbool( t520 IS BOUND AND t520 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
                  t517 = t518.
                  IF t518 = abap_true.
                    DATA(t523) = t113.
                    t517 = xsdbool( xsdbool( t523 IS BOUND AND t523 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
                  ENDIF.
                  t516 = t517.
                  IF t517 = abap_true.
                    DATA(t526) = t113.
                    t516 = xsdbool( xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                  ENDIF.
                  IF t516 = abap_true.
                    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t529 = t2->issues.
                    DATA t531 TYPE REF TO zcl_lnt_issue.
                    DATA t533 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t533.
                    t533 = t1->get_first_token( ).
                    DATA t536 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t536.
                    t531 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t533 i_message_26cb = |Table expression, expected table| i_fix = t536 ).
                    t529->load( ).
                    APPEND t531 TO t529->items.
                    t529->save( ).
                    DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t538.
                    DATA(t540) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t541->has = abap_true.
                    t541->value = t540.
                    t538 = t541.
                    DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t543.
                    result = zcl_lnt_void_type=>get_db65( i_voided = t538 i_qualified_name = t543 ).
                    RETURN.
                  ENDIF.
                  DATA t544 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t544.
                  DATA t546 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t546.
                  t546 ?= t163.
                  t544 = t546.
                  DATA t553 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t553.
                  DATA t554 TYPE REF TO zif_lnt_union_297610d4.
                  CLEAR t554.
                  t554 ?= t113.
                  t553 ?= t554.
                  zcl_lnt_sy_table_expression=>run_syntax( i_node = t544 i_input_967e = t2 i_row_type = t553 ).
                  DATA(t558) = VALUE abap_bool( ).
                  DATA(t559) = VALUE abap_bool( ).
                  DATA(t561) = t113.
                  t559 = xsdbool( xsdbool( t561 IS BOUND AND t561 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
                  t558 = t559.
                  IF t559 = abap_true.
                    DATA(t564) = t113.
                    t558 = xsdbool( xsdbool( t564 IS BOUND AND t564 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                  ENDIF.
                  IF t558 = abap_true.
                    DATA t569 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t569.
                    t569 ?= t113.
                    t113 = t569->row_type.
                  ENDIF.
                ELSE.
                  DATA t575 TYPE REF TO object.
                  t575 = t163->get_db65( ).
                  IF xsdbool( t575 IS BOUND AND t575 IS INSTANCE OF zcl_lnt_st_attribute_name ) = abap_true.
                    DATA(t578) = VALUE string( ).
                    t88->load( ).
                    IF xsdbool( lines( t88->items ) = 0 ) = abap_true.
                      t578 = |Write To|.
                    ELSE.
                      t578 = |Read From|.
                    ENDIF.
                    DATA t587 TYPE REF TO zif_lnt_node.
                    CLEAR t587.
                    t587 ?= t163.
                    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t590.
                    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CREATE OBJECT t592.
                    t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t592->sval = t578.
                    t590 = t592.
                    DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t595.
                    t113 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t113 i_node = t587 i_input_967e = t2 i_type_9913 = t590 i_error = t595 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t596 TYPE REF TO zcl_lnt_expression_node.
    DATA(t599) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    t596 = t1->find_direct_expression( i_type_9913 = t599 ).
    IF xsdbool( t596 IS BOUND ) = abap_true.
      DATA(t602) = VALUE abap_bool( ).
      DATA(t603) = VALUE abap_bool( ).
      t603 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_x_string_type ).
      t602 = t603.
      IF t603 = abap_false.
        t602 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_string_type ).
      ENDIF.
      IF t602 = abap_true.
        DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t609 = t2->issues.
        DATA t611 TYPE REF TO zcl_lnt_issue.
        DATA t616 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t611 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |xstring/string offset/length in writer position not possible| i_fix = t616 ).
        t609->load( ).
        APPEND t611 TO t609->items.
        t609->save( ).
        DATA(t620) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t621) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t621->has = abap_true.
        t621->value = t620.
        DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t621 i_qualified_name = t623 ).
        RETURN.
      ENDIF.
      DATA t624 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t624 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t596 i_input_967e = t2 ).
    ENDIF.
    DATA t628 TYPE REF TO zcl_lnt_expression_node.
    DATA(t631) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    t628 = t1->find_direct_expression( i_type_9913 = t631 ).
    IF xsdbool( t628 IS BOUND ) = abap_true.
      DATA(t634) = VALUE abap_bool( ).
      DATA(t635) = VALUE abap_bool( ).
      t635 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_x_string_type ).
      t634 = t635.
      IF t635 = abap_false.
        t634 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_string_type ).
      ENDIF.
      IF t634 = abap_true.
        DATA t641 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t641 = t2->issues.
        DATA t643 TYPE REF TO zcl_lnt_issue.
        DATA t648 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t643 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |xstring/string offset/length in writer position not possible| i_fix = t648 ).
        t641->load( ).
        APPEND t643 TO t641->items.
        t641->save( ).
        DATA(t652) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t653->has = abap_true.
        t653->value = t652.
        DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t653 i_qualified_name = t655 ).
        RETURN.
      ENDIF.
      DATA t656 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t656 = zcl_lnt_sy_field_length=>run_syntax( i_node = t628 i_input_967e = t2 ).
    ENDIF.
    result = t113.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    t11 = t1->get_first_token( ).
    DATA t15 TYPE string.
    t15 = t11->str.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE REF TO object.
    t23 = t1->get_db65( ).
    t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_target_field ).
    t21 = t22.
    IF t22 = abap_false.
      DATA t27 TYPE REF TO object.
      t27 = t1->get_db65( ).
      t21 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_target_field_symbol ).
    ENDIF.
    IF t21 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      t32 = t2->scope.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t15.
      t35 = t39.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t43 = t35.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t47) = VALUE abap_bool( ).
      IF t43 IS INITIAL.
        t47 = abap_true.
      ELSEIF t43->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t53 = t32->current.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t53 IS INITIAL ) = abap_true.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t61 = t53.
          DATA t63 TYPE string.
          t63 = t35->value.
          t56 = t61->find_variable( i_name = t63 ).
        ENDIF.
        t51 = t56.
        DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t51 IS BOUND ) = abap_true.
          t65 = t51.
        ELSE.
          DATA t77 TYPE string.
          t77 = t35->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          t65 = t32->find_type_pool_constant( i_name = t79 ).
        ENDIF.
        t41 = t65.
      ENDIF.
      t30 = t41.
      IF xsdbool( t30 IS BOUND ) = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        t83 = t2->scope.
        DATA t85 TYPE REF TO zcl_lnt_abstract_token.
        t85 = t11.
        DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
        t89 = t30.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t91.
        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t91->sval = |Write To|.
        DATA t93 TYPE string.
        t93 = t2->filename.
        DATA t95 TYPE REF TO zcl_lnt_ireference_extras.
        t83->add_reference( i_usage = t85 i_referencing = t89 i_type_9913 = t91 i_filename = t93 i_extra = t95 ).
      ENDIF.
      DATA(t97) = VALUE i( ).
      DATA(t99) = |~|.
      DATA(t100) = strlen( t15 ).
      IF t99 IS INITIAL.
        t97 = 0.
      ELSE.
        FIND t99 IN t15 MATCH OFFSET t97.
        IF sy-subrc <> 0.
          t97 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t97 >= 0 ) = abap_true.
        DATA t102 TYPE REF TO zif_lnt_interface_definition.
        DATA t104 TYPE REF TO zcl_lnt_current_scope.
        t104 = t2->scope.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t111) = |~|.
        DATA(t112) = strlen( t15 ).
        DATA t113 TYPE i.
        DATA(t114) = VALUE i( ).
        DATA(t115) = VALUE i( ).
        DATA t116 TYPE i.
        DATA(t117) = VALUE string( ).
        CREATE OBJECT t109.
        t116 = strlen( t111 ).
        t113 = 0.
        IF t116 = 0.
          WHILE t113 < t112.
            t117 = t15+t113(1).
            APPEND t117 TO t109->items.
            t113 = t113 + 1.
          ENDWHILE.
        ELSE.
          WHILE t113 <= t112.
            FIND FIRST OCCURRENCE OF t111 IN SECTION OFFSET t113 OF t15 MATCH OFFSET t114.
            IF sy-subrc = 0.
              t115 = t114 - t113.
            ELSE.
              t114 = -1.
              t115 = t112 - t113.
            ENDIF.
            CLEAR t117.
            IF t115 > 0.
              t117 = t15+t113(t115).
            ENDIF.
            APPEND t117 TO t109->items.
            IF t114 < 0.
              EXIT.
            ENDIF.
            t113 = t114 + t116.
          ENDWHILE.
        ENDIF.
        t107 = t109->get( p0 = 0 ).
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t121 = t107.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t125) = VALUE abap_bool( ).
        IF t121 IS INITIAL.
          t125 = abap_true.
        ELSEIF t121->has = abap_false.
          t125 = abap_true.
        ENDIF.
        IF t125 = abap_true.
        ELSE.
          DATA t129 TYPE REF TO zif_lnt_interface_definition.
          DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t131 = t104->current.
          DATA t134 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t131 IS INITIAL ) = abap_true.
          ELSE.
            DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t139 = t131.
            DATA t141 TYPE string.
            t141 = t107->value.
            t134 = t139->find_interface_definition( i_name = t141 ).
          ENDIF.
          t129 = t134.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t129 IS BOUND ) = abap_true.
            t143 = t129.
          ELSE.
            DATA t152 TYPE REF TO zcl_lnt_ob_interface.
            DATA t153 TYPE REF TO zcl_lnt_ob_interface.
            DATA t155 TYPE REF TO zif_lnt_registry.
            t155 = t104->reg.
            DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t160->has = abap_true.
            t160->value = |INTF|.
            t157 = t160.
            DATA t164 TYPE string.
            t164 = t107->value.
            DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t166->has = abap_true.
            t166->value = t164.
            DATA t168 TYPE REF TO object.
            t168 = t155->get_object( i_type_9913 = t157 i_name = t166 ).
            t153 ?= t168.
            t152 = t153.
            DATA t169 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t152 IS BOUND ) = abap_true.
              t169 = t152->def.
            ELSE.
              CLEAR t169.
            ENDIF.
            t143 = t169.
          ENDIF.
          t119 = t143.
        ENDIF.
        t102 = t119.
        IF xsdbool( t102 IS BOUND ) = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_current_scope.
          t181 = t2->scope.
          DATA t183 TYPE REF TO zcl_lnt_abstract_token.
          t183 = t11.
          DATA t187 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t189 TYPE REF TO zcl_lnt_fi_identifier.
          t189 ?= t102.
          t187 = t189.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t193->sval = |Object|.
          DATA t195 TYPE string.
          t195 = t2->filename.
          DATA t197 TYPE REF TO zcl_lnt_ireference_extras.
          t181->add_reference( i_usage = t183 i_referencing = t187 i_type_9913 = t193 i_filename = t195 i_extra = t197 ).
        ENDIF.
      ENDIF.
      DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
      t199 = t30.
      DATA t201 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t199 IS INITIAL ) = abap_true.
      ELSE.
        t201 = t199->type_cba0.
      ENDIF.
      result = t201.
      RETURN.
    ENDIF.
    DATA t212 TYPE REF TO object.
    t212 = t1->get_db65( ).
    IF xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_class_name ) = abap_true.
      DATA t215 TYPE REF TO zif_lnt_interface_definition.
      DATA t217 TYPE REF TO zcl_lnt_current_scope.
      t217 = t2->scope.
      DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t224->has = abap_true.
      t224->value = t15.
      t220 = t224.
      DATA t226 TYPE REF TO zif_lnt_interface_definition.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t228 = t220.
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t232) = VALUE abap_bool( ).
      IF t228 IS INITIAL.
        t232 = abap_true.
      ELSEIF t228->has = abap_false.
        t232 = abap_true.
      ENDIF.
      IF t232 = abap_true.
      ELSE.
        DATA t236 TYPE REF TO zif_lnt_class_definition.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t241 TYPE string.
        t241 = t220->value.
        DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t243->has = abap_true.
        t243->value = t241.
        t238 = t243.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t247 = t238.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t251) = VALUE abap_bool( ).
        IF t247 IS INITIAL.
          t251 = abap_true.
        ELSEIF t247->has = abap_false.
          t251 = abap_true.
        ENDIF.
        IF t251 = abap_true.
        ELSE.
          DATA t255 TYPE REF TO zif_lnt_class_definition.
          DATA t257 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t257 = t217->current.
          DATA t260 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t257 IS INITIAL ) = abap_true.
          ELSE.
            DATA t265 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t265 = t257.
            DATA t267 TYPE string.
            t267 = t238->value.
            t260 = t265->find_class_definition( i_name = t267 ).
          ENDIF.
          t255 = t260.
          DATA t269 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t255 IS BOUND ) = abap_true.
            t269 = t255.
          ELSE.
            DATA t278 TYPE REF TO zcl_lnt_class.
            DATA t279 TYPE REF TO zcl_lnt_class.
            DATA t281 TYPE REF TO zif_lnt_registry.
            t281 = t217->reg.
            DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t286->has = abap_true.
            t286->value = |CLAS|.
            t283 = t286.
            DATA t290 TYPE string.
            t290 = t238->value.
            DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t292->has = abap_true.
            t292->value = t290.
            DATA t294 TYPE REF TO object.
            t294 = t281->get_object( i_type_9913 = t283 i_name = t292 ).
            t279 ?= t294.
            t278 = t279.
            DATA t295 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t278 IS BOUND ) = abap_true.
              t295 = t278->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t295.
            ENDIF.
            t269 = t295.
          ENDIF.
          t245 = t269.
        ENDIF.
        t236 = t245.
        DATA t302 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t236 IS BOUND ) = abap_true.
          DATA t305 TYPE REF TO zif_lnt_interface_definition.
          t305 ?= t236.
          t302 = t305.
        ELSE.
          DATA t309 TYPE REF TO zif_lnt_interface_definition.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t314 TYPE string.
          t314 = t220->value.
          DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t316->has = abap_true.
          t316->value = t314.
          t311 = t316.
          DATA t318 TYPE REF TO zif_lnt_interface_definition.
          DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t320 = t311.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t324) = VALUE abap_bool( ).
          IF t320 IS INITIAL.
            t324 = abap_true.
          ELSEIF t320->has = abap_false.
            t324 = abap_true.
          ENDIF.
          IF t324 = abap_true.
          ELSE.
            DATA t328 TYPE REF TO zif_lnt_interface_definition.
            DATA t330 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t330 = t217->current.
            DATA t333 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t330 IS INITIAL ) = abap_true.
            ELSE.
              DATA t338 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t338 = t330.
              DATA t340 TYPE string.
              t340 = t311->value.
              t333 = t338->find_interface_definition( i_name = t340 ).
            ENDIF.
            t328 = t333.
            DATA t342 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t328 IS BOUND ) = abap_true.
              t342 = t328.
            ELSE.
              DATA t351 TYPE REF TO zcl_lnt_ob_interface.
              DATA t352 TYPE REF TO zcl_lnt_ob_interface.
              DATA t354 TYPE REF TO zif_lnt_registry.
              t354 = t217->reg.
              DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t359->has = abap_true.
              t359->value = |INTF|.
              t356 = t359.
              DATA t363 TYPE string.
              t363 = t311->value.
              DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t365->has = abap_true.
              t365->value = t363.
              DATA t367 TYPE REF TO object.
              t367 = t354->get_object( i_type_9913 = t356 i_name = t365 ).
              t352 ?= t367.
              t351 = t352.
              DATA t368 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t351 IS BOUND ) = abap_true.
                t368 = t351->def.
              ELSE.
                CLEAR t368.
              ENDIF.
              t342 = t368.
            ENDIF.
            t318 = t342.
          ENDIF.
          t309 = t318.
          DATA t378 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t309 IS BOUND ) = abap_true.
            t378 = t309.
          ELSE.
            CLEAR t378.
          ENDIF.
          t302 = t378.
        ENDIF.
        t226 = t302.
      ENDIF.
      t215 = t226.
      IF xsdbool( t215 IS BOUND ) = abap_true.
        DATA t389 TYPE REF TO zcl_lnt_current_scope.
        t389 = t2->scope.
        DATA t391 TYPE REF TO zcl_lnt_abstract_token.
        t391 = t11.
        DATA t395 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t397 TYPE REF TO zcl_lnt_fi_identifier.
        t397 ?= t215.
        t395 = t397.
        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t401.
        t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t401->sval = |Object|.
        DATA t403 TYPE string.
        t403 = t2->filename.
        DATA t405 TYPE REF TO zcl_lnt_ireference_extras.
        t389->add_reference( i_usage = t391 i_referencing = t395 i_type_9913 = t401 i_filename = t403 i_extra = t405 ).
        DATA t407 TYPE REF TO zcl_lnt_fi_identifier.
        t407 ?= t215.
        DATA t410 TYPE REF TO zcl_lnt_abstract_type_data.
        result = NEW zcl_lnt_object_reference_type( i_id = t407 i_extra = t410 ).
        RETURN.
      ELSE.
        DATA t418 TYPE REF TO zcl_lnt_ddic.
        DATA t419 TYPE REF TO zif_lnt_registry.
        t419 = t2->scope->reg.
        t418 = NEW zcl_lnt_ddic( i_reg_f149 = t419 ).
        DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t425->has = abap_true.
        t425->value = t15.
        t421 = t425.
        DATA(t427) = VALUE abap_bool( ).
        DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t429 = t421.
        DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t433) = VALUE abap_bool( ).
        IF t429 IS INITIAL.
          t433 = abap_true.
        ELSEIF t429->has = abap_false.
          t433 = abap_true.
        ENDIF.
        IF t433 = abap_true.
          t427 = abap_true.
        ELSE.
          DATA t437 TYPE REF TO zif_lnt_registry.
          t437 = t418->reg.
          DATA t439 TYPE string.
          t439 = t421->value.
          t427 = t437->in_error_namespace( i_name = t439 ).
        ENDIF.
        IF xsdbool( t427 = abap_false ) = abap_true.
          DATA t442 TYPE REF TO zcl_lnt_current_scope.
          t442 = t2->scope.
          DATA t444 TYPE REF TO zcl_lnt_abstract_token.
          t444 = t11.
          DATA t448 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t449.
          t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t449->sval = |Object (Void)|.
          DATA t451 TYPE string.
          t451 = t2->filename.
          DATA t455 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t460) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t460->has = abap_true.
          t460->value = t15.
          t456 = t460.
          DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t466->has = abap_true.
          t466->value = |CLAS|.
          DATA t468 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t455 = NEW zcl_lnt_ireference_extras( i_oo_name = t456 i_oo_type = t466 i_found_qualified = t468 ).
          CREATE OBJECT t455->zlnt_view_ownkeys_b0e8086400eb.
          t455->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t455->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t470 ).
          DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t455->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t455->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t471 ).
          ENDIF.
          CREATE OBJECT t455->zlnt_json_ownkeys_70e5fd461788.
          t455->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t455->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t473 ).
          DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t455->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t455->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t475 ).
          ENDIF.
          t442->add_reference( i_usage = t444 i_referencing = t448 i_type_9913 = t449 i_filename = t451 i_extra = t455 ).
          DATA(t481) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t481->has = abap_true.
          t481->value = t15.
          DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t481 i_qualified_name = t483 ).
          RETURN.
        ELSE.
          DATA(t488) = strlen( t15 ).
          DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t15 }{ | unknown, Target| }| i_qualified_name = t489 ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t490 TYPE abap_bool.
      DATA t491 TYPE abap_bool.
      DATA t492 TYPE REF TO object.
      t492 = t1->get_db65( ).
      t491 = xsdbool( t492 IS BOUND AND t492 IS INSTANCE OF zcl_lnt_st_cast ).
      t490 = t491.
      IF t491 = abap_true.
        t490 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
      ENDIF.
      IF t490 = abap_true.
        DATA t497 TYPE REF TO zcl_lnt_abstract_type.
        DATA t499 TYPE REF TO zcl_lnt_expression_node.
        t499 ?= t1.
        DATA t503 TYPE REF TO zcl_lnt_abstract_type.
        t497 = zcl_lnt_sy_cast=>run_syntax( i_node = t499 i_input_967e = t2 i_target_type = t503 ).
        IF xsdbool( t497 IS BOUND AND t497 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
          DATA t508 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t508 = t2->issues.
          DATA t510 TYPE REF TO zcl_lnt_issue.
          DATA t513 TYPE REF TO zcl_lnt_expression_node.
          t513 ?= t1.
          DATA t517 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t510 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t513->get_first_token( ) i_message_26cb = |CAST, uknown type| i_fix = t517 ).
          t508->load( ).
          APPEND t510 TO t508->items.
          t508->save( ).
          DATA(t521) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t522) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t522->has = abap_true.
          t522->value = t521.
          DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t522 i_qualified_name = t524 ).
          RETURN.
        ENDIF.
        result = t497.
        RETURN.
      ENDIF.
    ENDIF.

    DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    result = NEW zcl_lnt_unknown_type( i_error = |unknown target type| i_qualified_name = t531 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d845_5ce110a6991c.
  ENDMETHOD.
ENDCLASS.
