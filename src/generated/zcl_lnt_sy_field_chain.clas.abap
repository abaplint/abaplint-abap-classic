* TS: src/abap/5_syntax/expressions/field_chain.ts:20:1 FieldChain
CLASS zcl_lnt_sy_field_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_ref_type TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_allow_generic_deference TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_ref_type.
    DATA(t4) = i_allow_generic_deference.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t10->has = abap_true.
      t10->value = abap_false.
      t4 = t10.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zif_lnt_union_daf022d4.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t18 TYPE REF TO zcl_lnt_abstract_node.
    t18 = t1.
    DATA t22 TYPE REF TO zif_lnt_node.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t23 = t18->children.
    DATA t25 TYPE REF TO object.
    t23->load( ).
    READ TABLE t23->items INDEX 1 INTO t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t26 ?= t25.
      DATA t27 TYPE REF TO object.
      t27 = t26->as_ref( ).
      t22 ?= t27.
    ELSE.
      t22 ?= t25.
    ENDIF.
    t16 ?= t22.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_union_daf022d4.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
    ELSE.
      DATA t33 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t37 TYPE REF TO object.
      t37 = t15->get_db65( ).
      t33 ?= t37.
      t29 = t33.
    ENDIF.
    t14 = t29.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_source_field ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
      t39 = t1->find_direct_expression( i_type_9913 = t41 ).
      t12 = xsdbool( t39 IS BOUND ).
    ENDIF.
    IF t12 = abap_true.
      DATA(t42) = VALUE string( ).
      DATA(t44) = VALUE string( ).
      t44 = t1->concat_tokens( ).
      DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t46 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = | | flags = |g| checked = abap_true.
      DATA(t50) = strlen( t44 ).
      t42 = t46->replace( p0 = t44 p1 = || ).
      DATA(t51) = VALUE string( ).
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
      t57 = t1->find_direct_expression( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t57 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t65) = VALUE string( ).
        t65 = t57->concat_tokens( ).
        DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t68->has = abap_true.
        t68->value = t65.
        t61 = t68.
      ENDIF.
      t55 = t61.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t70) = VALUE abap_bool( ).
      IF t55 IS INITIAL.
        t70 = abap_true.
      ELSEIF t55->has = abap_false.
        t70 = abap_true.
      ENDIF.
      IF t70 = abap_true.
      ELSE.
        DATA(t73) = VALUE string( ).
        DATA(t74) = VALUE string( ).
        t74 = t55->value.
        DATA t76 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t76 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = | | flags = |g| checked = abap_true.
        DATA(t80) = strlen( t74 ).
        t73 = t76->replace( p0 = t74 p1 = || ).
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t73.
        t69 = t81.
      ENDIF.
      t53 = t69.
      DATA(t82) = VALUE string( ).
      DATA(t83) = VALUE abap_bool( ).
      IF t53 IS BOUND.
        IF t53->has = abap_true.
          t83 = xsdbool( strlen( t53->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t83 = abap_true.
        t82 = t53->value.
      ELSE.
        t82 = ||.
      ENDIF.
      t51 = t82.
      DATA(t88) = VALUE string( ).
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
      t94 = t1->find_direct_expression( i_type_9913 = t97 ).
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t94 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t102) = VALUE string( ).
        t102 = t94->concat_tokens( ).
        DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t105->has = abap_true.
        t105->value = t102.
        t98 = t105.
      ENDIF.
      t92 = t98.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t107) = VALUE abap_bool( ).
      IF t92 IS INITIAL.
        t107 = abap_true.
      ELSEIF t92->has = abap_false.
        t107 = abap_true.
      ENDIF.
      IF t107 = abap_true.
      ELSE.
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        t111 = t92->value.
        DATA t113 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t113 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = | | flags = |g| checked = abap_true.
        DATA(t117) = strlen( t111 ).
        t110 = t113->replace( p0 = t111 p1 = || ).
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = t110.
        t106 = t118.
      ENDIF.
      t90 = t106.
      DATA(t119) = VALUE string( ).
      DATA(t120) = VALUE abap_bool( ).
      IF t90 IS BOUND.
        IF t90->has = abap_true.
          t120 = xsdbool( strlen( t90->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t120 = abap_true.
        t119 = t90->value.
      ELSE.
        t119 = ||.
      ENDIF.
      t88 = t119.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t127 TYPE REF TO zcl_lnt_current_scope.
      t127 = t2->scope.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t133) = VALUE string( ).
      DATA(t134) = VALUE string( ).
      DATA(t137) = ||.
      DATA(t138) = strlen( t42 ).
      t134 = t42.
      IF t51 = ``.
        t134 = |{ t137 }{ t42 }|.
      ELSE.
        REPLACE FIRST OCCURRENCE OF t51 IN t134 WITH t137.
      ENDIF.
      DATA(t140) = ||.
      DATA(t141) = strlen( t134 ).
      t133 = t134.
      IF t88 = ``.
        t133 = |{ t140 }{ t134 }|.
      ELSE.
        REPLACE FIRST OCCURRENCE OF t88 IN t133 WITH t140.
      ENDIF.
      DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t142->has = abap_true.
      t142->value = t133.
      t130 = t142.
      DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t146 = t130.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t150) = VALUE abap_bool( ).
      IF t146 IS INITIAL.
        t150 = abap_true.
      ELSEIF t146->has = abap_false.
        t150 = abap_true.
      ENDIF.
      IF t150 = abap_true.
      ELSE.
        DATA t154 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t156 = t127->current.
        DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t156 IS INITIAL ) = abap_true.
        ELSE.
          DATA t164 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t164 = t156.
          DATA(t166) = VALUE string( ).
          t166 = t130->value.
          t159 = t164->find_variable( i_name = t166 ).
        ENDIF.
        t154 = t159.
        DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t154 IS BOUND ) = abap_true.
          t168 = t154.
        ELSE.
          DATA(t180) = VALUE string( ).
          t180 = t130->value.
          DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t182->has = abap_true.
          t182->value = t180.
          t168 = t127->find_type_pool_constant( i_name = t182 ).
        ENDIF.
        t144 = t168.
      ENDIF.
      t125 = t144.
      IF xsdbool( t125 IS BOUND ) = abap_true.
        DATA(t186) = VALUE abap_bool( ).
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t187 = t3.
        IF t187 IS BOUND.
          t186 = t187->truth( ).
        ENDIF.
        IF t186 = abap_true.
          DATA t189 TYPE REF TO zcl_lnt_current_scope.
          t189 = t2->scope.
          DATA t191 TYPE REF TO zcl_lnt_abstract_token.
          t191 = t1->get_first_token( ).
          DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
          t196 = t125.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t198 = t3.
          DATA(t200) = VALUE string( ).
          t200 = t2->filename.
          DATA t202 TYPE REF TO zcl_lnt_ireference_extras.
          t189->add_reference( i_usage = t191 i_referencing = t196 i_type_9913 = t198 i_filename = t200 i_extra = t202 ).
        ENDIF.
        result = t125->type_cba0.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t212 TYPE REF TO zcl_lnt_abstract_type.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t217 TYPE REF TO zcl_lnt_abstract_node.
    t217 = t1.
    t215 ?= t217->children.
    t214 = t215.
    DATA t222 TYPE REF TO zif_lnt_node.
    DATA t223 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t225 TYPE REF TO object.
    t214->load( ).
    READ TABLE t214->items INDEX 1 INTO t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t226 ?= t225.
      DATA t227 TYPE REF TO object.
      t227 = t226->as_ref( ).
      t223 ?= t227.
    ELSE.
      t223 ?= t225.
    ENDIF.
    t222 ?= t223.
    t212 = zcl_lnt_sy_field_chain=>find_top( i_node = t222 i_input_967e = t2 i_type_9913 = t3 ).
    DATA(t231) = VALUE string( ).
    DATA t233 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t235 TYPE REF TO object.
    t214->load( ).
    READ TABLE t214->items INDEX 1 INTO t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t235 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t236 ?= t235.
      DATA t237 TYPE REF TO object.
      t237 = t236->as_ref( ).
      t233 ?= t237.
    ELSE.
      t233 ?= t235.
    ENDIF.
    t231 = t233->concat_tokens( ).
    DATA(t238) = VALUE i( ).
    t238 = 1.
    DO.
      t214->load( ).
      IF xsdbool( t238 < lines( t214->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t244 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t244.
      DATA t245 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t245.
      DATA(t247) = t238.
      t247 = t247 + 1.
      DATA t248 TYPE REF TO object.
      CLEAR t248.
      t214->load( ).
      CLEAR t248.
      READ TABLE t214->items INDEX t247 INTO t248.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      CLEAR t245.
      IF t248 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t249 ?= t248.
        DATA t250 TYPE REF TO object.
        t250 = t249->as_ref( ).
        t245 ?= t250.
      ELSE.
        t245 ?= t248.
      ENDIF.
      t244 = t245.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      CLEAR t254.
      IF xsdbool( t244 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA t259 TYPE REF TO object.
      t259 = t244->get_db65( ).
      IF xsdbool( t259 IS BOUND AND t259 IS INSTANCE OF zcl_lnt_dash_w ) = abap_true.
        DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t263 = t2->issues.
        DATA t265 TYPE REF TO zcl_lnt_issue.
        DATA t267 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t267.
        t267 = t244->get_first_token( ).
        DATA t270 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t270.
        t265 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t267 i_message_26cb = |Ending with dash| i_fix = t270 ).
        t263->load( ).
        APPEND t265 TO t263->items.
        t263->save( ).
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t274) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t275->has = abap_true.
        t275->value = t274.
        t272 = t275.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        result = zcl_lnt_void_type=>get_db65( i_voided = t272 i_qualified_name = t277 ).
        RETURN.
      ENDIF.
      DATA t279 TYPE REF TO object.
      t279 = t244->get_db65( ).
      IF xsdbool( t279 IS BOUND AND t279 IS INSTANCE OF zcl_lnt_dash ) = abap_true.
        DATA(t282) = t212.
        IF xsdbool( t282 IS BOUND AND t282 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t284.
          DATA(t286) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t287->has = abap_true.
          t287->value = t286.
          t284 = t287.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t289.
          result = zcl_lnt_void_type=>get_db65( i_voided = t284 i_qualified_name = t289 ).
          RETURN.
        ELSE.
          DATA(t290) = VALUE abap_bool( ).
          DATA(t291) = VALUE abap_bool( ).
          DATA(t292) = VALUE abap_bool( ).
          DATA(t294) = t212.
          t292 = xsdbool( xsdbool( t294 IS BOUND AND t294 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ).
          t291 = t292.
          IF t292 = abap_true.
            DATA(t296) = VALUE abap_bool( ).
            DATA(t297) = VALUE abap_bool( ).
            DATA(t298) = t212.
            t297 = xsdbool( t298 IS BOUND AND t298 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t296 = t297.
            IF t297 = abap_true.
              DATA t301 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t301.
              t301 ?= t212.
              t296 = t301->options->zlnt_view_read_sr_ec4602663c93( ).
            ENDIF.
            t291 = xsdbool( t296 = abap_false ).
          ENDIF.
          t290 = t291.
          IF t291 = abap_true.
            DATA(t308) = t212.
            t290 = xsdbool( xsdbool( t308 IS BOUND AND t308 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
          ENDIF.
          IF t290 = abap_true.
            DATA(t309) = VALUE abap_bool( ).
            DATA(t310) = VALUE abap_bool( ).
            DATA(t311) = t212.
            t310 = xsdbool( t311 IS BOUND AND t311 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t309 = t310.
            IF t310 = abap_true.
              DATA t315 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t315.
              t315 ?= t212.
              DATA t318 TYPE REF TO zcl_lnt_itable_options.
              t318 = t315->options.
              t309 = xsdbool( t318->zlnt_view_read_sr_ec4602663c93( ) = abap_false ).
            ENDIF.
            IF t309 = abap_true.
              DATA(t321) = VALUE string( ).
              t321 = ||.
              DATA(t323) = VALUE i( ).
              t323 = 0.
              DO.
                IF xsdbool( t323 < t238 ) = abap_false.
                  EXIT.
                ENDIF.
                DATA(t329) = t321.
                DATA(t330) = VALUE string( ).
                DATA t331 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t331.
                DATA(t333) = t323.
                t333 = t333 + 1.
                DATA t334 TYPE REF TO object.
                CLEAR t334.
                t214->load( ).
                CLEAR t334.
                READ TABLE t214->items INDEX t333 INTO t334.
                DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t335.
                CLEAR t331.
                IF t334 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t335 ?= t334.
                  DATA t336 TYPE REF TO object.
                  t336 = t335->as_ref( ).
                  t331 ?= t336.
                ELSE.
                  t331 ?= t334.
                ENDIF.
                t330 = t331->concat_tokens( ).
                DATA(t337) = strlen( t329 ).
                t321 = |{ t329 }{ t330 }|.
                DATA(t340) = 1.
                t323 = t323 + t340.
              ENDDO.
              DATA t343 TYPE REF TO zcl_lnt_current_scope.
              t343 = t2->scope.
              DATA(t345) = VALUE string( ).
              t345 = t321.
              DATA(t347) = VALUE abap_bool( ).
              DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t348.
              DATA(t350) = VALUE string( ).
              DATA(t352) = strlen( t345 ).
              t350 = t345.
              IF t350 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t350 TO UPPER CASE.
              ELSE.
                t350 = zlnt_runtime_uppe_91169605024d=>full( t350 ).
              ENDIF.
              DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t353->has = abap_true.
              t353->value = t350.
              t348 = t353.
              DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t355.
              DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t356 = t343->allow_header_use.
              DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t359.
              DATA(t360) = VALUE abap_bool( ).
              IF t356 IS INITIAL.
                t360 = abap_true.
              ELSEIF t356->has = abap_false.
                t360 = abap_true.
              ENDIF.
              IF t360 = abap_true.
                CLEAR t359.
              ELSE.
                DATA(t363) = VALUE string( ).
                DATA(t364) = VALUE string( ).
                t364 = t356->value.
                DATA(t366) = strlen( t364 ).
                t363 = t364.
                IF t363 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t363 TO UPPER CASE.
                ELSE.
                  t363 = zlnt_runtime_uppe_91169605024d=>full( t363 ).
                ENDIF.
                DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t367->has = abap_true.
                t367->value = t363.
                t359 = t367.
              ENDIF.
              t355 = t359.
              DATA(t368) = VALUE abap_bool( ).
              DATA(t369) = VALUE abap_bool( ).
              IF t348 IS BOUND.
                t368 = t348->has.
              ENDIF.
              IF t355 IS BOUND.
                t369 = t355->has.
              ENDIF.
              IF t368 = t369.
                IF t368 = abap_false.
                  t347 = abap_true.
                ELSEIF t348->value = t355->value.
                  t347 = abap_true.
                ENDIF.
              ENDIF.
              IF t347 = abap_true.
                DATA t374 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t374.
                t374 ?= t212.
                t212 = t374->row_type.
                DATA(t379) = VALUE abap_bool( ).
                DATA(t380) = VALUE abap_bool( ).
                DATA(t382) = t212.
                t380 = xsdbool( xsdbool( t382 IS BOUND AND t382 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ).
                t379 = t380.
                IF t380 = abap_true.
                  DATA(t385) = t212.
                  t379 = xsdbool( xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
                ENDIF.
                IF t379 = abap_true.
                  DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t387.
                  DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CREATE OBJECT t388.
                  DATA t391 TYPE REF TO zcl_lnt_istructure_component.
                  DATA t394 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t394.
                  t394 = t212.
                  DATA t397 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t397.
                  CLEAR t397.
                  DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t399.
                  CLEAR t399.
                  t391 = NEW zcl_lnt_istructure_component( i_name = |TABLE_LINE| i_type_9913 = t394 i_as_include = t397 i_suffix = t399 ).
                  CREATE OBJECT t391->zlnt_view_ownkeys_b0e8086400eb.
                  t391->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t401.
                  t391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t401 ).
                  DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t402.
                  IF t391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t402 ).
                  ENDIF.
                  CREATE OBJECT t391->zlnt_json_ownkeys_70e5fd461788.
                  t391->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t404.
                  t391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t404 ).
                  DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t406.
                  IF t391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t406 ).
                  ENDIF.
                  t388->load( ).
                  APPEND t391 TO t388->items.
                  t388->save( ).
                  t387 = t388.
                  DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t408.
                  DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t409.
                  DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t410.
                  t212 = NEW zcl_lnt_structure_type( i_components = t387 i_qualified_name = t408 i_ddic_name = t409 i_description = t410 ).
                ENDIF.
              ELSE.
                DATA(t411) = VALUE string( ).
                DATA(t413) = |Table without header, cannot access fields, |.
                DATA(t415) = strlen( t413 ).
                t411 = |{ t413 }{ t321 }|.
                DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t416 = t2->issues.
                DATA t418 TYPE REF TO zcl_lnt_issue.
                DATA t420 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t420.
                t420 = t244->get_first_token( ).
                DATA t423 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t423.
                t418 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t420 i_message_26cb = t411 i_fix = t423 ).
                t416->load( ).
                APPEND t418 TO t416->items.
                t416->save( ).
                DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t425.
                DATA(t427) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t428->has = abap_true.
                t428->value = t427.
                t425 = t428.
                DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t430.
                result = zcl_lnt_void_type=>get_db65( i_voided = t425 i_qualified_name = t430 ).
                RETURN.
              ENDIF.
            ELSE.
              DATA(t431) = VALUE string( ).
              DATA(t433) = VALUE string( ).
              DATA(t434) = VALUE string( ).
              DATA(t435) = VALUE string( ).
              DATA(t436) = t231.
              DATA(t437) = strlen( t436 ).
              t435 = t436.
              IF t435 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t435 TO UPPER CASE.
              ELSE.
                t435 = zlnt_runtime_uppe_91169605024d=>full( t435 ).
              ENDIF.
              DATA(t439) = strlen( t435 ).
              t434 = |{ t435 }{ | is not structured (| }|.
              DATA(t440) = VALUE string( ).
              DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t441.
              DATA t443 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              CLEAR t443.
              DATA t445 TYPE REF TO zcl_lnt_abstract_type.
              t445 = t212.
              DATA t447 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              CLEAR t447.
              IF xsdbool( t445 IS INITIAL ) = abap_true.
                CLEAR t447.
              ELSE.
                t447 = t445->zlnt_builtin_clas_3f891b097658( ).
              ENDIF.
              t443 = t447.
              DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t454.
              IF xsdbool( t443 IS INITIAL ) = abap_true.
                CLEAR t454.
              ELSE.
                DATA(t458) = VALUE string( ).
                t458 = t443->name.
                DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t461->has = abap_true.
                t461->value = t458.
                t454 = t461.
              ENDIF.
              t441 = t454.
              DATA(t462) = VALUE string( ).
              DATA(t463) = VALUE abap_bool( ).
              IF t441 IS INITIAL.
                t463 = abap_true.
              ELSEIF t441->has = abap_false.
                t463 = abap_true.
              ENDIF.
              IF t463 = abap_true.
                t462 = |undefined|.
              ELSE.
                t462 = t441->value.
              ENDIF.
              t440 = t462.
              DATA(t468) = strlen( t434 ).
              t433 = |{ t434 }{ t440 }|.
              DATA(t470) = strlen( t433 ).
              t431 = |{ t433 }{ |)| }|.
              DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t471 = t2->issues.
              DATA t473 TYPE REF TO zcl_lnt_issue.
              DATA t475 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t475.
              t475 = t244->get_first_token( ).
              DATA t478 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t478.
              t473 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t475 i_message_26cb = t431 i_fix = t478 ).
              t471->load( ).
              APPEND t473 TO t471->items.
              t471->save( ).
              DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t480.
              DATA(t482) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t483->has = abap_true.
              t483->value = t482.
              t480 = t483.
              DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t485.
              result = zcl_lnt_void_type=>get_db65( i_voided = t480 i_qualified_name = t485 ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t487 TYPE REF TO object.
        t487 = t244->get_db65( ).
        IF xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_instance_arrow ) = abap_true.
          DATA(t489) = VALUE abap_bool( ).
          DATA(t490) = VALUE abap_bool( ).
          DATA(t491) = VALUE abap_bool( ).
          DATA(t493) = t212.
          t491 = xsdbool( xsdbool( t493 IS BOUND AND t493 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_false ).
          t490 = t491.
          IF t491 = abap_true.
            DATA(t496) = t212.
            t490 = xsdbool( xsdbool( t496 IS BOUND AND t496 IS INSTANCE OF zcl_lnt_data_reference ) = abap_false ).
          ENDIF.
          t489 = t490.
          IF t490 = abap_true.
            DATA(t499) = t212.
            t489 = xsdbool( xsdbool( t499 IS BOUND AND t499 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
          ENDIF.
          IF t489 = abap_true.
            DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t502 = t2->issues.
            DATA t504 TYPE REF TO zcl_lnt_issue.
            DATA t506 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t506.
            t506 = t244->get_first_token( ).
            DATA t509 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t509.
            t504 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t506 i_message_26cb = |Not an object reference, field chain| i_fix = t509 ).
            t502->load( ).
            APPEND t504 TO t502->items.
            t502->save( ).
            DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t511.
            DATA(t513) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t514->has = abap_true.
            t514->value = t513.
            t511 = t514.
            DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t516.
            result = zcl_lnt_void_type=>get_db65( i_voided = t511 i_qualified_name = t516 ).
            RETURN.
          ENDIF.
        ELSE.
          DATA t518 TYPE REF TO object.
          t518 = t244->get_db65( ).
          IF xsdbool( t518 IS BOUND AND t518 IS INSTANCE OF zcl_lnt_st_dereference ) = abap_true.
            DATA t521 TYPE REF TO zif_lnt_node.
            CLEAR t521.
            t521 ?= t244.
            t212 = zcl_lnt_sy_dereference=>run_syntax( i_node = t521 i_type_9913 = t212 i_input_967e = t2 ).
            DATA(t525) = VALUE abap_bool( ).
            DATA(t526) = VALUE abap_bool( ).
            DATA(t527) = VALUE abap_bool( ).
            DATA(t528) = VALUE abap_bool( ).
            DATA(t529) = VALUE abap_bool( ).
            t529 = xsdbool( t4->value = abap_false ).
            t528 = t529.
            IF t529 = abap_true.
              DATA(t533) = VALUE abap_bool( ).
              DATA t534 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t534.
              DATA t535 TYPE REF TO zcl_lnt_abstract_type.
              t535 = t212.
              DATA t537 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t537.
              IF xsdbool( t535 IS INITIAL ) = abap_true.
                CLEAR t537.
              ELSE.
                DATA(t541) = VALUE abap_bool( ).
                t541 = t535->is_generic( ).
                DATA(t544) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t544->has = abap_true.
                t544->value = t541.
                t537 = t544.
              ENDIF.
              t534 = t537.
              DATA t545 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t548) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t548->has = abap_true.
              t548->value = abap_true.
              t545 = t548.
              DATA(t550) = VALUE abap_bool( ).
              DATA(t551) = VALUE abap_bool( ).
              IF t534 IS BOUND.
                t550 = t534->has.
              ENDIF.
              IF t545 IS BOUND.
                t551 = t545->has.
              ENDIF.
              IF t550 = t551.
                IF t550 = abap_false.
                  t533 = abap_true.
                ELSEIF t534->value = t545->value.
                  t533 = abap_true.
                ENDIF.
              ENDIF.
              t528 = t533.
            ENDIF.
            t527 = t528.
            IF t528 = abap_true.
              DATA t554 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t554.
              DATA t556 TYPE REF TO zcl_lnt_current_scope.
              t556 = t2->scope.
              t554 = t556->reg->get_config( )->get_release( ).
              IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
                zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
              ENDIF.
              t527 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t554 i_required = zcl_lnt_version_module=>release_b8cd->get( p0 = |v756| ) ) = abap_false ).
            ENDIF.
            t526 = t527.
            IF t527 = abap_true.
              DATA t569 TYPE REF TO zcl_lnt_current_scope.
              t569 = t2->scope.
              t526 = xsdbool( t569->reg->get_config( )->get_language_version( ) <> |Cloud| ).
            ENDIF.
            t525 = t526.
            IF t526 = abap_true.
              DATA t579 TYPE REF TO zcl_lnt_current_scope.
              t579 = t2->scope.
              t525 = xsdbool( t579->reg->get_config( )->is_open_abap( ) = abap_false ).
            ENDIF.
            IF t525 = abap_true.
              DATA t585 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
              DATA t586 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
              DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t590->has = abap_true.
              t590->value = |A generic reference cannot be dereferenced|.
              t586 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t590 ).
              t585 = NEW #( ).
              t585->payload = t586.
              CLEAR t585->source_value.
              DATA t592 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t592.
              DATA t593 TYPE REF TO object.
              CLEAR t592.
              t593 = t586.
              TRY.
                  t585->source_value ?= t593.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t585->source_value IS NOT BOUND.
                TRY.
                    t592 ?= t586.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t592 IS BOUND.
                  t585->source_value = t592->source( ).
                ENDIF.
                IF t585->source_value IS NOT BOUND.
                  CREATE OBJECT t585->source_value.
                  t585->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t585->source_value->oval = t586.
                ENDIF.
              ENDIF.
              RAISE EXCEPTION t585.
            ENDIF.
          ELSE.
            DATA t595 TYPE REF TO object.
            t595 = t244->get_db65( ).
            IF xsdbool( t595 IS BOUND AND t595 IS INSTANCE OF zcl_lnt_st_component_name ) = abap_true.
              DATA(t597) = VALUE abap_bool( ).
              DATA(t598) = VALUE abap_bool( ).
              DATA(t599) = t212.
              t598 = xsdbool( t599 IS BOUND AND t599 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t597 = t598.
              IF t598 = abap_true.
                DATA t602 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t602.
                t602 ?= t212.
                t597 = t602->options->zlnt_view_read_sr_ec4602663c93( ).
              ENDIF.
              IF t597 = abap_true.
                DATA t611 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t611.
                t611 ?= t212.
                t212 = t611->row_type.
              ENDIF.
              DATA t618 TYPE REF TO zif_lnt_node.
              CLEAR t618.
              t618 ?= t244.
              t212 = zcl_lnt_sy_component_name=>run_syntax( i_context = t212 i_node = t618 i_input_967e = t2 ).
            ELSE.
              DATA(t621) = VALUE abap_bool( ).
              DATA(t622) = VALUE abap_bool( ).
              t622 = xsdbool( t244 IS BOUND AND t244 IS INSTANCE OF zcl_lnt_expression_node ).
              t621 = t622.
              IF t622 = abap_true.
                DATA t625 TYPE REF TO zif_lnt_statement_runnable.
                DATA t626 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t626.
                t626 ?= t244.
                t625 = t626->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t621 = xsdbool( t625 IS BOUND AND t625 IS INSTANCE OF zcl_lnt_st_table_expression ).
              ENDIF.
              IF t621 = abap_true.
                DATA(t629) = VALUE abap_bool( ).
                DATA(t630) = VALUE abap_bool( ).
                DATA(t631) = VALUE abap_bool( ).
                DATA(t633) = t212.
                t631 = xsdbool( xsdbool( t633 IS BOUND AND t633 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
                t630 = t631.
                IF t631 = abap_true.
                  DATA(t636) = t212.
                  t630 = xsdbool( xsdbool( t636 IS BOUND AND t636 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
                ENDIF.
                t629 = t630.
                IF t630 = abap_true.
                  DATA(t639) = t212.
                  t629 = xsdbool( xsdbool( t639 IS BOUND AND t639 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                ENDIF.
                IF t629 = abap_true.
                  DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t642 = t2->issues.
                  DATA t644 TYPE REF TO zcl_lnt_issue.
                  DATA t646 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t646.
                  DATA t647 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t647.
                  t647 ?= t244.
                  t646 = t647->get_first_token( ).
                  DATA t651 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t651.
                  t644 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t646 i_message_26cb = |Table expression, expected table| i_fix = t651 ).
                  t642->load( ).
                  APPEND t644 TO t642->items.
                  t642->save( ).
                  DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t653.
                  DATA(t655) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t656) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t656->has = abap_true.
                  t656->value = t655.
                  t653 = t656.
                  DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t658.
                  result = zcl_lnt_void_type=>get_db65( i_voided = t653 i_qualified_name = t658 ).
                  RETURN.
                ENDIF.
                DATA t659 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t659.
                DATA t661 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t661.
                t661 ?= t244.
                t659 = t661.
                DATA t668 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t668.
                DATA t669 TYPE REF TO zif_lnt_union_297610d4.
                CLEAR t669.
                t669 ?= t212.
                t668 ?= t669.
                zcl_lnt_sy_table_expression=>run_syntax( i_node = t659 i_input_967e = t2 i_row_type = t668 ).
                DATA(t673) = VALUE abap_bool( ).
                DATA(t674) = VALUE abap_bool( ).
                DATA(t676) = t212.
                t674 = xsdbool( xsdbool( t676 IS BOUND AND t676 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
                t673 = t674.
                IF t674 = abap_true.
                  DATA(t679) = t212.
                  t673 = xsdbool( xsdbool( t679 IS BOUND AND t679 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                ENDIF.
                IF t673 = abap_true.
                  DATA t684 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t684.
                  t684 ?= t212.
                  t212 = t684->row_type.
                ENDIF.
              ELSE.
                DATA t690 TYPE REF TO object.
                t690 = t244->get_db65( ).
                IF xsdbool( t690 IS BOUND AND t690 IS INSTANCE OF zcl_lnt_st_attribute_name ) = abap_true.
                  DATA t694 TYPE REF TO zif_lnt_node.
                  CLEAR t694.
                  t694 ?= t244.
                  DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t697.
                  t697 = t3.
                  DATA t702 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t702.
                  t212 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t212 i_node = t694 i_input_967e = t2 i_type_9913 = t697 i_error = t702 ).
                ELSE.
                  DATA(t703) = VALUE abap_bool( ).
                  DATA(t704) = VALUE abap_bool( ).
                  DATA t705 TYPE REF TO object.
                  t705 = t244->get_db65( ).
                  t704 = xsdbool( t705 IS BOUND AND t705 IS INSTANCE OF zcl_lnt_st_field_offset ).
                  t703 = t704.
                  IF t704 = abap_true.
                    t703 = xsdbool( t244 IS BOUND AND t244 IS INSTANCE OF zcl_lnt_expression_node ).
                  ENDIF.
                  IF t703 = abap_true.
                    DATA t709 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    DATA t711 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t711.
                    t711 ?= t244.
                    t709 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t711 i_input_967e = t2 ).
                    DATA(t715) = VALUE abap_bool( ).
                    IF t709 IS BOUND.
                      IF t709->has = abap_true.
                        IF t709->number_special <> 0.
                          t715 = xsdbool( t709->number_special <> 1 ).
                        ELSE.
                          t715 = xsdbool( t709->value IS NOT INITIAL ).
                        ENDIF.
                      ENDIF.
                    ENDIF.
                    IF t715 = abap_true.
                      DATA(t718) = t212.
                      IF xsdbool( t718 IS BOUND AND t718 IS INSTANCE OF zcl_lnt_character_type ) = abap_true.
                        DATA(t720) = VALUE f( ).
                        DATA(t721) = VALUE f( ).
                        DATA t723 TYPE REF TO zcl_lnt_character_type.
                        CLEAR t723.
                        t723 ?= t212.
                        t721 = t723->length.
                        DATA(t727) = VALUE f( ).
                        IF t709->number_special <> 0.
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t727 = t709->value.
                        t720 = t721 - t727.
                        DATA t729 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t729.
                        t212 = NEW zcl_lnt_character_type( i_length = t720 i_extra = t729 ).
                      ELSE.
                        DATA(t731) = t212.
                        IF xsdbool( t731 IS BOUND AND t731 IS INSTANCE OF zcl_lnt_hex_type ) = abap_true.
                          DATA(t733) = VALUE f( ).
                          DATA(t734) = VALUE f( ).
                          DATA t736 TYPE REF TO zcl_lnt_hex_type.
                          CLEAR t736.
                          t736 ?= t212.
                          t734 = t736->length.
                          DATA(t740) = VALUE f( ).
                          IF t709->number_special <> 0.
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          t740 = t709->value.
                          t733 = t734 - t740.
                          DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t742.
                          t212 = NEW zcl_lnt_hex_type( i_length = t733 i_qualified_name = t742 ).
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA(t743) = VALUE abap_bool( ).
                    DATA(t744) = VALUE abap_bool( ).
                    DATA t745 TYPE REF TO object.
                    t745 = t244->get_db65( ).
                    t744 = xsdbool( t745 IS BOUND AND t745 IS INSTANCE OF zcl_lnt_st_field_length ).
                    t743 = t744.
                    IF t744 = abap_true.
                      t743 = xsdbool( t244 IS BOUND AND t244 IS INSTANCE OF zcl_lnt_expression_node ).
                    ENDIF.
                    IF t743 = abap_true.
                      DATA t749 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                      DATA t751 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t751.
                      t751 ?= t244.
                      t749 = zcl_lnt_sy_field_length=>run_syntax( i_node = t751 i_input_967e = t2 ).
                      DATA(t755) = VALUE abap_bool( ).
                      IF t749 IS BOUND.
                        IF t749->has = abap_true.
                          IF t749->number_special <> 0.
                            t755 = xsdbool( t749->number_special <> 1 ).
                          ELSE.
                            t755 = xsdbool( t749->value IS NOT INITIAL ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                      IF t755 = abap_true.
                        DATA(t758) = t212.
                        IF xsdbool( t758 IS BOUND AND t758 IS INSTANCE OF zcl_lnt_character_type ) = abap_true.
                          DATA(t760) = VALUE f( ).
                          IF t749->number_special <> 0.
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          t760 = t749->value.
                          DATA t762 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t762.
                          t212 = NEW zcl_lnt_character_type( i_length = t760 i_extra = t762 ).
                        ELSE.
                          DATA(t764) = t212.
                          IF xsdbool( t764 IS BOUND AND t764 IS INSTANCE OF zcl_lnt_hex_type ) = abap_true.
                            DATA(t766) = VALUE f( ).
                            IF t749->number_special <> 0.
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            t766 = t749->value.
                            DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t768.
                            t212 = NEW zcl_lnt_hex_type( i_length = t766 i_qualified_name = t768 ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.

      t231 = t244->concat_tokens( ).
      DATA(t773) = 1.
      t238 = t238 + t773.
    ENDDO.
    result = t212.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t16 TYPE REF TO zif_lnt_statement_runnable.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      t17 ?= t1.
      t16 = t17->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t12 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
    ENDIF.
    IF t12 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      t23 ?= t1.
      result = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t23 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t28 TYPE abap_bool.
    DATA t29 TYPE abap_bool.
    t29 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
    t28 = t29.
    IF t29 = abap_true.
      DATA t32 TYPE REF TO zif_lnt_statement_runnable.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      t33 ?= t1.
      t32 = t33->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t28 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_source_field ).
    ENDIF.
    IF t28 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      t37 ?= t1.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      result = zcl_lnt_sy_source_field=>run_syntax( i_node = t37 i_input_967e = t2 i_type_9913 = t3 i_error = t45 ).
      RETURN.
    ENDIF.
    DATA t46 TYPE abap_bool.
    DATA t47 TYPE abap_bool.
    t47 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
    t46 = t47.
    IF t47 = abap_true.
      DATA t50 TYPE REF TO zif_lnt_statement_runnable.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      t51 ?= t1.
      t50 = t51->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t46 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_st_expres_field ).
    ENDIF.
    IF t46 = abap_true.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      t55 ?= t1.
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      result = zcl_lnt_sy_source_field=>run_syntax( i_node = t55 i_input_967e = t2 i_type_9913 = t3 i_error = t63 ).
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO object.
    t65 = t1->get_db65( ).
    IF xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_class_name ) = abap_true.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t1->get_first_token( ).
      DATA t72 TYPE string.
      t72 = t68->str.
      DATA t79 TYPE string.
      DATA(t81) = strlen( t72 ).
      t79 = t72.
      IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t79 TO UPPER CASE.
      ELSE.
        t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
      ENDIF.
      IF xsdbool( t79 = |OBJECT| ) = abap_true.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type_data.
        result = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t84 ).
        RETURN.
      ENDIF.
      DATA t85 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t87 TYPE REF TO zcl_lnt_current_scope.
      t87 = t2->scope.
      DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t92->has = abap_true.
      t92->value = t72.
      t85 = t87->exists_object( i_name = t92 ).
      DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t96 TYPE REF TO zcl_lnt_shape_59e28496.
      t96 = t85.
      DATA t98 TYPE REF TO zcl_lnt_fi_identifier.
      IF xsdbool( t96 IS INITIAL ) = abap_true.
      ELSE.
        t98 = t96->id.
      ENDIF.
      t95 = t98.
      IF xsdbool( t95 IS BOUND ) = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_current_scope.
        t105 = t2->scope.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        t107 = t68.
        DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
        t111 = t85->id.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t118.
        t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t118->sval = |Object|.
        DATA t120 TYPE string.
        t120 = t2->filename.
        DATA t122 TYPE REF TO zcl_lnt_ireference_extras.
        t105->add_reference( i_usage = t107 i_referencing = t111 i_type_9913 = t118 i_filename = t120 i_extra = t122 ).
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        t124 = t85->id.
        DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
        result = NEW zcl_lnt_object_reference_type( i_id = t124 i_extra = t128 ).
        RETURN.
      ELSE.
        DATA t136 TYPE REF TO zcl_lnt_ddic.
        DATA t137 TYPE REF TO zif_lnt_registry.
        t137 = t2->scope->reg.
        t136 = NEW zcl_lnt_ddic( i_reg_f149 = t137 ).
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t72.
        t139 = t143.
        DATA(t145) = VALUE abap_bool( ).
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t147 = t139.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t151) = VALUE abap_bool( ).
        IF t147 IS INITIAL.
          t151 = abap_true.
        ELSEIF t147->has = abap_false.
          t151 = abap_true.
        ENDIF.
        IF t151 = abap_true.
          t145 = abap_true.
        ELSE.
          DATA t155 TYPE REF TO zif_lnt_registry.
          t155 = t136->reg.
          DATA t157 TYPE string.
          t157 = t139->value.
          t145 = t155->in_error_namespace( i_name = t157 ).
        ENDIF.
        IF xsdbool( t145 = abap_false ) = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_current_scope.
          t160 = t2->scope.
          DATA t162 TYPE REF TO zcl_lnt_abstract_token.
          t162 = t68.
          DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t167->sval = |Object (Void)|.
          DATA t169 TYPE string.
          t169 = t2->filename.
          DATA t173 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t177 TYPE string.
          DATA(t179) = strlen( t72 ).
          t177 = t72.
          IF t177 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t177 TO UPPER CASE.
          ELSE.
            t177 = zlnt_runtime_uppe_91169605024d=>full( t177 ).
          ENDIF.
          DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t180->has = abap_true.
          t180->value = t177.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t184 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t173 = NEW zcl_lnt_ireference_extras( i_oo_name = t180 i_oo_type = t182 i_found_qualified = t184 ).
          CREATE OBJECT t173->zlnt_view_ownkeys_b0e8086400eb.
          t173->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t186 ).
          CREATE OBJECT t173->zlnt_json_ownkeys_70e5fd461788.
          t173->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t188 ).
          t160->add_reference( i_usage = t162 i_referencing = t166 i_type_9913 = t167 i_filename = t169 i_extra = t173 ).
          DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t194->has = abap_true.
          t194->value = t72.
          DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t194 i_qualified_name = t196 ).
          RETURN.
        ELSE.
          DATA t198 TYPE string.
          DATA(t199) = |Unknown class |.
          DATA(t201) = strlen( t199 ).
          t198 = |{ t199 }{ t72 }|.
          DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t202 = t2->issues.
          DATA t204 TYPE REF TO zcl_lnt_issue.
          DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t204 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t198 i_fix = t210 ).
          t202->load( ).
          APPEND t204 TO t202->items.
          t202->save( ).
          DATA(t214) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t215->has = abap_true.
          t215->value = t214.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t215 i_qualified_name = t217 ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.



    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d803_3fbd8bf96170.
  ENDMETHOD.
ENDCLASS.
