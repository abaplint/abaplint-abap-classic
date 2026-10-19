* TS: src/abap/5_syntax/statements/assign.ts:12:1 Assign
CLASS zcl_lnt_sy_assign DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_assign IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    t14 = t3.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t21 TYPE REF TO zif_lnt_node.
      DATA t22 TYPE REF TO zcl_lnt_abstract_node.
      t22 = t14.
      DATA t27 TYPE REF TO zif_lnt_node.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t28 = t22->children.
      DATA t30 TYPE REF TO object.
      t28->load( ).
      READ TABLE t28->items INDEX 1 INTO t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t30.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t27 ?= t32.
      ELSE.
        t27 ?= t30.
      ENDIF.
      t21 = t27.
      t20 ?= t21.
      t16 = t20.
    ENDIF.
    t12 = t16.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t38) = VALUE string( ).
      t38 = t12->concat_tokens( ).
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t38.
      t34 = t41.
    ENDIF.
    t10 = t34.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = VALUE abap_bool( ).
    IF t10 IS INITIAL.
      t43 = abap_true.
    ELSEIF t10->has = abap_false.
      t43 = abap_true.
    ENDIF.
    IF t43 = abap_true.
    ELSE.
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      t47 = t10->value.
      DATA(t49) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t46.
      t42 = t50.
    ENDIF.
    t9 = t42.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = |COMPONENT|.
    t51 = t54.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t56 = t9->has.
    ENDIF.
    IF t51 IS BOUND.
      t57 = t51->has.
    ENDIF.
    IF t56 = t57.
      IF t56 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t51->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    t7 = t8.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    t62 = t3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t62 IS INITIAL ) = abap_true.
    ELSE.
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      t69 = t62.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t72.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t72->load( ).
      APPEND t75 TO t72->items.
      t72->save( ).
      DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t72->load( ).
      APPEND t77 TO t72->items.
      t72->save( ).
      t64 = t69->find_direct_expressions_multi( i_type_9913 = t72 ).
    ENDIF.
    t60 = t64.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t60 IS BOUND ) = abap_true.
      t79 = t60.
    ELSE.
      CREATE OBJECT t79.
    ENDIF.
    t58 = t79.
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    DATA t86 TYPE REF TO zcl_lnt_expression_node.
    DATA(t88) = VALUE i( ).
    DATA(t89) = VALUE i( ).
    t58->load( ).
    t89 = lines( t58->items ).
    DATA(t91) = 1.
    t88 = t89 - t91.
    t88 = t88 + 1.
    DATA t92 TYPE REF TO object.
    t58->load( ).
    READ TABLE t58->items INDEX t88 INTO t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t93 ?= t92.
      DATA t94 TYPE REF TO object.
      t94 = t93->as_ref( ).
      t86 ?= t94.
    ELSE.
      t86 ?= t92.
    ENDIF.
    t85 = t86.
    DATA t95 TYPE REF TO zcl_lnt_abstract_type.
    DATA t97 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    t101 = t3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t101 IS INITIAL ) = abap_true.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t109 TYPE REF TO zcl_lnt_abstract_node.
      t109 = t101.
      t108 = t109->children.
      t107 ?= t108.
      t103 = t107.
    ENDIF.
    t99 = t103.
    DATA t114 TYPE REF TO zif_lnt_union_4cf1d054.
    IF xsdbool( t99 IS INITIAL ) = abap_true.
    ELSE.
      DATA t118 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t119 = t99.
      DATA t121 TYPE REF TO object.
      t119->load( ).
      READ TABLE t119->items INDEX 1 INTO t121.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t121.
        DATA t123 TYPE REF TO object.
        t123 = t122->as_ref( ).
        t118 ?= t123.
      ELSE.
        t118 ?= t121.
      ENDIF.
      t114 = t118.
    ENDIF.
    t97 = t114.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zcl_lnt_expression_node.
    t128 = t3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t128 IS INITIAL ) = abap_true.
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t136 TYPE REF TO zcl_lnt_abstract_node.
      t136 = t128.
      t135 = t136->children.
      t134 ?= t135.
      t130 = t134.
    ENDIF.
    t126 = t130.
    DATA t141 TYPE REF TO zif_lnt_union_4cf1d054.
    IF xsdbool( t126 IS INITIAL ) = abap_true.
    ELSE.
      DATA t145 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t146 = t126.
      DATA t148 TYPE REF TO object.
      t146->load( ).
      READ TABLE t146->items INDEX 2 INTO t148.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t149 ?= t148.
        DATA t150 TYPE REF TO object.
        t150 = t149->as_ref( ).
        t145 ?= t150.
      ELSE.
        t145 ?= t148.
      ENDIF.
      t141 = t145.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t155 TYPE REF TO zcl_lnt_expression_node.
    t155 = t3.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t155 IS INITIAL ) = abap_true.
    ELSE.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t163 TYPE REF TO zcl_lnt_abstract_node.
      t163 = t155.
      t162 = t163->children.
      t161 ?= t162.
      t157 = t161.
    ENDIF.
    t153 = t157.
    DATA t168 TYPE REF TO zif_lnt_union_4cf1d054.
    IF xsdbool( t153 IS INITIAL ) = abap_true.
    ELSE.
      DATA t172 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t173 = t153.
      DATA t175 TYPE REF TO object.
      t173->load( ).
      READ TABLE t173->items INDEX 3 INTO t175.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t175 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t176 ?= t175.
        DATA t177 TYPE REF TO object.
        t177 = t176->as_ref( ).
        t172 ?= t177.
      ELSE.
        t172 ?= t175.
      ENDIF.
      t168 = t172.
    ENDIF.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = VALUE abap_bool( ).
    DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t182 TYPE REF TO zif_lnt_union_4cf1d054.
    t182 = t141.
    DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t182 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t188) = VALUE string( ).
      t188 = t182->concat_tokens( ).
      DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t191->has = abap_true.
      t191->value = t188.
      t184 = t191.
    ENDIF.
    t181 = t184.
    DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t195->has = abap_true.
    t195->value = |=>|.
    t192 = t195.
    DATA(t197) = VALUE abap_bool( ).
    DATA(t198) = VALUE abap_bool( ).
    IF t181 IS BOUND.
      t197 = t181->has.
    ENDIF.
    IF t192 IS BOUND.
      t198 = t192->has.
    ENDIF.
    IF t197 = t198.
      IF t197 = abap_false.
        t180 = abap_true.
      ELSEIF t181->value = t192->value.
        t180 = abap_true.
      ENDIF.
    ENDIF.
    t179 = t180.
    IF t180 = abap_true.
      t179 = xsdbool( t97 IS BOUND ).
    ENDIF.
    t178 = t179.
    IF t179 = abap_true.
      DATA t202 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t203 TYPE REF TO zif_lnt_union_4cf1d054.
      t203 = t168.
      DATA t205 TYPE REF TO zif_lnt_union_daf022d4.
      IF xsdbool( t203 IS INITIAL ) = abap_true.
      ELSE.
        DATA t209 TYPE REF TO zif_lnt_union_daf022d4.
        DATA t213 TYPE REF TO object.
        t213 = t203->get_db65( ).
        t209 ?= t213.
        t205 = t209.
      ENDIF.
      t202 = t205.
      t178 = xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_st_dynamic ).
    ENDIF.
    IF t178 = abap_true.
      DATA(t214) = VALUE string( ).
      t214 = t97->concat_tokens( ).
      DATA t220 TYPE REF TO zif_lnt_class_definition.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      t222 = t2->scope.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t229->has = abap_true.
      t229->value = t214.
      t225 = t229.
      DATA t231 TYPE REF TO zif_lnt_class_definition.
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t233 = t225.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t237) = VALUE abap_bool( ).
      IF t233 IS INITIAL.
        t237 = abap_true.
      ELSEIF t233->has = abap_false.
        t237 = abap_true.
      ENDIF.
      IF t237 = abap_true.
      ELSE.
        DATA t241 TYPE REF TO zif_lnt_class_definition.
        DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t243 = t222->current.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t243 IS INITIAL ) = abap_true.
        ELSE.
          DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t251 = t243.
          DATA(t253) = VALUE string( ).
          t253 = t225->value.
          t246 = t251->find_class_definition( i_name = t253 ).
        ENDIF.
        t241 = t246.
        DATA t255 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t241 IS BOUND ) = abap_true.
          t255 = t241.
        ELSE.
          DATA t264 TYPE REF TO zcl_lnt_class.
          DATA t265 TYPE REF TO zcl_lnt_class.
          DATA t267 TYPE REF TO zif_lnt_registry.
          t267 = t222->reg.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t272->has = abap_true.
          t272->value = |CLAS|.
          t269 = t272.
          DATA(t276) = VALUE string( ).
          t276 = t225->value.
          DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t278->has = abap_true.
          t278->value = t276.
          DATA t280 TYPE REF TO object.
          t280 = t267->get_object( i_type_9913 = t269 i_name = t278 ).
          t265 ?= t280.
          t264 = t265.
          DATA t281 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t264 IS BOUND ) = abap_true.
            t281 = t264->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t281.
          ENDIF.
          t255 = t281.
        ENDIF.
        t231 = t255.
      ENDIF.
      t220 = t231.
      DATA t288 TYPE REF TO zif_lnt_union_f405367a.
      IF xsdbool( t220 IS BOUND ) = abap_true.
        DATA t291 TYPE REF TO zif_lnt_union_f405367a.
        t291 ?= t220.
        t288 = t291.
      ELSE.
        DATA t294 TYPE REF TO zcl_lnt_current_scope.
        t294 = t2->scope.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t301->has = abap_true.
        t301->value = t214.
        t297 = t301.
        DATA t303 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t305 = t297.
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t309) = VALUE abap_bool( ).
        IF t305 IS INITIAL.
          t309 = abap_true.
        ELSEIF t305->has = abap_false.
          t309 = abap_true.
        ENDIF.
        IF t309 = abap_true.
        ELSE.
          DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t315 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t315 = t294->current.
          DATA t318 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t315 IS INITIAL ) = abap_true.
          ELSE.
            DATA t323 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t323 = t315.
            DATA(t325) = VALUE string( ).
            t325 = t297->value.
            t318 = t323->find_variable( i_name = t325 ).
          ENDIF.
          t313 = t318.
          DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t313 IS BOUND ) = abap_true.
            t327 = t313.
          ELSE.
            DATA(t339) = VALUE string( ).
            t339 = t297->value.
            DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t341->has = abap_true.
            t341->value = t339.
            t327 = t294->find_type_pool_constant( i_name = t341 ).
          ENDIF.
          t303 = t327.
        ENDIF.
        t288 = t303.
      ENDIF.
      DATA(t343) = VALUE abap_bool( ).
      DATA(t344) = VALUE abap_bool( ).
      DATA(t345) = VALUE abap_bool( ).
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t345 = xsdbool( t288 IS INITIAL ).
      t344 = t345.
      IF t345 = abap_true.
        DATA t358 TYPE REF TO zcl_lnt_ddic.
        DATA t359 TYPE REF TO zif_lnt_registry.
        t359 = t2->scope->reg.
        t358 = NEW zcl_lnt_ddic( i_reg_f149 = t359 ).
        DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t365->has = abap_true.
        t365->value = t214.
        t361 = t365.
        DATA(t367) = VALUE abap_bool( ).
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t369 = t361.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t373) = VALUE abap_bool( ).
        IF t369 IS INITIAL.
          t373 = abap_true.
        ELSEIF t369->has = abap_false.
          t373 = abap_true.
        ENDIF.
        IF t373 = abap_true.
          t367 = abap_true.
        ELSE.
          DATA t377 TYPE REF TO zif_lnt_registry.
          t377 = t358->reg.
          DATA(t379) = VALUE string( ).
          t379 = t361->value.
          t367 = t377->in_error_namespace( i_name = t379 ).
        ENDIF.
        t344 = t367.
      ENDIF.
      t343 = t344.
      IF t344 = abap_true.
        DATA(t382) = VALUE abap_bool( ).
        DATA(t384) = |(|.
        DATA(t385) = strlen( t214 ).
        DATA(t386) = VALUE i( ).
        DATA(t387) = VALUE i( ).
        DATA(t388) = VALUE string( ).
        t386 = strlen( t384 ).
        IF t386 = 0.
          t382 = abap_true.
        ELSEIF t386 <= t385.
          t387 = 0.
          t388 = t214+t387(t386).
          IF t388 = t384.
            t382 = abap_true.
          ENDIF.
        ENDIF.
        t343 = xsdbool( t382 = abap_false ).
      ENDIF.
      IF t343 = abap_true.
        DATA(t390) = VALUE string( ).
        DATA(t394) = strlen( t214 ).
        t390 = |{ t214 }{ | not found, dynamic| }|.
        DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t395 = t2->issues.
        DATA t397 TYPE REF TO zcl_lnt_issue.
        DATA t402 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t397 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t390 i_fix = t402 ).
        t395->load( ).
        APPEND t397 TO t395->items.
        t395->save( ).
        RETURN.
      ENDIF.
      DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t407->has = abap_true.
      t407->value = |Dynamic|.
      DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t95 = zcl_lnt_void_type=>get_db65( i_voided = t407 i_qualified_name = t409 ).
    ELSE.
      DATA t411 TYPE REF TO zcl_lnt_expression_node.
      t411 = t85.
      DATA t416 TYPE REF TO zcl_lnt_abstract_type.
      DATA t417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t420) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t420->has = abap_true.
      t420->value = abap_false.
      t417 = t420.
      DATA(t424) = VALUE abap_bool( ).
      t424 = xsdbool( t7 = abap_false ).
      DATA(t427) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t427->has = abap_true.
      t427->value = t424.
      DATA t429 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t95 = zcl_lnt_sy_source=>run_syntax( i_node = t411 i_input_967e = t2 i_target_type = t416 i_write_reference = t417 i_allow_generic_deference = t427 i_read_reference = t429 ).
    ENDIF.
    DATA(t430) = VALUE abap_bool( ).
    DATA(t431) = VALUE abap_bool( ).
    DATA t432 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t435 TYPE REF TO zcl_lnt_expression_node.
    t435 = t3.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t435 IS INITIAL ) = abap_true.
    ELSE.
      DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t443 TYPE REF TO zcl_lnt_abstract_node.
      t443 = t435.
      t442 = t443->children.
      t441 ?= t442.
      t437 = t441.
    ENDIF.
    t433 = t437.
    DATA t448 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    IF xsdbool( t433 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t452) = VALUE f( ).
      DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t454 = t433.
      t454->load( ).
      t452 = lines( t454->items ).
      DATA(t456) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t456->has = abap_true.
      t456->value = t452.
      t448 = t456.
    ENDIF.
    t432 = t448.
    DATA t457 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t460) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t460->has = abap_true.
    t460->value = CONV f( 5 ).
    t457 = t460.
    DATA(t462) = VALUE abap_bool( ).
    DATA(t463) = VALUE abap_bool( ).
    IF t432 IS BOUND.
      t462 = t432->has.
    ENDIF.
    IF t457 IS BOUND.
      t463 = t457->has.
    ENDIF.
    IF t462 = t463.
      IF t462 = abap_false.
        t431 = abap_true.
      ELSE.
        IF t432->number_special <> 0 OR t457->number_special <> 0.
          t431 = xsdbool( t432->number_special = t457->number_special AND t432->number_special <> 1 ).
        ELSE.
          t431 = xsdbool( t432->value = t457->value ).
        ENDIF.
      ENDIF.
    ENDIF.
    t430 = t431.
    IF t431 = abap_true.
      t430 = t7.
    ENDIF.
    IF t430 = abap_true.
      DATA t466 TYPE REF TO zcl_lnt_expression_node.
      DATA(t468) = VALUE i( ).
      DATA(t469) = VALUE i( ).
      t58->load( ).
      t469 = lines( t58->items ).
      DATA(t471) = 2.
      t468 = t469 - t471.
      t468 = t468 + 1.
      DATA t472 TYPE REF TO object.
      t58->load( ).
      READ TABLE t58->items INDEX t468 INTO t472.
      DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t472 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t473 ?= t472.
        DATA t474 TYPE REF TO object.
        t474 = t473->as_ref( ).
        t466 ?= t474.
      ELSE.
        t466 ?= t472.
      ENDIF.
      DATA t476 TYPE REF TO zcl_lnt_abstract_type.
      DATA t482 TYPE REF TO zcl_lnt_abstract_type.
      DATA t483 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t484 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t485 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t476 = zcl_lnt_sy_source=>run_syntax( i_node = t466 i_input_967e = t2 i_target_type = t482 i_write_reference = t483 i_allow_generic_deference = t484 i_read_reference = t485 ).
      DATA t489 TYPE REF TO zcl_lnt_current_scope.
      t489 = t2->scope.
      DATA t494 TYPE REF TO zcl_lnt_abstract_type_data.
      IF xsdbool( NEW zcl_lnt_type_utils( i_scope = t489 )->is_assignable( i_source_75cf = t476 i_target_5f8a = NEW zcl_lnt_character_type( i_length = CONV f( 30 ) i_extra = t494 ) ) = abap_false ) = abap_true.
        DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t498 = t2->issues.
        DATA t500 TYPE REF TO zcl_lnt_issue.
        DATA t505 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t500 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |component name must be charlike| i_fix = t505 ).
        t498->load( ).
        APPEND t500 TO t498->items.
        t498->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t506) = VALUE abap_bool( ).
    DATA(t507) = VALUE abap_bool( ).
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t507 = xsdbool( t95 IS INITIAL ).
    t506 = t507.
    IF t507 = abap_false.
      DATA t515 TYPE REF TO zcl_lnt_expression_node.
      DATA t516 TYPE REF TO zcl_lnt_expression_node.
      t516 = t3.
      DATA t518 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t516 IS INITIAL ) = abap_true.
      ELSE.
        DATA t523 TYPE REF TO zcl_lnt_expression_node.
        t523 = t516.
        DATA(t525) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
        t518 = t523->find_direct_expression( i_type_9913 = t525 ).
      ENDIF.
      t515 = t518.
      t506 = xsdbool( t515 IS BOUND ).
    ENDIF.
    IF t506 = abap_true.
      DATA t527 TYPE REF TO zcl_lnt_abstract_type_data.
      t95 = zcl_lnt_any_type=>get_db65( i_input_967e = t527 ).
    ENDIF.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t531 TYPE REF TO zcl_lnt_expression_node.
    t531 = t3.
    DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t531 IS INITIAL ) = abap_true.
    ELSE.
      DATA t538 TYPE REF TO zcl_lnt_expression_node.
      t538 = t531.
      DATA(t540) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t533 = t538->find_all_expressions( i_type_9913 = t540 ).
    ENDIF.
    t529 = t533.
    DATA t541 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t529 IS BOUND ) = abap_true.
      t541 = t529.
    ELSE.
      CREATE OBJECT t541.
    ENDIF.
    t528 = t541.
    DATA t547 TYPE REF TO zcl_lnt_expression_node.
    DATA t548 TYPE REF TO object.
    DATA(t549) = VALUE i( ).
    DO.
      t528->load( ).
      IF t549 >= lines( t528->items ).
        EXIT.
      ENDIF.
      CLEAR t548.
      READ TABLE t528->items INDEX t549 + 1 INTO t548.
      t549 = t549 + 1.
      DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t550.
      CLEAR t547.
      IF t548 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t550 ?= t548.
        DATA t551 TYPE REF TO object.
        CLEAR t551.
        t551 = t550->as_ref( ).
        t547 ?= t551.
      ELSE.
        t547 ?= t548.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t547 i_input_967e = t2 ).
    ENDDO.
    DATA t554 TYPE REF TO zcl_lnt_expression_node.
    DATA(t557) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t554 = t1->find_direct_expression( i_type_9913 = t557 ).
    IF xsdbool( t554 IS BOUND ) = abap_true.
      IF t7 = abap_true.
        DATA t565 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t554 i_input_967e = t2 i_type_9913 = zcl_lnt_any_type=>get_db65( i_input_967e = t565 ) ).
      ELSE.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t554 i_input_967e = t2 i_type_9913 = t95 ).
      ENDIF.
    ENDIF.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t576) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t574 = t1->find_all_expressions( i_type_9913 = t576 ).
    DATA t577 TYPE REF TO zcl_lnt_expression_node.
    DATA t578 TYPE REF TO object.
    DATA(t579) = VALUE i( ).
    DO.
      t574->load( ).
      IF t579 >= lines( t574->items ).
        EXIT.
      ENDIF.
      CLEAR t578.
      READ TABLE t574->items INDEX t579 + 1 INTO t578.
      t579 = t579 + 1.
      DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t580.
      CLEAR t577.
      IF t578 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t580 ?= t578.
        DATA t581 TYPE REF TO object.
        CLEAR t581.
        t581 = t580->as_ref( ).
        t577 ?= t581.
      ELSE.
        t577 ?= t578.
      ENDIF.
      DATA(t582) = VALUE abap_bool( ).
      DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t585.
      DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t586.
      CLEAR t585.
      IF t577 IS BOUND.
        DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t587.
        DATA t588 TYPE REF TO object.
        CLEAR t588.
        CLEAR t587.
        t588 = t577.
        TRY.
            t585 ?= t588.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t585 IS NOT BOUND.
          TRY.
              t587 ?= t577.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t587 IS BOUND.
            t585 = t587->source( ).
          ENDIF.
          IF t585 IS NOT BOUND.
            CREATE OBJECT t585.
            t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t585->oval = t577.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t586.
      IF t85 IS BOUND.
        DATA t589 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t589.
        DATA t590 TYPE REF TO object.
        CLEAR t590.
        CLEAR t589.
        t590 = t85.
        TRY.
            t586 ?= t590.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t586 IS NOT BOUND.
          TRY.
              t589 ?= t85.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t589 IS BOUND.
            t586 = t589->source( ).
          ENDIF.
          IF t586 IS NOT BOUND.
            CREATE OBJECT t586.
            t586->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t586->oval = t85.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t585 IS BOUND.
        t582 = t585->strict_equals( t586 ).
      ELSE.
        t582 = xsdbool( t586 IS NOT BOUND ).
      ENDIF.
      IF t582 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t591 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t591.
      DATA t592 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t592.
      t592 = t577.
      DATA t597 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t597.
      DATA t598 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t598.
      DATA t599 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t599.
      DATA t600 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t600.
      t591 = zcl_lnt_sy_source=>run_syntax( i_node = t592 i_input_967e = t2 i_target_type = t597 i_write_reference = t598 i_allow_generic_deference = t599 i_read_reference = t600 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d857_8f4cc3b8bf4f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
