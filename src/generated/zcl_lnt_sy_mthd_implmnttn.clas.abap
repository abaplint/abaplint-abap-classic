* TS: src/abap/5_syntax/statements/method_implementation.ts:10:1 MethodImplementation
CLASS zcl_lnt_sy_mthd_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_mthd_implmnttn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = t2->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_current_scope.
    t9 = t2->scope.
    t8 = t9->get_name( ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t14 = t1->find_first_expression( i_type_9913 = t16 ).
    t13 = t14.
    t12 = t13->get_first_token( ).
    t11 = t12.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t11.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = xsdbool( t19 IS INITIAL ).
    IF t22 = abap_true.
    ELSE.
      DATA t28 TYPE string.
      t28 = t19->str.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t28.
      t21 = t30.
    ENDIF.
    t17 = t21.
    DATA t31 TYPE REF TO zif_lnt_class_definition.
    DATA t33 TYPE REF TO zcl_lnt_current_scope.
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    t34 = t2->scope.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t7.
    t36 = t40.
    DATA t42 TYPE REF TO zif_lnt_class_definition.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t44 = t36.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = VALUE abap_bool( ).
    IF t44 IS INITIAL.
      t48 = abap_true.
    ELSEIF t44->has = abap_false.
      t48 = abap_true.
    ENDIF.
    t43 = t48.
    IF t43 = abap_true.
    ELSE.
      DATA t52 TYPE REF TO zif_lnt_class_definition.
      DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t55 = t33->current.
      t54 = t55.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      DATA(t58) = xsdbool( t54 IS INITIAL ).
      IF t58 = abap_true.
      ELSE.
        DATA t61 TYPE REF TO zif_lnt_class_definition.
        DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t62 = t54.
        DATA t64 TYPE string.
        t64 = t36->value.
        t61 = t62->find_class_definition( i_name = t64 ).
        t57 = t61.
      ENDIF.
      t52 = t57.
      DATA t66 TYPE REF TO zif_lnt_class_definition.
      DATA t67 TYPE abap_bool.
      t67 = xsdbool( t52 IS BOUND ).
      IF t67 = abap_true.
        t66 = t52.
      ELSE.
        DATA t75 TYPE REF TO zcl_lnt_class.
        DATA t76 TYPE REF TO zcl_lnt_class.
        DATA t77 TYPE REF TO zif_lnt_object.
        DATA t78 TYPE REF TO zif_lnt_registry.
        t78 = t33->reg.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t82) = |CLAS|.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t82.
        t80 = t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t87 TYPE string.
        t87 = t36->value.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t87.
        t85 = t89.
        t77 = t78->get_object( i_type_9913 = t80 i_name = t85 ).
        DATA t91 TYPE REF TO object.
        t91 = t77.
        t76 ?= t91.
        t75 = t76.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        DATA t93 TYPE abap_bool.
        t93 = xsdbool( t75 IS BOUND ).
        IF t93 = abap_true.
          DATA t95 TYPE REF TO zif_lnt_class_definition.
          DATA t96 TYPE REF TO zcl_lnt_class.
          t96 = t75.
          t95 = t96->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t92 = t95.
        ELSE.
          CLEAR t92.
        ENDIF.
        t66 = t92.
      ENDIF.
      t42 = t66.
    ENDIF.
    t31 = t42.
    DATA(t99) = VALUE abap_bool( ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t99 = xsdbool( t31 IS INITIAL ).
    IF t99 = abap_true.
      DATA t107 TYPE string.
      DATA t108 TYPE string.
      DATA(t109) = |Class definition for "|.
      DATA(t111) = strlen( t109 ).
      t108 = |{ t109 }{ t7 }|.
      DATA(t112) = |" not found|.
      DATA(t113) = strlen( t108 ).
      t107 = |{ t108 }{ t112 }|.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t114 = t2->issues.
      DATA t116 TYPE REF TO zcl_lnt_issue.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      t118 = t1->get_first_token( ).
      DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t116 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t118 i_message_26cb = t107 i_fix = t121 ).
      t114->load( ).
      APPEND t116 TO t114->items.
      t114->save( ).
      RETURN.
    ENDIF.
    DATA t123 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA t125 TYPE REF TO zif_lnt_interface_definition.
    DATA t126 TYPE REF TO zif_lnt_class_definition.
    t126 = t31.
    t125 ?= t126.
    t123 = t3->search_method_name( i_def = t125 i_name = t17 ).
    DATA t129 TYPE REF TO zif_lnt_method_definition.
    DATA t130 TYPE REF TO zif_lnt_method_definition.
    t130 = t123->method.
    t129 = t130.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE abap_bool.
    DATA t134 TYPE abap_bool.
    DATA t135 TYPE REF TO zif_lnt_class_definition.
    t135 = t31.
    t134 = t135->is_for_testing( ).
    t133 = t134.
    IF t134 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t139 TYPE REF TO zif_lnt_method_definition.
      t139 = t129.
      DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t142) = xsdbool( t139 IS INITIAL ).
      IF t142 = abap_true.
      ELSE.
        DATA t145 TYPE f.
        DATA t146 TYPE REF TO zif_lnt_method_definition.
        t146 = t139.
        t145 = t146->get_visibility( ).
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t145.
        t141 = t148.
      ENDIF.
      t138 = t141.
      DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t151) = CONV f( 1 ).
      DATA(t152) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t152->has = abap_true.
      t152->value = t151.
      t149 = t152.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = VALUE abap_bool( ).
      IF t138 IS BOUND.
        t154 = t138->has.
      ENDIF.
      IF t149 IS BOUND.
        t155 = t149->has.
      ENDIF.
      IF t154 = t155.
        IF t154 = abap_false.
          t137 = abap_true.
        ELSE.
          IF t138->number_special <> 0 OR t149->number_special <> 0.
            t137 = xsdbool( t138->number_special = t149->number_special AND t138->number_special <> 1 ).
          ELSE.
            t137 = xsdbool( t138->value = t149->value ).
          ENDIF.
        ENDIF.
      ENDIF.
      IF t137 = abap_true.
        t137 = abap_false.
      ELSE.
        t137 = abap_true.
      ENDIF.
      t133 = t137.
    ENDIF.
    t132 = t133.
    IF t133 = abap_true.
      DATA(t156) = VALUE abap_bool( ).
      DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t159.
      t158 = t159.
      DATA(t161) = |SETUP|.
      t158->load( ).
      APPEND t161 TO t158->items.
      t158->save( ).
      DATA(t163) = |TEARDOWN|.
      t158->load( ).
      APPEND t163 TO t158->items.
      t158->save( ).
      DATA(t165) = |CLASS_SETUP|.
      t158->load( ).
      APPEND t165 TO t158->items.
      t158->save( ).
      DATA(t167) = |CLASS_TEARDOWN|.
      t158->load( ).
      APPEND t167 TO t158->items.
      t158->save( ).
      t157 = t158.
      DATA t169 TYPE string.
      DATA t170 TYPE string.
      t170 = t17->value.
      DATA(t172) = strlen( t170 ).
      t169 = t170.
      IF t169 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t169 TO UPPER CASE.
      ELSE.
        t169 = zlnt_runtime_uppe_91169605024d=>full( t169 ).
      ENDIF.
      t156 = t157->includes( p0 = t169 ).
      t132 = t156.
    ENDIF.
    IF t132 = abap_true.
      DATA(t173) = VALUE string( ).
      DATA(t174) = VALUE string( ).
      DATA(t175) = VALUE string( ).
      DATA(t176) = |Special test method "|.
      DATA(t177) = VALUE string( ).
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t178 = t17.
      DATA(t180) = VALUE string( ).
      DATA(t181) = VALUE abap_bool( ).
      IF t178 IS INITIAL.
        t181 = abap_true.
      ELSEIF t178->has = abap_false.
        t181 = abap_true.
      ENDIF.
      IF t181 = abap_true.
        t180 = |undefined|.
      ELSE.
        DATA t184 TYPE string.
        t184 = t178->value.
        t180 = t184.
      ENDIF.
      t177 = t180.
      DATA(t186) = strlen( t176 ).
      t175 = |{ t176 }{ t177 }|.
      DATA(t187) = |" must be private|.
      DATA(t188) = strlen( t175 ).
      t174 = |{ t175 }{ t187 }|.
      t173 = t174.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t189 = t2->issues.
      DATA t191 TYPE REF TO zcl_lnt_issue.
      DATA t193 TYPE REF TO zcl_lnt_abstract_token.
      t193 = t1->get_first_token( ).
      DATA t196 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t191 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t193 i_message_26cb = t173 i_fix = t196 ).
      t189->load( ).
      APPEND t191 TO t189->items.
      t189->save( ).
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_position.
    DATA t200 TYPE REF TO zcl_lnt_abstract_token.
    t200 = t1->get_first_token( ).
    DATA t202 TYPE REF TO zcl_lnt_position.
    t202 = t200->start.
    t197 = t202.
    DATA(t204) = VALUE abap_bool( ).
    DATA(t205) = VALUE abap_bool( ).
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t207 TYPE REF TO zif_lnt_method_definition.
    t207 = t129.
    DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t210) = xsdbool( t207 IS INITIAL ).
    IF t210 = abap_true.
    ELSE.
      DATA t213 TYPE abap_bool.
      DATA t214 TYPE REF TO zif_lnt_method_definition.
      t214 = t207.
      t213 = t214->is_static_4685( ).
      DATA(t216) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t216->has = abap_true.
      t216->value = t213.
      t209 = t216.
    ENDIF.
    t206 = t209.
    DATA t217 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t220) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t220->has = abap_true.
    t220->value = abap_false.
    t217 = t220.
    DATA(t222) = VALUE abap_bool( ).
    DATA(t223) = VALUE abap_bool( ).
    IF t206 IS BOUND.
      t222 = t206->has.
    ENDIF.
    IF t217 IS BOUND.
      t223 = t217->has.
    ENDIF.
    IF t222 = t223.
      IF t222 = abap_false.
        t205 = abap_true.
      ELSEIF t206->value = t217->value.
        t205 = abap_true.
      ENDIF.
    ENDIF.
    t204 = t205.
    IF t205 = abap_false.
      DATA(t224) = VALUE abap_bool( ).
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t224 = xsdbool( t129 IS INITIAL ).
      t204 = t224.
    ENDIF.
    IF t204 = abap_true.
      DATA t231 TYPE REF TO zcl_lnt_current_scope.
      DATA t232 TYPE REF TO zcl_lnt_current_scope.
      t232 = t2->scope.
      t231 = t232.
      DATA t235 TYPE string.
      t235 = t17->value.
      DATA t240 TYPE string.
      t240 = t2->filename.
      DATA t242 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t243 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t244 TYPE string.
      t244 = |method_instance|.
      DATA t246 TYPE string.
      t246 = t235.
      DATA t248 TYPE REF TO zcl_lnt_position.
      t248 = t197.
      DATA t250 TYPE string.
      t250 = t240.
      DATA t252 TYPE REF TO zcl_lnt_position.
      t243 = NEW zcl_lnt_iscope_identifier( i_stype = t244 i_sname = t246 i_filename = t250 i_start = t248 i_end = t252 ).
      CREATE OBJECT t243->zlnt_view_ownkeys_b0e8086400eb.
      t243->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t254 ).
      DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t255 ).
      ENDIF.
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t256 ).
      ENDIF.
      DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t257 ).
      ENDIF.
      DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t258 ).
      ENDIF.
      CREATE OBJECT t243->zlnt_json_ownkeys_70e5fd461788.
      t243->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t259) = |stype|.
      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
      DATA(t261) = |sname|.
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
      ENDIF.
      DATA(t263) = |start|.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
      ENDIF.
      DATA(t265) = |filename|.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
      ENDIF.
      DATA(t267) = |end|.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
      ENDIF.
      t242 = t243.
      DATA(t269) = VALUE abap_bool( ).
      DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t271 = t231->current.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t269 = xsdbool( t271 IS INITIAL ).
      IF t269 = abap_true.
        DATA t280 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t282 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t280 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t242 i_parent = t282 ).
        t231->current = t280.
        DELETE t231->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t284 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t286 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t286 = t231->current.
        t284 = t286.
        DATA t291 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t293 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t293 = t284.
        t291 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t242 i_parent = t293 ).
        t231->current = t291.
        DELETE t231->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t299 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t300 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t300 = t231->current.
        t299 = t300.
        t284->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t299 ).
      ENDIF.
      DATA t302 TYPE REF TO zcl_lnt_current_scope.
      t302 = t2->scope.
      DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t305 TYPE REF TO zif_lnt_attributes.
      DATA t306 TYPE REF TO zif_lnt_class_definition.
      t306 = t31.
      t305 = t306->get_attributes( ).
      t304 = t305->get_instance( ).
      t302->add_list( i_identifiers = t304 ).
    ENDIF.
    DATA t308 TYPE REF TO zcl_lnt_current_scope.
    DATA t309 TYPE REF TO zcl_lnt_current_scope.
    t309 = t2->scope.
    t308 = t309.
    DATA t312 TYPE string.
    t312 = t17->value.
    DATA t317 TYPE string.
    t317 = t2->filename.
    DATA t319 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t320 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t321 TYPE string.
    t321 = |method|.
    DATA t323 TYPE string.
    t323 = t312.
    DATA t325 TYPE REF TO zcl_lnt_position.
    t325 = t197.
    DATA t327 TYPE string.
    t327 = t317.
    DATA t329 TYPE REF TO zcl_lnt_position.
    t320 = NEW zcl_lnt_iscope_identifier( i_stype = t321 i_sname = t323 i_filename = t327 i_start = t325 i_end = t329 ).
    CREATE OBJECT t320->zlnt_view_ownkeys_b0e8086400eb.
    t320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t331 ).
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t332 ).
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t333 ).
    ENDIF.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t334 ).
    ENDIF.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t335 ).
    ENDIF.
    CREATE OBJECT t320->zlnt_json_ownkeys_70e5fd461788.
    t320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t336) = |stype|.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
    DATA(t338) = |sname|.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
    ENDIF.
    DATA(t340) = |start|.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
    ENDIF.
    DATA(t342) = |filename|.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t342 p1 = t343 ).
    ENDIF.
    DATA(t344) = |end|.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
    ENDIF.
    t319 = t320.
    DATA(t346) = VALUE abap_bool( ).
    DATA t348 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t348 = t308->current.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t346 = xsdbool( t348 IS INITIAL ).
    IF t346 = abap_true.
      DATA t357 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t359 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t357 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t319 i_parent = t359 ).
      t308->current = t357.
      DELETE t308->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t361 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t363 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t363 = t308->current.
      t361 = t363.
      DATA t368 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t370 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t370 = t361.
      t368 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t319 i_parent = t370 ).
      t308->current = t368.
      DELETE t308->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t376 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t377 = t308->current.
      t376 = t377.
      t361->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t376 ).
    ENDIF.
    DATA(t379) = VALUE abap_bool( ).
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t379 = xsdbool( t129 IS INITIAL ).
    IF t379 = abap_true.
      DATA(t386) = VALUE string( ).
      DATA(t387) = VALUE string( ).
      DATA(t388) = VALUE string( ).
      DATA(t389) = |Method definition "|.
      DATA(t390) = VALUE string( ).
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t391 = t17.
      DATA(t393) = VALUE string( ).
      DATA(t394) = VALUE abap_bool( ).
      IF t391 IS INITIAL.
        t394 = abap_true.
      ELSEIF t391->has = abap_false.
        t394 = abap_true.
      ENDIF.
      IF t394 = abap_true.
        t393 = |undefined|.
      ELSE.
        DATA t397 TYPE string.
        t397 = t391->value.
        t393 = t397.
      ENDIF.
      t390 = t393.
      DATA(t399) = strlen( t389 ).
      t388 = |{ t389 }{ t390 }|.
      DATA(t400) = |" not found|.
      DATA(t401) = strlen( t388 ).
      t387 = |{ t388 }{ t400 }|.
      t386 = t387.
      DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t402 = t2->issues.
      DATA t404 TYPE REF TO zcl_lnt_issue.
      DATA t406 TYPE REF TO zcl_lnt_abstract_token.
      t406 = t1->get_first_token( ).
      DATA t409 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t404 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t406 i_message_26cb = t386 i_fix = t409 ).
      t402->load( ).
      APPEND t404 TO t402->items.
      t402->save( ).
      RETURN.
    ENDIF.
    DATA t410 TYPE REF TO zcl_lnt_current_scope.
    t410 = t2->scope.
    DATA t412 TYPE REF TO zcl_lnt_abstract_token.
    t412 = t11.
    DATA t416 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t418 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t419 TYPE REF TO zif_lnt_method_definition.
    t419 = t129.
    t418 ?= t419.
    t416 = t418.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t423) = |Method Implementation|.
    CREATE OBJECT t422.
    t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t422->sval = t423.
    DATA t424 TYPE string.
    t424 = t2->filename.
    DATA t426 TYPE REF TO zcl_lnt_ireference_extras.
    t410->add_reference( i_usage = t412 i_referencing = t416 i_type_9913 = t422 i_filename = t424 i_extra = t426 ).
    DATA t427 TYPE REF TO zcl_lnt_current_scope.
    t427 = t2->scope.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t430 TYPE REF TO zif_lnt_method_parameters.
    DATA t431 TYPE REF TO zif_lnt_method_definition.
    t431 = t129.
    t430 = t431->get_parameters( ).
    t429 = t430->get_all( ).
    t427->add_list( i_identifiers = t429 ).
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t435 TYPE REF TO zif_lnt_interface_definition.
    DATA t436 TYPE REF TO zif_lnt_class_definition.
    t436 = t31.
    t435 ?= t436.
    t433 = t3->find_interfaces( i_cd = t435 ).
    DATA t438 TYPE REF TO zcl_lnt_iimplementing.
    DATA t439 TYPE REF TO object.
    DATA(t440) = VALUE i( ).
    DO.
      t433->load( ).
      IF t440 >= lines( t433->items ).
        EXIT.
      ENDIF.
      CLEAR t439.
      READ TABLE t433->items INDEX t440 + 1 INTO t439.
      t440 = t440 + 1.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      CLEAR t438.
      IF t439 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t441 ?= t439.
        DATA t442 TYPE REF TO object.
        t442 = t441->as_ref( ).
        t438 ?= t442.
      ELSE.
        t438 ?= t439.
      ENDIF.
      DATA(t443) = VALUE abap_bool( ).
      DATA(t444) = VALUE abap_bool( ).
      DATA t445 TYPE string.
      DATA t446 TYPE string.
      t446 = t17->value.
      DATA(t448) = strlen( t446 ).
      t445 = t446.
      IF t445 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t445 TO UPPER CASE.
      ELSE.
        t445 = zlnt_runtime_uppe_91169605024d=>full( t445 ).
      ENDIF.
      DATA(t449) = VALUE string( ).
      DATA t450 TYPE string.
      DATA t451 TYPE string.
      t451 = t438->name.
      DATA(t453) = strlen( t451 ).
      t450 = t451.
      IF t450 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t450 TO UPPER CASE.
      ELSE.
        t450 = zlnt_runtime_uppe_91169605024d=>full( t450 ).
      ENDIF.
      DATA(t454) = |~|.
      DATA(t455) = strlen( t450 ).
      t449 = |{ t450 }{ t454 }|.
      DATA(t456) = strlen( t445 ).
      DATA t457 TYPE i.
      DATA(t458) = VALUE i( ).
      DATA(t459) = VALUE string( ).
      t457 = strlen( t449 ).
      IF t457 = 0.
        t444 = abap_true.
      ELSEIF t457 <= t456.
        t458 = 0.
        t459 = t445+t458(t457).
        IF t459 = t449.
          t444 = abap_true.
        ENDIF.
      ENDIF.
      t443 = xsdbool( t444 = abap_false ).
      IF t443 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t461 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t461.
      DATA t463 TYPE REF TO zcl_lnt_current_scope.
      DATA t464 TYPE REF TO zcl_lnt_current_scope.
      t464 = t2->scope.
      t463 = t464.
      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t466.
      DATA t469 TYPE string.
      t469 = t438->name.
      DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t471->has = abap_true.
      t471->value = t469.
      t466 = t471.
      DATA t473 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t473.
      DATA(t474) = VALUE abap_bool( ).
      DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t475 = t466.
      DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t477.
      DATA(t479) = VALUE abap_bool( ).
      IF t475 IS INITIAL.
        t479 = abap_true.
      ELSEIF t475->has = abap_false.
        t479 = abap_true.
      ENDIF.
      t474 = t479.
      IF t474 = abap_true.
        CLEAR t473.
      ELSE.
        DATA t483 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t483.
        DATA t485 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t486 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t486 = t463->current.
        t485 = t486.
        DATA t488 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t488.
        DATA(t489) = xsdbool( t485 IS INITIAL ).
        IF t489 = abap_true.
          CLEAR t488.
        ELSE.
          DATA t492 TYPE REF TO zif_lnt_interface_definition.
          DATA t493 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t493 = t485.
          DATA t495 TYPE string.
          t495 = t466->value.
          t492 = t493->find_interface_definition( i_name = t495 ).
          t488 = t492.
        ENDIF.
        t483 = t488.
        DATA t497 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t497.
        DATA t498 TYPE abap_bool.
        t498 = xsdbool( t483 IS BOUND ).
        IF t498 = abap_true.
          t497 = t483.
        ELSE.
          DATA t506 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t506.
          DATA t507 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t507.
          DATA t508 TYPE REF TO zif_lnt_object.
          CLEAR t508.
          DATA t509 TYPE REF TO zif_lnt_registry.
          t509 = t463->reg.
          DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t511.
          DATA(t513) = |INTF|.
          DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t514->has = abap_true.
          t514->value = t513.
          t511 = t514.
          DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t516.
          DATA t518 TYPE string.
          t518 = t466->value.
          DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t520->has = abap_true.
          t520->value = t518.
          t516 = t520.
          t508 = t509->get_object( i_type_9913 = t511 i_name = t516 ).
          DATA t522 TYPE REF TO object.
          t522 = t508.
          t507 ?= t522.
          t506 = t507.
          DATA t523 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t523.
          DATA t524 TYPE abap_bool.
          t524 = xsdbool( t506 IS BOUND ).
          IF t524 = abap_true.
            DATA t530 TYPE REF TO zif_lnt_interface_definition.
            t530 = t506->def.
            t523 = t530.
          ELSE.
            CLEAR t523.
          ENDIF.
          t497 = t523.
        ENDIF.
        t473 = t497.
      ENDIF.
      t461 = t473.
      DATA(t533) = VALUE abap_bool( ).
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t536.
      t533 = xsdbool( t461 IS INITIAL ).
      IF t533 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t540 TYPE REF TO zcl_lnt_current_scope.
      t540 = t2->scope.
      DATA t542 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t542.
      t542 = t11.
      DATA t546 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t546.
      DATA t548 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t549 TYPE REF TO zif_lnt_interface_definition.
      t549 = t461.
      t548 ?= t549.
      t546 = t548.
      DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t552.
      DATA(t553) = |Object|.
      CLEAR t552.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t552->sval = t553.
      DATA t554 TYPE string.
      t554 = t2->filename.
      DATA t556 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t556.
      t540->add_reference( i_usage = t542 i_referencing = t546 i_type_9913 = t552 i_filename = t554 i_extra = t556 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d929_2a07d9df23e1.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
