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
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t4 = t1->find_direct_expression( i_type_9913 = t7 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t17 = t2->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Cast, source node not found| i_fix = t24 ).
      t17->load( ).
      APPEND t19 TO t17->items.
      t17->save( ).
      DATA(t28) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t28.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t29 i_qualified_name = t31 ).
      RETURN.
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_abstract_type.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t33 = zcl_lnt_sy_source=>run_syntax( i_node = t4 i_input_967e = t2 i_target_type = t40 i_write_reference = t41 i_allow_generic_deference = t42 i_read_reference = t43 ).
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t46 = t1->find_direct_expression( i_type_9913 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    t52 = t46.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t52 IS INITIAL ) = abap_true.
    ELSE.
      DATA t58 TYPE string.
      t58 = t52->concat_tokens( ).
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t58.
      t54 = t61.
    ENDIF.
    t50 = t54.
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t63 = t50.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = VALUE abap_bool( ).
    IF t63 IS INITIAL.
      t67 = abap_true.
    ELSEIF t63->has = abap_false.
      t67 = abap_true.
    ENDIF.
    IF t67 = abap_true.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t71 = t2->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Cast, child TypeNameOrInfer not found| i_fix = t78 ).
      t71->load( ).
      APPEND t73 TO t71->items.
      t71->save( ).
      DATA(t82) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t83->has = abap_true.
      t83->value = t82.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t83 i_qualified_name = t85 ).
      RETURN.
    ENDIF.
    DATA t86 TYPE abap_bool.
    DATA t87 TYPE abap_bool.
    t87 = xsdbool( t50->value = |#| ).
    t86 = t87.
    IF t87 = abap_true.
      t86 = xsdbool( t3 IS BOUND ).
    ENDIF.
    IF t86 = abap_true.
      t44 = t3.
    ELSE.
      IF xsdbool( t50->value = |#| ) = abap_true.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t104 = t2->issues.
        DATA t106 TYPE REF TO zcl_lnt_issue.
        DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Cast, todo, infer type| i_fix = t111 ).
        t104->load( ).
        APPEND t106 TO t104->items.
        t104->save( ).
        DATA(t115) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t115.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t116 i_qualified_name = t118 ).
        RETURN.
      ENDIF.
    ENDIF.

    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = VALUE abap_bool( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t120 = xsdbool( t44 IS INITIAL ).
    t119 = t120.
    IF t120 = abap_true.
      t119 = xsdbool( t46 IS BOUND ).
    ENDIF.
    IF t119 = abap_true.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t44 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->parse_type( i_node = t46 i_qualified_name = t136 ).
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t139 = xsdbool( t44 IS INITIAL ).
      t138 = t139.
      IF t139 = abap_false.
        DATA(t147) = t44.
        t138 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_void_type ).
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA(t149) = t44.
        t137 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_unknown_type ).
      ENDIF.
      IF t137 = abap_true.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        DATA t152 TYPE REF TO zcl_lnt_current_scope.
        t152 = t2->scope.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE string.
        t158 = t50->value.
        DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t160->has = abap_true.
        t160->value = t158.
        t155 = t160.
        DATA t162 TYPE REF TO zif_lnt_interface_definition.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t164 = t155.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t168) = VALUE abap_bool( ).
        IF t164 IS INITIAL.
          t168 = abap_true.
        ELSEIF t164->has = abap_false.
          t168 = abap_true.
        ENDIF.
        IF t168 = abap_true.
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
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t183 = t174.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t187) = VALUE abap_bool( ).
          IF t183 IS INITIAL.
            t187 = abap_true.
          ELSEIF t183->has = abap_false.
            t187 = abap_true.
          ENDIF.
          IF t187 = abap_true.
          ELSE.
            DATA t191 TYPE REF TO zif_lnt_class_definition.
            DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t193 = t152->current.
            DATA t196 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t193 IS INITIAL ) = abap_true.
            ELSE.
              DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t201 = t193.
              DATA t203 TYPE string.
              t203 = t174->value.
              t196 = t201->find_class_definition( i_name = t203 ).
            ENDIF.
            t191 = t196.
            DATA t205 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t191 IS BOUND ) = abap_true.
              t205 = t191.
            ELSE.
              DATA t214 TYPE REF TO zcl_lnt_class.
              DATA t215 TYPE REF TO zcl_lnt_class.
              DATA t217 TYPE REF TO zif_lnt_registry.
              t217 = t152->reg.
              DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t222->has = abap_true.
              t222->value = |CLAS|.
              t219 = t222.
              DATA t226 TYPE string.
              t226 = t174->value.
              DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t228->has = abap_true.
              t228->value = t226.
              DATA t230 TYPE REF TO object.
              t230 = t217->get_object( i_type_9913 = t219 i_name = t228 ).
              t215 ?= t230.
              t214 = t215.
              DATA t231 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t214 IS BOUND ) = abap_true.
                t231 = t214->gt_dfn_ins_src_obj_cls_ts_clss( ).
              ELSE.
                CLEAR t231.
              ENDIF.
              t205 = t231.
            ENDIF.
            t181 = t205.
          ENDIF.
          t172 = t181.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t172 IS BOUND ) = abap_true.
            DATA t241 TYPE REF TO zif_lnt_interface_definition.
            t241 ?= t172.
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
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t256 = t247.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t260) = VALUE abap_bool( ).
            IF t256 IS INITIAL.
              t260 = abap_true.
            ELSEIF t256->has = abap_false.
              t260 = abap_true.
            ENDIF.
            IF t260 = abap_true.
            ELSE.
              DATA t264 TYPE REF TO zif_lnt_interface_definition.
              DATA t266 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t266 = t152->current.
              DATA t269 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t266 IS INITIAL ) = abap_true.
              ELSE.
                DATA t274 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t274 = t266.
                DATA t276 TYPE string.
                t276 = t247->value.
                t269 = t274->find_interface_definition( i_name = t276 ).
              ENDIF.
              t264 = t269.
              DATA t278 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t264 IS BOUND ) = abap_true.
                t278 = t264.
              ELSE.
                DATA t287 TYPE REF TO zcl_lnt_ob_interface.
                DATA t288 TYPE REF TO zcl_lnt_ob_interface.
                DATA t290 TYPE REF TO zif_lnt_registry.
                t290 = t152->reg.
                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t295->has = abap_true.
                t295->value = |INTF|.
                t292 = t295.
                DATA t299 TYPE string.
                t299 = t247->value.
                DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t301->has = abap_true.
                t301->value = t299.
                DATA t303 TYPE REF TO object.
                t303 = t290->get_object( i_type_9913 = t292 i_name = t301 ).
                t288 ?= t303.
                t287 = t288.
                DATA t304 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t287 IS BOUND ) = abap_true.
                  t304 = t287->def.
                ELSE.
                  CLEAR t304.
                ENDIF.
                t278 = t304.
              ENDIF.
              t254 = t278.
            ENDIF.
            t245 = t254.
            DATA t314 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t245 IS BOUND ) = abap_true.
              t314 = t245.
            ELSE.
              CLEAR t314.
            ENDIF.
            t238 = t314.
          ENDIF.
          t162 = t238.
        ENDIF.
        t150 = t162.
        IF xsdbool( t150 IS BOUND ) = abap_true.
          DATA t326 TYPE REF TO zcl_lnt_fi_identifier.
          t326 ?= t150.
          DATA t331 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t335 TYPE string.
          t335 = t50->value.
          DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t337->has = abap_true.
          t337->value = t335.
          DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t331 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t337 i_conversion_exit = t339 i_derived_from_constant = t341 i_ddic_name = t343 i_rtti_name = t345 i_description = t347 ).
          CREATE OBJECT t331->zlnt_view_ownkeys_b0e8086400eb.
          t331->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t349 ).
          CREATE OBJECT t331->zlnt_json_ownkeys_70e5fd461788.
          t331->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t351 ).
          t44 = NEW zcl_lnt_object_reference_type( i_id = t326 i_extra = t331 ).
          DATA t353 TYPE REF TO zcl_lnt_current_scope.
          t353 = t2->scope.
          DATA t355 TYPE REF TO zcl_lnt_abstract_token.
          t355 = t46->get_first_token( ).
          DATA t361 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t363 TYPE REF TO zcl_lnt_fi_identifier.
          t363 ?= t150.
          t361 = t363.
          DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t367->sval = |Object|.
          DATA t369 TYPE string.
          t369 = t2->filename.
          DATA t371 TYPE REF TO zcl_lnt_ireference_extras.
          t353->add_reference( i_usage = t355 i_referencing = t361 i_type_9913 = t367 i_filename = t369 i_extra = t371 ).
        ENDIF.
      ELSE.
        DATA t373 TYPE REF TO zcl_lnt_abstract_type.
        t373 = t44.
        DATA t377 TYPE string.
        t377 = t50->value.
        DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t379->has = abap_true.
        t379->value = t377.
        t44 = NEW zcl_lnt_data_reference( i_type_9913 = t373 i_qualified_name = t379 ).
      ENDIF.
      DATA(t381) = VALUE abap_bool( ).
      DATA(t382) = VALUE abap_bool( ).
      DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t382 = xsdbool( t44 IS INITIAL ).
      t381 = t382.
      IF t382 = abap_true.
        DATA t396 TYPE REF TO zcl_lnt_ddic.
        DATA t397 TYPE REF TO zif_lnt_registry.
        t397 = t2->scope->reg.
        t396 = NEW zcl_lnt_ddic( i_reg_f149 = t397 ).
        DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t402 TYPE string.
        t402 = t50->value.
        DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t404->has = abap_true.
        t404->value = t402.
        t399 = t404.
        DATA(t406) = VALUE abap_bool( ).
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t408 = t399.
        DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t412) = VALUE abap_bool( ).
        IF t408 IS INITIAL.
          t412 = abap_true.
        ELSEIF t408->has = abap_false.
          t412 = abap_true.
        ENDIF.
        IF t412 = abap_true.
          t406 = abap_true.
        ELSE.
          DATA t416 TYPE REF TO zif_lnt_registry.
          t416 = t396->reg.
          DATA t418 TYPE string.
          t418 = t399->value.
          t406 = t416->in_error_namespace( i_name = t418 ).
        ENDIF.
        t381 = xsdbool( t406 = abap_false ).
      ENDIF.
      IF t381 = abap_true.
        DATA t424 TYPE string.
        t424 = t50->value.
        DATA(t426) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t426->has = abap_true.
        t426->value = t424.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t44 = zcl_lnt_void_type=>get_db65( i_voided = t426 i_qualified_name = t428 ).
      ELSE.
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
        IF xsdbool( t430 = |OBJECT| ) = abap_true.
          DATA t436 TYPE REF TO zcl_lnt_abstract_type_data.
          result = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t436 ).
          RETURN.
        ELSE.
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t44 IS INITIAL ) = abap_true.
            DATA t445 TYPE string.
            DATA t446 TYPE string.
            DATA(t447) = |Type "|.
            DATA t448 TYPE string.
            t448 = t50->value.
            DATA(t450) = strlen( t447 ).
            t446 = |{ t447 }{ t448 }|.
            DATA(t452) = strlen( t446 ).
            t445 = |{ t446 }{ |" not found in scope, Cast| }|.
            DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t453 = t2->issues.
            DATA t455 TYPE REF TO zcl_lnt_issue.
            DATA t461 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t455 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t46->get_first_token( ) i_message_26cb = t445 i_fix = t461 ).
            t453->load( ).
            APPEND t455 TO t453->items.
            t453->save( ).
            DATA(t465) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t466->has = abap_true.
            t466->value = t465.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = zcl_lnt_void_type=>get_db65( i_voided = t466 i_qualified_name = t468 ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t44 ).
    DATA t474 TYPE REF TO zcl_lnt_type_utils.
    DATA t476 TYPE REF TO zcl_lnt_current_scope.
    t476 = t2->scope.
    t474 = NEW zcl_lnt_type_utils( i_scope = t476 ).
    DATA t478 TYPE REF TO zcl_lnt_abstract_type.
    t478 = t33.
    DATA t480 TYPE REF TO zcl_lnt_abstract_type.
    t480 = t44.
    IF xsdbool( abap_true = abap_false ) = abap_true.
      DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t486 = t2->issues.
      DATA t488 TYPE REF TO zcl_lnt_issue.
      DATA t493 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t488 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Cast, incompatible types| i_fix = t493 ).
      t486->load( ).
      APPEND t488 TO t486->items.
      t486->save( ).
      DATA(t497) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t498) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t498->has = abap_true.
      t498->value = t497.
      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t498 i_qualified_name = t500 ).
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
