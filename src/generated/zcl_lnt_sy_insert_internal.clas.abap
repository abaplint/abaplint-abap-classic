* TS: src/abap/5_syntax/statements/insert_internal.ts:14:1 InsertInternal
CLASS zcl_lnt_sy_insert_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_insert_internal IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t4 = t1->find_direct_expression( i_type_9913 = t7 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t3 = zcl_lnt_sy_target=>run_syntax( i_node = t4 i_input_967e = t2 ).
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t20) = t3.
    t18 = xsdbool( xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
    t17 = t18.
    IF t18 = abap_true.
      DATA(t23) = t3.
      t17 = xsdbool( xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
    ENDIF.
    t16 = t17.
    IF t17 = abap_true.
      DATA(t26) = t3.
      t16 = xsdbool( xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_any_type ) = abap_false ).
    ENDIF.
    t15 = t16.
    IF t16 = abap_true.
      DATA(t29) = t3.
      t15 = xsdbool( xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
    ENDIF.
    t14 = t15.
    IF t15 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t14 = xsdbool( xsdbool( t3 IS INITIAL ) = abap_false ).
    ENDIF.
    IF t14 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t40 = t2->issues.
      DATA t42 TYPE REF TO zcl_lnt_issue.
      DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t42 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |INSERT target must be a table| i_fix = t47 ).
      t40->load( ).
      APPEND t42 TO t40->items.
      t40->save( ).
      RETURN.
    ELSE.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t3.
      t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t48 = t49.
      IF t49 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        t53 = t1->find_direct_token_by_text( i_text = |LINES| ).
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t48 = xsdbool( t53 IS INITIAL ).
      ENDIF.
      IF t48 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_ty_table_type.
        t64 ?= t3.
        t3 = t64->row_type.
      ENDIF.
    ENDIF.
    DATA(t69) = VALUE abap_bool( ).
    DATA t72 TYPE REF TO zcl_lnt_abstract_token.
    t72 = t1->find_direct_token_by_text( i_text = |INITIAL| ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t69 = xsdbool( xsdbool( t72 IS INITIAL ) = abap_false ).
    DATA t80 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t69 = abap_false ) = abap_true.
      DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
      t80 = t1->find_direct_expression( i_type_9913 = t86 ).
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t80 IS INITIAL ) = abap_true.
        DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t80 = t1->find_direct_expression( i_type_9913 = t96 ).
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zcl_lnt_abstract_type.
    DATA t98 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t80 IS BOUND ) = abap_true.
      DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t98 = zcl_lnt_sy_source=>run_syntax( i_node = t80 i_input_967e = t2 i_target_type = t3 i_write_reference = t109 i_allow_generic_deference = t110 i_read_reference = t111 ).
    ELSE.
      t98 = t3.
    ENDIF.
    t97 = t98.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = VALUE abap_bool( ).
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t117 = xsdbool( t3 IS INITIAL ).
    t116 = t117.
    IF t117 = abap_true.
      t116 = xsdbool( xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
    ENDIF.
    t115 = t116.
    IF t116 = abap_true.
      t115 = xsdbool( xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
    ENDIF.
    t114 = t115.
    IF t115 = abap_true.
      t114 = xsdbool( xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_any_type ) = abap_false ).
    ENDIF.
    t113 = t114.
    IF t114 = abap_true.
      t113 = xsdbool( xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
    ENDIF.
    IF t113 = abap_true.
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t138 = t2->issues.
      DATA t140 TYPE REF TO zcl_lnt_issue.
      DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t140 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |INSERT target must be a table| i_fix = t145 ).
      t138->load( ).
      APPEND t140 TO t138->items.
      t138->save( ).
      RETURN.
    ENDIF.
    DATA t146 TYPE REF TO zcl_lnt_expression_node.
    t146 = t1->find_expression_after_token( i_text = |ASSIGNING| ).
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    t152 = t146.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t152 IS INITIAL ) = abap_true.
    ELSE.
      t154 = t152->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t151 = t154.
    IF xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_st_fs_target ) = abap_true.
      DATA t161 TYPE REF TO zcl_lnt_expression_node.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      t163 = t146.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t163 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
        t166 = t163->find_direct_expression( i_type_9913 = t172 ).
      ENDIF.
      t161 = t166.
      IF xsdbool( t161 IS BOUND ) = abap_true.
        zcl_lnt_sy_inline_fs=>run_syntax( i_node = t161 i_input_967e = t2 i_type_9913 = t97 ).
      ELSE.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t146 i_input_967e = t2 i_type_9913 = t97 ).
      ENDIF.
    ENDIF.
    IF xsdbool( t69 = abap_false ) = abap_true.
      DATA(t186) = VALUE abap_bool( ).
      t186 = abap_false.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      t189 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_integer_type ).
      t188 = t189.
      IF t189 = abap_true.
        t188 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_integer8_type ).
      ENDIF.
      IF t188 = abap_true.
        t186 = abap_true.
      ELSE.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        t197 = t2->scope.
        IF xsdbool( NEW zcl_lnt_type_utils( i_scope = t197 )->is_assignable( i_source_75cf = t97 i_target_5f8a = t3 ) = abap_false ) = abap_true.
          t186 = abap_true.
        ELSE.
          DATA(t203) = VALUE abap_bool( ).
          DATA(t204) = VALUE abap_bool( ).
          t204 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_character_type ).
          t203 = t204.
          IF t204 = abap_true.
            t203 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_string_type ).
          ENDIF.
          IF t203 = abap_true.
            t186 = abap_true.
          ENDIF.
        ENDIF.
      ENDIF.
      IF xsdbool( t186 = abap_true ) = abap_true.
        DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t214 = t2->issues.
        DATA t216 TYPE REF TO zcl_lnt_issue.
        DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t216 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Types not compatible| i_fix = t221 ).
        t214->load( ).
        APPEND t216 TO t214->items.
        t214->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_expression_node.
    t222 = t1->find_expression_after_token( i_text = |INTO| ).
    DATA(t226) = VALUE abap_bool( ).
    DATA(t227) = VALUE abap_bool( ).
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    DATA t229 TYPE REF TO zcl_lnt_expression_node.
    t229 = t222.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t229 IS INITIAL ) = abap_true.
    ELSE.
      t231 = t229->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t228 = t231.
    t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_st_target ).
    t226 = t227.
    IF t227 = abap_true.
      t226 = xsdbool( t97 IS BOUND ).
    ENDIF.
    IF t226 = abap_true.
      DATA t241 TYPE REF TO zcl_lnt_expression_node.
      DATA t242 TYPE REF TO zcl_lnt_expression_node.
      t242 = t222.
      DATA(t244) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t241 = t242->find_direct_expression( i_type_9913 = t244 ).
      IF xsdbool( t241 IS BOUND ) = abap_true.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t222 i_input_967e = t2 i_type_9913 = NEW zcl_lnt_data_reference( i_type_9913 = t97 i_qualified_name = t253 ) ).
      ELSE.
        DATA t254 TYPE REF TO zcl_lnt_abstract_type.
        t254 = zcl_lnt_sy_target=>run_syntax( i_node = t222 i_input_967e = t2 ).
        DATA(t259) = VALUE abap_bool( ).
        DATA(t260) = VALUE abap_bool( ).
        t260 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t259 = t260.
        IF t260 = abap_true.
          DATA(t262) = VALUE abap_bool( ).
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
          t265 ?= t254.
          DATA t268 TYPE REF TO zcl_lnt_itable_key.
          t268 = t265->options->zlnt_view_read_sr_48b89cc62ab9( ).
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t268 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t276) = VALUE string( ).
            t276 = t268->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t276.
            t272 = t279.
          ENDIF.
          t263 = t272.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t283->has = abap_true.
          t283->value = |HASHED|.
          t280 = t283.
          DATA(t285) = VALUE abap_bool( ).
          DATA(t286) = VALUE abap_bool( ).
          IF t263 IS BOUND.
            t285 = t263->has.
          ENDIF.
          IF t280 IS BOUND.
            t286 = t280->has.
          ENDIF.
          IF t285 = t286.
            IF t285 = abap_false.
              t262 = abap_true.
            ELSEIF t263->value = t280->value.
              t262 = abap_true.
            ENDIF.
          ENDIF.
          t259 = t262.
        ENDIF.
        IF t259 = abap_true.
          DATA(t287) = VALUE string( ).
          DATA(t288) = |Implicit or explicit index operation on hashed table is not |.
          t288 = t288 && |possible|.
          t287 = t288.
          DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t289 = t2->issues.
          DATA t291 TYPE REF TO zcl_lnt_issue.
          DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t291 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t287 i_fix = t296 ).
          t289->load( ).
          APPEND t291 TO t289->items.
          t289->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t299) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t297 = t1->find_direct_expressions( i_type_9913 = t299 ).
    DATA t300 TYPE REF TO zcl_lnt_expression_node.
    DATA t301 TYPE REF TO object.
    DATA(t302) = VALUE i( ).
    DO.
      t297->load( ).
      IF t302 >= lines( t297->items ).
        EXIT.
      ENDIF.
      CLEAR t301.
      READ TABLE t297->items INDEX t302 + 1 INTO t301.
      t302 = t302 + 1.
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t303.
      CLEAR t300.
      IF t301 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t303 ?= t301.
        DATA t304 TYPE REF TO object.
        CLEAR t304.
        t304 = t303->as_ref( ).
        t300 ?= t304.
      ELSE.
        t300 ?= t301.
      ENDIF.
      DATA(t305) = VALUE abap_bool( ).
      DATA t306 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t306.
      t306 = t300.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      CLEAR t311.
      IF t306 IS BOUND.
        CLEAR t311.
        IF t306 IS BOUND.
          DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t313.
          DATA t314 TYPE REF TO object.
          CLEAR t314.
          CLEAR t313.
          t314 = t306.
          TRY.
              t311 ?= t314.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t311 IS NOT BOUND.
            TRY.
                t313 ?= t306.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t313 IS BOUND.
              t311 = t313->source( ).
            ENDIF.
            IF t311 IS NOT BOUND.
              CREATE OBJECT t311.
              t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t311->oval = t306.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t312.
      IF t80 IS BOUND.
        CLEAR t312.
        IF t80 IS BOUND.
          DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t315.
          DATA t316 TYPE REF TO object.
          CLEAR t316.
          CLEAR t315.
          t316 = t80.
          TRY.
              t312 ?= t316.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t312 IS NOT BOUND.
            TRY.
                t315 ?= t80.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t315 IS BOUND.
              t312 = t315->source( ).
            ENDIF.
            IF t312 IS NOT BOUND.
              CREATE OBJECT t312.
              t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t312->oval = t80.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t311 IS BOUND.
        t305 = t311->strict_equals( t312 ).
      ELSE.
        t305 = xsdbool( t312 IS NOT BOUND ).
      ENDIF.
      IF t305 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t317 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t317.
      DATA t318 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t318.
      t318 = t300.
      DATA t324 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t324.
      DATA t325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t325.
      DATA t326 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t326.
      t317 = zcl_lnt_sy_source=>run_syntax( i_node = t318 i_input_967e = t2 i_target_type = t3 i_write_reference = t324 i_allow_generic_deference = t325 i_read_reference = t326 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d921_b60235c87e2b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
