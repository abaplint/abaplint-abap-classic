* TS: src/abap/5_syntax/expressions/inline_loop_definition.ts:10:1 InlineLoopDefinition
CLASS zcl_lnt_sy_inln_lp_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inln_lp_dfntn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t1 IS INITIAL ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    t12 = t1.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    t11 = t12->find_direct_expression( i_type_9913 = t14 ).
    t10 = t11.
    DATA(t15) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t15 = xsdbool( t10 IS INITIAL ).
    IF t15 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      t23 = t1.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t22 = t23->find_direct_expression( i_type_9913 = t25 ).
      t10 = t22.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    t28 = t1.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t27 = t28->find_direct_expression( i_type_9913 = t30 ).
    t26 = t27.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t26 IS BOUND ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t10 IS BOUND ).
      t31 = t34.
    ENDIF.
    IF t31 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      t38 = t26.
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t37 = zcl_lnt_sy_source=>run_syntax( i_node = t38 i_input_967e = t2 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
      t36 = t37.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      DATA t50 TYPE abap_bool.
      t50 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t50 = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_ty_table_type.
        t56 ?= t36.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        t58 = t56->row_type.
        t48 = t58.
      ELSE.
        DATA t61 TYPE abap_bool.
        t61 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_void_type ).
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_void_type.
          t63 ?= t36.
          t48 = t63.
        ELSE.
          DATA t65 TYPE abap_bool.
          t65 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t65 = abap_true.
            DATA t68 TYPE string.
            DATA(t69) = |Unknown type, |.
            DATA t70 TYPE string.
            DATA t72 TYPE REF TO zcl_lnt_unknown_type.
            t72 ?= t36.
            DATA t74 TYPE string.
            t74 = t72->error.
            t70 = t74.
            DATA(t76) = strlen( t69 ).
            t68 = |{ t69 }{ t70 }|.
            DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t77 = t2->issues.
            DATA t79 TYPE REF TO zcl_lnt_issue.
            DATA t81 TYPE REF TO zcl_lnt_abstract_token.
            DATA t82 TYPE REF TO zcl_lnt_expression_node.
            t82 = t1.
            t81 = t82->get_first_token( ).
            DATA t85 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t79 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t81 i_message_26cb = t68 i_fix = t85 ).
            t77->load( ).
            APPEND t79 TO t77->items.
            t77->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t88 = xsdbool( t48 IS INITIAL ).
      t87 = t88.
      IF t88 = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE i( ).
        DATA t97 TYPE string.
        DATA t98 TYPE string.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        t99 = t1.
        t98 = t99->concat_tokens( ).
        DATA(t101) = strlen( t98 ).
        t97 = t98.
        IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t97 TO UPPER CASE.
        ELSE.
          t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
        ENDIF.
        DATA(t102) = | IN GROUP |.
        DATA(t103) = strlen( t97 ).
        IF t102 IS INITIAL.
          t96 = 0.
        ELSE.
          FIND t102 IN t97 MATCH OFFSET t96.
          IF sy-subrc <> 0.
            t96 = -1.
          ENDIF.
        ENDIF.
        DATA(t104) = 0.
        t95 = xsdbool( t96 >= t104 ).
        t87 = t95.
      ENDIF.
      t86 = t87.
      IF t87 = abap_true.
        DATA(t105) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = xsdbool( t36 IS INITIAL ).
        t110 = xsdbool( t111 = abap_false ).
        t105 = t110.
        t86 = t105.
      ENDIF.
      IF t86 = abap_true.
        t48 = t36.
      ELSE.
        DATA(t118) = VALUE abap_bool( ).
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t118 = xsdbool( t48 IS INITIAL ).
        IF t118 = abap_true.
          DATA(t126) = |InlineLoopDefinition, not a table type|.
          DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t127 = t2->issues.
          DATA t129 TYPE REF TO zcl_lnt_issue.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_expression_node.
          t132 = t1.
          t131 = t132->get_first_token( ).
          DATA t135 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t129 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t131 i_message_26cb = t126 i_fix = t135 ).
          t127->load( ).
          APPEND t129 TO t127->items.
          t127->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t137 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t138 TYPE REF TO zcl_lnt_abstract_token.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      t139 = t10.
      t138 = t139->get_first_token( ).
      DATA t141 TYPE string.
      t141 = t2->filename.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      t143 = t48.
      DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t149.
      t148 = t149.
      DATA(t151) = |inline|.
      t148->load( ).
      APPEND t151 TO t148->items.
      t148->save( ).
      t145 = t148.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t137 = NEW zcl_lnt_typed_identifier( i_token = t138 i_filename = t141 i_type_9913 = t143 i_meta = t145 i_value = t154 ).
      t136 = t137.
      DATA t155 TYPE REF TO zcl_lnt_current_scope.
      t155 = t2->scope.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      DATA t159 TYPE REF TO zcl_lnt_abstract_token.
      DATA t160 TYPE REF TO zcl_lnt_expression_node.
      t160 = t10.
      t159 = t160->get_first_token( ).
      t157 = t159.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t165) = |Write To|.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t164->sval = t165.
      DATA t166 TYPE string.
      t166 = t2->filename.
      DATA t168 TYPE REF TO zcl_lnt_ireference_extras.
      t155->add_reference( i_usage = t157 i_referencing = t136 i_type_9913 = t164 i_filename = t166 i_extra = t168 ).
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      t169 = t2->scope.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      DATA t173 TYPE REF TO zcl_lnt_abstract_token.
      DATA t174 TYPE REF TO zcl_lnt_expression_node.
      t174 = t10.
      t173 = t174->get_first_token( ).
      t171 = t173.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t179) = |Read From|.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t178->sval = t179.
      DATA t180 TYPE string.
      t180 = t2->filename.
      DATA t182 TYPE REF TO zcl_lnt_ireference_extras.
      t169->add_reference( i_usage = t171 i_referencing = t136 i_type_9913 = t178 i_filename = t180 i_extra = t182 ).
      DATA t184 TYPE REF TO zcl_lnt_current_scope.
      t184 = t2->scope.
      DATA t186 TYPE REF TO zcl_lnt_typed_identifier.
      t186 = t136.
      DATA(t191) = VALUE abap_bool( ).
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t191 = xsdbool( t186 IS INITIAL ).
      IF t191 = abap_true.
      ELSE.
        DATA(t199) = VALUE string( ).
        DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
        t200 = t186.
        DATA(t203) = VALUE string( ).
        DATA t204 TYPE string.
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        t207 = t200->token.
        DATA t209 TYPE string.
        t209 = t207->str.
        t204 = t209.
        DATA(t211) = VALUE abap_bool( ).
        DATA(t212) = VALUE string( ).
        DATA(t213) = t204.
        DATA(t214) = 0.
        DATA(t215) = 1.
        DATA(t216) = strlen( t213 ).
        IF t214 < 0.
          t214 = t214 + t216.
          IF t214 < 0.
            t214 = 0.
          ENDIF.
        ENDIF.
        IF t214 > t216 OR t215 <= 0.
          CLEAR t212.
        ELSE.
          IF t215 > t216 - t214.
            t215 = t216 - t214.
          ENDIF.
          t212 = t213+t214(t215).
        ENDIF.
        DATA(t217) = |!|.
        t211 = xsdbool( t212 = t217 ).
        IF t211 = abap_true.
          DATA(t218) = VALUE string( ).
          DATA t219 TYPE string.
          t219 = t204.
          DATA(t221) = VALUE string( ).
          DATA(t223) = 1.
          DATA t224 TYPE i.
          t224 = strlen( t219 ).
          DATA(t227) = strlen( t219 ).
          IF t223 < 0.
            t223 = t223 + t227.
            IF t223 < 0.
              t223 = 0.
            ENDIF.
          ENDIF.
          IF t223 > t227 OR t224 <= 0.
            CLEAR t221.
          ELSE.
            IF t224 > t227 - t223.
              t224 = t227 - t223.
            ENDIF.
            t221 = t219+t223(t224).
          ENDIF.
          t218 = t221.
          t204 = t218.
        ENDIF.
        t203 = t204.
        t199 = t203.
        DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
        t229 = t186.
        t184->add_named_identifier( i_name = t199 i_identifier = t229 ).
      ENDIF.
    ENDIF.
    DATA t231 TYPE REF TO zcl_lnt_expression_node.
    DATA t232 TYPE REF TO zcl_lnt_expression_node.
    DATA t233 TYPE REF TO zcl_lnt_expression_node.
    t233 = t1.
    DATA(t235) = |INTO|.
    t232 = t233->find_expression_after_token( i_text = t235 ).
    t231 = t232.
    DATA t236 TYPE abap_bool.
    DATA t237 TYPE abap_bool.
    t237 = xsdbool( t231 IS BOUND ).
    t236 = t237.
    IF t237 = abap_true.
      DATA t239 TYPE abap_bool.
      DATA t240 TYPE REF TO zif_lnt_statement_runnable.
      DATA t241 TYPE REF TO zcl_lnt_expression_node.
      t241 = t231.
      t240 = t241->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_target_field ).
      t236 = t239.
    ENDIF.
    IF t236 = abap_true.
      DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t245 TYPE REF TO zcl_lnt_abstract_token.
      DATA t246 TYPE REF TO zcl_lnt_expression_node.
      t246 = t231.
      t245 = t246->get_first_token( ).
      DATA t248 TYPE string.
      t248 = t2->filename.
      DATA t250 TYPE REF TO zcl_lnt_integer_type.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type_data.
      t250 = zcl_lnt_integer_type=>get_db65( i_input_967e = t251 ).
      DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t256.
      t255 = t256.
      DATA(t258) = |inline|.
      t255->load( ).
      APPEND t258 TO t255->items.
      t255->save( ).
      t252 = t255.
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t244 = NEW zcl_lnt_typed_identifier( i_token = t245 i_filename = t248 i_type_9913 = t250 i_meta = t252 i_value = t261 ).
      t243 = t244.
      DATA t262 TYPE REF TO zcl_lnt_current_scope.
      t262 = t2->scope.
      DATA t264 TYPE REF TO zcl_lnt_abstract_token.
      DATA t266 TYPE REF TO zcl_lnt_abstract_token.
      DATA t267 TYPE REF TO zcl_lnt_expression_node.
      t267 = t231.
      t266 = t267->get_first_token( ).
      t264 = t266.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t272) = |Write To|.
      CREATE OBJECT t271.
      t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t271->sval = t272.
      DATA t273 TYPE string.
      t273 = t2->filename.
      DATA t275 TYPE REF TO zcl_lnt_ireference_extras.
      t262->add_reference( i_usage = t264 i_referencing = t243 i_type_9913 = t271 i_filename = t273 i_extra = t275 ).
      DATA t277 TYPE REF TO zcl_lnt_current_scope.
      t277 = t2->scope.
      DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
      t279 = t243.
      DATA(t284) = VALUE abap_bool( ).
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t284 = xsdbool( t279 IS INITIAL ).
      IF t284 = abap_true.
      ELSE.
        DATA(t292) = VALUE string( ).
        DATA t293 TYPE REF TO zcl_lnt_fi_identifier.
        t293 = t279.
        DATA(t296) = VALUE string( ).
        DATA t297 TYPE string.
        DATA t300 TYPE REF TO zcl_lnt_abstract_token.
        t300 = t293->token.
        DATA t302 TYPE string.
        t302 = t300->str.
        t297 = t302.
        DATA(t304) = VALUE abap_bool( ).
        DATA(t305) = VALUE string( ).
        DATA(t306) = t297.
        DATA(t307) = 0.
        DATA(t308) = 1.
        DATA(t309) = strlen( t306 ).
        IF t307 < 0.
          t307 = t307 + t309.
          IF t307 < 0.
            t307 = 0.
          ENDIF.
        ENDIF.
        IF t307 > t309 OR t308 <= 0.
          CLEAR t305.
        ELSE.
          IF t308 > t309 - t307.
            t308 = t309 - t307.
          ENDIF.
          t305 = t306+t307(t308).
        ENDIF.
        DATA(t310) = |!|.
        t304 = xsdbool( t305 = t310 ).
        IF t304 = abap_true.
          DATA(t311) = VALUE string( ).
          DATA t312 TYPE string.
          t312 = t297.
          DATA(t314) = VALUE string( ).
          DATA(t316) = 1.
          DATA t317 TYPE i.
          t317 = strlen( t312 ).
          DATA(t320) = strlen( t312 ).
          IF t316 < 0.
            t316 = t316 + t320.
            IF t316 < 0.
              t316 = 0.
            ENDIF.
          ENDIF.
          IF t316 > t320 OR t317 <= 0.
            CLEAR t314.
          ELSE.
            IF t317 > t320 - t316.
              t317 = t320 - t316.
            ENDIF.
            t314 = t312+t316(t317).
          ENDIF.
          t311 = t314.
          t297 = t311.
        ENDIF.
        t296 = t297.
        t292 = t296.
        DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
        t322 = t279.
        t277->add_named_identifier( i_name = t292 i_identifier = t322 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d814_a6463a215095.
  ENDMETHOD.
ENDCLASS.
