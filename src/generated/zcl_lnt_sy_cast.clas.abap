* TS: src/abap/5_syntax/expressions/cast.ts:11:1 Cast
CLASS zcl_lnt_sy_cast DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cast IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t5 = t1->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = xsdbool( t4 IS INITIAL ).
    IF t8 = abap_true.
      DATA(t16) = |Cast, source node not found|.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t17 = t2->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      t21 = t1->get_first_token( ).
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t21 i_message_26cb = t16 i_fix = t24 ).
      t17->load( ).
      APPEND t19 TO t17->items.
      t17->save( ).
      DATA t25 TYPE REF TO zcl_lnt_void_type.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t28) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t28.
      t26 = t29.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = zcl_lnt_void_type=>get_db65( i_voided = t26 i_qualified_name = t31 ).
      result = t25.
      RETURN.
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_abstract_type.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    t34 = t4.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t33 = zcl_lnt_sy_source=>run_syntax( i_node = t34 i_input_967e = t2 i_target_type = t40 i_write_reference = t41 i_allow_generic_deference = t42 i_read_reference = t43 ).
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t47 = t1->find_direct_expression( i_type_9913 = t49 ).
    t46 = t47.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    t52 = t46.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t55) = xsdbool( t52 IS INITIAL ).
    IF t55 = abap_true.
    ELSE.
      DATA t58 TYPE string.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      t59 = t52.
      t58 = t59->concat_tokens( ).
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t58.
      t54 = t61.
    ENDIF.
    t50 = t54.
    DATA(t62) = VALUE abap_bool( ).
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t63 = t50.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = VALUE abap_bool( ).
    IF t63 IS INITIAL.
      t67 = abap_true.
    ELSEIF t63->has = abap_false.
      t67 = abap_true.
    ENDIF.
    t62 = t67.
    IF t62 = abap_true.
      DATA(t70) = |Cast, child TypeNameOrInfer not found|.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t71 = t2->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      t75 = t1->get_first_token( ).
      DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t75 i_message_26cb = t70 i_fix = t78 ).
      t71->load( ).
      APPEND t73 TO t71->items.
      t71->save( ).
      DATA t79 TYPE REF TO zcl_lnt_void_type.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t82) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t83->has = abap_true.
      t83->value = t82.
      t80 = t83.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t79 = zcl_lnt_void_type=>get_db65( i_voided = t80 i_qualified_name = t85 ).
      result = t79.
      RETURN.
    ELSE.
      DATA t86 TYPE abap_bool.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE string.
      t88 = t50->value.
      DATA(t90) = |#|.
      t87 = xsdbool( t88 = t90 ).
      t86 = t87.
      IF t87 = abap_true.
        DATA t91 TYPE abap_bool.
        t91 = xsdbool( t3 IS BOUND ).
        t86 = t91.
      ENDIF.
      IF t86 = abap_true.
        t44 = t3.
      ELSE.
        DATA t98 TYPE abap_bool.
        DATA t99 TYPE string.
        t99 = t50->value.
        DATA(t101) = |#|.
        t98 = xsdbool( t99 = t101 ).
        IF t98 = abap_true.
          DATA(t103) = |Cast, todo, infer type|.
          DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t104 = t2->issues.
          DATA t106 TYPE REF TO zcl_lnt_issue.
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          t108 = t1->get_first_token( ).
          DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t108 i_message_26cb = t103 i_fix = t111 ).
          t104->load( ).
          APPEND t106 TO t104->items.
          t104->save( ).
          DATA t112 TYPE REF TO zcl_lnt_void_type.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t115) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t116->has = abap_true.
          t116->value = t115.
          t113 = t116.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t112 = zcl_lnt_void_type=>get_db65( i_voided = t113 i_qualified_name = t118 ).
          result = t112.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = VALUE abap_bool( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t120 = xsdbool( t44 IS INITIAL ).
    t119 = t120.
    IF t120 = abap_true.
      DATA t127 TYPE abap_bool.
      t127 = xsdbool( t46 IS BOUND ).
      t119 = t127.
    ENDIF.
    IF t119 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_basic_types.
      t130 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
      DATA t132 TYPE REF TO zcl_lnt_abstract_type.
      DATA t134 TYPE REF TO zcl_lnt_expression_node.
      t134 = t46.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t132 = t130->parse_type( i_node = t134 i_qualified_name = t136 ).
      t44 = t132.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t139 = xsdbool( t44 IS INITIAL ).
      t138 = t139.
      IF t139 = abap_false.
        DATA t146 TYPE abap_bool.
        DATA(t147) = t44.
        t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_void_type ).
        t138 = t146.
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA t148 TYPE abap_bool.
        DATA(t149) = t44.
        t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_unknown_type ).
        t137 = t148.
      ENDIF.
      IF t137 = abap_true.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        DATA t152 TYPE REF TO zcl_lnt_current_scope.
        DATA t153 TYPE REF TO zcl_lnt_current_scope.
        t153 = t2->scope.
        t152 = t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE string.
        t158 = t50->value.
        DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t160->has = abap_true.
        t160->value = t158.
        t155 = t160.
        DATA t162 TYPE REF TO zif_lnt_interface_definition.
        DATA(t163) = VALUE abap_bool( ).
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t164 = t155.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t168) = VALUE abap_bool( ).
        IF t164 IS INITIAL.
          t168 = abap_true.
        ELSEIF t164->has = abap_false.
          t168 = abap_true.
        ENDIF.
        t163 = t168.
        IF t163 = abap_true.
        ELSE.
          DATA t172 TYPE REF TO zif_lnt_class_definition.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t177 TYPE string.
          t177 = t155->value.
          DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t179->has = abap_true.
          t179->value = t177.
          t174 = t179.
          DATA t181 TYPE REF TO zif_lnt_class_definition.
          DATA(t182) = VALUE abap_bool( ).
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t183 = t174.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t187) = VALUE abap_bool( ).
          IF t183 IS INITIAL.
            t187 = abap_true.
          ELSEIF t183->has = abap_false.
            t187 = abap_true.
          ENDIF.
          t182 = t187.
          IF t182 = abap_true.
          ELSE.
            DATA t191 TYPE REF TO zif_lnt_class_definition.
            DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t194 = t152->current.
            t193 = t194.
            DATA t196 TYPE REF TO zif_lnt_class_definition.
            DATA(t197) = xsdbool( t193 IS INITIAL ).
            IF t197 = abap_true.
            ELSE.
              DATA t200 TYPE REF TO zif_lnt_class_definition.
              DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t201 = t193.
              DATA t203 TYPE string.
              t203 = t174->value.
              t200 = t201->find_class_definition( i_name = t203 ).
              t196 = t200.
            ENDIF.
            t191 = t196.
            DATA t205 TYPE REF TO zif_lnt_class_definition.
            DATA t206 TYPE abap_bool.
            t206 = xsdbool( t191 IS BOUND ).
            IF t206 = abap_true.
              t205 = t191.
            ELSE.
              DATA t214 TYPE REF TO zcl_lnt_class.
              DATA t215 TYPE REF TO zcl_lnt_class.
              DATA t216 TYPE REF TO zif_lnt_object.
              DATA t217 TYPE REF TO zif_lnt_registry.
              t217 = t152->reg.
              DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t221) = |CLAS|.
              DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t222->has = abap_true.
              t222->value = t221.
              t219 = t222.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t226 TYPE string.
              t226 = t174->value.
              DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t228->has = abap_true.
              t228->value = t226.
              t224 = t228.
              t216 = t217->get_object( i_type_9913 = t219 i_name = t224 ).
              DATA t230 TYPE REF TO object.
              t230 = t216.
              t215 ?= t230.
              t214 = t215.
              DATA t231 TYPE REF TO zif_lnt_class_definition.
              DATA t232 TYPE abap_bool.
              t232 = xsdbool( t214 IS BOUND ).
              IF t232 = abap_true.
                DATA t234 TYPE REF TO zif_lnt_class_definition.
                DATA t235 TYPE REF TO zcl_lnt_class.
                t235 = t214.
                t234 = t235->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t231 = t234.
              ELSE.
                CLEAR t231.
              ENDIF.
              t205 = t231.
            ENDIF.
            t181 = t205.
          ENDIF.
          t172 = t181.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          DATA t239 TYPE abap_bool.
          t239 = xsdbool( t172 IS BOUND ).
          IF t239 = abap_true.
            DATA t241 TYPE REF TO zif_lnt_interface_definition.
            DATA t242 TYPE REF TO zif_lnt_class_definition.
            t242 = t172.
            t241 ?= t242.
            t238 = t241.
          ELSE.
            DATA t245 TYPE REF TO zif_lnt_interface_definition.
            DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t250 TYPE string.
            t250 = t155->value.
            DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t252->has = abap_true.
            t252->value = t250.
            t247 = t252.
            DATA t254 TYPE REF TO zif_lnt_interface_definition.
            DATA(t255) = VALUE abap_bool( ).
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t256 = t247.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t260) = VALUE abap_bool( ).
            IF t256 IS INITIAL.
              t260 = abap_true.
            ELSEIF t256->has = abap_false.
              t260 = abap_true.
            ENDIF.
            t255 = t260.
            IF t255 = abap_true.
            ELSE.
              DATA t264 TYPE REF TO zif_lnt_interface_definition.
              DATA t266 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t267 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t267 = t152->current.
              t266 = t267.
              DATA t269 TYPE REF TO zif_lnt_interface_definition.
              DATA(t270) = xsdbool( t266 IS INITIAL ).
              IF t270 = abap_true.
              ELSE.
                DATA t273 TYPE REF TO zif_lnt_interface_definition.
                DATA t274 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t274 = t266.
                DATA t276 TYPE string.
                t276 = t247->value.
                t273 = t274->find_interface_definition( i_name = t276 ).
                t269 = t273.
              ENDIF.
              t264 = t269.
              DATA t278 TYPE REF TO zif_lnt_interface_definition.
              DATA t279 TYPE abap_bool.
              t279 = xsdbool( t264 IS BOUND ).
              IF t279 = abap_true.
                t278 = t264.
              ELSE.
                DATA t287 TYPE REF TO zcl_lnt_ob_interface.
                DATA t288 TYPE REF TO zcl_lnt_ob_interface.
                DATA t289 TYPE REF TO zif_lnt_object.
                DATA t290 TYPE REF TO zif_lnt_registry.
                t290 = t152->reg.
                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t294) = |INTF|.
                DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t295->has = abap_true.
                t295->value = t294.
                t292 = t295.
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t299 TYPE string.
                t299 = t247->value.
                DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t301->has = abap_true.
                t301->value = t299.
                t297 = t301.
                t289 = t290->get_object( i_type_9913 = t292 i_name = t297 ).
                DATA t303 TYPE REF TO object.
                t303 = t289.
                t288 ?= t303.
                t287 = t288.
                DATA t304 TYPE REF TO zif_lnt_interface_definition.
                DATA t305 TYPE abap_bool.
                t305 = xsdbool( t287 IS BOUND ).
                IF t305 = abap_true.
                  DATA t311 TYPE REF TO zif_lnt_interface_definition.
                  t311 = t287->def.
                  t304 = t311.
                ELSE.
                  CLEAR t304.
                ENDIF.
                t278 = t304.
              ENDIF.
              t254 = t278.
            ENDIF.
            t245 = t254.
            DATA t314 TYPE REF TO zif_lnt_interface_definition.
            DATA t315 TYPE abap_bool.
            t315 = xsdbool( t245 IS BOUND ).
            IF t315 = abap_true.
              t314 = t245.
            ELSE.
              CLEAR t314.
            ENDIF.
            t238 = t314.
          ENDIF.
          t162 = t238.
        ENDIF.
        t150 = t162.
        DATA t323 TYPE abap_bool.
        t323 = xsdbool( t150 IS BOUND ).
        IF t323 = abap_true.
          DATA t325 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t326 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t327 TYPE REF TO zif_lnt_interface_definition.
          t327 = t150.
          t326 ?= t327.
          DATA t329 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t331 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t335 TYPE string.
          t335 = t50->value.
          DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t337->has = abap_true.
          t337->value = t335.
          t332 = t337.
          DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t331 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t332 i_conversion_exit = t339 i_derived_from_constant = t341 i_ddic_name = t343 i_rtti_name = t345 i_description = t347 ).
          CREATE OBJECT t331->zlnt_view_ownkeys_b0e8086400eb.
          t331->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t349 ).
          CREATE OBJECT t331->zlnt_json_ownkeys_70e5fd461788.
          t331->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t350) = |qualifiedName|.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
          t329 = t331.
          t325 = NEW zcl_lnt_object_reference_type( i_id = t326 i_extra = t329 ).
          t44 = t325.
          DATA t353 TYPE REF TO zcl_lnt_current_scope.
          t353 = t2->scope.
          DATA t355 TYPE REF TO zcl_lnt_abstract_token.
          DATA t357 TYPE REF TO zcl_lnt_abstract_token.
          DATA t358 TYPE REF TO zcl_lnt_expression_node.
          t358 = t46.
          t357 = t358->get_first_token( ).
          t355 = t357.
          DATA t361 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t363 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t364 TYPE REF TO zif_lnt_interface_definition.
          t364 = t150.
          t363 ?= t364.
          t361 = t363.
          DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t368) = |Object|.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t367->sval = t368.
          DATA t369 TYPE string.
          t369 = t2->filename.
          DATA t371 TYPE REF TO zcl_lnt_ireference_extras.
          t353->add_reference( i_usage = t355 i_referencing = t361 i_type_9913 = t367 i_filename = t369 i_extra = t371 ).
        ENDIF.
      ELSE.
        DATA t372 TYPE REF TO zcl_lnt_data_reference.
        DATA t373 TYPE REF TO zcl_lnt_abstract_type.
        t373 = t44.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t377 TYPE string.
        t377 = t50->value.
        DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t379->has = abap_true.
        t379->value = t377.
        t375 = t379.
        t372 = NEW zcl_lnt_data_reference( i_type_9913 = t373 i_qualified_name = t375 ).
        t44 = t372.
      ENDIF.
      DATA(t381) = VALUE abap_bool( ).
      DATA(t382) = VALUE abap_bool( ).
      DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t382 = xsdbool( t44 IS INITIAL ).
      t381 = t382.
      IF t382 = abap_true.
        DATA(t389) = VALUE abap_bool( ).
        DATA(t390) = VALUE abap_bool( ).
        DATA t394 TYPE REF TO zcl_lnt_current_scope.
        t394 = t2->scope.
        DATA t396 TYPE REF TO zcl_lnt_ddic.
        DATA t397 TYPE REF TO zif_lnt_registry.
        t397 = t394->reg.
        t396 = NEW zcl_lnt_ddic( i_reg_f149 = t397 ).
        DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t402 TYPE string.
        t402 = t50->value.
        DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t404->has = abap_true.
        t404->value = t402.
        t399 = t404.
        DATA(t406) = VALUE abap_bool( ).
        DATA(t407) = VALUE abap_bool( ).
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t408 = t399.
        DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t412) = VALUE abap_bool( ).
        IF t408 IS INITIAL.
          t412 = abap_true.
        ELSEIF t408->has = abap_false.
          t412 = abap_true.
        ENDIF.
        t407 = t412.
        IF t407 = abap_true.
          t406 = abap_true.
        ELSE.
          DATA t415 TYPE abap_bool.
          DATA t416 TYPE REF TO zif_lnt_registry.
          t416 = t396->reg.
          DATA t418 TYPE string.
          t418 = t399->value.
          t415 = t416->in_error_namespace( i_name = t418 ).
          t406 = t415.
        ENDIF.
        t390 = t406.
        t389 = xsdbool( t390 = abap_false ).
        t381 = t389.
      ENDIF.
      IF t381 = abap_true.
        DATA t421 TYPE REF TO zcl_lnt_void_type.
        DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t424 TYPE string.
        t424 = t50->value.
        DATA(t426) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t426->has = abap_true.
        t426->value = t424.
        t422 = t426.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t421 = zcl_lnt_void_type=>get_db65( i_voided = t422 i_qualified_name = t428 ).
        t44 = t421.
      ELSE.
        DATA(t429) = VALUE abap_bool( ).
        DATA t430 TYPE string.
        DATA t431 TYPE string.
        t431 = t50->value.
        DATA(t433) = strlen( t431 ).
        t430 = t431.
        IF t430 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t430 TO UPPER CASE.
        ELSE.
          t430 = zlnt_runtime_uppe_91169605024d=>full( t430 ).
        ENDIF.
        DATA(t434) = |OBJECT|.
        t429 = xsdbool( t430 = t434 ).
        IF t429 = abap_true.
          DATA t435 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
          DATA t436 TYPE REF TO zcl_lnt_abstract_type_data.
          t435 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t436 ).
          result = t435.
          RETURN.
        ELSE.
          DATA(t437) = VALUE abap_bool( ).
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t437 = xsdbool( t44 IS INITIAL ).
          IF t437 = abap_true.
            DATA t445 TYPE string.
            DATA t446 TYPE string.
            DATA(t447) = |Type "|.
            DATA t448 TYPE string.
            t448 = t50->value.
            DATA(t450) = strlen( t447 ).
            t446 = |{ t447 }{ t448 }|.
            DATA(t451) = |" not found in scope, Cast|.
            DATA(t452) = strlen( t446 ).
            t445 = |{ t446 }{ t451 }|.
            DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t453 = t2->issues.
            DATA t455 TYPE REF TO zcl_lnt_issue.
            DATA t457 TYPE REF TO zcl_lnt_abstract_token.
            DATA t458 TYPE REF TO zcl_lnt_expression_node.
            t458 = t46.
            t457 = t458->get_first_token( ).
            DATA t461 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t455 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t457 i_message_26cb = t445 i_fix = t461 ).
            t453->load( ).
            APPEND t455 TO t453->items.
            t453->save( ).
            DATA t462 TYPE REF TO zcl_lnt_void_type.
            DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t465) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t466->has = abap_true.
            t466->value = t465.
            t463 = t466.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t462 = zcl_lnt_void_type=>get_db65( i_voided = t463 i_qualified_name = t468 ).
            result = t462.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t44 ).
    DATA t472 TYPE abap_bool.
    DATA t473 TYPE abap_bool.
    DATA t474 TYPE REF TO zcl_lnt_type_utils.
    DATA t475 TYPE REF TO zcl_lnt_type_utils.
    DATA t476 TYPE REF TO zcl_lnt_current_scope.
    t476 = t2->scope.
    t475 = NEW zcl_lnt_type_utils( i_scope = t476 ).
    t474 = t475.
    DATA t478 TYPE REF TO zcl_lnt_abstract_type.
    t478 = t33.
    DATA t480 TYPE REF TO zcl_lnt_abstract_type.
    t480 = t44.
    t473 = abap_true.
    t472 = xsdbool( t473 = abap_false ).
    IF t472 = abap_true.
      DATA(t485) = |Cast, incompatible types|.
      DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t486 = t2->issues.
      DATA t488 TYPE REF TO zcl_lnt_issue.
      DATA t490 TYPE REF TO zcl_lnt_abstract_token.
      t490 = t1->get_first_token( ).
      DATA t493 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t488 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t490 i_message_26cb = t485 i_fix = t493 ).
      t486->load( ).
      APPEND t488 TO t486->items.
      t486->save( ).
      DATA t494 TYPE REF TO zcl_lnt_void_type.
      DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t497) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t498) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t498->has = abap_true.
      t498->value = t497.
      t495 = t498.
      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t494 = zcl_lnt_void_type=>get_db65( i_voided = t495 i_qualified_name = t500 ).
      result = t494.
      RETURN.
    ENDIF.
    result = t44.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d785_a836bd58ff2c.
  ENDMETHOD.
ENDCLASS.
