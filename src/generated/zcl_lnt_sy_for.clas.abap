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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d177_c99f21007fa4.
    t5 = t1->find_direct_expressions( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t9 = t1->find_direct_expressions( i_type_9913 = t12 ).
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    t15 = t1->find_expression_after_token( i_text = |GROUPS| ).
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
    ELSE.
      t19 = t15->get_first_token( ).
    ENDIF.
    t13 = t19.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t26 = t1->find_direct_expression( i_type_9913 = t29 ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    t5->load( ).
    t34 = xsdbool( lines( t5->items ) > 0 ).
    t33 = t34.
    IF t34 = abap_false.
      t9->load( ).
      t33 = xsdbool( lines( t9->items ) > 0 ).
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t32 = xsdbool( xsdbool( t26 IS INITIAL ) = abap_false ).
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t31 = xsdbool( xsdbool( t13 IS INITIAL ) = abap_false ).
    ENDIF.
    IF t31 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_current_scope.
      t59 = t2->scope.
      DATA t67 TYPE REF TO zcl_lnt_position.
      t67 = t1->get_first_token( )->start.
      DATA t70 TYPE string.
      t70 = t2->filename.
      DATA t72 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t73 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t82 TYPE REF TO zcl_lnt_position.
      t73 = NEW zcl_lnt_iscope_identifier( i_stype = |for| i_sname = |FOR| i_filename = t70 i_start = t67 i_end = t82 ).
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
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t90 ).
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t92 ).
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t94 ).
      ENDIF.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t96 ).
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t98 ).
      ENDIF.
      t72 = t73.
      DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t101 = t59->current.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t101 IS INITIAL ) = abap_true.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t59->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t72 i_parent = t112 ).
        DELETE t59->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t114 = t59->current.
        t59->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t72 i_parent = t114 ).
        DELETE t59->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t130 = t59->current.
        t114->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t130 ).
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
      zcl_lnt_sy_inln_lp_dfntn=>run_syntax( i_node = t134 i_input_967e = t2 ).
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
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t13 IS INITIAL ) = abap_false ) = abap_true.
      DATA t163 TYPE REF TO zcl_lnt_void_type.
      DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t167->has = abap_true.
      t167->value = |todoGroupBy|.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t163 = zcl_lnt_void_type=>get_db65( i_voided = t167 i_qualified_name = t169 ).
      DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t172 TYPE REF TO zcl_lnt_abstract_token.
      t172 = t13.
      DATA t174 TYPE string.
      t174 = t2->filename.
      DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t180.
      t180->load( ).
      APPEND |inline| TO t180->items.
      t180->save( ).
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t170 = NEW zcl_lnt_typed_identifier( i_token = t172 i_filename = t174 i_type_9913 = t163 i_meta = t180 i_value = t186 ).
      DATA t188 TYPE REF TO zcl_lnt_current_scope.
      t188 = t2->scope.
      DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
      t190 = t170.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t190 IS INITIAL ) = abap_true.
      ELSE.
        DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
        t204 = t190.
        DATA t208 TYPE string.
        t208 = t204->token->str.
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
        ELSE.
          IF t219 > t220 - t218.
            t219 = t220 - t218.
          ENDIF.
          t216 = t217+t218(t219).
        ENDIF.
        IF xsdbool( t216 = |!| ) = abap_true.
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
          ELSE.
            IF t228 > t231 - t227.
              t228 = t231 - t227.
            ENDIF.
            t225 = t223+t227(t228).
          ENDIF.
          t208 = t225.
        ENDIF.
        t188->add_named_identifier( i_name = t208 i_identifier = t190 ).
      ENDIF.
      DATA t235 TYPE REF TO zcl_lnt_current_scope.
      t235 = t2->scope.
      DATA t237 TYPE REF TO zcl_lnt_abstract_token.
      t237 = t13.
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t243->sval = |Write To|.
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
    IF xsdbool( t26 IS BOUND ) = abap_true.
      DATA(t290) = VALUE abap_bool( ).
      DATA t291 TYPE REF TO zcl_lnt_expression_node.
      t291 = t26.
      DATA(t300) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t300->has = abap_true.
      t300->value = abap_true.
      t290 = zcl_lnt_sy_let=>run_syntax( i_node = t291 i_input_967e = t2 i_skip_scope = t300 ).
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
