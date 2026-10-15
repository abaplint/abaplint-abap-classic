* TS: src/rules_runner.ts:39:1 RulesRunner
CLASS zcl_lnt_rules_runner DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA syntax_performance TYPE REF TO zcl_lnt_syntax_performance.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS objects_to_check IMPORTING i_objects TYPE REF TO zif_lnt_generator_8f73cd1c RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_rules IMPORTING i_objects TYPE REF TO zif_lnt_generator_8f73cd1c i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS exclude_issues IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rules_runner IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = NEW zcl_lnt_syntax_performance( ).
    me->syntax_performance = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntaxPerformance`.
  ENDMETHOD.

  METHOD objects_to_check.
    DATA(t1) = i_objects.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_skip_logic.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_skip_logic.
    CLEAR t5.
    DATA(t6) = me->reg.
    t5 = NEW zcl_lnt_skip_logic( i_reg_f149 = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t8.
    DATA(t9) = t1.
    t8 = t9->iterate( ).
    t7 = t8.
    DO.
      DATA(t10) = abap_true.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      DATA(t13) = t7.
      t12 = t13->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      t14 = t15->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_object.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->value.
      t17 = t18.
      t16 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = abap_false.
      t22 = t23.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = t4.
          DATA(t28) = t16.
          t26 = t27->skip_0892( i_obj_1ed0 = t28 ).
          t25 = t26.
          IF t26 = abap_false.
            DATA(t29) = VALUE abap_bool( ).
            DATA(t30) = me->reg.
            DATA(t31) = t16.
            t29 = t30->is_dependency( i_obj_1ed0 = t31 ).
            t25 = t29.
          ENDIF.
          t21 = t25.
          DATA(t32) = abap_true.
          t22 = t32.
        CATCH cx_root INTO t24.
          DATA(t33) = VALUE abap_bool( ).
          DATA(t34) = t22.
          t33 = xsdbool( t34 = abap_false ).
          IF t33 = abap_true.
            DATA(t35) = t7.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t22.
      t36 = xsdbool( t37 = abap_false ).
      IF t36 = abap_true.
        DATA(t38) = t7.
        t38->close( ).
      ENDIF.
      DATA(t39) = t21.
      t20 = t39.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t40) = VALUE f( ).
      DATA(t41) = VALUE f( ).
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = abap_false.
      t42 = t43.
      DATA t44 TYPE REF TO cx_root.
      CLEAR t44.
      TRY.
          DATA(t45) = VALUE f( ).
          DATA(t46) = VALUE i( ).
          DATA(t47) = t2.
          DATA(t48) = t16.
          t47->load( ).
          APPEND t48 TO t47->items.
          t46 = lines( t47->items ).
          t47->save( ).
          t45 = t46.
          t41 = t45.
          DATA(t49) = abap_true.
          t42 = t49.
        CATCH cx_root INTO t44.
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = t42.
          t50 = xsdbool( t51 = abap_false ).
          IF t50 = abap_true.
            DATA(t52) = t7.
            t52->close( ).
          ENDIF.
          RAISE EXCEPTION t44.
      ENDTRY.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t42.
      t53 = xsdbool( t54 = abap_false ).
      IF t53 = abap_true.
        DATA(t55) = t7.
        t55->close( ).
      ENDIF.
      DATA(t56) = t41.
      t40 = t56.
    ENDDO.
    DATA(t57) = t2.
    result = t57.

  ENDMETHOD.

  METHOD run_rules.
    DATA(t1) = i_objects.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    DATA t4 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    DATA t5 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    DATA(t6) = NEW zlnt_runtime_map__fed782b2fc26( ).
    t5 = t6.
    DATA(t7) = t5.
    t4 = t7.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA(t13) = me->reg.
    t12 = t13->get_config( ).
    t11 = t12->get_enabled_rules( ).
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t1.
    t15 = me->objects_to_check( i_objects = t16 ).
    t14 = t15.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zif_lnt_progress.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_progress.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_irun_input.
    DATA(t21) = t2.
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_progress.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t20.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_progress.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zif_lnt_progress.
      DATA t27 TYPE REF TO zcl_lnt_irun_input.
      DATA(t28) = t20.
      t27 = t28.
      t26 = t27->progress.
      t22 = t26.
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t18.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t30 = xsdbool( t31 = abap_false ).
    IF t30 = abap_true.
      DATA t33 TYPE REF TO zif_lnt_progress.
      DATA(t34) = t18.
      t33 = t34.
      DATA t35 TYPE f.
      DATA t36 TYPE i.
      DATA(t37) = t14.
      t37->load( ).
      t36 = lines( t37->items ).
      t35 = t36.
      DATA(t38) = |Run Syntax|.
      t33->set( i_total = t35 i_text = t38 ).
    ENDIF.
    DATA(t39) = abap_false.
    t29 = t39.
    t17 = t29.
    DATA(t40) = t14.
    DATA t41 TYPE REF TO zif_lnt_object.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    DATA(t43) = VALUE i( ).
    DO.
      t40->load( ).
      IF t43 >= lines( t40->items ).
        EXIT.
      ENDIF.
      CLEAR t42.
      READ TABLE t40->items INDEX t43 + 1 INTO t42.
      t43 = t43 + 1.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t41.
      IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t44 ?= t42.
        DATA t45 TYPE REF TO object.
        t45 = t44->as_ref( ).
        t41 ?= t45.
      ELSE.
        t41 ?= t42.
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
      CLEAR t46.
      DATA t47 TYPE REF TO zif_lnt_progress.
      CLEAR t47.
      DATA t48 TYPE REF TO zif_lnt_progress.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_irun_input.
      DATA(t50) = t2.
      t49 = t50.
      DATA t51 TYPE REF TO zif_lnt_progress.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t49.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zif_lnt_progress.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zif_lnt_progress.
        DATA t56 TYPE REF TO zcl_lnt_irun_input.
        DATA(t57) = t49.
        t56 = t57.
        t55 = t56->progress.
        t51 = t55.
      ENDIF.
      t48 = t51.
      t47 = t48.
      DATA t58 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
      CLEAR t58.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t47.
      IF t60 IS INITIAL.
        t59 = abap_true.
      ENDIF.
      IF t59 = abap_true.
        DATA t61 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
        CLEAR t61.
        t58 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
        DATA t63 TYPE REF TO zif_lnt_progress.
        DATA(t64) = t47.
        t63 = t64.
        DATA t65 TYPE string.
        DATA(t66) = |Run Syntax - |.
        DATA t67 TYPE string.
        DATA(t68) = t41.
        t67 = t68->get_name( ).
        DATA(t69) = strlen( t66 ).
        t65 = |{ t66 }{ t67 }|.
        t62 = t63->tick( i_text = t65 ).
        t58 = t62.
      ENDIF.
      t46 = t58.
      DATA t70 TYPE abap_bool.
      DATA(t71) = t41.
      t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t70 = abap_true.
        DATA t72 TYPE f.
        DATA t73 TYPE f.
        DATA(t74) = 0.
        t73 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        t72 = t73.
        DATA t75 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t76 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t77) = me->reg.
        DATA t78 TYPE REF TO zcl_lnt_abap_object.
        DATA(t79) = t41.
        DATA t80 TYPE REF TO object.
        t80 = t79.
        t78 ?= t80.
        t76 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t77 i_object_19cd = t78 ).
        t75 = t76->run( ).
        DATA(t81) = VALUE abap_bool( ).
        DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_irun_input.
        DATA(t84) = t2.
        t83 = t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t85.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = t83.
        IF t87 IS INITIAL.
          t86 = abap_true.
        ENDIF.
        IF t86 = abap_true.
          DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t88.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t90 TYPE REF TO zcl_lnt_irun_input.
          DATA(t91) = t83.
          t90 = t91.
          t89 = t90->output_performance.
          t85 = t89.
        ENDIF.
        t82 = t85.
        DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA(t94) = abap_true.
          DATA(t95) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t95->has = abap_true.
          t95->value = t94.
          t92 = t95.
        ELSE.
          DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t96.
          t92 = t96.
        ENDIF.
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = VALUE abap_bool( ).
        IF t82 IS BOUND.
          t97 = t82->has.
        ENDIF.
        IF t92 IS BOUND.
          t98 = t92->has.
        ENDIF.
        IF t97 = t98.
          IF t97 = abap_false.
            t81 = abap_true.
          ELSEIF t82->value = t92->value.
            t81 = abap_true.
          ENDIF.
        ENDIF.
        IF t81 = abap_true.
          DATA t99 TYPE REF TO zcl_lnt_syntax_performance.
          DATA(t100) = me->syntax_performance.
          t99 = t100.
          DATA t101 TYPE REF TO zif_lnt_object.
          DATA t102 TYPE REF TO zcl_lnt_abap_object.
          DATA(t103) = t41.
          DATA t104 TYPE REF TO object.
          t104 = t103.
          t102 ?= t104.
          t101 = t102.
          DATA t105 TYPE f.
          DATA t106 TYPE f.
          DATA t107 TYPE f.
          DATA(t108) = 0.
          t107 = zlnt_runtime_tele_970d5104e5f4=>now( ).
          DATA(t109) = t72.
          t106 = t107 - t109.
          t105 = t106.
          DATA t110 TYPE abap_bool.
          DATA(t111) = t105.
          DATA(t112) = CONV f( 100 ).
          t110 = xsdbool( t111 < t112 ).
          IF t110 = abap_true.
          ELSE.
            DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t114) = t99.
            t113 = t114->results.
            DATA t115 TYPE REF TO zcl_lnt_shape_a69dd887.
            DATA t116 TYPE f.
            DATA(t117) = t105.
            t116 = t117.
            DATA t118 TYPE string.
            DATA t119 TYPE string.
            DATA t120 TYPE string.
            DATA t121 TYPE string.
            DATA(t122) = t101.
            t121 = t122->get_type( ).
            DATA(t123) = | |.
            DATA(t124) = strlen( t121 ).
            t120 = |{ t121 }{ t123 }|.
            DATA t125 TYPE string.
            DATA(t126) = t101.
            t125 = t126->get_name( ).
            DATA(t127) = strlen( t120 ).
            t119 = |{ t120 }{ t125 }|.
            t118 = t119.
            t115 = NEW zcl_lnt_shape_a69dd887( i_runtime = t116 i_name = t118 ).
            CREATE OBJECT t115->zlnt_view_ownkeys_b0e8086400eb.
            t115->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t128.
            IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t128 ).
            ENDIF.
            DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t129.
            IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t129 ).
            ENDIF.
            CREATE OBJECT t115->zlnt_json_ownkeys_70e5fd461788.
            t115->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t130) = |runtime|.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
            ENDIF.
            DATA(t132) = |name|.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
            ENDIF.
            t113->load( ).
            APPEND t115 TO t113->items.
            t113->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t134) = VALUE abap_bool( ).
    DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t135.
    DATA t136 TYPE REF TO zcl_lnt_irun_input.
    DATA(t137) = t2.
    t136 = t137.
    DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = t136.
    IF t140 IS INITIAL.
      t139 = abap_true.
    ENDIF.
    IF t139 = abap_true.
      DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t141.
      t138 = t141.
    ELSE.
      DATA t142 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t143 TYPE REF TO zcl_lnt_irun_input.
      DATA(t144) = t136.
      t143 = t144.
      t142 = t143->output_performance.
      t138 = t142.
    ENDIF.
    t135 = t138.
    DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t145.
    DATA(t146) = abap_true.
    IF t146 = abap_true.
      DATA(t147) = abap_true.
      DATA(t148) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t148->has = abap_true.
      t148->value = t147.
      t145 = t148.
    ELSE.
      DATA t149 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t149.
      t145 = t149.
    ENDIF.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = VALUE abap_bool( ).
    IF t135 IS BOUND.
      t150 = t135->has.
    ENDIF.
    IF t145 IS BOUND.
      t151 = t145->has.
    ENDIF.
    IF t150 = t151.
      IF t150 = abap_false.
        t134 = abap_true.
      ELSEIF t135->value = t145->value.
        t134 = abap_true.
      ENDIF.
    ENDIF.
    IF t134 = abap_true.
      DATA(t152) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t153) = |src/rules_runner.ts:82:7|.
      t152->source_location = t153.
      RAISE EXCEPTION t152.
      DATA(t154) = me->syntax_performance.
      t154->output( ).
    ENDIF.
    DATA(t155) = VALUE abap_bool( ).
    DATA t156 TYPE REF TO zif_lnt_progress.
    CLEAR t156.
    DATA t157 TYPE REF TO zif_lnt_progress.
    CLEAR t157.
    DATA t158 TYPE REF TO zcl_lnt_irun_input.
    DATA(t159) = t2.
    t158 = t159.
    DATA t160 TYPE REF TO zif_lnt_progress.
    CLEAR t160.
    DATA(t161) = VALUE abap_bool( ).
    DATA(t162) = t158.
    IF t162 IS INITIAL.
      t161 = abap_true.
    ENDIF.
    IF t161 = abap_true.
      DATA t163 TYPE REF TO zif_lnt_progress.
      CLEAR t163.
      t160 = t163.
    ELSE.
      DATA t164 TYPE REF TO zif_lnt_progress.
      DATA t165 TYPE REF TO zcl_lnt_irun_input.
      DATA(t166) = t158.
      t165 = t166.
      t164 = t165->progress.
      t160 = t164.
    ENDIF.
    t157 = t160.
    t156 = t157.
    DATA(t167) = VALUE abap_bool( ).
    DATA(t168) = VALUE abap_bool( ).
    DATA(t169) = VALUE abap_bool( ).
    DATA(t170) = t156.
    IF t170 IS INITIAL.
      t169 = abap_true.
    ENDIF.
    t168 = xsdbool( t169 = abap_false ).
    IF t168 = abap_true.
      DATA t171 TYPE REF TO zif_lnt_progress.
      DATA(t172) = t156.
      t171 = t172.
      DATA t173 TYPE f.
      DATA t174 TYPE i.
      DATA(t175) = t10.
      t175->load( ).
      t174 = lines( t175->items ).
      t173 = t174.
      DATA(t176) = |Initialize Rules|.
      t171->set( i_total = t173 i_text = t176 ).
    ENDIF.
    DATA(t177) = abap_false.
    t167 = t177.
    t155 = t167.
    DATA(t178) = t10.
    DATA t179 TYPE REF TO zif_lnt_rule.
    CLEAR t179.
    DATA t180 TYPE REF TO object.
    CLEAR t180.
    DATA(t181) = VALUE i( ).
    DO.
      t178->load( ).
      IF t181 >= lines( t178->items ).
        EXIT.
      ENDIF.
      CLEAR t180.
      READ TABLE t178->items INDEX t181 + 1 INTO t180.
      t181 = t181 + 1.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      CLEAR t179.
      IF t180 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t182 ?= t180.
        DATA t183 TYPE REF TO object.
        t183 = t182->as_ref( ).
        t179 ?= t183.
      ELSE.
        t179 ?= t180.
      ENDIF.
      DATA t184 TYPE f.
      DATA t185 TYPE f.
      DATA(t186) = 0.
      t185 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      t184 = t185.
      DATA(t187) = VALUE abap_bool( ).
      DATA t188 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t188.
      DATA t189 TYPE REF TO zcl_lnt_irun_input.
      DATA(t190) = t2.
      t189 = t190.
      DATA t191 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t191.
      DATA(t192) = VALUE abap_bool( ).
      DATA(t193) = t189.
      IF t193 IS INITIAL.
        t192 = abap_true.
      ENDIF.
      IF t192 = abap_true.
        DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t194.
        t191 = t194.
      ELSE.
        DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t196 TYPE REF TO zcl_lnt_irun_input.
        DATA(t197) = t189.
        t196 = t197.
        t195 = t196->output_performance.
        t191 = t195.
      ENDIF.
      t188 = t191.
      DATA t198 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t198.
      DATA(t199) = abap_true.
      IF t199 = abap_true.
        DATA(t200) = abap_true.
        DATA(t201) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t201->has = abap_true.
        t201->value = t200.
        t198 = t201.
      ELSE.
        DATA t202 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t202.
        t198 = t202.
      ENDIF.
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = VALUE abap_bool( ).
      IF t188 IS BOUND.
        t203 = t188->has.
      ENDIF.
      IF t198 IS BOUND.
        t204 = t198->has.
      ENDIF.
      IF t203 = t204.
        IF t203 = abap_false.
          t187 = abap_true.
        ELSEIF t188->value = t198->value.
          t187 = abap_true.
        ENDIF.
      ENDIF.
      IF t187 = abap_true.
        DATA(t205) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t206) = |src/rules_runner.ts:90:9|.
        t205->source_location = t206.
        RAISE EXCEPTION t205.
      ELSE.
        DATA t207 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
        CLEAR t207.
        DATA t208 TYPE REF TO zif_lnt_progress.
        CLEAR t208.
        DATA t209 TYPE REF TO zif_lnt_progress.
        CLEAR t209.
        DATA t210 TYPE REF TO zcl_lnt_irun_input.
        DATA(t211) = t2.
        t210 = t211.
        DATA t212 TYPE REF TO zif_lnt_progress.
        CLEAR t212.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = t210.
        IF t214 IS INITIAL.
          t213 = abap_true.
        ENDIF.
        IF t213 = abap_true.
          DATA t215 TYPE REF TO zif_lnt_progress.
          CLEAR t215.
          t212 = t215.
        ELSE.
          DATA t216 TYPE REF TO zif_lnt_progress.
          DATA t217 TYPE REF TO zcl_lnt_irun_input.
          DATA(t218) = t210.
          t217 = t218.
          t216 = t217->progress.
          t212 = t216.
        ENDIF.
        t209 = t212.
        t208 = t209.
        DATA t219 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
        CLEAR t219.
        DATA(t220) = VALUE abap_bool( ).
        DATA(t221) = t208.
        IF t221 IS INITIAL.
          t220 = abap_true.
        ENDIF.
        IF t220 = abap_true.
          DATA t222 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
          CLEAR t222.
          t219 = t222.
        ELSE.
          DATA t223 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
          DATA t224 TYPE REF TO zif_lnt_progress.
          DATA(t225) = t208.
          t224 = t225.
          DATA t226 TYPE string.
          DATA(t227) = |Initialize Rules - |.
          DATA t228 TYPE string.
          DATA t229 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t230) = t179.
          t229 = t230->get_metadata( ).
          t228 = t229->key.
          DATA(t231) = strlen( t227 ).
          t226 = |{ t227 }{ t228 }|.
          t223 = t224->tick( i_text = t226 ).
          t219 = t223.
        ENDIF.
        t207 = t219.
      ENDIF.
      DATA(t232) = t179.
      DATA t233 TYPE REF TO zif_lnt_rule.
      DATA(t234) = t179.
      DATA(t235) = me->reg.
      t233 = t234->initialize( i_reg_f149 = t235 ).
      DATA(t236) = VALUE abap_bool( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t237.
      DATA t238 TYPE REF TO zcl_lnt_irun_input.
      DATA(t239) = t2.
      t238 = t239.
      DATA t240 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t240.
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t238.
      IF t242 IS INITIAL.
        t241 = abap_true.
      ENDIF.
      IF t241 = abap_true.
        DATA t243 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t243.
        t240 = t243.
      ELSE.
        DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t245 TYPE REF TO zcl_lnt_irun_input.
        DATA(t246) = t238.
        t245 = t246.
        t244 = t245->output_performance.
        t240 = t244.
      ENDIF.
      t237 = t240.
      DATA t247 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t247.
      DATA(t248) = abap_true.
      IF t248 = abap_true.
        DATA(t249) = abap_true.
        DATA(t250) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t250->has = abap_true.
        t250->value = t249.
        t247 = t250.
      ELSE.
        DATA t251 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t251.
        t247 = t251.
      ENDIF.
      DATA(t252) = VALUE abap_bool( ).
      DATA(t253) = VALUE abap_bool( ).
      IF t237 IS BOUND.
        t252 = t237->has.
      ENDIF.
      IF t247 IS BOUND.
        t253 = t247->has.
      ENDIF.
      IF t252 = t253.
        IF t252 = abap_false.
          t236 = abap_true.
        ELSEIF t237->value = t247->value.
          t236 = abap_true.
        ENDIF.
      ENDIF.
      IF t236 = abap_true.
        DATA(t254) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t255) = |src/rules_runner.ts:101:9|.
        t254->source_location = t255.
        RAISE EXCEPTION t254.
      ENDIF.
      DATA t256 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      DATA(t257) = t3.
      DATA t258 TYPE string.
      DATA t259 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t260) = t179.
      t259 = t260->get_metadata( ).
      t258 = t259->key.
      DATA(t261) = CONV f( 0 ).
      t256 = t257->set( p0 = t258 p1 = t261 ).
    ENDDO.
    DATA(t262) = VALUE abap_bool( ).
    DATA t263 TYPE REF TO zif_lnt_progress.
    CLEAR t263.
    DATA t264 TYPE REF TO zif_lnt_progress.
    CLEAR t264.
    DATA t265 TYPE REF TO zcl_lnt_irun_input.
    DATA(t266) = t2.
    t265 = t266.
    DATA t267 TYPE REF TO zif_lnt_progress.
    CLEAR t267.
    DATA(t268) = VALUE abap_bool( ).
    DATA(t269) = t265.
    IF t269 IS INITIAL.
      t268 = abap_true.
    ENDIF.
    IF t268 = abap_true.
      DATA t270 TYPE REF TO zif_lnt_progress.
      CLEAR t270.
      t267 = t270.
    ELSE.
      DATA t271 TYPE REF TO zif_lnt_progress.
      DATA t272 TYPE REF TO zcl_lnt_irun_input.
      DATA(t273) = t265.
      t272 = t273.
      t271 = t272->progress.
      t267 = t271.
    ENDIF.
    t264 = t267.
    t263 = t264.
    DATA(t274) = VALUE abap_bool( ).
    DATA(t275) = VALUE abap_bool( ).
    DATA(t276) = VALUE abap_bool( ).
    DATA(t277) = t263.
    IF t277 IS INITIAL.
      t276 = abap_true.
    ENDIF.
    t275 = xsdbool( t276 = abap_false ).
    IF t275 = abap_true.
      DATA t278 TYPE REF TO zif_lnt_progress.
      DATA(t279) = t263.
      t278 = t279.
      DATA t280 TYPE f.
      DATA t281 TYPE i.
      DATA(t282) = t14.
      t282->load( ).
      t281 = lines( t282->items ).
      t280 = t281.
      DATA(t283) = |Finding Issues|.
      t278->set( i_total = t280 i_text = t283 ).
    ENDIF.
    DATA(t284) = abap_false.
    t274 = t284.
    t262 = t274.
    DATA(t285) = t14.
    DATA t286 TYPE REF TO zif_lnt_object.
    CLEAR t286.
    DATA t287 TYPE REF TO object.
    CLEAR t287.
    DATA(t288) = VALUE i( ).
    DO.
      t285->load( ).
      IF t288 >= lines( t285->items ).
        EXIT.
      ENDIF.
      CLEAR t287.
      READ TABLE t285->items INDEX t288 + 1 INTO t287.
      t288 = t288 + 1.
      DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t289.
      CLEAR t286.
      IF t287 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t289 ?= t287.
        DATA t290 TYPE REF TO object.
        t290 = t289->as_ref( ).
        t286 ?= t290.
      ELSE.
        t286 ?= t287.
      ENDIF.
      DATA t291 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
      CLEAR t291.
      DATA t292 TYPE REF TO zif_lnt_progress.
      CLEAR t292.
      DATA t293 TYPE REF TO zif_lnt_progress.
      CLEAR t293.
      DATA t294 TYPE REF TO zcl_lnt_irun_input.
      DATA(t295) = t2.
      t294 = t295.
      DATA t296 TYPE REF TO zif_lnt_progress.
      CLEAR t296.
      DATA(t297) = VALUE abap_bool( ).
      DATA(t298) = t294.
      IF t298 IS INITIAL.
        t297 = abap_true.
      ENDIF.
      IF t297 = abap_true.
        DATA t299 TYPE REF TO zif_lnt_progress.
        CLEAR t299.
        t296 = t299.
      ELSE.
        DATA t300 TYPE REF TO zif_lnt_progress.
        DATA t301 TYPE REF TO zcl_lnt_irun_input.
        DATA(t302) = t294.
        t301 = t302.
        t300 = t301->progress.
        t296 = t300.
      ENDIF.
      t293 = t296.
      t292 = t293.
      DATA t303 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
      CLEAR t303.
      DATA(t304) = VALUE abap_bool( ).
      DATA(t305) = t292.
      IF t305 IS INITIAL.
        t304 = abap_true.
      ENDIF.
      IF t304 = abap_true.
        DATA t306 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
        CLEAR t306.
        t303 = t306.
      ELSE.
        DATA t307 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
        DATA t308 TYPE REF TO zif_lnt_progress.
        DATA(t309) = t292.
        t308 = t309.
        DATA t310 TYPE string.
        DATA t311 TYPE string.
        DATA t312 TYPE string.
        DATA(t313) = |Finding Issues - |.
        DATA t314 TYPE string.
        DATA(t315) = t286.
        t314 = t315->get_type( ).
        DATA(t316) = strlen( t313 ).
        t312 = |{ t313 }{ t314 }|.
        DATA(t317) = | |.
        DATA(t318) = strlen( t312 ).
        t311 = |{ t312 }{ t317 }|.
        DATA t319 TYPE string.
        DATA(t320) = t286.
        t319 = t320->get_name( ).
        DATA(t321) = strlen( t311 ).
        t310 = |{ t311 }{ t319 }|.
        t307 = t308->tick( i_text = t310 ).
        t303 = t307.
      ENDIF.
      t291 = t303.
      DATA(t322) = t10.
      DATA t323 TYPE REF TO zif_lnt_rule.
      CLEAR t323.
      DATA t324 TYPE REF TO object.
      CLEAR t324.
      DATA(t325) = VALUE i( ).
      DO.
        t322->load( ).
        IF t325 >= lines( t322->items ).
          EXIT.
        ENDIF.
        CLEAR t324.
        READ TABLE t322->items INDEX t325 + 1 INTO t324.
        t325 = t325 + 1.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t326.
        CLEAR t323.
        IF t324 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t326 ?= t324.
          DATA t327 TYPE REF TO object.
          t327 = t326->as_ref( ).
          t323 ?= t327.
        ELSE.
          t323 ?= t324.
        ENDIF.
        DATA t328 TYPE f.
        DATA t329 TYPE f.
        DATA(t330) = 0.
        t329 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        t328 = t329.
        DATA(t331) = VALUE i( ).
        DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t333) = t323.
        DATA(t334) = t286.
        t332 = t333->run( i_obj_1ed0 = t334 ).
        DATA t335 TYPE REF TO zcl_lnt_issue.
        CLEAR t335.
        DATA t336 TYPE REF TO object.
        CLEAR t336.
        DATA(t337) = VALUE i( ).
        DO.
          t332->load( ).
          IF t337 >= lines( t332->items ).
            EXIT.
          ENDIF.
          CLEAR t336.
          READ TABLE t332->items INDEX t337 + 1 INTO t336.
          t337 = t337 + 1.
          DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t338.
          CLEAR t335.
          IF t336 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t338 ?= t336.
            DATA t339 TYPE REF TO object.
            t339 = t338->as_ref( ).
            t335 ?= t339.
          ELSE.
            t335 ?= t336.
          ENDIF.
          DATA(t340) = t8.
          DATA(t341) = t335.
          t340->load( ).
          APPEND t341 TO t340->items.
          t340->save( ).
        ENDDO.
        DATA t342 TYPE i.
        DATA(t343) = t8.
        t343->load( ).
        t342 = lines( t343->items ).
        t331 = t342.
        DATA t344 TYPE f.
        DATA t345 TYPE f.
        DATA t346 TYPE f.
        DATA(t347) = 0.
        t346 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        DATA(t348) = t328.
        t345 = t346 - t348.
        t344 = t345.
        DATA t349 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
        CLEAR t349.
        DATA(t350) = t3.
        DATA t351 TYPE string.
        DATA t352 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t353) = t323.
        t352 = t353->get_metadata( ).
        t351 = t352->key.
        DATA t354 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t354.
        DATA t355 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t356 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t357) = t3.
        DATA t358 TYPE string.
        DATA t359 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t360) = t323.
        t359 = t360->get_metadata( ).
        t358 = t359->key.
        t356 = t357->get( p0 = t358 ).
        t355 = t356.
        DATA t361 TYPE f.
        DATA(t362) = t344.
        t361 = t362.
        DATA t363 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t363.
        DATA t364 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t364.
        DATA(t365) = VALUE abap_bool( ).
        DATA(t366) = t355.
        IF t366 IS INITIAL.
          t365 = abap_true.
        ELSEIF t366->has = abap_false.
          t365 = abap_true.
        ENDIF.
        IF t365 = abap_true.
          DATA t367 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t368) = |NaN|.
          t367 = zlnt_runtime_stri_248d3505915c=>float_optional( t368 ).
          t364 = t367.
        ELSE.
          DATA(t369) = VALUE f( ).
          DATA(t370) = t355.
          IF t370->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t369 = t370->value.
          DATA(t371) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t371->has = abap_true.
          t371->value = t369.
          t364 = t371.
        ENDIF.
        DATA(t372) = t361.
        DATA(t373) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t373->has = abap_true.
        t373->value = t372.
        t363 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t364 right = t373 op = `+` ).
        t354 = t363.
        DATA(t374) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t354 ) ).
        t349 = t350->set( p0 = t351 p1 = t374 ).
      ENDDO.
    ENDDO.
    DATA(t375) = VALUE abap_bool( ).
    DATA t376 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t376.
    DATA t377 TYPE REF TO zcl_lnt_irun_input.
    DATA(t378) = t2.
    t377 = t378.
    DATA t379 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t379.
    DATA(t380) = VALUE abap_bool( ).
    DATA(t381) = t377.
    IF t381 IS INITIAL.
      t380 = abap_true.
    ENDIF.
    IF t380 = abap_true.
      DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t382.
      t379 = t382.
    ELSE.
      DATA t383 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t384 TYPE REF TO zcl_lnt_irun_input.
      DATA(t385) = t377.
      t384 = t385.
      t383 = t384->output_performance.
      t379 = t383.
    ENDIF.
    t376 = t379.
    DATA t386 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t386.
    DATA(t387) = abap_true.
    IF t387 = abap_true.
      DATA(t388) = abap_true.
      DATA(t389) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t389->has = abap_true.
      t389->value = t388.
      t386 = t389.
    ELSE.
      DATA t390 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t390.
      t386 = t390.
    ENDIF.
    DATA(t391) = VALUE abap_bool( ).
    DATA(t392) = VALUE abap_bool( ).
    IF t376 IS BOUND.
      t391 = t376->has.
    ENDIF.
    IF t386 IS BOUND.
      t392 = t386->has.
    ENDIF.
    IF t391 = t392.
      IF t391 = abap_false.
        t375 = abap_true.
      ELSEIF t376->value = t386->value.
        t375 = abap_true.
      ENDIF.
    ENDIF.
    IF t375 = abap_true.
      DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t394.
      t393 = t394.
      DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t396) = t3.
      t395 = t396->keys( ).
      DATA(t397) = VALUE string( ).
      t395->dense( ).
      DATA(t398) = VALUE i( ).
      DO.
        t395->load( ).
        IF t398 >= lines( t395->items ).
          EXIT.
        ENDIF.
        CLEAR t397.
        READ TABLE t395->items INDEX t398 + 1 INTO t397.
        IF t395->has( t398 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t398 = t398 + 1.
        DATA(t399) = VALUE abap_bool( ).
        DATA t400 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t401 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t402) = t3.
        DATA(t403) = t397.
        t401 = t402->get( p0 = t403 ).
        t400 = t401.
        DATA t404 TYPE i.
        DATA(t405) = 100.
        t404 = t405.
        DATA(t406) = VALUE abap_bool( ).
        DATA(t407) = VALUE abap_bool( ).
        DATA(t408) = VALUE abap_bool( ).
        DATA(t409) = t400.
        IF t409 IS INITIAL.
          t408 = abap_true.
        ELSEIF t409->has = abap_false.
          t408 = abap_true.
        ENDIF.
        t407 = xsdbool( t408 = abap_false ).
        t406 = t407.
        IF t407 = abap_true.
          DATA(t410) = VALUE abap_bool( ).
          DATA(t411) = VALUE f( ).
          DATA(t412) = t400.
          IF t412->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t411 = t412->value.
          DATA t413 TYPE f.
          DATA(t414) = t404.
          t413 = t414.
          t410 = xsdbool( t411 > t413 ).
          t406 = t410.
        ENDIF.
        t399 = t406.
        IF t399 = abap_true.
          DATA(t415) = t393.
          DATA t416 TYPE REF TO zcl_lnt_shape_45cab92f.
          CLEAR t416.
          DATA t417 TYPE string.
          DATA(t418) = t397.
          t417 = t418.
          DATA(t419) = VALUE f( ).
          DATA(t420) = VALUE f( ).
          DATA t421 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t422) = t3.
          DATA(t423) = t397.
          t421 = t422->get( p0 = t423 ).
          IF t421->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t420 = t421->value.
          t419 = t420.
          t416 = NEW zcl_lnt_shape_45cab92f( i_name = t417 i_time = t419 ).
          CREATE OBJECT t416->zlnt_view_ownkeys_b0e8086400eb.
          t416->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t424.
          IF t416->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t416->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t424 ).
          ENDIF.
          DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t425.
          IF t416->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t416->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `time` p1 = t425 ).
          ENDIF.
          CREATE OBJECT t416->zlnt_json_ownkeys_70e5fd461788.
          t416->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t426) = |name|.
          DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t427.
          IF t416->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t416->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
          ENDIF.
          DATA(t428) = |time|.
          DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t429.
          IF t416->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t416->zlnt_json_ownkeys_70e5fd461788->put( p0 = t428 p1 = t429 ).
          ENDIF.
          t415->load( ).
          APPEND t416 TO t415->items.
          t415->save( ).
        ENDIF.
      ENDDO.
      DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t430.
      DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t432) = t393.
      t431 = t432.
      DATA t433 TYPE i.
      DATA(t434) = 1.
      t433 = t434.
      DO.
        DATA t435 TYPE abap_bool.
        DATA(t436) = t433.
        DATA t437 TYPE i.
        DATA(t438) = t431.
        t438->load( ).
        t437 = lines( t438->items ).
        t435 = xsdbool( t436 < t437 ).
        IF t435 = abap_false.
          EXIT.
        ENDIF.
        DATA t439 TYPE i.
        DATA(t440) = t433.
        t439 = t440.
        DO.
          DATA t441 TYPE abap_bool.
          DATA(t442) = t439.
          DATA(t443) = 0.
          t441 = xsdbool( t442 > t443 ).
          IF t441 = abap_false.
            EXIT.
          ENDIF.
          DATA t444 TYPE REF TO zcl_lnt_shape_45cab92f.
          CLEAR t444.
          DATA t445 TYPE REF TO zcl_lnt_shape_45cab92f.
          CLEAR t445.
          DATA(t446) = t431.
          DATA t447 TYPE i.
          DATA(t448) = t439.
          DATA(t449) = 1.
          t447 = t448 - t449.
          t447 = t447 + 1.
          DATA t450 TYPE REF TO object.
          CLEAR t450.
          t446->load( ).
          CLEAR t450.
          READ TABLE t446->items INDEX t447 INTO t450.
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t451.
          CLEAR t445.
          IF t450 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t451 ?= t450.
            DATA t452 TYPE REF TO object.
            t452 = t451->as_ref( ).
            t445 ?= t452.
          ELSE.
            t445 ?= t450.
          ENDIF.
          t444 = t445.
          DATA t453 TYPE REF TO zcl_lnt_shape_45cab92f.
          CLEAR t453.
          DATA t454 TYPE REF TO zcl_lnt_shape_45cab92f.
          CLEAR t454.
          DATA(t455) = t431.
          DATA(t456) = t439.
          t456 = t456 + 1.
          DATA t457 TYPE REF TO object.
          CLEAR t457.
          t455->load( ).
          CLEAR t457.
          READ TABLE t455->items INDEX t456 INTO t457.
          DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t458.
          CLEAR t454.
          IF t457 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t458 ?= t457.
            DATA t459 TYPE REF TO object.
            t459 = t458->as_ref( ).
            t454 ?= t459.
          ELSE.
            t454 ?= t457.
          ENDIF.
          t453 = t454.
          DATA t460 TYPE abap_bool.
          DATA t461 TYPE f.
          DATA t462 TYPE f.
          DATA(t463) = t453.
          t462 = t463->time.
          DATA t464 TYPE f.
          DATA(t465) = t444.
          t464 = t465->time.
          t461 = t462 - t464.
          DATA(t466) = CONV f( 0 ).
          t460 = xsdbool( t461 > t466 ).
          IF t460 = abap_true.
            DATA t467 TYPE REF TO zcl_lnt_shape_45cab92f.
            CLEAR t467.
            DATA t468 TYPE REF TO zcl_lnt_shape_45cab92f.
            CLEAR t468.
            DATA(t469) = t431.
            DATA t470 TYPE i.
            DATA(t471) = t439.
            DATA(t472) = 1.
            t470 = t471 - t472.
            t470 = t470 + 1.
            DATA t473 TYPE REF TO object.
            CLEAR t473.
            t469->load( ).
            CLEAR t473.
            READ TABLE t469->items INDEX t470 INTO t473.
            DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t474.
            CLEAR t468.
            IF t473 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t474 ?= t473.
              DATA t475 TYPE REF TO object.
              t475 = t474->as_ref( ).
              t468 ?= t475.
            ELSE.
              t468 ?= t473.
            ENDIF.
            t467 = t468.
            DATA(t476) = t431.
            DATA t477 TYPE i.
            DATA(t478) = t439.
            DATA(t479) = 1.
            t477 = t478 - t479.
            DATA t480 TYPE REF TO zcl_lnt_shape_45cab92f.
            CLEAR t480.
            DATA(t481) = t431.
            DATA(t482) = t439.
            t482 = t482 + 1.
            DATA t483 TYPE REF TO object.
            CLEAR t483.
            t481->load( ).
            CLEAR t483.
            READ TABLE t481->items INDEX t482 INTO t483.
            DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t484.
            CLEAR t480.
            IF t483 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t484 ?= t483.
              DATA t485 TYPE REF TO object.
              t485 = t484->as_ref( ).
              t480 ?= t485.
            ELSE.
              t480 ?= t483.
            ENDIF.
            t476->put( p0 = t477 p1 = t480 ).
            DATA(t486) = t431.
            DATA(t487) = t439.
            DATA(t488) = t467.
            t486->put( p0 = t487 p1 = t488 ).
            DATA t489 TYPE i.
            DATA(t490) = t439.
            DATA(t491) = 1.
            t489 = t490 - t491.
            t439 = t489.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA t492 TYPE i.
        DATA(t493) = t433.
        DATA(t494) = 1.
        t492 = t493 + t494.
        t433 = t492.
      ENDDO.
      DATA(t495) = t431.
      t430 = t495.
      DATA(t496) = t393.
      DATA t497 TYPE REF TO zcl_lnt_shape_45cab92f.
      CLEAR t497.
      DATA t498 TYPE REF TO object.
      CLEAR t498.
      DATA(t499) = VALUE i( ).
      DO.
        t496->load( ).
        IF t499 >= lines( t496->items ).
          EXIT.
        ENDIF.
        CLEAR t498.
        READ TABLE t496->items INDEX t499 + 1 INTO t498.
        t499 = t499 + 1.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t500.
        CLEAR t497.
        IF t498 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t500 ?= t498.
          DATA t501 TYPE REF TO object.
          t501 = t500->as_ref( ).
          t497 ?= t501.
        ELSE.
          t497 ?= t498.
        ENDIF.
        DATA(t502) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t503) = |src/rules_runner.ts:126:9|.
        t502->source_location = t503.
        RAISE EXCEPTION t502.
      ENDDO.
    ENDIF.
    DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t505) = t8.
    t504 = me->exclude_issues( i_issues = t505 ).
    result = t504.

  ENDMETHOD.

  METHOD exclude_issues.
    DATA(t1) = i_issues.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = t1.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_configuration.
    CLEAR t9.
    DATA(t10) = me->reg.
    t9 = t10->get_config( ).
    t8 = t9->get_global( ).
    t7 = t8->zlnt_view_read_sr_79da0a01acfb( ).
    t6 = t7.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t6.
    t12 = xsdbool( t13 IS BOUND ).
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t14.
      DATA(t15) = t6.
      t14 = t15.
      t11 = t14.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      CREATE OBJECT t16.
      t11 = t16.
    ENDIF.
    t5 = t11.
    t4 = t5.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = t4.
    DATA(t22) = VALUE string( ).
    t21->dense( ).
    DATA(t23) = VALUE i( ).
    DO.
      t21->load( ).
      IF t23 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t21->items INDEX t23 + 1 INTO t22.
      IF t21->has( t23 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t23 = t23 + 1.
      DATA(t24) = t19.
      DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t25.
      DATA(t26) = t22.
      DATA(t27) = |i|.
      CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t26 flags = t27.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
    ENDDO.
    DATA(t28) = t19.
    t18 = t28.
    t17 = t18.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE i( ).
    DATA(t31) = t17.
    t31->load( ).
    t30 = lines( t31->items ).
    DATA(t32) = 0.
    t29 = xsdbool( t30 > t32 ).
    IF t29 = abap_true.
      DATA(t33) = VALUE i( ).
      DATA(t34) = VALUE i( ).
      DATA(t35) = VALUE i( ).
      DATA(t36) = t2.
      t36->load( ).
      t35 = lines( t36->items ).
      DATA(t37) = 1.
      t34 = t35 - t37.
      t33 = t34.
      DO.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t33.
        DATA(t40) = 0.
        t38 = xsdbool( t39 >= t40 ).
        IF t38 = abap_false.
          EXIT.
        ENDIF.
        DATA(t41) = VALUE string( ).
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zcl_lnt_issue.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_issue.
        CLEAR t44.
        DATA(t45) = t2.
        DATA(t46) = t33.
        t46 = t46 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t45->load( ).
        CLEAR t47.
        READ TABLE t45->items INDEX t46 INTO t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t44.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t47.
          DATA t49 TYPE REF TO object.
          CLEAR t49.
          t49 = t48->as_ref( ).
          t44 ?= t49.
        ELSE.
          t44 ?= t47.
        ENDIF.
        t43 = t44.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_iissue_data.
        CLEAR t51.
        DATA(t52) = t43.
        t51 = t52->data_56cc.
        t50 = t51->filename.
        t42 = t50.
        t41 = t42.
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA(t56) = t41.
          DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t57->has = abap_true.
          t57->value = t56.
          t54 = t57.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t58.
          t54 = t58.
        ENDIF.
        DATA(t59) = t17.
        t53 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t54 i_exclude_patterns = t59 ).
        IF t53 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t60.
          DATA(t61) = t2.
          DATA(t62) = t33.
          DATA(t63) = 1.
          t60 = t61->splice2( p0 = t62 p1 = t63 ).
        ENDIF.
        DATA(t64) = VALUE i( ).
        DATA(t65) = t33.
        DATA(t66) = 1.
        t64 = t65 - t66.
        t33 = t64.
      ENDDO.
    ENDIF.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_rules=>get_rules( ) ).
    DATA t68 TYPE REF TO zif_lnt_rule.
    CLEAR t68.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    DATA(t70) = VALUE i( ).
    DO.
      t67->load( ).
      IF t70 >= lines( t67->items ).
        EXIT.
      ENDIF.
      CLEAR t69.
      READ TABLE t67->items INDEX t70 + 1 INTO t69.
      t70 = t70 + 1.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t68.
      IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t69.
        DATA t72 TYPE REF TO object.
        CLEAR t72.
        t72 = t71->as_ref( ).
        t68 ?= t72.
      ELSE.
        t68 ?= t69.
      ENDIF.
      DATA(t73) = VALUE string( ).
      DATA(t74) = VALUE string( ).
      DATA t75 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t75.
      DATA(t76) = t68.
      t75 = t76->get_metadata( ).
      t74 = t75->key.
      t73 = t74.
      DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA t82 TYPE REF TO zif_lnt_configuration.
      CLEAR t82.
      DATA(t83) = me->reg.
      t82 = t83->get_config( ).
      DATA(t84) = t73.
      DATA(t85) = |exclude|.
      t81 = t82->read_by_key( i_rule = t84 i_key = t85 ).
      t80 = t81.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t80.
      IF t88 IS NOT BOUND.
        t87 = abap_true.
      ELSE.
        t87 = xsdbool( t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t87 = abap_true.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        CREATE OBJECT t90.
        CLEAR t89.
        IF t90 IS BOUND.
          DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t91.
          DATA t92 TYPE REF TO object.
          CLEAR t92.
          CLEAR t91.
          t92 = t90.
          TRY.
              t89 ?= t92.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t89 IS NOT BOUND.
            TRY.
                t91 ?= t90.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t91 IS BOUND.
              t89 = t91->source( ).
            ENDIF.
            IF t89 IS NOT BOUND.
              CREATE OBJECT t89.
              t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t89->oval = t90.
            ENDIF.
          ENDIF.
        ENDIF.
        t86 = t89.
      ELSE.
        DATA(t93) = t80.
        t86 = t93.
      ENDIF.
      t79 = t86.
      CLEAR t78.
      IF t79 IS BOUND.
        IF t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t78 ?= t79->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
          ENDTRY.
        ELSEIF t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          CREATE OBJECT t78.
          t78->source = t79.
        ELSE.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
        ENDIF.
        t78->load( ).
      ENDIF.
      t77 = t78.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE i( ).
      DATA(t96) = t77.
      t96->load( ).
      t95 = lines( t96->items ).
      DATA(t97) = 0.
      t94 = xsdbool( t95 = t97 ).
      IF t94 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t101.
      CREATE OBJECT t101.
      t100 = t101.
      DATA(t102) = t77.
      DATA(t103) = VALUE string( ).
      t102->dense( ).
      DATA(t104) = VALUE i( ).
      DO.
        t102->load( ).
        IF t104 >= lines( t102->items ).
          EXIT.
        ENDIF.
        CLEAR t103.
        READ TABLE t102->items INDEX t104 + 1 INTO t103.
        IF t102->has( t104 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t104 = t104 + 1.
        DATA(t105) = t100.
        DATA t106 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t106.
        DATA(t107) = t103.
        DATA(t108) = |i|.
        CREATE OBJECT t106 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t107 flags = t108.
        t105->load( ).
        APPEND t106 TO t105->items.
        t105->save( ).
      ENDDO.
      DATA(t109) = t100.
      t99 = t109.
      t98 = t99.
      DATA(t110) = VALUE i( ).
      DATA(t111) = VALUE i( ).
      DATA(t112) = VALUE i( ).
      DATA(t113) = t2.
      t113->load( ).
      t112 = lines( t113->items ).
      DATA(t114) = 1.
      t111 = t112 - t114.
      t110 = t111.
      DO.
        DATA(t115) = VALUE abap_bool( ).
        DATA(t116) = t110.
        DATA(t117) = 0.
        t115 = xsdbool( t116 >= t117 ).
        IF t115 = abap_false.
          EXIT.
        ENDIF.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE REF TO zcl_lnt_issue.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        CLEAR t121.
        DATA(t122) = t2.
        DATA(t123) = t110.
        t123 = t123 + 1.
        DATA t124 TYPE REF TO object.
        CLEAR t124.
        t122->load( ).
        CLEAR t124.
        READ TABLE t122->items INDEX t123 INTO t124.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        CLEAR t121.
        IF t124 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t125 ?= t124.
          DATA t126 TYPE REF TO object.
          CLEAR t126.
          t126 = t125->as_ref( ).
          t121 ?= t126.
        ELSE.
          t121 ?= t124.
        ENDIF.
        t120 = t121.
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE REF TO zcl_lnt_iissue_data.
        CLEAR t128.
        DATA(t129) = t120.
        t128 = t129->data_56cc.
        t127 = t128->key.
        t119 = t127.
        DATA(t130) = t73.
        t118 = xsdbool( t119 <> t130 ).
        IF t118 = abap_true.
          DATA(t131) = VALUE i( ).
          DATA(t132) = t110.
          DATA(t133) = 1.
          t131 = t132 - t133.
          t110 = t131.
          CONTINUE.
        ENDIF.
        DATA(t134) = VALUE string( ).
        DATA(t135) = VALUE string( ).
        DATA t136 TYPE REF TO zcl_lnt_issue.
        CLEAR t136.
        DATA t137 TYPE REF TO zcl_lnt_issue.
        CLEAR t137.
        DATA(t138) = t2.
        DATA(t139) = t110.
        t139 = t139 + 1.
        DATA t140 TYPE REF TO object.
        CLEAR t140.
        t138->load( ).
        CLEAR t140.
        READ TABLE t138->items INDEX t139 INTO t140.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        CLEAR t137.
        IF t140 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t141 ?= t140.
          DATA t142 TYPE REF TO object.
          CLEAR t142.
          t142 = t141->as_ref( ).
          t137 ?= t142.
        ELSE.
          t137 ?= t140.
        ENDIF.
        t136 = t137.
        DATA(t143) = VALUE string( ).
        DATA t144 TYPE REF TO zcl_lnt_iissue_data.
        CLEAR t144.
        DATA(t145) = t136.
        t144 = t145->data_56cc.
        t143 = t144->filename.
        t135 = t143.
        t134 = t135.
        DATA(t146) = VALUE abap_bool( ).
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA(t148) = abap_true.
        IF t148 = abap_true.
          DATA(t149) = t134.
          DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t150->has = abap_true.
          t150->value = t149.
          t147 = t150.
        ELSE.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          t147 = t151.
        ENDIF.
        DATA(t152) = t98.
        t146 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t147 i_exclude_patterns = t152 ).
        IF t146 = abap_true.
          DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t153.
          DATA(t154) = t2.
          DATA(t155) = t110.
          DATA(t156) = 1.
          t153 = t154->splice2( p0 = t155 p1 = t156 ).
        ENDIF.
        DATA(t157) = VALUE i( ).
        DATA(t158) = t110.
        DATA(t159) = 1.
        t157 = t158 - t159.
        t110 = t157.
      ENDDO.
    ENDDO.
    DATA(t160) = t2.
    result = t160.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1783_636a501dcf61.
  ENDMETHOD.
ENDCLASS.
