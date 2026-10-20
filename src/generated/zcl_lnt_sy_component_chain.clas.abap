* TS: src/abap/5_syntax/expressions/component_chain.ts:12:1 ComponentChain
CLASS zcl_lnt_sy_component_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_context.
    DATA(t3) = i_input_967e.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abstract_node.
    t15 = i_node.
    t14 = t15->children.
    t13 ?= t14.
    t12 = t13.
    DATA t19 TYPE i.
    t19 = 0.
    DO.
      t12->load( ).
      IF xsdbool( t19 < lines( t12->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_void_type ).
      t25 = t26.
      IF t26 = abap_false.
        DATA(t29) = t1.
        t25 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
      ENDIF.
      IF t25 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_abstract_type.
        DATA t33 TYPE REF TO zif_lnt_union_adffe656.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type.
        t34 = t1.
        t33 ?= t34.
        t32 ?= t33.
        result = t32.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA(t40) = t19.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      t12->load( ).
      CLEAR t41.
      READ TABLE t12->items INDEX t40 INTO t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t38.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t41.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t38 ?= t43.
      ELSE.
        t38 ?= t41.
      ENDIF.
      t37 = t38.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      t45 = xsdbool( t19 = 0 ).
      t44 = t45.
      IF t45 = abap_true.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        t50 = t37->concat_tokens( ).
        DATA(t52) = strlen( t50 ).
        t49 = t50.
        IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t49 TO UPPER CASE.
        ELSE.
          t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
        ENDIF.
        t44 = xsdbool( t49 = |TABLE_LINE| ).
      ENDIF.
      IF t44 = abap_true.
        DATA(t56) = 1.
        t19 = t19 + t56.
        CONTINUE.
      ENDIF.
      DATA t58 TYPE REF TO object.
      t58 = t37->get_db65( ).
      IF xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_st_dereference ) = abap_true.
        DATA(t62) = t1.
        IF xsdbool( xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_data_reference ) = abap_false ) = abap_true.
          DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t65 = t3->issues.
          DATA t67 TYPE REF TO zcl_lnt_issue.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          t69 = t37->get_first_token( ).
          DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t72.
          t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t69 i_message_26cb = |Not a data reference, cannot be dereferenced| i_fix = t72 ).
          t65->load( ).
          APPEND t67 TO t65->items.
          t65->save( ).
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t76) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t76.
          t74 = t77.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          result = zcl_lnt_void_type=>get_db65( i_voided = t74 i_qualified_name = t79 ).
          RETURN.
        ENDIF.
        DATA t84 TYPE REF TO zcl_lnt_data_reference.
        t84 ?= t1.
        t1 = t84->type_cba0.
        DATA(t91) = 1.
        t19 = t19 + t91.
        CONTINUE.
      ENDIF.
      DATA t93 TYPE REF TO object.
      t93 = t37->get_db65( ).
      IF xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_arrow_or_dash ) = abap_true.
        DATA t95 TYPE string.
        t95 = t37->concat_tokens( ).
        IF xsdbool( t95 = |-| ) = abap_true.
          DATA(t103) = t1.
          IF xsdbool( xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
            DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t106 = t3->issues.
            DATA t108 TYPE REF TO zcl_lnt_issue.
            DATA t110 TYPE REF TO zcl_lnt_abstract_token.
            t110 = t37->get_first_token( ).
            DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t113.
            t108 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t110 i_message_26cb = |ComponentChain, not a structure| i_fix = t113 ).
            t106->load( ).
            APPEND t108 TO t106->items.
            t106->save( ).
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            DATA(t117) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t118->has = abap_true.
            t118->value = t117.
            t115 = t118.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            result = zcl_lnt_void_type=>get_db65( i_voided = t115 i_qualified_name = t120 ).
            RETURN.
          ENDIF.
        ELSE.
          IF xsdbool( t95 = |=>| ) = abap_true.
            DATA(t126) = t1.
            IF xsdbool( xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_false ) = abap_true.
              DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t129 = t3->issues.
              DATA t131 TYPE REF TO zcl_lnt_issue.
              DATA t133 TYPE REF TO zcl_lnt_abstract_token.
              t133 = t37->get_first_token( ).
              DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t136.
              t131 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t133 i_message_26cb = |ComponentChain, not a reference| i_fix = t136 ).
              t129->load( ).
              APPEND t131 TO t129->items.
              t129->save( ).
              DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t138.
              DATA(t140) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t141->has = abap_true.
              t141->value = t140.
              t138 = t141.
              DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t143.
              result = zcl_lnt_void_type=>get_db65( i_voided = t138 i_qualified_name = t143 ).
              RETURN.
            ENDIF.
          ELSE.
            IF xsdbool( t95 = |->| ) = abap_true.
              DATA t147 TYPE abap_bool.
              DATA t148 TYPE abap_bool.
              DATA(t150) = t1.
              t148 = xsdbool( xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_false ).
              t147 = t148.
              IF t148 = abap_true.
                DATA(t153) = t1.
                t147 = xsdbool( xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_data_reference ) = abap_false ).
              ENDIF.
              IF t147 = abap_true.
                DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t156 = t3->issues.
                DATA t158 TYPE REF TO zcl_lnt_issue.
                DATA t160 TYPE REF TO zcl_lnt_abstract_token.
                t160 = t37->get_first_token( ).
                DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t163.
                t158 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t160 i_message_26cb = |ComponentChain, not a reference| i_fix = t163 ).
                t156->load( ).
                APPEND t158 TO t156->items.
                t156->save( ).
                DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t165.
                DATA(t167) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t168->has = abap_true.
                t168->value = t167.
                t165 = t168.
                DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t170.
                result = zcl_lnt_void_type=>get_db65( i_voided = t165 i_qualified_name = t170 ).
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t172 TYPE REF TO object.
        t172 = t37->get_db65( ).
        IF xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_st_component_name ) = abap_true.
          DATA t174 TYPE string.
          t174 = t37->concat_tokens( ).
          DATA(t178) = t1.
          IF xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_data_reference ) = abap_true.
            DATA t183 TYPE REF TO zcl_lnt_data_reference.
            t183 ?= t1.
            t1 = t183->type_cba0.
            IF xsdbool( t174 = |*| ) = abap_true.
              DATA(t193) = 1.
              t19 = t19 + t193.
              CONTINUE.
            ENDIF.
          ENDIF.
          DATA(t195) = t1.
          IF xsdbool( t195 IS BOUND AND t195 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
            DATA t198 TYPE REF TO zcl_lnt_structure_type.
            t198 ?= t1.
            DATA t200 TYPE string.
            t200 = t174.
            DATA t203 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t203 = t198->indexed.
            DATA t205 TYPE string.
            DATA(t207) = strlen( t200 ).
            t205 = t200.
            IF t205 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t205 TO UPPER CASE.
            ELSE.
              t205 = zlnt_runtime_uppe_91169605024d=>full( t205 ).
            ENDIF.
            t1 = t203->get( p0 = t205 ).
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            IF xsdbool( t1 IS INITIAL ) = abap_true.
              DATA t216 TYPE string.
              DATA t217 TYPE string.
              DATA(t218) = |Component "|.
              DATA(t220) = strlen( t218 ).
              t217 = |{ t218 }{ t174 }|.
              DATA(t222) = strlen( t217 ).
              t216 = |{ t217 }{ |" not found in structure| }|.
              DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t223 = t3->issues.
              DATA t225 TYPE REF TO zcl_lnt_issue.
              DATA t227 TYPE REF TO zcl_lnt_abstract_token.
              t227 = t37->get_first_token( ).
              DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t230.
              t225 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t227 i_message_26cb = t216 i_fix = t230 ).
              t223->load( ).
              APPEND t225 TO t223->items.
              t223->save( ).
              DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t232.
              DATA(t234) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t235->has = abap_true.
              t235->value = t234.
              t232 = t235.
              DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t237.
              result = zcl_lnt_void_type=>get_db65( i_voided = t232 i_qualified_name = t237 ).
              RETURN.
            ENDIF.
          ELSE.
            DATA(t239) = t1.
            IF xsdbool( t239 IS BOUND AND t239 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
              DATA t240 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t243 TYPE REF TO zcl_lnt_object_reference_type.
              t243 ?= t1.
              t240 = t243->identifier.
              DATA t247 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t247.
              DATA t249 TYPE REF TO zcl_lnt_current_scope.
              t249 = t3->scope.
              DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t252.
              DATA t259 TYPE string.
              t259 = t240->token->str.
              DATA(t267) = VALUE string( ).
              DATA(t268) = t259.
              DATA(t269) = 0.
              DATA(t270) = 1.
              DATA(t271) = strlen( t268 ).
              IF t269 < 0.
                t269 = t269 + t271.
                IF t269 < 0.
                  t269 = 0.
                ENDIF.
              ENDIF.
              IF t269 > t271 OR t270 <= 0.
              ELSE.
                IF t270 > t271 - t269.
                  t270 = t271 - t269.
                ENDIF.
                t267 = t268+t269(t270).
              ENDIF.
              IF xsdbool( t267 = |!| ) = abap_true.
                DATA t274 TYPE string.
                t274 = t259.
                DATA(t276) = VALUE string( ).
                DATA(t278) = 1.
                DATA t279 TYPE i.
                t279 = strlen( t274 ).
                DATA(t282) = strlen( t274 ).
                IF t278 < 0.
                  t278 = t278 + t282.
                  IF t278 < 0.
                    t278 = 0.
                  ENDIF.
                ENDIF.
                IF t278 > t282 OR t279 <= 0.
                ELSE.
                  IF t279 > t282 - t278.
                    t279 = t282 - t278.
                  ENDIF.
                  t276 = t274+t278(t279).
                ENDIF.
                t259 = t276.
              ENDIF.
              DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t284->has = abap_true.
              t284->value = t259.
              t252 = t284.
              DATA t286 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t286.
              DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t288 = t252.
              DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t290.
              DATA(t292) = VALUE abap_bool( ).
              IF t288 IS INITIAL.
                t292 = abap_true.
              ELSEIF t288->has = abap_false.
                t292 = abap_true.
              ENDIF.
              IF t292 = abap_true.
                CLEAR t286.
              ELSE.
                DATA t296 TYPE REF TO zif_lnt_class_definition.
                CLEAR t296.
                DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t301 TYPE string.
                t301 = t252->value.
                DATA(t303) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t303->has = abap_true.
                t303->value = t301.
                t298 = t303.
                DATA t305 TYPE REF TO zif_lnt_class_definition.
                CLEAR t305.
                DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t307 = t298.
                DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t309.
                DATA(t311) = VALUE abap_bool( ).
                IF t307 IS INITIAL.
                  t311 = abap_true.
                ELSEIF t307->has = abap_false.
                  t311 = abap_true.
                ENDIF.
                IF t311 = abap_true.
                  CLEAR t305.
                ELSE.
                  DATA t315 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t315.
                  DATA t317 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t317 = t249->current.
                  DATA t320 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t320.
                  IF xsdbool( t317 IS INITIAL ) = abap_true.
                    CLEAR t320.
                  ELSE.
                    DATA t325 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    t325 = t317.
                    DATA t327 TYPE string.
                    t327 = t298->value.
                    t320 = t325->find_class_definition( i_name = t327 ).
                  ENDIF.
                  t315 = t320.
                  DATA t329 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t329.
                  IF xsdbool( t315 IS BOUND ) = abap_true.
                    t329 = t315.
                  ELSE.
                    DATA t338 TYPE REF TO zcl_lnt_class.
                    DATA t339 TYPE REF TO zcl_lnt_class.
                    CLEAR t339.
                    DATA t341 TYPE REF TO zif_lnt_registry.
                    t341 = t249->reg.
                    DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t343.
                    DATA(t346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t346->has = abap_true.
                    t346->value = |CLAS|.
                    t343 = t346.
                    DATA t350 TYPE string.
                    t350 = t298->value.
                    DATA(t352) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t352->has = abap_true.
                    t352->value = t350.
                    DATA t354 TYPE REF TO object.
                    t354 = t341->get_object( i_type_9913 = t343 i_name = t352 ).
                    t339 ?= t354.
                    t338 = t339.
                    DATA t355 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t355.
                    IF xsdbool( t338 IS BOUND ) = abap_true.
                      t355 = t338->gt_dfn_ins_src_obj_cls_ts_clss( ).
                    ELSE.
                      CLEAR t355.
                    ENDIF.
                    t329 = t355.
                  ENDIF.
                  t305 = t329.
                ENDIF.
                t296 = t305.
                DATA t362 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t362.
                IF xsdbool( t296 IS BOUND ) = abap_true.
                  DATA t365 TYPE REF TO zif_lnt_interface_definition.
                  DATA t366 TYPE REF TO zif_lnt_class_definition.
                  t366 = t296.
                  t365 ?= t366.
                  t362 = t365.
                ELSE.
                  DATA t369 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t369.
                  DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t374 TYPE string.
                  t374 = t252->value.
                  DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t376->has = abap_true.
                  t376->value = t374.
                  t371 = t376.
                  DATA t378 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t378.
                  DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t380 = t371.
                  DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t382.
                  DATA(t384) = VALUE abap_bool( ).
                  IF t380 IS INITIAL.
                    t384 = abap_true.
                  ELSEIF t380->has = abap_false.
                    t384 = abap_true.
                  ENDIF.
                  IF t384 = abap_true.
                    CLEAR t378.
                  ELSE.
                    DATA t388 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t388.
                    DATA t390 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    t390 = t249->current.
                    DATA t393 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t393.
                    IF xsdbool( t390 IS INITIAL ) = abap_true.
                      CLEAR t393.
                    ELSE.
                      DATA t398 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      t398 = t390.
                      DATA t400 TYPE string.
                      t400 = t371->value.
                      t393 = t398->find_interface_definition( i_name = t400 ).
                    ENDIF.
                    t388 = t393.
                    DATA t402 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t402.
                    IF xsdbool( t388 IS BOUND ) = abap_true.
                      t402 = t388.
                    ELSE.
                      DATA t411 TYPE REF TO zcl_lnt_ob_interface.
                      DATA t412 TYPE REF TO zcl_lnt_ob_interface.
                      CLEAR t412.
                      DATA t414 TYPE REF TO zif_lnt_registry.
                      t414 = t249->reg.
                      DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t416.
                      DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t419->has = abap_true.
                      t419->value = |INTF|.
                      t416 = t419.
                      DATA t423 TYPE string.
                      t423 = t371->value.
                      DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t425->has = abap_true.
                      t425->value = t423.
                      DATA t427 TYPE REF TO object.
                      t427 = t414->get_object( i_type_9913 = t416 i_name = t425 ).
                      t412 ?= t427.
                      t411 = t412.
                      DATA t428 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t428.
                      IF xsdbool( t411 IS BOUND ) = abap_true.
                        t428 = t411->def.
                      ELSE.
                        CLEAR t428.
                      ENDIF.
                      t402 = t428.
                    ENDIF.
                    t378 = t402.
                  ENDIF.
                  t369 = t378.
                  DATA t438 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t438.
                  IF xsdbool( t369 IS BOUND ) = abap_true.
                    t438 = t369.
                  ELSE.
                    CLEAR t438.
                  ENDIF.
                  t362 = t438.
                ENDIF.
                t286 = t362.
              ENDIF.
              t247 = t286.
              DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t450.
              IF xsdbool( t247 IS INITIAL ) = abap_true.
                DATA(t454) = VALUE string( ).
                DATA(t456) = VALUE string( ).
                DATA t460 TYPE string.
                t460 = t240->token->str.
                DATA(t468) = VALUE string( ).
                DATA(t469) = t460.
                DATA(t470) = 0.
                DATA(t471) = 1.
                DATA(t472) = strlen( t469 ).
                IF t470 < 0.
                  t470 = t470 + t472.
                  IF t470 < 0.
                    t470 = 0.
                  ENDIF.
                ENDIF.
                IF t470 > t472 OR t471 <= 0.
                ELSE.
                  IF t471 > t472 - t470.
                    t471 = t472 - t470.
                  ENDIF.
                  t468 = t469+t470(t471).
                ENDIF.
                IF xsdbool( t468 = |!| ) = abap_true.
                  DATA t475 TYPE string.
                  t475 = t460.
                  DATA(t477) = VALUE string( ).
                  DATA(t479) = 1.
                  DATA t480 TYPE i.
                  t480 = strlen( t475 ).
                  DATA(t483) = strlen( t475 ).
                  IF t479 < 0.
                    t479 = t479 + t483.
                    IF t479 < 0.
                      t479 = 0.
                    ENDIF.
                  ENDIF.
                  IF t479 > t483 OR t480 <= 0.
                  ELSE.
                    IF t480 > t483 - t479.
                      t480 = t483 - t479.
                    ENDIF.
                    t477 = t475+t479(t480).
                  ENDIF.
                  t460 = t477.
                ENDIF.
                t456 = t460.
                DATA(t486) = strlen( t456 ).
                t454 = |{ t456 }{ | not found in scope| }|.
                DATA t487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t487 = t3->issues.
                DATA t489 TYPE REF TO zcl_lnt_issue.
                DATA t491 TYPE REF TO zcl_lnt_abstract_token.
                t491 = t37->get_first_token( ).
                DATA t494 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t494.
                t489 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t491 i_message_26cb = t454 i_fix = t494 ).
                t487->load( ).
                APPEND t489 TO t487->items.
                t487->save( ).
                DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t496.
                DATA(t498) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t499) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t499->has = abap_true.
                t499->value = t498.
                t496 = t499.
                DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t501.
                result = zcl_lnt_void_type=>get_db65( i_voided = t496 i_qualified_name = t501 ).
                RETURN.
              ENDIF.
              DATA t503 TYPE REF TO zcl_lnt_object_oriented.
              DATA t504 TYPE REF TO zcl_lnt_current_scope.
              t504 = t3->scope.
              t503 = NEW zcl_lnt_object_oriented( i_scope = t504 ).
              DATA t506 TYPE REF TO zcl_lnt_class_attribute.
              CLEAR t506.
              DATA t509 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t509.
              t509 = t247.
              DATA(t517) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t517->has = abap_true.
              t517->value = t174.
              t506 = t503->search_attribute_name( i_def = t509 i_name = t517 ).
              DATA t520 TYPE REF TO zcl_lnt_class_attribute.
              t520 = t506.
              DATA t522 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t522.
              IF xsdbool( t520 IS INITIAL ) = abap_true.
                CLEAR t522.
              ELSE.
                DATA t527 TYPE REF TO zcl_lnt_typed_identifier.
                t527 = t520.
                t522 = t527->type_cba0.
              ENDIF.
              t1 = t522.
              DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t535.
              IF xsdbool( t1 IS INITIAL ) = abap_true.
                DATA t540 TYPE string.
                DATA t541 TYPE string.
                DATA(t542) = |Attribute "|.
                DATA(t544) = strlen( t542 ).
                t541 = |{ t542 }{ t174 }|.
                DATA(t546) = strlen( t541 ).
                t540 = |{ t541 }{ |" not found| }|.
                DATA t547 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t547 = t3->issues.
                DATA t549 TYPE REF TO zcl_lnt_issue.
                DATA t551 TYPE REF TO zcl_lnt_abstract_token.
                t551 = t37->get_first_token( ).
                DATA t554 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t554.
                t549 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t551 i_message_26cb = t540 i_fix = t554 ).
                t547->load( ).
                APPEND t549 TO t547->items.
                t547->save( ).
                DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t556.
                DATA(t558) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t559) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t559->has = abap_true.
                t559->value = t558.
                t556 = t559.
                DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t561.
                result = zcl_lnt_void_type=>get_db65( i_voided = t556 i_qualified_name = t561 ).
                RETURN.
              ELSE.
                DATA t563 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t563.
                DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t564.
                DATA t571 TYPE string.
                t571 = t240->token->str.
                DATA(t579) = VALUE string( ).
                DATA(t580) = t571.
                DATA(t581) = 0.
                DATA(t582) = 1.
                DATA(t583) = strlen( t580 ).
                IF t581 < 0.
                  t581 = t581 + t583.
                  IF t581 < 0.
                    t581 = 0.
                  ENDIF.
                ENDIF.
                IF t581 > t583 OR t582 <= 0.
                ELSE.
                  IF t582 > t583 - t581.
                    t582 = t583 - t581.
                  ENDIF.
                  t579 = t580+t581(t582).
                ENDIF.
                IF xsdbool( t579 = |!| ) = abap_true.
                  DATA t586 TYPE string.
                  t586 = t571.
                  DATA(t588) = VALUE string( ).
                  DATA(t590) = 1.
                  DATA t591 TYPE i.
                  t591 = strlen( t586 ).
                  DATA(t594) = strlen( t586 ).
                  IF t590 < 0.
                    t590 = t590 + t594.
                    IF t590 < 0.
                      t590 = 0.
                    ENDIF.
                  ENDIF.
                  IF t590 > t594 OR t591 <= 0.
                  ELSE.
                    IF t591 > t594 - t590.
                      t591 = t594 - t590.
                    ENDIF.
                    t588 = t586+t590(t591).
                  ENDIF.
                  t571 = t588.
                ENDIF.
                DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t596->has = abap_true.
                t596->value = t571.
                t564 = t596.
                DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t598.
                DATA(t601) = VALUE string( ).
                IF xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
                  t601 = |CLAS|.
                ELSE.
                  t601 = |INTF|.
                ENDIF.
                DATA(t606) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t606->has = abap_true.
                t606->value = t601.
                t598 = t606.
                DATA t608 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t608.
                t563 = NEW zcl_lnt_ireference_extras( i_oo_name = t564 i_oo_type = t598 i_found_qualified = t608 ).
                CREATE OBJECT t563->zlnt_view_ownkeys_b0e8086400eb.
                t563->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t610.
                t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t610 ).
                DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t611.
                IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t611 ).
                ENDIF.
                CREATE OBJECT t563->zlnt_json_ownkeys_70e5fd461788.
                t563->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t613.
                t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t613 ).
                DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t615.
                IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t615 ).
                ENDIF.
                DATA t616 TYPE REF TO zcl_lnt_current_scope.
                t616 = t3->scope.
                DATA t618 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t618.
                t618 = t37->get_first_token( ).
                DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t624.
                CLEAR t624.
                CREATE OBJECT t624.
                t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t624->sval = |Write To|.
                DATA t626 TYPE string.
                t626 = t3->filename.
                t616->add_reference( i_usage = t618 i_referencing = t506 i_type_9913 = t624 i_filename = t626 i_extra = t563 ).
              ENDIF.
            ELSE.
              DATA(t632) = VALUE string( ).
              DATA(t634) = |ComponentChain, not a structure, |.
              DATA(t635) = VALUE string( ).
              DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t636.
              DATA t638 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              CLEAR t638.
              DATA t640 TYPE REF TO zcl_lnt_abstract_type.
              t640 = t1.
              DATA t643 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              CLEAR t643.
              IF xsdbool( t640 IS INITIAL ) = abap_true.
                CLEAR t643.
              ELSE.
                t643 = t640->zlnt_builtin_clas_3f891b097658( ).
              ENDIF.
              t638 = t643.
              DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t649.
              IF xsdbool( t638 IS INITIAL ) = abap_true.
                CLEAR t649.
              ELSE.
                DATA t653 TYPE string.
                t653 = t638->name.
                DATA(t656) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t656->has = abap_true.
                t656->value = t653.
                t649 = t656.
              ENDIF.
              t636 = t649.
              DATA(t657) = VALUE string( ).
              DATA(t658) = VALUE abap_bool( ).
              IF t636 IS INITIAL.
                t658 = abap_true.
              ELSEIF t636->has = abap_false.
                t658 = abap_true.
              ENDIF.
              IF t658 = abap_true.
                t657 = |undefined|.
              ELSE.
                t657 = t636->value.
              ENDIF.
              t635 = t657.
              DATA(t663) = strlen( t634 ).
              t632 = |{ t634 }{ t635 }|.
              DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t664 = t3->issues.
              DATA t666 TYPE REF TO zcl_lnt_issue.
              DATA t668 TYPE REF TO zcl_lnt_abstract_token.
              t668 = t37->get_first_token( ).
              DATA t671 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t671.
              t666 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t668 i_message_26cb = t632 i_fix = t671 ).
              t664->load( ).
              APPEND t666 TO t664->items.
              t664->save( ).
              DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t673.
              DATA(t675) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t676) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t676->has = abap_true.
              t676->value = t675.
              t673 = t676.
              DATA t678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t678.
              result = zcl_lnt_void_type=>get_db65( i_voided = t673 i_qualified_name = t678 ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.


      DATA(t681) = 1.
      t19 = t19 + t681.
    ENDDO.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d787_542025a81743.
  ENDMETHOD.
ENDCLASS.
