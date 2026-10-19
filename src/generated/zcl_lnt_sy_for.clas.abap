* TS: src/abap/5_syntax/expressions/for.ts:15:1 For
CLASS zcl_lnt_sy_for DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_for IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    t3 = abap_false.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d177_c99f21007fa4.
    t6 = t1->find_direct_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t10 = t1->find_direct_expressions( i_type_9913 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = |GROUPS|.
    t16 = t1->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = xsdbool( t15 IS INITIAL ).
    IF t20 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      t24 = t15.
      t23 = t24->get_first_token( ).
      t19 = t23.
    ENDIF.
    t13 = t19.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t27 = t1->find_direct_expression( i_type_9913 = t29 ).
    t26 = t27.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE i.
    t5->load( ).
    t35 = lines( t5->items ).
    DATA(t37) = 0.
    t34 = xsdbool( t35 > t37 ).
    t33 = t34.
    IF t34 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE i.
      t9->load( ).
      t39 = lines( t9->items ).
      DATA(t41) = 0.
      t38 = xsdbool( t39 > t41 ).
      t33 = t38.
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA(t42) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = xsdbool( t26 IS INITIAL ).
      t47 = xsdbool( t48 = abap_false ).
      t42 = t47.
      t32 = t42.
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA(t50) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = xsdbool( t13 IS INITIAL ).
      t55 = xsdbool( t56 = abap_false ).
      t50 = t55.
      t31 = t50.
    ENDIF.
    t30 = t31.
    IF t30 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_current_scope.
      DATA t60 TYPE REF TO zcl_lnt_current_scope.
      t60 = t2->scope.
      t59 = t60.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      t65 = t1->get_first_token( ).
      DATA t67 TYPE REF TO zcl_lnt_position.
      t67 = t65->start.
      DATA t70 TYPE string.
      t70 = t2->filename.
      DATA t72 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t73 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t74 TYPE string.
      t74 = |for|.
      DATA t76 TYPE string.
      t76 = |FOR|.
      DATA t78 TYPE REF TO zcl_lnt_position.
      t78 = t67.
      DATA t80 TYPE string.
      t80 = t70.
      DATA t82 TYPE REF TO zcl_lnt_position.
      t73 = NEW zcl_lnt_iscope_identifier( i_stype = t74 i_sname = t76 i_filename = t80 i_start = t78 i_end = t82 ).
      CREATE OBJECT t73->zlnt_view_ownkeys_b0e8086400eb.
      t73->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t84 ).
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t86 ).
      ENDIF.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t87 ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t73->zlnt_json_ownkeys_70e5fd461788.
      t73->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t89) = |stype|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      DATA(t91) = |sname|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      DATA(t93) = |start|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |filename|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      DATA(t97) = |end|.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
      ENDIF.
      t72 = t73.
      DATA(t99) = VALUE abap_bool( ).
      DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t101 = t59->current.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t99 = xsdbool( t101 IS INITIAL ).
      IF t99 = abap_true.
        DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t110 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t72 i_parent = t112 ).
        t59->current = t110.
        DELETE t59->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t116 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t116 = t59->current.
        t114 = t116.
        DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t123 = t114.
        t121 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t72 i_parent = t123 ).
        t59->current = t121.
        DELETE t59->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t130 = t59->current.
        t129 = t130.
        t114->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t129 ).
      ENDIF.
      t3 = abap_true.
    ENDIF.
    DATA t134 TYPE REF TO zcl_lnt_expression_node.
    DATA t135 TYPE REF TO object.
    DATA(t136) = VALUE i( ).
    DO.
      t5->load( ).
      IF t136 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t135.
      READ TABLE t5->items INDEX t136 + 1 INTO t135.
      t136 = t136 + 1.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      CLEAR t134.
      IF t135 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t137 ?= t135.
        DATA t138 TYPE REF TO object.
        t138 = t137->as_ref( ).
        t134 ?= t138.
      ELSE.
        t134 ?= t135.
      ENDIF.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t139.
      t139 = t134.
      zcl_lnt_sy_inln_lp_dfntn=>run_syntax( i_node = t139 i_input_967e = t2 ).
    ENDDO.
    DATA t145 TYPE REF TO zcl_lnt_expression_node.
    DATA t146 TYPE REF TO object.
    DATA(t147) = VALUE i( ).
    DO.
      t9->load( ).
      IF t147 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t146.
      READ TABLE t9->items INDEX t147 + 1 INTO t146.
      t147 = t147 + 1.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      CLEAR t145.
      IF t146 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t148 ?= t146.
        DATA t149 TYPE REF TO object.
        t149 = t148->as_ref( ).
        t145 ?= t149.
      ELSE.
        t145 ?= t146.
      ENDIF.
      DATA t150 TYPE REF TO zcl_lnt_abstract_type.
      DATA t153 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t153.
      t150 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t145 i_input_967e = t2 i_target_type = t153 ).
    ENDDO.
    DATA(t154) = VALUE abap_bool( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = xsdbool( t13 IS INITIAL ).
    t159 = xsdbool( t160 = abap_false ).
    t154 = t159.
    IF t154 = abap_true.
      DATA t163 TYPE REF TO zcl_lnt_void_type.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t166) = |todoGroupBy|.
      DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t167->has = abap_true.
      t167->value = t166.
      t164 = t167.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t163 = zcl_lnt_void_type=>get_db65( i_voided = t164 i_qualified_name = t169 ).
      DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t171 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t172 TYPE REF TO zcl_lnt_abstract_token.
      t172 = t13.
      DATA t174 TYPE string.
      t174 = t2->filename.
      DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t181.
      t180 = t181.
      DATA(t183) = |inline|.
      t180->load( ).
      APPEND t183 TO t180->items.
      t180->save( ).
      t177 = t180.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t171 = NEW zcl_lnt_typed_identifier( i_token = t172 i_filename = t174 i_type_9913 = t163 i_meta = t177 i_value = t186 ).
      t170 = t171.
      DATA t188 TYPE REF TO zcl_lnt_current_scope.
      t188 = t2->scope.
      DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
      t190 = t170.
      DATA(t195) = VALUE abap_bool( ).
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t195 = xsdbool( t190 IS INITIAL ).
      IF t195 = abap_true.
      ELSE.
        DATA(t203) = VALUE string( ).
        DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
        t204 = t190.
        DATA(t207) = VALUE string( ).
        DATA t208 TYPE string.
        DATA t211 TYPE REF TO zcl_lnt_abstract_token.
        t211 = t204->token.
        DATA t213 TYPE string.
        t213 = t211->str.
        t208 = t213.
        DATA(t215) = VALUE abap_bool( ).
        DATA(t216) = VALUE string( ).
        DATA(t217) = t208.
        DATA(t218) = 0.
        DATA(t219) = 1.
        DATA(t220) = strlen( t217 ).
        IF t218 < 0.
          t218 = t218 + t220.
          IF t218 < 0.
            t218 = 0.
          ENDIF.
        ENDIF.
        IF t218 > t220 OR t219 <= 0.
          CLEAR t216.
        ELSE.
          IF t219 > t220 - t218.
            t219 = t220 - t218.
          ENDIF.
          t216 = t217+t218(t219).
        ENDIF.
        DATA(t221) = |!|.
        t215 = xsdbool( t216 = t221 ).
        IF t215 = abap_true.
          DATA(t222) = VALUE string( ).
          DATA t223 TYPE string.
          t223 = t208.
          DATA(t225) = VALUE string( ).
          DATA(t227) = 1.
          DATA t228 TYPE i.
          t228 = strlen( t223 ).
          DATA(t231) = strlen( t223 ).
          IF t227 < 0.
            t227 = t227 + t231.
            IF t227 < 0.
              t227 = 0.
            ENDIF.
          ENDIF.
          IF t227 > t231 OR t228 <= 0.
            CLEAR t225.
          ELSE.
            IF t228 > t231 - t227.
              t228 = t231 - t227.
            ENDIF.
            t225 = t223+t227(t228).
          ENDIF.
          t222 = t225.
          t208 = t222.
        ENDIF.
        t207 = t208.
        t203 = t207.
        DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
        t233 = t190.
        t188->add_named_identifier( i_name = t203 i_identifier = t233 ).
      ENDIF.
      DATA t235 TYPE REF TO zcl_lnt_current_scope.
      t235 = t2->scope.
      DATA t237 TYPE REF TO zcl_lnt_abstract_token.
      t237 = t13.
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t244) = |Write To|.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t243->sval = t244.
      DATA t245 TYPE string.
      t245 = t2->filename.
      DATA t247 TYPE REF TO zcl_lnt_ireference_extras.
      t235->add_reference( i_usage = t237 i_referencing = t170 i_type_9913 = t243 i_filename = t245 i_extra = t247 ).
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t248 = t1->find_direct_expressions( i_type_9913 = t250 ).
    DATA t251 TYPE REF TO zcl_lnt_expression_node.
    DATA t252 TYPE REF TO object.
    DATA(t253) = VALUE i( ).
    DO.
      t248->load( ).
      IF t253 >= lines( t248->items ).
        EXIT.
      ENDIF.
      CLEAR t252.
      READ TABLE t248->items INDEX t253 + 1 INTO t252.
      t253 = t253 + 1.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      CLEAR t251.
      IF t252 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t254 ?= t252.
        DATA t255 TYPE REF TO object.
        t255 = t254->as_ref( ).
        t251 ?= t255.
      ELSE.
        t251 ?= t252.
      ENDIF.
      DATA t256 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t256.
      DATA t257 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t257.
      t257 = t251.
      DATA t262 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t262.
      DATA t263 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t264.
      DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t265.
      t256 = zcl_lnt_sy_source=>run_syntax( i_node = t257 i_input_967e = t2 i_target_type = t262 i_write_reference = t263 i_allow_generic_deference = t264 i_read_reference = t265 ).
    ENDDO.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t268) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t266 = t1->find_direct_expressions( i_type_9913 = t268 ).
    DATA t269 TYPE REF TO zcl_lnt_expression_node.
    DATA t270 TYPE REF TO object.
    DATA(t271) = VALUE i( ).
    DO.
      t266->load( ).
      IF t271 >= lines( t266->items ).
        EXIT.
      ENDIF.
      CLEAR t270.
      READ TABLE t266->items INDEX t271 + 1 INTO t270.
      t271 = t271 + 1.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      CLEAR t269.
      IF t270 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t272 ?= t270.
        DATA t273 TYPE REF TO object.
        t273 = t272->as_ref( ).
        t269 ?= t273.
      ELSE.
        t269 ?= t270.
      ENDIF.
      DATA t276 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t276.
      DATA t277 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t277.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t269 i_input_967e = t2 i_left_type = t276 i_right_type = t277 ).
    ENDDO.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t280) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t278 = t1->find_direct_expressions( i_type_9913 = t280 ).
    DATA t281 TYPE REF TO zcl_lnt_expression_node.
    DATA t282 TYPE REF TO object.
    DATA(t283) = VALUE i( ).
    DO.
      t278->load( ).
      IF t283 >= lines( t278->items ).
        EXIT.
      ENDIF.
      CLEAR t282.
      READ TABLE t278->items INDEX t283 + 1 INTO t282.
      t283 = t283 + 1.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t284.
      CLEAR t281.
      IF t282 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t284 ?= t282.
        DATA t285 TYPE REF TO object.
        t285 = t284->as_ref( ).
        t281 ?= t285.
      ELSE.
        t281 ?= t282.
      ENDIF.
      zcl_lnt_sy_cond=>run_syntax( i_node = t281 i_input_967e = t2 ).
    ENDDO.
    DATA t288 TYPE abap_bool.
    t288 = xsdbool( t26 IS BOUND ).
    IF t288 = abap_true.
      DATA(t290) = VALUE abap_bool( ).
      DATA t291 TYPE REF TO zcl_lnt_expression_node.
      t291 = t26.
      DATA t297 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t300) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t300->has = abap_true.
      t300->value = abap_true.
      t297 = t300.
      t290 = zcl_lnt_sy_let=>run_syntax( i_node = t291 i_input_967e = t2 i_skip_scope = t297 ).
    ENDIF.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d807_a029f4db49c7.
  ENDMETHOD.
ENDCLASS.
