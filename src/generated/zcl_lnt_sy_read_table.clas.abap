* TS: src/abap/5_syntax/statements/read_table.ts:14:1 ReadTable
CLASS zcl_lnt_sy_read_table DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_read_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    t5 = t1->concat_tokens( ).
    DATA(t7) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    t8 = t1->find_direct_expressions_multi( i_type_9913 = t12 ).
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO object.
    t8->load( ).
    READ TABLE t8->items INDEX 1 INTO t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t23 ?= t22.
      DATA t24 TYPE REF TO object.
      t24 = t23->as_ref( ).
      t20 ?= t24.
    ELSE.
      t20 ?= t22.
    ENDIF.
    t19 = t20.
    DATA t25 TYPE REF TO zcl_lnt_abstract_type.
    DATA t26 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t26 = zcl_lnt_sy_source=>run_syntax( i_node = t19 i_input_967e = t2 i_target_type = t35 i_write_reference = t36 i_allow_generic_deference = t37 i_read_reference = t38 ).
    ELSE.
      CLEAR t26.
    ENDIF.
    t25 = t26.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t25 IS INITIAL ) = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t49 = t2->issues.
      DATA t51 TYPE REF TO zcl_lnt_issue.
      DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |No source type determined, read table| i_fix = t56 ).
      t49->load( ).
      APPEND t51 TO t49->items.
      t49->save( ).
      RETURN.
    ELSE.
      IF xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
      ELSE.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = VALUE abap_bool( ).
        t60 = xsdbool( xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
        t59 = t60.
        IF t60 = abap_true.
          t59 = xsdbool( xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        ENDIF.
        IF t59 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t68 = t2->issues.
          DATA t70 TYPE REF TO zcl_lnt_issue.
          DATA t75 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t70 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Read table, not a table type| i_fix = t75 ).
          t68->load( ).
          APPEND t70 TO t68->items.
          t68->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type.
    DATA t78 TYPE REF TO zif_lnt_union_297610d4.
    DATA t79 TYPE REF TO zcl_lnt_abstract_type.
    t79 = t25.
    t78 ?= t79.
    t77 ?= t78.
    t76 = t77.
    DATA(t82) = t76.
    IF xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_ty_table_type.
      t85 ?= t76.
      t76 = t85->row_type.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_expression_node.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d130_b1d921bbb09b.
    t89 = t1->find_direct_expression( i_type_9913 = t92 ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t89 IS INITIAL ) = abap_false ) = abap_true.
      zcl_lnt_sy_cmpnnt_cmpr_smpl=>run_syntax( i_node = t89 i_input_967e = t2 i_row_type = t76 ).
    ENDIF.
    DATA t105 TYPE REF TO zcl_lnt_expression_node.
    t105 = t1->find_expression_after_token( i_text = |INDEX| ).
    IF xsdbool( t105 IS BOUND ) = abap_true.
      DATA t111 TYPE REF TO zcl_lnt_abstract_type.
      DATA t119 TYPE REF TO zcl_lnt_abstract_type.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t111 = zcl_lnt_sy_source=>run_syntax( i_node = t105 i_input_967e = t2 i_target_type = t119 i_write_reference = t120 i_allow_generic_deference = t121 i_read_reference = t122 ).
      DATA t126 TYPE REF TO zcl_lnt_current_scope.
      t126 = t2->scope.
      DATA t130 TYPE REF TO zcl_lnt_abstract_type_data.
      IF xsdbool( NEW zcl_lnt_type_utils( i_scope = t126 )->is_assignable( i_source_75cf = t111 i_target_5f8a = zcl_lnt_integer_type=>get_db65( i_input_967e = t130 ) ) = abap_false ) = abap_true.
        DATA(t132) = VALUE string( ).
        DATA(t134) = |READ TABLE, INDEX must be simple, got |.
        DATA(t135) = VALUE string( ).
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t138 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t140 TYPE REF TO zcl_lnt_abstract_type.
        t140 = t111.
        DATA t142 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        IF xsdbool( t140 IS INITIAL ) = abap_true.
        ELSE.
          t142 = t140->zlnt_builtin_clas_3f891b097658( ).
        ENDIF.
        t138 = t142.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t138 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t153) = VALUE string( ).
          t153 = t138->name.
          DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t156->has = abap_true.
          t156->value = t153.
          t149 = t156.
        ENDIF.
        t136 = t149.
        DATA(t157) = VALUE string( ).
        DATA(t158) = VALUE abap_bool( ).
        IF t136 IS INITIAL.
          t158 = abap_true.
        ELSEIF t136->has = abap_false.
          t158 = abap_true.
        ENDIF.
        IF t158 = abap_true.
          t157 = |undefined|.
        ELSE.
          t157 = t136->value.
        ENDIF.
        t135 = t157.
        DATA(t163) = strlen( t134 ).
        t132 = |{ t134 }{ t135 }|.
        DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t164 = t2->issues.
        DATA t166 TYPE REF TO zcl_lnt_issue.
        DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t132 i_fix = t171 ).
        t164->load( ).
        APPEND t166 TO t164->items.
        t164->save( ).
        RETURN.
      ELSE.
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = VALUE abap_bool( ).
        t173 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t172 = t173.
        IF t173 = abap_true.
          DATA(t175) = VALUE abap_bool( ).
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t178 TYPE REF TO zcl_lnt_ty_table_type.
          t178 ?= t25.
          DATA t181 TYPE REF TO zcl_lnt_itable_key.
          t181 = t178->options->zlnt_view_read_sr_48b89cc62ab9( ).
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t181 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t189) = VALUE string( ).
            t189 = t181->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t192->has = abap_true.
            t192->value = t189.
            t185 = t192.
          ENDIF.
          t176 = t185.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t196->has = abap_true.
          t196->value = |HASHED|.
          t193 = t196.
          DATA(t198) = VALUE abap_bool( ).
          DATA(t199) = VALUE abap_bool( ).
          IF t176 IS BOUND.
            t198 = t176->has.
          ENDIF.
          IF t193 IS BOUND.
            t199 = t193->has.
          ENDIF.
          IF t198 = t199.
            IF t198 = abap_false.
              t175 = abap_true.
            ELSEIF t176->value = t193->value.
              t175 = abap_true.
            ENDIF.
          ENDIF.
          t172 = t175.
        ENDIF.
        IF t172 = abap_true.
          DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t202 = t2->issues.
          DATA t204 TYPE REF TO zcl_lnt_issue.
          DATA t209 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t204 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |INDEX on hashed table not possible| i_fix = t209 ).
          t202->load( ).
          APPEND t204 TO t202->items.
          t202->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_expression_node.
    t210 = t1->find_expression_after_token( i_text = |FROM| ).
    IF xsdbool( t210 IS BOUND ) = abap_true.
      DATA t217 TYPE REF TO zcl_lnt_abstract_type.
      DATA t224 TYPE REF TO zcl_lnt_abstract_type.
      DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t227 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t217 = zcl_lnt_sy_source=>run_syntax( i_node = t210 i_input_967e = t2 i_target_type = t224 i_write_reference = t225 i_allow_generic_deference = t226 i_read_reference = t227 ).
      DATA t231 TYPE REF TO zcl_lnt_current_scope.
      t231 = t2->scope.
      IF xsdbool( NEW zcl_lnt_type_utils( i_scope = t231 )->is_assignable( i_source_75cf = t217 i_target_5f8a = t76 ) = abap_false ) = abap_true.
        DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t241 = t2->issues.
        DATA t243 TYPE REF TO zcl_lnt_issue.
        DATA t249 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t243 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t210->get_first_token( ) i_message_26cb = |READ TABLE, FROM must be compatible| i_fix = t249 ).
        t241->load( ).
        APPEND t243 TO t241->items.
        t241->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t250 TYPE REF TO zcl_lnt_expression_node.
    t250 = t1->find_expression_after_token( i_text = |KEY| ).
    DATA t255 TYPE REF TO zcl_lnt_expression_node.
    DATA t256 TYPE REF TO object.
    DATA(t257) = VALUE i( ).
    DO.
      t8->load( ).
      IF t257 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t256.
      READ TABLE t8->items INDEX t257 + 1 INTO t256.
      t257 = t257 + 1.
      DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t258.
      CLEAR t255.
      IF t256 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t258 ?= t256.
        DATA t259 TYPE REF TO object.
        CLEAR t259.
        t259 = t258->as_ref( ).
        t255 ?= t259.
      ELSE.
        t255 ?= t256.
      ENDIF.
      DATA(t260) = VALUE abap_bool( ).
      DATA(t261) = VALUE abap_bool( ).
      DATA(t262) = VALUE abap_bool( ).
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t265.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t266.
      CLEAR t265.
      IF t255 IS BOUND.
        DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t267.
        DATA t268 TYPE REF TO object.
        CLEAR t268.
        CLEAR t267.
        t268 = t255.
        TRY.
            t265 ?= t268.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS NOT BOUND.
          TRY.
              t267 ?= t255.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t267 IS BOUND.
            t265 = t267->source( ).
          ENDIF.
          IF t265 IS NOT BOUND.
            CREATE OBJECT t265.
            t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t265->oval = t255.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t266.
      IF t19 IS BOUND.
        DATA t269 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t269.
        DATA t270 TYPE REF TO object.
        CLEAR t270.
        CLEAR t269.
        t270 = t19.
        TRY.
            t266 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS NOT BOUND.
          TRY.
              t269 ?= t19.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t269 IS BOUND.
            t266 = t269->source( ).
          ENDIF.
          IF t266 IS NOT BOUND.
            CREATE OBJECT t266.
            t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t266->oval = t19.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t265 IS BOUND.
        t262 = t265->strict_equals( t266 ).
      ELSE.
        t262 = xsdbool( t266 IS NOT BOUND ).
      ENDIF.
      t261 = t262.
      IF t262 = abap_false.
        DATA(t271) = VALUE abap_bool( ).
        DATA t272 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t272.
        t272 = t255.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        CLEAR t277.
        IF t272 IS BOUND.
          CLEAR t277.
          IF t272 IS BOUND.
            DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t279.
            DATA t280 TYPE REF TO object.
            CLEAR t280.
            CLEAR t279.
            t280 = t272.
            TRY.
                t277 ?= t280.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t277 IS NOT BOUND.
              TRY.
                  t279 ?= t272.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t279 IS BOUND.
                t277 = t279->source( ).
              ENDIF.
              IF t277 IS NOT BOUND.
                CREATE OBJECT t277.
                t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t277->oval = t272.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t278.
        IF t105 IS BOUND.
          CLEAR t278.
          IF t105 IS BOUND.
            DATA t281 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t281.
            DATA t282 TYPE REF TO object.
            CLEAR t282.
            CLEAR t281.
            t282 = t105.
            TRY.
                t278 ?= t282.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t278 IS NOT BOUND.
              TRY.
                  t281 ?= t105.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t281 IS BOUND.
                t278 = t281->source( ).
              ENDIF.
              IF t278 IS NOT BOUND.
                CREATE OBJECT t278.
                t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t278->oval = t105.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t277 IS BOUND.
          t271 = t277->strict_equals( t278 ).
        ELSE.
          t271 = xsdbool( t278 IS NOT BOUND ).
        ENDIF.
        t261 = t271.
      ENDIF.
      t260 = t261.
      IF t261 = abap_false.
        DATA(t283) = VALUE abap_bool( ).
        DATA t284 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t284.
        t284 = t255.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        CLEAR t289.
        IF t284 IS BOUND.
          CLEAR t289.
          IF t284 IS BOUND.
            DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t291.
            DATA t292 TYPE REF TO object.
            CLEAR t292.
            CLEAR t291.
            t292 = t284.
            TRY.
                t289 ?= t292.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t289 IS NOT BOUND.
              TRY.
                  t291 ?= t284.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t291 IS BOUND.
                t289 = t291->source( ).
              ENDIF.
              IF t289 IS NOT BOUND.
                CREATE OBJECT t289.
                t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t289->oval = t284.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t290.
        IF t210 IS BOUND.
          CLEAR t290.
          IF t210 IS BOUND.
            DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t293.
            DATA t294 TYPE REF TO object.
            CLEAR t294.
            CLEAR t293.
            t294 = t210.
            TRY.
                t290 ?= t294.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t290 IS NOT BOUND.
              TRY.
                  t293 ?= t210.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t293 IS BOUND.
                t290 = t293->source( ).
              ENDIF.
              IF t290 IS NOT BOUND.
                CREATE OBJECT t290.
                t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t290->oval = t210.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t289 IS BOUND.
          t283 = t289->strict_equals( t290 ).
        ELSE.
          t283 = xsdbool( t290 IS NOT BOUND ).
        ENDIF.
        t260 = t283.
      ENDIF.
      IF t260 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t295 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t295.
      DATA t297 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t297.
      t297 = t255.
      DATA t302 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t302.
      DATA t303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t304.
      DATA t305 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t305.
      t295 = zcl_lnt_sy_source=>run_syntax( i_node = t297 i_input_967e = t2 i_target_type = t302 i_write_reference = t303 i_allow_generic_deference = t304 i_read_reference = t305 ).
      DATA(t306) = VALUE abap_bool( ).
      DATA t307 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t307.
      t307 = t255.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t313.
      CLEAR t312.
      IF t307 IS BOUND.
        CLEAR t312.
        IF t307 IS BOUND.
          DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t314.
          DATA t315 TYPE REF TO object.
          CLEAR t315.
          CLEAR t314.
          t315 = t307.
          TRY.
              t312 ?= t315.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t312 IS NOT BOUND.
            TRY.
                t314 ?= t307.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t314 IS BOUND.
              t312 = t314->source( ).
            ENDIF.
            IF t312 IS NOT BOUND.
              CREATE OBJECT t312.
              t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t312->oval = t307.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t313.
      IF t250 IS BOUND.
        CLEAR t313.
        IF t250 IS BOUND.
          DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t316.
          DATA t317 TYPE REF TO object.
          CLEAR t317.
          CLEAR t316.
          t317 = t250.
          TRY.
              t313 ?= t317.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t313 IS NOT BOUND.
            TRY.
                t316 ?= t250.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t316 IS BOUND.
              t313 = t316->source( ).
            ENDIF.
            IF t313 IS NOT BOUND.
              CREATE OBJECT t313.
              t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t313->oval = t250.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t312 IS BOUND.
        t306 = t312->strict_equals( t313 ).
      ELSE.
        t306 = xsdbool( t313 IS NOT BOUND ).
      ENDIF.
      IF t306 = abap_true.
        DATA(t318) = VALUE abap_bool( ).
        DATA(t319) = VALUE abap_bool( ).
        DATA(t320) = VALUE abap_bool( ).
        t320 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_string_type ).
        t319 = t320.
        IF t320 = abap_false.
          DATA(t322) = VALUE abap_bool( ).
          DATA(t323) = VALUE abap_bool( ).
          t323 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t322 = t323.
          IF t323 = abap_true.
            DATA t328 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t328.
            t328 ?= t295.
            DATA t331 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t331.
            t331 = t328->options.
            t322 = xsdbool( t331->zlnt_view_read_sr_ec4602663c93( ) = abap_false ).
          ENDIF.
          t319 = t322.
        ENDIF.
        t318 = t319.
        IF t319 = abap_false.
          t318 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_object_reference_type ).
        ENDIF.
        IF t318 = abap_true.
          DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t338.
          t338 = t2->issues.
          DATA t340 TYPE REF TO zcl_lnt_issue.
          CLEAR t340.
          DATA t342 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t342.
          t342 = t255->get_first_token( ).
          DATA t345 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t345.
          t340 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t342 i_message_26cb = |Key cannot be string or table or reference| i_fix = t345 ).
          t338->load( ).
          APPEND t340 TO t338->items.
          t338->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t346 TYPE REF TO zcl_lnt_expression_node.
    DATA(t349) = zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258.
    t346 = t1->find_direct_expression( i_type_9913 = t349 ).
    IF xsdbool( t346 IS BOUND ) = abap_true.
      DATA(t353) = VALUE i( ).
      DATA(t355) = | REFERENCE INTO |.
      DATA(t356) = strlen( t3 ).
      IF t355 IS INITIAL.
        t353 = 0.
      ELSE.
        FIND t355 IN t3 MATCH OFFSET t353.
        IF sy-subrc <> 0.
          t353 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t353 >= 0 ) = abap_true.
        DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t76 = NEW zcl_lnt_data_reference( i_type_9913 = t76 i_qualified_name = t360 ).
      ENDIF.
      DATA t361 TYPE REF TO zcl_lnt_expression_node.
      DATA t363 TYPE REF TO zcl_lnt_expression_node.
      t363 = t346.
      DATA(t365) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t361 = t363->find_first_expression( i_type_9913 = t365 ).
      DATA t366 TYPE REF TO zcl_lnt_expression_node.
      DATA t368 TYPE REF TO zcl_lnt_expression_node.
      t368 = t346.
      DATA(t370) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
      t366 = t368->find_direct_expression( i_type_9913 = t370 ).
      DATA t371 TYPE REF TO zcl_lnt_expression_node.
      DATA t373 TYPE REF TO zcl_lnt_expression_node.
      t373 = t346.
      DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t371 = t373->find_first_expression( i_type_9913 = t375 ).
      IF xsdbool( t361 IS BOUND ) = abap_true.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t361 i_input_967e = t2 i_type_9913 = t76 ).
      ELSE.
        IF xsdbool( t366 IS BOUND ) = abap_true.
          zcl_lnt_sy_fs_target=>run_syntax( i_node = t366 i_input_967e = t2 i_type_9913 = t76 ).
        ELSE.
          IF xsdbool( t371 IS BOUND ) = abap_true.
            DATA t397 TYPE REF TO zcl_lnt_abstract_type.
            t397 = zcl_lnt_sy_target=>run_syntax( i_node = t371 i_input_967e = t2 ).
            DATA t404 TYPE REF TO zcl_lnt_current_scope.
            t404 = t2->scope.
            IF xsdbool( NEW zcl_lnt_type_utils( i_scope = t404 )->is_assignable( i_source_75cf = t76 i_target_5f8a = t397 ) = abap_false ) = abap_true.
              DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t414 = t2->issues.
              DATA t416 TYPE REF TO zcl_lnt_issue.
              DATA t421 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t416 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Incompatible types| i_fix = t421 ).
              t414->load( ).
              APPEND t416 TO t414->items.
              t414->save( ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t422) = VALUE abap_bool( ).
    DATA(t423) = VALUE abap_bool( ).
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t423 = xsdbool( t346 IS INITIAL ).
    t422 = t423.
    IF t423 = abap_true.
      DATA(t432) = VALUE i( ).
      DATA(t434) = | TRANSPORTING NO FIELDS |.
      DATA(t435) = strlen( t3 ).
      IF t434 IS INITIAL.
        t432 = 0.
      ELSE.
        FIND t434 IN t3 MATCH OFFSET t432.
        IF sy-subrc <> 0.
          t432 = -1.
        ENDIF.
      ENDIF.
      t422 = xsdbool( xsdbool( t432 >= 0 ) = abap_false ).
    ENDIF.
    IF t422 = abap_true.
      DATA(t438) = VALUE abap_bool( ).
      DATA(t439) = VALUE abap_bool( ).
      t439 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t438 = t439.
      IF t439 = abap_true.
        DATA t444 TYPE REF TO zcl_lnt_ty_table_type.
        t444 ?= t25.
        DATA t447 TYPE REF TO zcl_lnt_itable_options.
        t447 = t444->options.
        t438 = xsdbool( t447->zlnt_view_read_sr_ec4602663c93( ) = abap_false ).
      ENDIF.
      IF t438 = abap_true.
        DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t452 = t2->issues.
        DATA t454 TYPE REF TO zcl_lnt_issue.
        DATA t459 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t454 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |READ TABLE, define INTO or TRANSPORTING NO FIELDS| i_fix = t459 ).
        t452->load( ).
        APPEND t454 TO t452->items.
        t452->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t460 TYPE REF TO zcl_lnt_expression_node.
    DATA(t463) = zlnt_runtime_desc_78196487750d=>zlnt_member_d351_5341159ff4cc.
    t460 = t1->find_direct_expression( i_type_9913 = t463 ).
    DATA(t464) = VALUE abap_bool( ).
    DATA(t465) = VALUE abap_bool( ).
    DATA(t466) = VALUE abap_bool( ).
    DATA(t467) = VALUE abap_bool( ).
    t467 = xsdbool( t460 IS BOUND ).
    t466 = t467.
    IF t467 = abap_true.
      t466 = xsdbool( xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
    ENDIF.
    t465 = t466.
    IF t466 = abap_true.
      t465 = xsdbool( xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
    ENDIF.
    t464 = t465.
    IF t465 = abap_true.
      t464 = xsdbool( xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_any_type ) = abap_false ).
    ENDIF.
    IF t464 = abap_true.
      IF xsdbool( xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
        DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t483 = t2->issues.
        DATA t485 TYPE REF TO zcl_lnt_issue.
        DATA t490 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t485 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |READ TABLE, source not structured| i_fix = t490 ).
        t483->load( ).
        APPEND t485 TO t483->items.
        t483->save( ).
        RETURN.
      ENDIF.
      DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t494 TYPE REF TO zcl_lnt_expression_node.
      t494 = t460.
      DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t494 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t503) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t497 = t494->find_direct_expressions( i_type_9913 = t503 ).
      ENDIF.
      t492 = t497.
      DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t492 IS BOUND ) = abap_true.
        t504 = t492.
      ELSE.
        CREATE OBJECT t504.
      ENDIF.
      t491 = t504.
      DATA t510 TYPE REF TO zcl_lnt_expression_node.
      DATA t511 TYPE REF TO object.
      DATA(t512) = VALUE i( ).
      DO.
        t491->load( ).
        IF t512 >= lines( t491->items ).
          EXIT.
        ENDIF.
        CLEAR t511.
        READ TABLE t491->items INDEX t512 + 1 INTO t511.
        t512 = t512 + 1.
        DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t513.
        CLEAR t510.
        IF t511 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t513 ?= t511.
          DATA t514 TYPE REF TO object.
          CLEAR t514.
          t514 = t513->as_ref( ).
          t510 ?= t514.
        ELSE.
          t510 ?= t511.
        ENDIF.
        DATA(t515) = VALUE string( ).
        t515 = t510->concat_tokens( ).
        DATA(t519) = VALUE i( ).
        DATA(t521) = |-|.
        DATA(t522) = strlen( t515 ).
        IF t521 IS INITIAL.
          t519 = 0.
        ELSE.
          FIND t521 IN t515 MATCH OFFSET t519.
          IF sy-subrc <> 0.
            t519 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t519 >= 0 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t528 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t528.
        t528 ?= t76.
        DATA(t530) = VALUE string( ).
        t530 = t515.
        DATA t532 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t532.
        DATA t533 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        CLEAR t533.
        t533 = t528->indexed.
        DATA(t535) = VALUE string( ).
        DATA(t537) = strlen( t530 ).
        t535 = t530.
        IF t535 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t535 TO UPPER CASE.
        ELSE.
          t535 = zlnt_runtime_uppe_91169605024d=>full( t535 ).
        ENDIF.
        t532 = t533->get( p0 = t535 ).
        DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t538.
        CLEAR t538.
        IF xsdbool( t532 IS INITIAL ) = abap_true.
          DATA(t542) = VALUE string( ).
          DATA(t544) = VALUE string( ).
          DATA(t545) = |READ TABLE, field |.
          DATA(t547) = strlen( t545 ).
          t544 = |{ t545 }{ t515 }|.
          DATA(t549) = strlen( t544 ).
          t542 = |{ t544 }{ | not found in source| }|.
          DATA t550 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t550.
          t550 = t2->issues.
          DATA t552 TYPE REF TO zcl_lnt_issue.
          CLEAR t552.
          DATA t554 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t554.
          t554 = t1->get_first_token( ).
          DATA t557 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t557.
          t552 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t554 i_message_26cb = t542 i_fix = t557 ).
          t550->load( ).
          APPEND t552 TO t550->items.
          t550->save( ).
          RETURN.
        ENDIF.
      ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d948_8c64817562d8.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
