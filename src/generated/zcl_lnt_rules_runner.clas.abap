* TS: src/rules_runner.ts:39:1 RulesRunner
CLASS zcl_lnt_rules_runner DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA syntax_performance TYPE REF TO zcl_lnt_syntax_performance.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS objects_to_check IMPORTING i_objects TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_rules IMPORTING i_objects TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS exclude_issues IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rules_runner IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
    DATA(t3) = NEW zcl_lnt_syntax_performance( ).
    me->syntax_performance = t3.
  ENDMETHOD.

  METHOD objects_to_check.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_objects ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_skip_logic.
    DATA t5 TYPE REF TO zcl_lnt_skip_logic.
    DATA(t6) = CAST zif_lnt_registry( me->reg ).
    t5 = NEW zcl_lnt_skip_logic( i_reg_f149 = t6 ).
    t4 = t5.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t8 TYPE REF TO zif_lnt_object.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t7->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA(t12) = CAST zcl_lnt_skip_logic( t4 ).
      DATA(t13) = CAST zif_lnt_object( t8 ).
      t11 = t12->skip_0892( i_obj_1ed0 = t13 ).
      t10 = t11.
      IF t11 = abap_false.
        DATA t14 TYPE abap_bool.
        DATA(t15) = CAST zif_lnt_registry( me->reg ).
        DATA(t16) = CAST zif_lnt_object( t8 ).
        t14 = t15->is_dependency( i_obj_1ed0 = t16 ).
        t10 = t14.
      ENDIF.
      IF t10 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t18) = CAST zif_lnt_object( t8 ).
      APPEND t18 TO t17->items.
    ENDLOOP.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t19.

  ENDMETHOD.

  METHOD run_rules.
    CONSTANTS range_check_hi_2gosa7pa2gv TYPE f VALUE '9007199254740991'.
    CONSTANTS range_check_lo_n2gosa7pa2gv TYPE f VALUE '-9007199254740991'.
    CONSTANTS range_i_check_lo_n2gosa7pa2gv TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_2gosa7pa2gv TYPE int8 VALUE '9007199254740991'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_objects ).
    DATA(t2) = CAST zcl_lnt_irun_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_map__117a2401283c.
    DATA t4 TYPE REF TO zlnt_runtime_map__117a2401283c.
    DATA t5 TYPE REF TO zlnt_runtime_map__117a2401283c.
    DATA(t6) = NEW zlnt_runtime_map__117a2401283c( ).
    t5 = t6.
    DATA(t7) = CAST zlnt_runtime_map__117a2401283c( t5 ).
    t4 = t7.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA(t13) = CAST zif_lnt_registry( me->reg ).
    t12 = t13->get_config( ).
    t11 = t12->get_enabled_rules( ).
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t15 = me->objects_to_check( i_objects = t16 ).
    t14 = t15.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zif_lnt_progress.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_progress.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_irun_input.
    DATA(t21) = CAST zcl_lnt_irun_input( t2 ).
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_progress.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zcl_lnt_irun_input( t20 ).
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
      DATA(t28) = CAST zcl_lnt_irun_input( t20 ).
      t27 = t28.
      t26 = t27->progress.
      t22 = t26.
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zif_lnt_progress( t18 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t30 = xsdbool( t31 = abap_false ).
    IF t30 = abap_true.
      DATA t33 TYPE REF TO zif_lnt_progress.
      DATA(t34) = CAST zif_lnt_progress( t18 ).
      t33 = t34.
      DATA t35 TYPE int8.
      DATA t36 TYPE i.
      DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
      t36 = lines( t37->items ).
      t35 = t36.
      DATA(t38) = |Run Syntax|.
      t33->set( i_total = t35 i_text = t38 ).
    ENDIF.
    DATA(t39) = abap_false.
    t29 = t39.
    t17 = t29.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t41 TYPE REF TO zif_lnt_object.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    LOOP AT t40->items INTO t42.
      t41 ?= t42.
      DATA t43 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
      CLEAR t43.
      DATA t44 TYPE REF TO zif_lnt_progress.
      CLEAR t44.
      DATA t45 TYPE REF TO zif_lnt_progress.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_irun_input.
      DATA(t47) = CAST zcl_lnt_irun_input( t2 ).
      t46 = t47.
      DATA t48 TYPE REF TO zif_lnt_progress.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = CAST zcl_lnt_irun_input( t46 ).
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zif_lnt_progress.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zif_lnt_progress.
        DATA t53 TYPE REF TO zcl_lnt_irun_input.
        DATA(t54) = CAST zcl_lnt_irun_input( t46 ).
        t53 = t54.
        t52 = t53->progress.
        t48 = t52.
      ENDIF.
      t45 = t48.
      t44 = t45.
      DATA t55 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = CAST zif_lnt_progress( t44 ).
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
        CLEAR t58.
        t55 = t58.
      ELSE.
        DATA t59 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
        DATA t60 TYPE REF TO zif_lnt_progress.
        DATA(t61) = CAST zif_lnt_progress( t44 ).
        t60 = t61.
        DATA t62 TYPE string.
        DATA(t63) = |Run Syntax - |.
        DATA t64 TYPE string.
        DATA(t65) = CAST zif_lnt_object( t41 ).
        t64 = t65->get_name( ).
        DATA(t66) = strlen( t63 ).
        t62 = |{ t63 }{ t64 }|.
        t59 = t60->tick( i_text = t62 ).
        t55 = t59.
      ENDIF.
      t43 = t55.
      DATA t67 TYPE abap_bool.
      DATA(t68) = CAST zif_lnt_object( t41 ).
      t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t67 = abap_true.
        DATA(t69) = VALUE int8( ).
        DATA(t70) = VALUE int8( ).
        DATA t71 TYPE f.
        DATA(t72) = 0.
        t71 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        IF t71 <> trunc( t71 ) OR t71 < range_check_lo_n2gosa7pa2gv OR t71 > range_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t70 = t71.
        t69 = t70.
        DATA t73 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t74 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t75) = CAST zif_lnt_registry( me->reg ).
        DATA t76 TYPE REF TO zcl_lnt_abap_object.
        DATA(t77) = CAST zif_lnt_object( t41 ).
        DATA t78 TYPE REF TO object.
        t78 = t77.
        t76 ?= t78.
        t74 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t75 i_object_19cd = t76 ).
        t73 = t74->run( ).
        DATA(t79) = VALUE abap_bool( ).
        DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_irun_input.
        DATA(t82) = CAST zcl_lnt_irun_input( t2 ).
        t81 = t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t83.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = CAST zcl_lnt_irun_input( t81 ).
        IF t85 IS INITIAL.
          t84 = abap_true.
        ENDIF.
        IF t84 = abap_true.
          DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t86.
          t83 = t86.
        ELSE.
          DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t88 TYPE REF TO zcl_lnt_irun_input.
          DATA(t89) = CAST zcl_lnt_irun_input( t81 ).
          t88 = t89.
          t87 = t88->output_performance.
          t83 = t87.
        ENDIF.
        t80 = t83.
        DATA t90 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA(t92) = abap_true.
          DATA(t93) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t93->has = abap_true.
          t93->value = t92.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t94.
          t90 = t94.
        ENDIF.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE abap_bool( ).
        IF t80 IS BOUND.
          t95 = t80->has.
        ENDIF.
        IF t90 IS BOUND.
          t96 = t90->has.
        ENDIF.
        IF t95 = t96.
          IF t95 = abap_false.
            t79 = abap_true.
          ELSEIF t80->value = t90->value.
            t79 = abap_true.
          ENDIF.
        ENDIF.
        IF t79 = abap_true.
          DATA(t97) = CAST zcl_lnt_syntax_performance( me->syntax_performance ).
          DATA t98 TYPE REF TO zcl_lnt_abap_object.
          DATA(t99) = CAST zif_lnt_object( t41 ).
          DATA t100 TYPE REF TO object.
          t100 = t99.
          t98 ?= t100.
          DATA(t101) = VALUE int8( ).
          DATA(t102) = VALUE f( ).
          DATA t103 TYPE f.
          DATA(t104) = 0.
          t103 = zlnt_runtime_tele_970d5104e5f4=>now( ).
          DATA(t105) = VALUE f( ).
          DATA(t106) = VALUE int8( ).
          DATA(t107) = t69.
          IF t107 < range_i_check_lo_n2gosa7pa2gv OR t107 > range_int_check_hi_2gosa7pa2gv.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t106 = t107.
          t105 = t106.
          t102 = t103 - t105.
          IF t102 <> trunc( t102 ) OR t102 < range_check_lo_n2gosa7pa2gv OR t102 > range_check_hi_2gosa7pa2gv.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t101 = t102.
          t97->push( i_obj_1ed0 = t98 i_runtime = t101 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t109.
    DATA t110 TYPE REF TO zcl_lnt_irun_input.
    DATA(t111) = CAST zcl_lnt_irun_input( t2 ).
    t110 = t111.
    DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t112.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = CAST zcl_lnt_irun_input( t110 ).
    IF t114 IS INITIAL.
      t113 = abap_true.
    ENDIF.
    IF t113 = abap_true.
      DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t115.
      t112 = t115.
    ELSE.
      DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t117 TYPE REF TO zcl_lnt_irun_input.
      DATA(t118) = CAST zcl_lnt_irun_input( t110 ).
      t117 = t118.
      t116 = t117->output_performance.
      t112 = t116.
    ENDIF.
    t109 = t112.
    DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t119.
    DATA(t120) = abap_true.
    IF t120 = abap_true.
      DATA(t121) = abap_true.
      DATA(t122) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t122->has = abap_true.
      t122->value = t121.
      t119 = t122.
    ELSE.
      DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t123.
      t119 = t123.
    ENDIF.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = VALUE abap_bool( ).
    IF t109 IS BOUND.
      t124 = t109->has.
    ENDIF.
    IF t119 IS BOUND.
      t125 = t119->has.
    ENDIF.
    IF t124 = t125.
      IF t124 = abap_false.
        t108 = abap_true.
      ELSEIF t109->value = t119->value.
        t108 = abap_true.
      ENDIF.
    ENDIF.
    IF t108 = abap_true.
      DATA(t126) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t127) = |src/rules_runner.ts:82:7|.
      t126->source_location = t127.
      RAISE EXCEPTION t126.
      DATA(t128) = CAST zcl_lnt_syntax_performance( me->syntax_performance ).
      t128->output( ).
    ENDIF.
    DATA(t129) = VALUE abap_bool( ).
    DATA t130 TYPE REF TO zif_lnt_progress.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_progress.
    CLEAR t131.
    DATA t132 TYPE REF TO zcl_lnt_irun_input.
    DATA(t133) = CAST zcl_lnt_irun_input( t2 ).
    t132 = t133.
    DATA t134 TYPE REF TO zif_lnt_progress.
    CLEAR t134.
    DATA(t135) = VALUE abap_bool( ).
    DATA(t136) = CAST zcl_lnt_irun_input( t132 ).
    IF t136 IS INITIAL.
      t135 = abap_true.
    ENDIF.
    IF t135 = abap_true.
      DATA t137 TYPE REF TO zif_lnt_progress.
      CLEAR t137.
      t134 = t137.
    ELSE.
      DATA t138 TYPE REF TO zif_lnt_progress.
      DATA t139 TYPE REF TO zcl_lnt_irun_input.
      DATA(t140) = CAST zcl_lnt_irun_input( t132 ).
      t139 = t140.
      t138 = t139->progress.
      t134 = t138.
    ENDIF.
    t131 = t134.
    t130 = t131.
    DATA(t141) = VALUE abap_bool( ).
    DATA(t142) = VALUE abap_bool( ).
    DATA(t143) = VALUE abap_bool( ).
    DATA(t144) = CAST zif_lnt_progress( t130 ).
    IF t144 IS INITIAL.
      t143 = abap_true.
    ENDIF.
    t142 = xsdbool( t143 = abap_false ).
    IF t142 = abap_true.
      DATA t145 TYPE REF TO zif_lnt_progress.
      DATA(t146) = CAST zif_lnt_progress( t130 ).
      t145 = t146.
      DATA t147 TYPE int8.
      DATA t148 TYPE i.
      DATA(t149) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
      t148 = lines( t149->items ).
      t147 = t148.
      DATA(t150) = |Initialize Rules|.
      t145->set( i_total = t147 i_text = t150 ).
    ENDIF.
    DATA(t151) = abap_false.
    t141 = t151.
    t129 = t141.
    DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    DATA t153 TYPE REF TO zif_lnt_rule.
    CLEAR t153.
    DATA t154 TYPE REF TO object.
    CLEAR t154.
    LOOP AT t152->items INTO t154.
      t153 ?= t154.
      DATA(t155) = VALUE int8( ).
      DATA(t156) = VALUE int8( ).
      DATA t157 TYPE f.
      DATA(t158) = 0.
      t157 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      IF t157 <> trunc( t157 ) OR t157 < range_check_lo_n2gosa7pa2gv OR t157 > range_check_hi_2gosa7pa2gv.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t156 = t157.
      t155 = t156.
      DATA(t159) = VALUE abap_bool( ).
      DATA t160 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_irun_input.
      DATA(t162) = CAST zcl_lnt_irun_input( t2 ).
      t161 = t162.
      DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t163.
      DATA(t164) = VALUE abap_bool( ).
      DATA(t165) = CAST zcl_lnt_irun_input( t161 ).
      IF t165 IS INITIAL.
        t164 = abap_true.
      ENDIF.
      IF t164 = abap_true.
        DATA t166 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t166.
        t163 = t166.
      ELSE.
        DATA t167 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t168 TYPE REF TO zcl_lnt_irun_input.
        DATA(t169) = CAST zcl_lnt_irun_input( t161 ).
        t168 = t169.
        t167 = t168->output_performance.
        t163 = t167.
      ENDIF.
      t160 = t163.
      DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t170.
      DATA(t171) = abap_true.
      IF t171 = abap_true.
        DATA(t172) = abap_true.
        DATA(t173) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t173->has = abap_true.
        t173->value = t172.
        t170 = t173.
      ELSE.
        DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t174.
        t170 = t174.
      ENDIF.
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = VALUE abap_bool( ).
      IF t160 IS BOUND.
        t175 = t160->has.
      ENDIF.
      IF t170 IS BOUND.
        t176 = t170->has.
      ENDIF.
      IF t175 = t176.
        IF t175 = abap_false.
          t159 = abap_true.
        ELSEIF t160->value = t170->value.
          t159 = abap_true.
        ENDIF.
      ENDIF.
      IF t159 = abap_true.
        DATA(t177) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t178) = |src/rules_runner.ts:90:9|.
        t177->source_location = t178.
        RAISE EXCEPTION t177.
      ELSE.
        DATA t179 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
        CLEAR t179.
        DATA t180 TYPE REF TO zif_lnt_progress.
        CLEAR t180.
        DATA t181 TYPE REF TO zif_lnt_progress.
        CLEAR t181.
        DATA t182 TYPE REF TO zcl_lnt_irun_input.
        DATA(t183) = CAST zcl_lnt_irun_input( t2 ).
        t182 = t183.
        DATA t184 TYPE REF TO zif_lnt_progress.
        CLEAR t184.
        DATA(t185) = VALUE abap_bool( ).
        DATA(t186) = CAST zcl_lnt_irun_input( t182 ).
        IF t186 IS INITIAL.
          t185 = abap_true.
        ENDIF.
        IF t185 = abap_true.
          DATA t187 TYPE REF TO zif_lnt_progress.
          CLEAR t187.
          t184 = t187.
        ELSE.
          DATA t188 TYPE REF TO zif_lnt_progress.
          DATA t189 TYPE REF TO zcl_lnt_irun_input.
          DATA(t190) = CAST zcl_lnt_irun_input( t182 ).
          t189 = t190.
          t188 = t189->progress.
          t184 = t188.
        ENDIF.
        t181 = t184.
        t180 = t181.
        DATA t191 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
        CLEAR t191.
        DATA(t192) = VALUE abap_bool( ).
        DATA(t193) = CAST zif_lnt_progress( t180 ).
        IF t193 IS INITIAL.
          t192 = abap_true.
        ENDIF.
        IF t192 = abap_true.
          DATA t194 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
          CLEAR t194.
          t191 = t194.
        ELSE.
          DATA t195 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
          DATA t196 TYPE REF TO zif_lnt_progress.
          DATA(t197) = CAST zif_lnt_progress( t180 ).
          t196 = t197.
          DATA t198 TYPE string.
          DATA(t199) = |Initialize Rules - |.
          DATA t200 TYPE string.
          DATA t201 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t202) = CAST zif_lnt_rule( t153 ).
          t201 = t202->get_metadata( ).
          t200 = t201->key.
          DATA(t203) = strlen( t199 ).
          t198 = |{ t199 }{ t200 }|.
          t195 = t196->tick( i_text = t198 ).
          t191 = t195.
        ENDIF.
        t179 = t191.
      ENDIF.
      DATA(t204) = CAST zif_lnt_rule( t153 ).
      DATA t205 TYPE REF TO zif_lnt_rule.
      DATA(t206) = CAST zif_lnt_rule( t153 ).
      DATA(t207) = CAST zif_lnt_registry( me->reg ).
      t205 = t206->initialize( i_reg_f149 = t207 ).
      DATA(t208) = VALUE abap_bool( ).
      DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t209.
      DATA t210 TYPE REF TO zcl_lnt_irun_input.
      DATA(t211) = CAST zcl_lnt_irun_input( t2 ).
      t210 = t211.
      DATA t212 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t212.
      DATA(t213) = VALUE abap_bool( ).
      DATA(t214) = CAST zcl_lnt_irun_input( t210 ).
      IF t214 IS INITIAL.
        t213 = abap_true.
      ENDIF.
      IF t213 = abap_true.
        DATA t215 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t215.
        t212 = t215.
      ELSE.
        DATA t216 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t217 TYPE REF TO zcl_lnt_irun_input.
        DATA(t218) = CAST zcl_lnt_irun_input( t210 ).
        t217 = t218.
        t216 = t217->output_performance.
        t212 = t216.
      ENDIF.
      t209 = t212.
      DATA t219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t219.
      DATA(t220) = abap_true.
      IF t220 = abap_true.
        DATA(t221) = abap_true.
        DATA(t222) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t222->has = abap_true.
        t222->value = t221.
        t219 = t222.
      ELSE.
        DATA t223 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t223.
        t219 = t223.
      ENDIF.
      DATA(t224) = VALUE abap_bool( ).
      DATA(t225) = VALUE abap_bool( ).
      IF t209 IS BOUND.
        t224 = t209->has.
      ENDIF.
      IF t219 IS BOUND.
        t225 = t219->has.
      ENDIF.
      IF t224 = t225.
        IF t224 = abap_false.
          t208 = abap_true.
        ELSEIF t209->value = t219->value.
          t208 = abap_true.
        ENDIF.
      ENDIF.
      IF t208 = abap_true.
        DATA(t226) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t227) = |src/rules_runner.ts:101:9|.
        t226->source_location = t227.
        RAISE EXCEPTION t226.
      ENDIF.
      DATA t228 TYPE REF TO zlnt_runtime_map__117a2401283c.
      DATA(t229) = CAST zlnt_runtime_map__117a2401283c( t3 ).
      DATA t230 TYPE string.
      DATA t231 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t232) = CAST zif_lnt_rule( t153 ).
      t231 = t232->get_metadata( ).
      t230 = t231->key.
      DATA(t233) = CONV int8( 0 ).
      t228 = t229->set( p0 = t230 p1 = t233 ).
    ENDLOOP.
    DATA(t234) = VALUE abap_bool( ).
    DATA t235 TYPE REF TO zif_lnt_progress.
    CLEAR t235.
    DATA t236 TYPE REF TO zif_lnt_progress.
    CLEAR t236.
    DATA t237 TYPE REF TO zcl_lnt_irun_input.
    DATA(t238) = CAST zcl_lnt_irun_input( t2 ).
    t237 = t238.
    DATA t239 TYPE REF TO zif_lnt_progress.
    CLEAR t239.
    DATA(t240) = VALUE abap_bool( ).
    DATA(t241) = CAST zcl_lnt_irun_input( t237 ).
    IF t241 IS INITIAL.
      t240 = abap_true.
    ENDIF.
    IF t240 = abap_true.
      DATA t242 TYPE REF TO zif_lnt_progress.
      CLEAR t242.
      t239 = t242.
    ELSE.
      DATA t243 TYPE REF TO zif_lnt_progress.
      DATA t244 TYPE REF TO zcl_lnt_irun_input.
      DATA(t245) = CAST zcl_lnt_irun_input( t237 ).
      t244 = t245.
      t243 = t244->progress.
      t239 = t243.
    ENDIF.
    t236 = t239.
    t235 = t236.
    DATA(t246) = VALUE abap_bool( ).
    DATA(t247) = VALUE abap_bool( ).
    DATA(t248) = VALUE abap_bool( ).
    DATA(t249) = CAST zif_lnt_progress( t235 ).
    IF t249 IS INITIAL.
      t248 = abap_true.
    ENDIF.
    t247 = xsdbool( t248 = abap_false ).
    IF t247 = abap_true.
      DATA t250 TYPE REF TO zif_lnt_progress.
      DATA(t251) = CAST zif_lnt_progress( t235 ).
      t250 = t251.
      DATA t252 TYPE int8.
      DATA t253 TYPE i.
      DATA(t254) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
      t253 = lines( t254->items ).
      t252 = t253.
      DATA(t255) = |Finding Issues|.
      t250->set( i_total = t252 i_text = t255 ).
    ENDIF.
    DATA(t256) = abap_false.
    t246 = t256.
    t234 = t246.
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t258 TYPE REF TO zif_lnt_object.
    CLEAR t258.
    DATA t259 TYPE REF TO object.
    CLEAR t259.
    LOOP AT t257->items INTO t259.
      t258 ?= t259.
      DATA t260 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
      CLEAR t260.
      DATA t261 TYPE REF TO zif_lnt_progress.
      CLEAR t261.
      DATA t262 TYPE REF TO zif_lnt_progress.
      CLEAR t262.
      DATA t263 TYPE REF TO zcl_lnt_irun_input.
      DATA(t264) = CAST zcl_lnt_irun_input( t2 ).
      t263 = t264.
      DATA t265 TYPE REF TO zif_lnt_progress.
      CLEAR t265.
      DATA(t266) = VALUE abap_bool( ).
      DATA(t267) = CAST zcl_lnt_irun_input( t263 ).
      IF t267 IS INITIAL.
        t266 = abap_true.
      ENDIF.
      IF t266 = abap_true.
        DATA t268 TYPE REF TO zif_lnt_progress.
        CLEAR t268.
        t265 = t268.
      ELSE.
        DATA t269 TYPE REF TO zif_lnt_progress.
        DATA t270 TYPE REF TO zcl_lnt_irun_input.
        DATA(t271) = CAST zcl_lnt_irun_input( t263 ).
        t270 = t271.
        t269 = t270->progress.
        t265 = t269.
      ENDIF.
      t262 = t265.
      t261 = t262.
      DATA t272 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
      CLEAR t272.
      DATA(t273) = VALUE abap_bool( ).
      DATA(t274) = CAST zif_lnt_progress( t261 ).
      IF t274 IS INITIAL.
        t273 = abap_true.
      ENDIF.
      IF t273 = abap_true.
        DATA t275 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
        CLEAR t275.
        t272 = t275.
      ELSE.
        DATA t276 TYPE REF TO zcl_lnt_builtin_f94a6ae8.
        DATA t277 TYPE REF TO zif_lnt_progress.
        DATA(t278) = CAST zif_lnt_progress( t261 ).
        t277 = t278.
        DATA t279 TYPE string.
        DATA t280 TYPE string.
        DATA t281 TYPE string.
        DATA(t282) = |Finding Issues - |.
        DATA t283 TYPE string.
        DATA(t284) = CAST zif_lnt_object( t258 ).
        t283 = t284->get_type( ).
        DATA(t285) = strlen( t282 ).
        t281 = |{ t282 }{ t283 }|.
        DATA(t286) = | |.
        DATA(t287) = strlen( t281 ).
        t280 = |{ t281 }{ t286 }|.
        DATA t288 TYPE string.
        DATA(t289) = CAST zif_lnt_object( t258 ).
        t288 = t289->get_name( ).
        DATA(t290) = strlen( t280 ).
        t279 = |{ t280 }{ t288 }|.
        t276 = t277->tick( i_text = t279 ).
        t272 = t276.
      ENDIF.
      t260 = t272.
      DATA(t291) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
      DATA t292 TYPE REF TO zif_lnt_rule.
      CLEAR t292.
      DATA t293 TYPE REF TO object.
      CLEAR t293.
      LOOP AT t291->items INTO t293.
        t292 ?= t293.
        DATA(t294) = VALUE int8( ).
        DATA(t295) = VALUE int8( ).
        DATA t296 TYPE f.
        DATA(t297) = 0.
        t296 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        IF t296 <> trunc( t296 ) OR t296 < range_check_lo_n2gosa7pa2gv OR t296 > range_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t295 = t296.
        t294 = t295.
        DATA(t298) = VALUE i( ).
        DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t300) = CAST zif_lnt_rule( t292 ).
        DATA(t301) = CAST zif_lnt_object( t258 ).
        t299 = t300->run( i_obj_1ed0 = t301 ).
        DATA t302 TYPE REF TO zcl_lnt_issue.
        CLEAR t302.
        DATA t303 TYPE REF TO object.
        CLEAR t303.
        LOOP AT t299->items INTO t303.
          t302 ?= t303.
          DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
          DATA(t305) = CAST zcl_lnt_issue( t302 ).
          APPEND t305 TO t304->items.
        ENDLOOP.
        DATA t306 TYPE i.
        DATA(t307) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
        t306 = lines( t307->items ).
        t298 = t306.
        DATA(t308) = VALUE int8( ).
        DATA(t309) = VALUE int8( ).
        DATA(t310) = VALUE f( ).
        DATA t311 TYPE f.
        DATA(t312) = 0.
        t311 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        DATA(t313) = VALUE f( ).
        DATA(t314) = VALUE int8( ).
        DATA(t315) = t294.
        IF t315 < range_i_check_lo_n2gosa7pa2gv OR t315 > range_int_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t314 = t315.
        t313 = t314.
        t310 = t311 - t313.
        IF t310 <> trunc( t310 ) OR t310 < range_check_lo_n2gosa7pa2gv OR t310 > range_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t309 = t310.
        t308 = t309.
        DATA t316 TYPE REF TO zlnt_runtime_map__117a2401283c.
        CLEAR t316.
        DATA(t317) = CAST zlnt_runtime_map__117a2401283c( t3 ).
        DATA t318 TYPE string.
        DATA t319 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t320) = CAST zif_lnt_rule( t292 ).
        t319 = t320->get_metadata( ).
        t318 = t319->key.
        DATA t321 TYPE int8.
        DATA t322 TYPE int8.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        DATA(t324) = CAST zlnt_runtime_map__117a2401283c( t3 ).
        DATA t325 TYPE string.
        DATA t326 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t327) = CAST zif_lnt_rule( t292 ).
        t326 = t327->get_metadata( ).
        t325 = t326->key.
        t323 = t324->get( p0 = t325 ).
        t322 = t323->value.
        DATA(t328) = t308.
        t321 = t322 + t328.
        IF t321 < range_int8_bound_min OR t321 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t316 = t317->set( p0 = t318 p1 = t321 ).
      ENDLOOP.
    ENDLOOP.
    DATA(t329) = VALUE abap_bool( ).
    DATA t330 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t330.
    DATA t331 TYPE REF TO zcl_lnt_irun_input.
    DATA(t332) = CAST zcl_lnt_irun_input( t2 ).
    t331 = t332.
    DATA t333 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t333.
    DATA(t334) = VALUE abap_bool( ).
    DATA(t335) = CAST zcl_lnt_irun_input( t331 ).
    IF t335 IS INITIAL.
      t334 = abap_true.
    ENDIF.
    IF t334 = abap_true.
      DATA t336 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t336.
      t333 = t336.
    ELSE.
      DATA t337 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t338 TYPE REF TO zcl_lnt_irun_input.
      DATA(t339) = CAST zcl_lnt_irun_input( t331 ).
      t338 = t339.
      t337 = t338->output_performance.
      t333 = t337.
    ENDIF.
    t330 = t333.
    DATA t340 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t340.
    DATA(t341) = abap_true.
    IF t341 = abap_true.
      DATA(t342) = abap_true.
      DATA(t343) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t343->has = abap_true.
      t343->value = t342.
      t340 = t343.
    ELSE.
      DATA t344 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t344.
      t340 = t344.
    ENDIF.
    DATA(t345) = VALUE abap_bool( ).
    DATA(t346) = VALUE abap_bool( ).
    IF t330 IS BOUND.
      t345 = t330->has.
    ENDIF.
    IF t340 IS BOUND.
      t346 = t340->has.
    ENDIF.
    IF t345 = t346.
      IF t345 = abap_false.
        t329 = abap_true.
      ELSEIF t330->value = t340->value.
        t329 = abap_true.
      ENDIF.
    ENDIF.
    IF t329 = abap_true.
      DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t348.
      t347 = t348.
      DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t350) = CAST zlnt_runtime_map__117a2401283c( t3 ).
      t349 = t350->keys( ).
      DATA(t351) = VALUE string( ).
      LOOP AT t349->items INTO t351.
        DATA(t352) = VALUE abap_bool( ).
        DATA t353 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        DATA(t355) = CAST zlnt_runtime_map__117a2401283c( t3 ).
        DATA(t356) = t351.
        t354 = t355->get( p0 = t356 ).
        t353 = t354.
        DATA t357 TYPE i.
        DATA(t358) = 100.
        t357 = t358.
        DATA(t359) = VALUE abap_bool( ).
        DATA(t360) = VALUE abap_bool( ).
        DATA(t361) = VALUE abap_bool( ).
        DATA(t362) = CAST zlnt_runtime_opti_4a236cd5714d( t353 ).
        IF t362 IS INITIAL.
          t361 = abap_true.
        ELSEIF t362->has = abap_false.
          t361 = abap_true.
        ENDIF.
        t360 = xsdbool( t361 = abap_false ).
        t359 = t360.
        IF t360 = abap_true.
          DATA t363 TYPE abap_bool.
          DATA t364 TYPE int8.
          DATA(t365) = CAST zlnt_runtime_opti_4a236cd5714d( t353 ).
          t364 = t365->value.
          DATA t366 TYPE int8.
          DATA(t367) = t357.
          t366 = t367.
          t363 = xsdbool( t364 > t366 ).
          t359 = t363.
        ENDIF.
        t352 = t359.
        IF t352 = abap_true.
          DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
          DATA t369 TYPE REF TO zcl_lnt_shape_45cab92f.
          DATA(t370) = t351.
          DATA t371 TYPE int8.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          DATA(t373) = CAST zlnt_runtime_map__117a2401283c( t3 ).
          DATA(t374) = t351.
          t372 = t373->get( p0 = t374 ).
          t371 = t372->value.
          t369 = NEW zcl_lnt_shape_45cab92f( i_name = t370 i_time = t371 ).
          APPEND t369 TO t368->items.
        ENDIF.
      ENDLOOP.
      DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t375.
      DATA t376 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t377) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
      t376 = t377.
      DATA t378 TYPE i.
      DATA(t379) = 1.
      t378 = t379.
      DO.
        DATA t380 TYPE abap_bool.
        DATA(t381) = t378.
        DATA t382 TYPE i.
        DATA(t383) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
        t382 = lines( t383->items ).
        t380 = xsdbool( t381 < t382 ).
        IF t380 = abap_false.
          EXIT.
        ENDIF.
        DATA t384 TYPE i.
        DATA(t385) = t378.
        t384 = t385.
        DO.
          DATA t386 TYPE abap_bool.
          DATA(t387) = t384.
          DATA(t388) = 0.
          t386 = xsdbool( t387 > t388 ).
          IF t386 = abap_false.
            EXIT.
          ENDIF.
          DATA t389 TYPE REF TO zcl_lnt_shape_45cab92f.
          DATA t390 TYPE REF TO zcl_lnt_shape_45cab92f.
          DATA(t391) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
          DATA t392 TYPE i.
          DATA(t393) = t384.
          DATA(t394) = 1.
          t392 = t393 - t394.
          t392 = t392 + 1.
          DATA t395 TYPE REF TO object.
          CLEAR t395.
          READ TABLE t391->items INDEX t392 INTO t395.
          t390 ?= t395.
          t389 = t390.
          DATA t396 TYPE REF TO zcl_lnt_shape_45cab92f.
          DATA t397 TYPE REF TO zcl_lnt_shape_45cab92f.
          DATA(t398) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
          DATA(t399) = t384.
          t399 = t399 + 1.
          DATA t400 TYPE REF TO object.
          CLEAR t400.
          READ TABLE t398->items INDEX t399 INTO t400.
          t397 ?= t400.
          t396 = t397.
          DATA(t401) = VALUE abap_bool( ).
          DATA t402 TYPE int8.
          DATA t403 TYPE int8.
          DATA(t404) = CAST zcl_lnt_shape_45cab92f( t396 ).
          t403 = t404->time.
          DATA t405 TYPE int8.
          DATA(t406) = CAST zcl_lnt_shape_45cab92f( t389 ).
          t405 = t406->time.
          t402 = t403 - t405.
          IF t402 < range_int8_bound_min OR t402 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          DATA(t407) = CONV int8( 0 ).
          t401 = xsdbool( t402 > t407 ).
          IF t401 = abap_true.
            DATA t408 TYPE REF TO zcl_lnt_shape_45cab92f.
            DATA t409 TYPE REF TO zcl_lnt_shape_45cab92f.
            DATA(t410) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
            DATA t411 TYPE i.
            DATA(t412) = t384.
            DATA(t413) = 1.
            t411 = t412 - t413.
            t411 = t411 + 1.
            DATA t414 TYPE REF TO object.
            CLEAR t414.
            READ TABLE t410->items INDEX t411 INTO t414.
            t409 ?= t414.
            t408 = t409.
            DATA(t415) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
            DATA t416 TYPE i.
            DATA(t417) = t384.
            DATA(t418) = 1.
            t416 = t417 - t418.
            DATA t419 TYPE REF TO zcl_lnt_shape_45cab92f.
            DATA(t420) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
            DATA(t421) = t384.
            t421 = t421 + 1.
            DATA t422 TYPE REF TO object.
            CLEAR t422.
            READ TABLE t420->items INDEX t421 INTO t422.
            t419 ?= t422.
            t416 = t416 + 1.
            DATA t423 TYPE REF TO object.
            CLEAR t423.
            CLEAR t423.
            WHILE lines( t415->items ) < t416.
              APPEND t423 TO t415->items.
            ENDWHILE.
            MODIFY t415->items FROM t419 INDEX t416.
            DATA(t424) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
            DATA(t425) = t384.
            DATA(t426) = CAST zcl_lnt_shape_45cab92f( t408 ).
            t425 = t425 + 1.
            DATA t427 TYPE REF TO object.
            CLEAR t427.
            CLEAR t427.
            WHILE lines( t424->items ) < t425.
              APPEND t427 TO t424->items.
            ENDWHILE.
            MODIFY t424->items FROM t426 INDEX t425.
            DATA t428 TYPE i.
            DATA(t429) = t384.
            DATA(t430) = 1.
            t428 = t429 - t430.
            t384 = t428.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA t431 TYPE i.
        DATA(t432) = t378.
        DATA(t433) = 1.
        t431 = t432 + t433.
        t378 = t431.
      ENDDO.
      DATA(t434) = CAST zlnt_runtime_arra_c22708faf2e3( t376 ).
      t375 = t434.
      DATA(t435) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
      DATA t436 TYPE REF TO zcl_lnt_shape_45cab92f.
      CLEAR t436.
      DATA t437 TYPE REF TO object.
      CLEAR t437.
      LOOP AT t435->items INTO t437.
        t436 ?= t437.
        DATA(t438) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t439) = |src/rules_runner.ts:126:9|.
        t438->source_location = t439.
        RAISE EXCEPTION t438.
      ENDLOOP.
    ENDIF.
    DATA t440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t441) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t440 = me->exclude_issues( i_issues = t441 ).
    result = t440.

  ENDMETHOD.

  METHOD exclude_issues.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t9 TYPE REF TO zif_lnt_configuration.
    DATA(t10) = CAST zif_lnt_registry( me->reg ).
    t9 = t10->get_config( ).
    t8 = t9->get_global( ).
    t7 = t8->no_issues.
    t6 = t7.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t11.
    DATA t12 TYPE abap_bool.
    DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t6 ).
    t12 = xsdbool( t13 IS BOUND ).
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t6 ).
      t14 = t15.
      t11 = t14.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    DATA(t22) = VALUE string( ).
    LOOP AT t21->items INTO t22.
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
      DATA t24 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t24.
      DATA(t25) = t22.
      DATA(t26) = |i|.
      CREATE OBJECT t24 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t25 flags = t26.
      APPEND t24 TO t23->items.
    ENDLOOP.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t18 = t27.
    t17 = t18.
    DATA t28 TYPE abap_bool.
    DATA t29 TYPE i.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t29 = lines( t30->items ).
    DATA(t31) = 0.
    t28 = xsdbool( t29 > t31 ).
    IF t28 = abap_true.
      DATA t32 TYPE i.
      DATA t33 TYPE i.
      DATA t34 TYPE i.
      DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t34 = lines( t35->items ).
      DATA(t36) = 1.
      t33 = t34 - t36.
      t32 = t33.
      DO.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t32.
        DATA(t39) = 0.
        t37 = xsdbool( t38 >= t39 ).
        IF t37 = abap_false.
          EXIT.
        ENDIF.
        DATA t40 TYPE string.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_issue.
        DATA t43 TYPE REF TO zcl_lnt_issue.
        DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t45) = t32.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        READ TABLE t44->items INDEX t45 INTO t46.
        t43 ?= t46.
        t42 = t43.
        DATA t47 TYPE string.
        DATA t48 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t49) = CAST zcl_lnt_issue( t42 ).
        t48 = t49->data_56cc.
        t47 = t48->filename.
        t41 = t47.
        t40 = t41.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t40.
        DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
        t50 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t51 i_exclude_patterns = t52 ).
        IF t50 = abap_true.
          DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t55) = t32.
          DATA(t56) = 1.
          t53 = t54->splice2( p0 = t55 p1 = t56 ).
        ENDIF.
        DATA t57 TYPE i.
        DATA(t58) = t32.
        DATA(t59) = 1.
        t57 = t58 - t59.
        t32 = t57.
      ENDDO.
    ENDIF.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_rules=>get_rules( ) ).
    DATA t61 TYPE REF TO zif_lnt_rule.
    CLEAR t61.
    DATA t62 TYPE REF TO object.
    CLEAR t62.
    LOOP AT t60->items INTO t62.
      t61 ?= t62.
      DATA t63 TYPE string.
      DATA t64 TYPE string.
      DATA t65 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t66) = CAST zif_lnt_rule( t61 ).
      t65 = t66->get_metadata( ).
      t64 = t65->key.
      t63 = t64.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t72 TYPE REF TO zif_lnt_configuration.
      DATA(t73) = CAST zif_lnt_registry( me->reg ).
      t72 = t73->get_config( ).
      DATA(t74) = t63.
      DATA(t75) = |exclude|.
      t71 = t72->read_by_key( i_rule = t74 i_key = t75 ).
      t70 = t71.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
      IF t78 IS NOT BOUND.
        t77 = abap_true.
      ELSE.
        t77 = xsdbool( t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t77 = abap_true.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t80.
        IF t80 IS BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t81 TYPE REF TO object.
          t81 = t80.
          t79->oval = t81.
        ENDIF.
        t76 = t79.
      ELSE.
        DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
        t76 = t82.
      ENDIF.
      t69 = t76.
      DATA t83 TYPE REF TO object.
      t83 = t69->as_ref( ).
      t68 ?= t83.
      t67 = t68.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE i.
      DATA(t86) = CAST zlnt_runtime_arra_8ecd6afe19e0( t67 ).
      t85 = lines( t86->items ).
      DATA(t87) = 0.
      t84 = xsdbool( t85 = t87 ).
      IF t84 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t91.
      t90 = t91.
      DATA(t92) = CAST zlnt_runtime_arra_8ecd6afe19e0( t67 ).
      DATA(t93) = VALUE string( ).
      LOOP AT t92->items INTO t93.
        DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
        DATA t95 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t95.
        DATA(t96) = t93.
        DATA(t97) = |i|.
        CREATE OBJECT t95 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t96 flags = t97.
        APPEND t95 TO t94->items.
      ENDLOOP.
      DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
      t89 = t98.
      t88 = t89.
      DATA t99 TYPE i.
      DATA t100 TYPE i.
      DATA t101 TYPE i.
      DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t101 = lines( t102->items ).
      DATA(t103) = 1.
      t100 = t101 - t103.
      t99 = t100.
      DO.
        DATA t104 TYPE abap_bool.
        DATA(t105) = t99.
        DATA(t106) = 0.
        t104 = xsdbool( t105 >= t106 ).
        IF t104 = abap_false.
          EXIT.
        ENDIF.
        DATA t107 TYPE abap_bool.
        DATA t108 TYPE string.
        DATA t109 TYPE REF TO zcl_lnt_issue.
        DATA t110 TYPE REF TO zcl_lnt_issue.
        DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t112) = t99.
        t112 = t112 + 1.
        DATA t113 TYPE REF TO object.
        CLEAR t113.
        READ TABLE t111->items INDEX t112 INTO t113.
        t110 ?= t113.
        t109 = t110.
        DATA t114 TYPE string.
        DATA t115 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t116) = CAST zcl_lnt_issue( t109 ).
        t115 = t116->data_56cc.
        t114 = t115->key.
        t108 = t114.
        DATA(t117) = t63.
        t107 = xsdbool( t108 <> t117 ).
        IF t107 = abap_true.
          DATA t118 TYPE i.
          DATA(t119) = t99.
          DATA(t120) = 1.
          t118 = t119 - t120.
          t99 = t118.
          CONTINUE.
        ENDIF.
        DATA t121 TYPE string.
        DATA t122 TYPE string.
        DATA t123 TYPE REF TO zcl_lnt_issue.
        DATA t124 TYPE REF TO zcl_lnt_issue.
        DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t126) = t99.
        t126 = t126 + 1.
        DATA t127 TYPE REF TO object.
        CLEAR t127.
        READ TABLE t125->items INDEX t126 INTO t127.
        t124 ?= t127.
        t123 = t124.
        DATA t128 TYPE string.
        DATA t129 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t130) = CAST zcl_lnt_issue( t123 ).
        t129 = t130->data_56cc.
        t128 = t129->filename.
        t122 = t128.
        t121 = t122.
        DATA t131 TYPE abap_bool.
        DATA(t132) = t121.
        DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
        t131 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t132 i_exclude_patterns = t133 ).
        IF t131 = abap_true.
          DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t136) = t99.
          DATA(t137) = 1.
          t134 = t135->splice2( p0 = t136 p1 = t137 ).
        ENDIF.
        DATA t138 TYPE i.
        DATA(t139) = t99.
        DATA(t140) = 1.
        t138 = t139 - t140.
        t99 = t138.
      ENDDO.
    ENDLOOP.
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t141.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1684_77b131f7340c.
  ENDMETHOD.
ENDCLASS.
