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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    t12 = t1.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    t10 = t12->find_direct_expression( i_type_9913 = t14 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      t23 = t1.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t10 = t23->find_direct_expression( i_type_9913 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    t28 = t1.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t26 = t28->find_direct_expression( i_type_9913 = t30 ).
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t26 IS BOUND ).
    t31 = t32.
    IF t32 = abap_true.
      t31 = xsdbool( t10 IS BOUND ).
    ENDIF.
    IF t31 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t36 = zcl_lnt_sy_source=>run_syntax( i_node = t26 i_input_967e = t2 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_ty_table_type.
        t56 ?= t36.
        t48 = t56->row_type.
      ELSE.
        IF xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_void_type.
          t63 ?= t36.
          t48 = t63.
        ELSE.
          IF xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
            DATA t68 TYPE string.
            DATA(t69) = |Unknown type, |.
            DATA t70 TYPE string.
            DATA t72 TYPE REF TO zcl_lnt_unknown_type.
            t72 ?= t36.
            t70 = t72->error.
            DATA(t76) = strlen( t69 ).
            t68 = |{ t69 }{ t70 }|.
            DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t77 = t2->issues.
            DATA t79 TYPE REF TO zcl_lnt_issue.
            DATA t85 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t79 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t68 i_fix = t85 ).
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
        DATA(t96) = VALUE i( ).
        DATA t97 TYPE string.
        DATA t98 TYPE string.
        t98 = t1->concat_tokens( ).
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
        t87 = xsdbool( t96 >= 0 ).
      ENDIF.
      t86 = t87.
      IF t87 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t86 = xsdbool( xsdbool( t36 IS INITIAL ) = abap_false ).
      ENDIF.
      IF t86 = abap_true.
        t48 = t36.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t48 IS INITIAL ) = abap_true.
          DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t127 = t2->issues.
          DATA t129 TYPE REF TO zcl_lnt_issue.
          DATA t135 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t129 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |InlineLoopDefinition, not a table type| i_fix = t135 ).
          t127->load( ).
          APPEND t129 TO t127->items.
          t127->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t138 TYPE REF TO zcl_lnt_abstract_token.
      t138 = t10->get_first_token( ).
      DATA t141 TYPE string.
      t141 = t2->filename.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      t143 = t48.
      DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t148.
      t148->load( ).
      APPEND |inline| TO t148->items.
      t148->save( ).
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t136 = NEW zcl_lnt_typed_identifier( i_token = t138 i_filename = t141 i_type_9913 = t143 i_meta = t148 i_value = t154 ).
      DATA t155 TYPE REF TO zcl_lnt_current_scope.
      t155 = t2->scope.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      t157 = t10->get_first_token( ).
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t164->sval = |Write To|.
      DATA t166 TYPE string.
      t166 = t2->filename.
      DATA t168 TYPE REF TO zcl_lnt_ireference_extras.
      t155->add_reference( i_usage = t157 i_referencing = t136 i_type_9913 = t164 i_filename = t166 i_extra = t168 ).
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      t169 = t2->scope.
      DATA t171 TYPE REF TO zcl_lnt_abstract_token.
      t171 = t10->get_first_token( ).
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t178->sval = |Read From|.
      DATA t180 TYPE string.
      t180 = t2->filename.
      DATA t182 TYPE REF TO zcl_lnt_ireference_extras.
      t169->add_reference( i_usage = t171 i_referencing = t136 i_type_9913 = t178 i_filename = t180 i_extra = t182 ).
      DATA t184 TYPE REF TO zcl_lnt_current_scope.
      t184 = t2->scope.
      DATA t186 TYPE REF TO zcl_lnt_typed_identifier.
      t186 = t136.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t186 IS INITIAL ) = abap_true.
      ELSE.
        DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
        t200 = t186.
        DATA t204 TYPE string.
        t204 = t200->token->str.
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
        ELSE.
          IF t215 > t216 - t214.
            t215 = t216 - t214.
          ENDIF.
          t212 = t213+t214(t215).
        ENDIF.
        IF xsdbool( t212 = |!| ) = abap_true.
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
          ELSE.
            IF t224 > t227 - t223.
              t224 = t227 - t223.
            ENDIF.
            t221 = t219+t223(t224).
          ENDIF.
          t204 = t221.
        ENDIF.
        t184->add_named_identifier( i_name = t204 i_identifier = t186 ).
      ENDIF.
    ENDIF.
    DATA t231 TYPE REF TO zcl_lnt_expression_node.
    t231 = t1->find_expression_after_token( i_text = |INTO| ).
    DATA t236 TYPE abap_bool.
    DATA t237 TYPE abap_bool.
    t237 = xsdbool( t231 IS BOUND ).
    t236 = t237.
    IF t237 = abap_true.
      DATA t240 TYPE REF TO zif_lnt_statement_runnable.
      t240 = t231->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t236 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_target_field ).
    ENDIF.
    IF t236 = abap_true.
      DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t245 TYPE REF TO zcl_lnt_abstract_token.
      t245 = t231->get_first_token( ).
      DATA t248 TYPE string.
      t248 = t2->filename.
      DATA t250 TYPE REF TO zcl_lnt_integer_type.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type_data.
      t250 = zcl_lnt_integer_type=>get_db65( i_input_967e = t251 ).
      DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t255.
      t255->load( ).
      APPEND |inline| TO t255->items.
      t255->save( ).
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t243 = NEW zcl_lnt_typed_identifier( i_token = t245 i_filename = t248 i_type_9913 = t250 i_meta = t255 i_value = t261 ).
      DATA t262 TYPE REF TO zcl_lnt_current_scope.
      t262 = t2->scope.
      DATA t264 TYPE REF TO zcl_lnt_abstract_token.
      t264 = t231->get_first_token( ).
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t271.
      t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t271->sval = |Write To|.
      DATA t273 TYPE string.
      t273 = t2->filename.
      DATA t275 TYPE REF TO zcl_lnt_ireference_extras.
      t262->add_reference( i_usage = t264 i_referencing = t243 i_type_9913 = t271 i_filename = t273 i_extra = t275 ).
      DATA t277 TYPE REF TO zcl_lnt_current_scope.
      t277 = t2->scope.
      DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
      t279 = t243.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t279 IS INITIAL ) = abap_true.
      ELSE.
        DATA t293 TYPE REF TO zcl_lnt_fi_identifier.
        t293 = t279.
        DATA t297 TYPE string.
        t297 = t293->token->str.
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
        ELSE.
          IF t308 > t309 - t307.
            t308 = t309 - t307.
          ENDIF.
          t305 = t306+t307(t308).
        ENDIF.
        IF xsdbool( t305 = |!| ) = abap_true.
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
          ELSE.
            IF t317 > t320 - t316.
              t317 = t320 - t316.
            ENDIF.
            t314 = t312+t316(t317).
          ENDIF.
          t297 = t314.
        ENDIF.
        t277->add_named_identifier( i_name = t297 i_identifier = t279 ).
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
