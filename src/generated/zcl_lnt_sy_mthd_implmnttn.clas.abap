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
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = t2->scope.
    t3 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    DATA t7 TYPE string.
    t7 = t2->scope->get_name( ).
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t11 = t1->find_first_expression( i_type_9913 = t16 )->get_first_token( ).
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t11.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t19 IS INITIAL ) = abap_true.
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
    t33 = t2->scope.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t7.
    t36 = t40.
    DATA t42 TYPE REF TO zif_lnt_class_definition.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t44 = t36.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = VALUE abap_bool( ).
    IF t44 IS INITIAL.
      t48 = abap_true.
    ELSEIF t44->has = abap_false.
      t48 = abap_true.
    ENDIF.
    IF t48 = abap_true.
    ELSE.
      DATA t52 TYPE REF TO zif_lnt_class_definition.
      DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t54 = t33->current.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t54 IS INITIAL ) = abap_true.
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t62 = t54.
        DATA t64 TYPE string.
        t64 = t36->value.
        t57 = t62->find_class_definition( i_name = t64 ).
      ENDIF.
      t52 = t57.
      DATA t66 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t52 IS BOUND ) = abap_true.
        t66 = t52.
      ELSE.
        DATA t75 TYPE REF TO zcl_lnt_class.
        DATA t76 TYPE REF TO zcl_lnt_class.
        DATA t78 TYPE REF TO zif_lnt_registry.
        t78 = t33->reg.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = |CLAS|.
        t80 = t83.
        DATA t87 TYPE string.
        t87 = t36->value.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t87.
        DATA t91 TYPE REF TO object.
        t91 = t78->get_object( i_type_9913 = t80 i_name = t89 ).
        t76 ?= t91.
        t75 = t76.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t75 IS BOUND ) = abap_true.
          t92 = t75->gt_dfn_ins_src_obj_cls_ts_clss( ).
        ELSE.
          CLEAR t92.
        ENDIF.
        t66 = t92.
      ENDIF.
      t42 = t66.
    ENDIF.
    t31 = t42.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t31 IS INITIAL ) = abap_true.
      DATA t107 TYPE string.
      DATA t108 TYPE string.
      DATA(t109) = |Class definition for "|.
      DATA(t111) = strlen( t109 ).
      t108 = |{ t109 }{ t7 }|.
      DATA(t113) = strlen( t108 ).
      t107 = |{ t108 }{ |" not found| }|.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t114 = t2->issues.
      DATA t116 TYPE REF TO zcl_lnt_issue.
      DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t116 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t107 i_fix = t121 ).
      t114->load( ).
      APPEND t116 TO t114->items.
      t114->save( ).
      RETURN.
    ENDIF.
    DATA t125 TYPE REF TO zif_lnt_interface_definition.
    DATA t126 TYPE REF TO zif_lnt_class_definition.
    t126 = t31.
    t125 ?= t126.
    DATA t129 TYPE REF TO zif_lnt_method_definition.
    t129 = t3->search_method_name( i_def = t125 i_name = t17 )->method.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE abap_bool.
    DATA t134 TYPE abap_bool.
    t134 = t31->is_for_testing( ).
    t133 = t134.
    IF t134 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t139 TYPE REF TO zif_lnt_method_definition.
      t139 = t129.
      DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      IF xsdbool( t139 IS INITIAL ) = abap_true.
      ELSE.
        DATA t145 TYPE f.
        t145 = t139->get_visibility( ).
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t145.
        t141 = t148.
      ENDIF.
      t138 = t141.
      DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t152) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t152->has = abap_true.
      t152->value = CONV f( 1 ).
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
      DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t158.
      t158->load( ).
      APPEND |SETUP| TO t158->items.
      t158->save( ).
      t158->load( ).
      APPEND |TEARDOWN| TO t158->items.
      t158->save( ).
      t158->load( ).
      APPEND |CLASS_SETUP| TO t158->items.
      t158->save( ).
      t158->load( ).
      APPEND |CLASS_TEARDOWN| TO t158->items.
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
      t132 = t157->includes( p0 = t169 ).
    ENDIF.
    IF t132 = abap_true.
      DATA(t173) = VALUE string( ).
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
        t180 = t178->value.
      ENDIF.
      t177 = t180.
      DATA(t186) = strlen( t176 ).
      t175 = |{ t176 }{ t177 }|.
      DATA(t188) = strlen( t175 ).
      t173 = |{ t175 }{ |" must be private| }|.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t189 = t2->issues.
      DATA t191 TYPE REF TO zcl_lnt_issue.
      DATA t196 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t191 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t173 i_fix = t196 ).
      t189->load( ).
      APPEND t191 TO t189->items.
      t189->save( ).
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_position.
    t197 = t1->get_first_token( )->start.
    DATA(t204) = VALUE abap_bool( ).
    DATA(t205) = VALUE abap_bool( ).
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t207 TYPE REF TO zif_lnt_method_definition.
    t207 = t129.
    DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t207 IS INITIAL ) = abap_true.
    ELSE.
      DATA t213 TYPE abap_bool.
      t213 = t207->is_static_4685( ).
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
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t204 = xsdbool( t129 IS INITIAL ).
    ENDIF.
    IF t204 = abap_true.
      DATA t231 TYPE REF TO zcl_lnt_current_scope.
      t231 = t2->scope.
      DATA t235 TYPE string.
      t235 = t17->value.
      DATA t240 TYPE string.
      t240 = t2->filename.
      DATA t242 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t243 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t252 TYPE REF TO zcl_lnt_position.
      t243 = NEW zcl_lnt_iscope_identifier( i_stype = |method_instance| i_sname = t235 i_filename = t240 i_start = t197 i_end = t252 ).
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
      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t260 ).
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t262 ).
      ENDIF.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t264 ).
      ENDIF.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t266 ).
      ENDIF.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t268 ).
      ENDIF.
      t242 = t243.
      DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t271 = t231->current.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t271 IS INITIAL ) = abap_true.
        DATA t282 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t231->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t242 i_parent = t282 ).
        DELETE t231->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t284 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t284 = t231->current.
        t231->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t242 i_parent = t284 ).
        DELETE t231->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t300 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t300 = t231->current.
        t284->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t300 ).
      ENDIF.
      t2->scope->add_list( i_identifiers = t31->get_attributes( )->get_instance( ) ).
    ENDIF.
    DATA t308 TYPE REF TO zcl_lnt_current_scope.
    t308 = t2->scope.
    DATA t312 TYPE string.
    t312 = t17->value.
    DATA t317 TYPE string.
    t317 = t2->filename.
    DATA t319 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t320 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t329 TYPE REF TO zcl_lnt_position.
    t320 = NEW zcl_lnt_iscope_identifier( i_stype = |method| i_sname = t312 i_filename = t317 i_start = t197 i_end = t329 ).
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
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t337 ).
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t339 ).
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t341 ).
    ENDIF.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t343 ).
    ENDIF.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t345 ).
    ENDIF.
    t319 = t320.
    DATA t348 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t348 = t308->current.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t348 IS INITIAL ) = abap_true.
      DATA t359 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t308->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t319 i_parent = t359 ).
      DELETE t308->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t361 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t361 = t308->current.
      t308->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t319 i_parent = t361 ).
      DELETE t308->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t377 = t308->current.
      t361->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t377 ).
    ENDIF.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t129 IS INITIAL ) = abap_true.
      DATA(t386) = VALUE string( ).
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
        t393 = t391->value.
      ENDIF.
      t390 = t393.
      DATA(t399) = strlen( t389 ).
      t388 = |{ t389 }{ t390 }|.
      DATA(t401) = strlen( t388 ).
      t386 = |{ t388 }{ |" not found| }|.
      DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t402 = t2->issues.
      DATA t404 TYPE REF TO zcl_lnt_issue.
      DATA t409 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t404 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t386 i_fix = t409 ).
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
    CREATE OBJECT t422.
    t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t422->sval = |Method Implementation|.
    DATA t424 TYPE string.
    t424 = t2->filename.
    DATA t426 TYPE REF TO zcl_lnt_ireference_extras.
    t410->add_reference( i_usage = t412 i_referencing = t416 i_type_9913 = t422 i_filename = t424 i_extra = t426 ).
    t2->scope->add_list( i_identifiers = t129->get_parameters( )->get_all( ) ).
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
      DATA(t455) = strlen( t450 ).
      t449 = |{ t450 }{ |~| }|.
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
      IF xsdbool( t444 = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t461 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t461.
      DATA t463 TYPE REF TO zcl_lnt_current_scope.
      t463 = t2->scope.
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
      IF t479 = abap_true.
        CLEAR t473.
      ELSE.
        DATA t483 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t483.
        DATA t485 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t485 = t463->current.
        DATA t488 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t488.
        IF xsdbool( t485 IS INITIAL ) = abap_true.
          CLEAR t488.
        ELSE.
          DATA t493 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t493 = t485.
          DATA t495 TYPE string.
          t495 = t466->value.
          t488 = t493->find_interface_definition( i_name = t495 ).
        ENDIF.
        t483 = t488.
        DATA t497 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t497.
        IF xsdbool( t483 IS BOUND ) = abap_true.
          t497 = t483.
        ELSE.
          DATA t506 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t506.
          DATA t507 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t507.
          DATA t509 TYPE REF TO zif_lnt_registry.
          t509 = t463->reg.
          DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t511.
          DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t514->has = abap_true.
          t514->value = |INTF|.
          t511 = t514.
          DATA t518 TYPE string.
          t518 = t466->value.
          DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t520->has = abap_true.
          t520->value = t518.
          DATA t522 TYPE REF TO object.
          t522 = t509->get_object( i_type_9913 = t511 i_name = t520 ).
          t507 ?= t522.
          t506 = t507.
          DATA t523 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t523.
          IF xsdbool( t506 IS BOUND ) = abap_true.
            t523 = t506->def.
          ELSE.
            CLEAR t523.
          ENDIF.
          t497 = t523.
        ENDIF.
        t473 = t497.
      ENDIF.
      t461 = t473.
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t536.
      IF xsdbool( t461 IS INITIAL ) = abap_true.
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
      CLEAR t552.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t552->sval = |Object|.
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
