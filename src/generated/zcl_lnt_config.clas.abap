* TS: src/config.ts:8:1 Config
CLASS zcl_lnt_config DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_configuration.
    DATA config TYPE REF TO zcl_lnt_iconfig.
    METHODS constructor IMPORTING i_json TYPE string.
    CLASS-METHODS get_default IMPORTING i_ver TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_lang_ver TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_config.
    METHODS get_enabled_rules RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iconfig.
    METHODS read_by_key IMPORTING i_rule TYPE string i_key TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS read_by_rule IMPORTING i_rule TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS get_global RETURNING VALUE(result) TYPE REF TO zcl_lnt_iglobal_config.
    METHODS get_syntax_setttings RETURNING VALUE(result) TYPE REF TO zcl_lnt_isyntax_settings.
    METHODS get_release RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
    METHODS is_open_abap RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_version RETURNING VALUE(result) TYPE string.
    METHODS get_language_version RETURNING VALUE(result) TYPE string.
    METHODS check_version.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_config IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_json.
    DATA t2 TYPE REF TO zcl_lnt_iconfig.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = t1.
    t3 = zlnt_runtime_json_7c6b3012af76=>parse( t4 ).
    t2 = zlnt_runtime_mate_bdf12bf746ee=>project( t3 ).
    me->config = t2.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t7 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t8) = me->config.
    t7 = t8->global.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t5 = t11.
    IF t5 = abap_true.
      DATA(t13) = me->config.
      DATA t14 TYPE REF TO zcl_lnt_iglobal_config.
      DATA t15 TYPE REF TO zcl_lnt_config.
      DATA t16 TYPE REF TO zcl_lnt_config.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t16 = zcl_lnt_config=>get_default( i_ver = t17 i_lang_ver = t18 ).
      t15 = t16.
      DATA t19 TYPE REF TO zcl_lnt_iglobal_config.
      DATA t20 TYPE REF TO zcl_lnt_iconfig.
      DATA(t21) = t15.
      t20 = t21->config.
      t19 = t20->global.
      t14 = t19.
      t13->global = t14.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t24 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t25) = me->config.
    t24 = t25->syntax.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t23.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t22 = t28.
    IF t22 = abap_true.
      DATA(t30) = me->config.
      DATA t31 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA t32 TYPE REF TO zcl_lnt_config.
      DATA t33 TYPE REF TO zcl_lnt_config.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t33 = zcl_lnt_config=>get_default( i_ver = t34 i_lang_ver = t35 ).
      t32 = t33.
      DATA t36 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA t37 TYPE REF TO zcl_lnt_iconfig.
      DATA(t38) = t32.
      t37 = t38->config.
      t36 = t37->syntax.
      t31 = t36.
      t30->syntax = t31.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t42 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t43) = me->config.
    t42 = t43->syntax.
    t41 = t42->global_macros.
    t40 = t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t40.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    t39 = t46.
    IF t39 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t49) = me->config.
      t48 = t49->syntax.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t52.
        t50 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t53.
        t50 = t53.
      ENDIF.
      t48->global_macros = t50.
    ENDIF.
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t57 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t58) = me->config.
    t57 = t58->syntax.
    t56 = t57->global_constants.
    t55 = t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    t59 = t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = t55.
    IF t62 IS INITIAL.
      t61 = abap_true.
    ENDIF.
    t54 = t61.
    IF t54 = abap_true.
      DATA t63 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t64) = me->config.
      t63 = t64->syntax.
      DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t67.
        t65 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t68.
        t65 = t68.
      ENDIF.
      t63->global_constants = t65.
    ELSE.
      DATA t69 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t70) = me->config.
      t69 = t70->syntax.
      DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t71.
      DATA(t72) = abap_true.
      IF t72 = abap_true.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t75.
        t74 = t75.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t78) = t74.
        DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t80 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t81) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t84 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA(t85) = me->config.
        t84 = t85->syntax.
        t83 = t84->global_constants.
        t82 = t83.
        t80 = t81->fromarray( p0 = t82 ).
        t79 = t80->values( ).
        t77 = t78->concat( p0 = t79 ).
        t76 = t77.
        DATA(t86) = t76.
        t73 = t86.
        t71 = t73.
      ELSE.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t87.
        t71 = t87.
      ENDIF.
      t69->global_constants = t71.
    ENDIF.
    DATA(t88) = VALUE abap_bool( ).
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t91 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t92) = me->config.
    t91 = t92->syntax.
    t90 = t91->ambigious_voids.
    t89 = t90.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    t93 = t94.
    DATA(t95) = VALUE abap_bool( ).
    DATA(t96) = t89.
    IF t96 IS INITIAL.
      t95 = abap_true.
    ENDIF.
    t88 = t95.
    IF t88 = abap_true.
      DATA t97 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t98) = me->config.
      t97 = t98->syntax.
      DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t99.
      DATA(t100) = abap_true.
      IF t100 = abap_true.
        DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t101.
        t99 = t101.
      ELSE.
        DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t102.
        t99 = t102.
      ENDIF.
      t97->ambigious_voids = t99.
    ELSE.
      DATA t103 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t104) = me->config.
      t103 = t104->syntax.
      DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t105.
      DATA(t106) = abap_true.
      IF t106 = abap_true.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t109.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t112) = t108.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t114 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t115) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t118 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA(t119) = me->config.
        t118 = t119->syntax.
        t117 = t118->ambigious_voids.
        t116 = t117.
        t114 = t115->fromarray( p0 = t116 ).
        t113 = t114->values( ).
        t111 = t112->concat( p0 = t113 ).
        t110 = t111.
        DATA(t120) = t110.
        t107 = t120.
        t105 = t107.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t121.
        t105 = t121.
      ENDIF.
      t103->ambigious_voids = t105.
    ENDIF.
    DATA(t122) = VALUE abap_bool( ).
    DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t125 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t126) = me->config.
    t125 = t126->global.
    t124 = t125->skip_includes_without_main.
    t123 = t124.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    t127 = t128.
    DATA(t129) = VALUE abap_bool( ).
    DATA(t130) = t123.
    IF t130 IS INITIAL.
      t129 = abap_true.
    ELSEIF t130->has = abap_false.
      t129 = abap_true.
    ENDIF.
    t122 = t129.
    IF t122 = abap_true.
      DATA t131 TYPE REF TO zcl_lnt_iglobal_config.
      DATA(t132) = me->config.
      t131 = t132->global.
      DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t133.
      DATA(t134) = abap_true.
      IF t134 = abap_true.
        DATA(t135) = abap_false.
        DATA(t136) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t136->has = abap_true.
        t136->value = t135.
        t133 = t136.
      ELSE.
        DATA t137 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t137.
        t133 = t137.
      ENDIF.
      t131->skip_includes_without_main = t133.
    ENDIF.
    DATA(t138) = VALUE abap_bool( ).
    DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t141 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t142) = me->config.
    t141 = t142->global.
    t140 = t141->error_on_duplicate_filenames.
    t139 = t140.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    t143 = t144.
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = t139.
    IF t146 IS INITIAL.
      t145 = abap_true.
    ELSEIF t146->has = abap_false.
      t145 = abap_true.
    ENDIF.
    t138 = t145.
    IF t138 = abap_true.
      DATA t147 TYPE REF TO zcl_lnt_iglobal_config.
      DATA(t148) = me->config.
      t147 = t148->global.
      DATA t149 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t149.
      DATA(t150) = abap_true.
      IF t150 = abap_true.
        DATA(t151) = abap_false.
        DATA(t152) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t152->has = abap_true.
        t152->value = t151.
        t149 = t152.
      ELSE.
        DATA t153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t153.
        t149 = t153.
      ENDIF.
      t147->error_on_duplicate_filenames = t149.
    ENDIF.
    me->check_version( ).
  ENDMETHOD.

  METHOD get_default.
    DATA(t1) = i_ver.
    DATA(t2) = i_lang_ver.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t4 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t5 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA(t6) = NEW zlnt_runtime_map__abd6fd794ffb( ).
    t5 = t6.
    DATA(t7) = t5.
    t4 = t7.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_rules=>get_rules( ) ).
    t10 = t11.
    DATA t12 TYPE i.
    DATA t13 TYPE i.
    DATA(t14) = t10.
    t13 = lines( t14->items ).
    t12 = t13.
    DATA t15 TYPE i.
    DATA(t16) = 1.
    t15 = t16.
    DO.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t15.
      DATA(t19) = t12.
      t17 = xsdbool( t18 < t19 ).
      IF t17 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zif_lnt_rule.
      DATA t21 TYPE REF TO zif_lnt_rule.
      DATA t22 TYPE REF TO zif_lnt_rule.
      DATA(t23) = t10.
      DATA(t24) = t15.
      DATA t25 TYPE REF TO object.
      t25 = t23->get( p0 = t24 ).
      t22 ?= t25.
      t21 = t22.
      t20 = t21.
      DATA t26 TYPE i.
      DATA(t27) = t15.
      t26 = t27.
      DO.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t26.
        DATA(t30) = 0.
        t28 = xsdbool( t29 > t30 ).
        IF t28 = abap_false.
          EXIT.
        ENDIF.
        DATA t31 TYPE REF TO zif_lnt_rule.
        DATA t32 TYPE REF TO zif_lnt_rule.
        DATA t33 TYPE REF TO zif_lnt_rule.
        DATA(t34) = t10.
        DATA t35 TYPE i.
        DATA(t36) = t26.
        DATA(t37) = 1.
        t35 = t36 - t37.
        DATA t38 TYPE REF TO object.
        t38 = t34->get( p0 = t35 ).
        t33 ?= t38.
        t32 = t33.
        t31 = t32.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE i.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t43) = t31.
        t42 = t43->get_metadata( ).
        t41 = t42->key.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t46) = t20.
        t45 = t46->get_metadata( ).
        t44 = t45->key.
        t40 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t41 p1 = t44 ).
        DATA(t47) = 0.
        t39 = xsdbool( t40 <= t47 ).
        IF t39 = abap_true.
          EXIT.
        ENDIF.
        DATA(t48) = t10.
        DATA(t49) = t26.
        DATA(t50) = t31.
        t49 = t49 + 1.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        CLEAR t51.
        WHILE lines( t48->items ) < t49.
          APPEND t51 TO t48->items.
        ENDWHILE.
        MODIFY t48->items FROM t50 INDEX t49.
        DATA t52 TYPE i.
        DATA(t53) = t26.
        DATA(t54) = 1.
        t52 = t53 - t54.
        t26 = t52.
      ENDDO.
      DATA(t55) = t10.
      DATA(t56) = t26.
      DATA(t57) = t20.
      t56 = t56 + 1.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      CLEAR t58.
      WHILE lines( t55->items ) < t56.
        APPEND t58 TO t55->items.
      ENDWHILE.
      MODIFY t55->items FROM t57 INDEX t56.
      DATA t59 TYPE i.
      DATA(t60) = t15.
      DATA(t61) = 1.
      t59 = t60 + t61.
      t15 = t59.
    ENDDO.
    DATA(t62) = t10.
    t9 = t62.
    t8 = t9.
    DATA(t63) = t8.
    DATA t64 TYPE REF TO zif_lnt_rule.
    CLEAR t64.
    DATA t65 TYPE REF TO object.
    CLEAR t65.
    LOOP AT t63->items INTO t65.
      t64 ?= t65.
      DATA t66 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t66.
      DATA(t67) = t3.
      DATA t68 TYPE string.
      DATA t69 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t70) = t64.
      t69 = t70->get_metadata( ).
      t68 = t69->key.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      DATA(t73) = t64.
      t72 = t73->get_config_value( ).
      IF t72 IS BOUND.
        CREATE OBJECT t71.
        t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t74 TYPE REF TO object.
        t74 = t72.
        t71->oval = t74.
      ENDIF.
      t66 = t67->set( p0 = t68 p1 = t71 ).
    ENDLOOP.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t79) = t2.
    t78 = t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    t80 = t81.
    DATA(t82) = VALUE abap_bool( ).
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = t78.
    IF t84 IS INITIAL.
      t83 = abap_true.
    ELSEIF t84->has = abap_false.
      t83 = abap_true.
    ENDIF.
    t82 = xsdbool( t83 = abap_false ).
    t77 = t82.
    IF t77 = abap_true.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t88) = |\{\}|.
      t87 = zlnt_runtime_json_7c6b3012af76=>parse( t88 ).
      t86 = t87.
      DATA(t89) = t86.
      DATA(t90) = |release|.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA(t92) = VALUE string( ).
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t96) = t1.
      t95 = t96.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      t97 = t98.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = t95.
      IF t100 IS INITIAL.
        t99 = abap_true.
      ENDIF.
      t94 = t99.
      t93 = t94.
      IF t94 = abap_false.
        DATA(t101) = VALUE abap_bool( ).
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t103) = t1.
        t102 = t103.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t105) = |Cloud|.
        CREATE OBJECT t104.
        t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t104->sval = t105.
        IF t102 IS NOT BOUND.
          t101 = xsdbool( t104 IS NOT BOUND ).
        ELSE.
          t101 = t102->strict_equals( t104 ).
        ENDIF.
        t93 = t101.
      ENDIF.
      IF t93 = abap_true.
        DATA(t106) = VALUE string( ).
        DATA t107 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t107.
        DATA t108 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t108.
        DATA t109 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t109.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t109 = zcl_lnt_version_module=>release_b8cd.
        DATA(t110) = |Newest|.
        t108 = t109->get( p0 = t110 ).
        t107 = t108.
        t106 = t107->name.
        t92 = t106.
      ELSE.
        DATA(t111) = VALUE string( ).
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = VALUE string( ).
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t115) = t1.
        t114 = t115.
        IF t114 IS BOUND.
          t113 = t114->type_of( ).
        ELSE.
          t113 = `undefined`.
        ENDIF.
        DATA(t116) = |string|.
        t112 = xsdbool( t113 = t116 ).
        IF t112 = abap_true.
          DATA t117 TYPE string.
          DATA t118 TYPE REF TO zcl_lnt_abap_release.
          DATA t119 TYPE string.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t121) = t1.
          t120 = t121.
          t119 = t120->as_string( ).
          t118 = zcl_lnt_version_module=>version_to_abap_release( i_v = t119 ).
          t117 = t118->name.
          t111 = t117.
        ELSE.
          DATA t122 TYPE string.
          DATA t123 TYPE REF TO zcl_lnt_version_new.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t125) = t1.
          t124 = t125.
          DATA t126 TYPE REF TO object.
          t126 = t124->as_ref( ).
          t123 ?= t126.
          t122 = t123->release_3664.
          t111 = t122.
        ENDIF.
        t92 = t111.
      ENDIF.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t91->sval = t92.
      t89->put( p0 = t90 p1 = t91 ).
      DATA(t127) = t86.
      DATA(t128) = |language|.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t130 TYPE string.
      DATA(t131) = t2.
      t130 = t131->value.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t129->sval = t130.
      t127->put( p0 = t128 p1 = t129 ).
      DATA(t132) = t86.
      t85 = t132.
      t76 = t85.
    ELSE.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t135) = t1.
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t139) = t134.
      t138 = t139.
      IF t138 IS NOT BOUND.
        t137 = abap_true.
      ELSE.
        t137 = xsdbool( t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t137 = abap_true.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t143) = |\{\}|.
        t142 = zlnt_runtime_json_7c6b3012af76=>parse( t143 ).
        t141 = t142.
        DATA(t144) = t141.
        DATA(t145) = |release|.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        DATA(t147) = VALUE string( ).
        DATA t148 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t148.
        DATA t149 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t149.
        DATA t150 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t150.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t150 = zcl_lnt_version_module=>release_b8cd.
        DATA(t151) = |Newest|.
        t149 = t150->get( p0 = t151 ).
        t148 = t149.
        t147 = t148->name.
        CREATE OBJECT t146.
        t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t146->sval = t147.
        t144->put( p0 = t145 p1 = t146 ).
        DATA(t152) = t141.
        DATA(t153) = |language|.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t155) = |Normal|.
        CREATE OBJECT t154.
        t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t154->sval = t155.
        t152->put( p0 = t153 p1 = t154 ).
        DATA(t156) = t141.
        t140 = t156.
        t136 = t140.
      ELSE.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t158) = t134.
        t157 = t158.
        t136 = t157.
      ENDIF.
      t133 = t136.
      t76 = t133.
    ENDIF.
    t75 = t76.
    DATA t159 TYPE REF TO zcl_lnt_iconfig.
    CLEAR t159.
    DATA t160 TYPE REF TO zcl_lnt_iconfig.
    CLEAR t160.
    DATA t161 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t163) = |/src/**/*.*|.
    CREATE OBJECT t162.
    t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t162->sval = t163.
    DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t164.
    DATA(t165) = abap_true.
    IF t165 = abap_true.
      DATA(t166) = abap_false.
      DATA(t167) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t167->has = abap_true.
      t167->value = t166.
      t164 = t167.
    ELSE.
      DATA t168 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t168.
      t164 = t168.
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t169.
    DATA(t170) = abap_true.
    IF t170 = abap_true.
      DATA(t171) = abap_false.
      DATA(t172) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t172->has = abap_true.
      t172->value = t171.
      t169 = t172.
    ELSE.
      DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t173.
      t169 = t173.
    ENDIF.
    DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t174.
    DATA(t175) = abap_true.
    IF t175 = abap_true.
      DATA(t176) = abap_false.
      DATA(t177) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t177->has = abap_true.
      t177->value = t176.
      t174 = t177.
    ELSE.
      DATA t178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t178.
      t174 = t178.
    ENDIF.
    DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t179.
    DATA(t180) = abap_true.
    IF t180 = abap_true.
      DATA(t181) = abap_false.
      DATA(t182) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t182->has = abap_true.
      t182->value = t181.
      t179 = t182.
    ELSE.
      DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t183.
      t179 = t183.
    ENDIF.
    DATA t184 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t184.
    DATA(t185) = abap_true.
    IF t185 = abap_true.
      DATA(t186) = abap_false.
      DATA(t187) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t187->has = abap_true.
      t187->value = t186.
      t184 = t187.
    ELSE.
      DATA t188 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t188.
      t184 = t188.
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t189.
    DATA(t190) = abap_true.
    IF t190 = abap_true.
      DATA(t191) = abap_false.
      DATA(t192) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t192->has = abap_true.
      t192->value = t191.
      t189 = t192.
    ELSE.
      DATA t193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t193.
      t189 = t193.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t194.
    DATA(t195) = abap_true.
    IF t195 = abap_true.
      DATA(t196) = abap_false.
      DATA(t197) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t197->has = abap_true.
      t197->value = t196.
      t194 = t197.
    ELSE.
      DATA t198 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t198.
      t194 = t198.
    ENDIF.
    DATA t199 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t199.
    DATA(t200) = abap_true.
    IF t200 = abap_true.
      DATA(t201) = abap_false.
      DATA(t202) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t202->has = abap_true.
      t202->value = t201.
      t199 = t202.
    ELSE.
      DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t203.
      t199 = t203.
    ENDIF.
    DATA t204 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t204.
    DATA(t205) = abap_true.
    IF t205 = abap_true.
      DATA(t206) = abap_false.
      DATA(t207) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t207->has = abap_true.
      t207->value = t206.
      t204 = t207.
    ELSE.
      DATA t208 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t208.
      t204 = t208.
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t209.
    DATA(t210) = abap_true.
    IF t210 = abap_true.
      DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t211.
      t209 = t211.
    ELSE.
      DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t212.
      t209 = t212.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t213.
    DATA(t214) = abap_true.
    IF t214 = abap_true.
      DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t215.
      t213 = t215.
    ELSE.
      DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t216.
      t213 = t216.
    ENDIF.
    t161 = NEW zcl_lnt_iglobal_config( i_files = t162 i_skp_gnrtd_bpf_intrfcs = t164 i_skp_gnrtd_fnctn_grps = t169 i_skp_gnrtd_gtwy_clsss = t174 i_skp_gnrtd_prsstnt_clsss = t179 i_skip_generated_proxy_classes = t184 i_skp_gnrtd_prxy_intrfcs
    = t189 i_use_apack_dependencies = t194 i_skip_includes_without_main = t199 i_error_on_duplicate_filenames = t204 i_exclude = t209 i_no_issues = t213 ).
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t217.
    DATA(t218) = abap_true.
    IF t218 = abap_true.
      DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t219.
      DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t221.
      t220 = t221.
      DATA(t222) = t220.
      DATA t223 TYPE REF TO zcl_lnt_idependency.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA(t225) = abap_true.
      IF t225 = abap_true.
        DATA(t226) = |https://github.com/abaplint/deps|.
        DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t227->has = abap_true.
        t227->value = t226.
        t224 = t227.
      ELSE.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        t224 = t228.
      ENDIF.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t230.
      DATA(t231) = abap_true.
      IF t231 = abap_true.
        DATA(t232) = |/deps|.
        DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t233->has = abap_true.
        t233->value = t232.
        t230 = t233.
      ELSE.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        t230 = t234.
      ENDIF.
      DATA(t235) = |/src/**/*.*|.
      t223 = NEW zcl_lnt_idependency( i_url_8ce1 = t224 i_branch = t229 i_folder_5c67 = t230 i_files = t235 ).
      APPEND t223 TO t222->items.
      DATA(t236) = t220.
      t219 = t236.
      t217 = t219.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t237.
      t217 = t237.
    ENDIF.
    DATA t238 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = abap_true.
    IF t240 = abap_true.
      DATA(t241) = t75.
      t239 = t241.
    ELSE.
      DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t242.
      t239 = t242.
    ENDIF.
    DATA(t243) = |^(Z\|Y\|LCL_\|TY_\|LIF_)|.
    DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t244.
    DATA(t245) = abap_true.
    IF t245 = abap_true.
      DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t246.
      t244 = t246.
    ELSE.
      DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t247.
      t244 = t247.
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t248.
    DATA(t249) = abap_true.
    IF t249 = abap_true.
      DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t250.
      t248 = t250.
    ELSE.
      DATA t251 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t251.
      t248 = t251.
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t252.
    DATA(t253) = abap_true.
    IF t253 = abap_true.
      DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t254.
      t252 = t254.
    ELSE.
      DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t255.
      t252 = t255.
    ENDIF.
    t238 = NEW zcl_lnt_isyntax_settings( i_version = t239 i_error_namespace = t243 i_global_constants = t244 i_ambigious_voids = t248 i_global_macros_5535 = t252 ).
    DATA t256 TYPE REF TO zcl_lnt_irename_settings.
    CLEAR t256.
    DATA t257 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t257.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = t3.
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t260 TYPE REF TO object.
      t260 = t259.
      t258->oval = t260.
    ENDIF.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    t160 = NEW zcl_lnt_iconfig( i_global = t161 i_dependencies = t217 i_syntax = t238 i_rename = t256 i_app = t257 i_rules = t258 i_target_rules = t261 ).
    t159 = t160.
    DATA(t262) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t263) = |src/config.ts:69|.
    t262->source_location = t263.
    RAISE EXCEPTION t262.
  ENDMETHOD.

  METHOD get_enabled_rules.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_rules=>get_rules( ) ).
    DATA t4 TYPE REF TO zif_lnt_rule.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t3->items INTO t5.
      t4 ?= t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t10) = me->config.
      t9 = t10->rules.
      t8 = t9.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t8.
      IF t13 IS NOT BOUND.
        t12 = abap_true.
      ELSE.
        t12 = xsdbool( t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t14.
        t11 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t16) = t8.
        DATA t17 TYPE string.
        DATA t18 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t19) = t4.
        t18 = t19->get_metadata( ).
        t17 = t18->key.
        t15 = t16->get( p0 = t17 ).
        t11 = t15.
      ENDIF.
      t7 = t11.
      t6 = t7.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t23) = t6.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t24 = t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t22.
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      t26 = xsdbool( t27 = abap_false ).
      t21 = t26.
      t20 = t21.
      DATA(t29) = t20.
      IF t29 = abap_true.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        DATA(t32) = t6.
        IF t32 IS BOUND.
          t31 = t32.
        ENDIF.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t34) = abap_false.
        CREATE OBJECT t33.
        t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t33->bval = t34.
        IF t31 IS NOT BOUND.
          t30 = xsdbool( t33 IS NOT BOUND ).
        ELSE.
          t30 = t31->strict_equals( t33 ).
        ENDIF.
        IF t30 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t35) = VALUE abap_bool( ).
          DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t36.
          DATA(t37) = t6.
          IF t37 IS BOUND.
            t36 = t37.
          ENDIF.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t39) = abap_true.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          t38->bval = t39.
          IF t36 IS NOT BOUND.
            t35 = xsdbool( t38 IS NOT BOUND ).
          ELSE.
            t35 = t36->strict_equals( t38 ).
          ENDIF.
          IF t35 = abap_true.
            DATA(t40) = t1.
            DATA(t41) = t4.
            APPEND t41 TO t40->items.
          ELSE.
            DATA(t42) = VALUE abap_bool( ).
            DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t44) = t6.
            t43 = t44.
            DATA(t45) = VALUE abap_bool( ).
            DATA(t46) = VALUE abap_bool( ).
            DATA(t47) = VALUE abap_bool( ).
            DATA(t48) = t43.
            IF t48 IS INITIAL.
              t47 = abap_true.
            ENDIF.
            t46 = xsdbool( t47 = abap_false ).
            t45 = t46.
            IF t46 = abap_true.
              DATA(t49) = VALUE abap_bool( ).
              DATA(t50) = VALUE string( ).
              DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t52) = t43.
              t51 = t52.
              IF t51 IS BOUND.
                t50 = t51->type_of( ).
              ELSE.
                t50 = `undefined`.
              ENDIF.
              DATA(t53) = |object|.
              t49 = xsdbool( t50 = t53 ).
              t45 = t49.
            ENDIF.
            t42 = t45.
            IF t42 = abap_true.
              DATA(t54) = t4.
              DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t55.
              DATA(t56) = t6.
              IF t56 IS BOUND.
                t55 = t56.
              ENDIF.
              t54->set_config( i_conf = t55 ).
              DATA(t57) = t1.
              DATA(t58) = t4.
              APPEND t58 TO t57->items.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t59) = t1.
    result = t59.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = me->config.
    result = t1.

  ENDMETHOD.

  METHOD read_by_key.
    DATA(t1) = i_rule.
    DATA(t2) = i_key.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = me->config.
    t4 = t5->rules.
    IF t4 IS BOUND.
      t3 = t4->truth( ).
    ENDIF.
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t10) = me->config.
      t9 = t10->rules.
      DATA(t11) = t1.
      t8 = t9->get( p0 = t11 ).
      IF t8 IS BOUND.
        t7 = t8->truth( ).
      ENDIF.
      IF t7 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t15) = me->config.
        t14 = t15->rules.
        DATA(t16) = t1.
        t13 = t14->get( p0 = t16 ).
        DATA(t17) = t2.
        t12 = t13->get( p0 = t17 ).
        t6 = t12.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t19.
        IF t19 IS BOUND.
          t18 = t19.
        ENDIF.
        t6 = t18.
      ENDIF.
      result = t6.
      RETURN.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF t21 IS BOUND.
        t20 = t21.
      ENDIF.
      result = t20.

    ENDIF.
  ENDMETHOD.

  METHOD read_by_rule.
    DATA(t1) = i_rule.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/config.ts:142|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_global.
    DATA t1 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t2) = me->config.
    t1 = t2->global.
    result = t1.

  ENDMETHOD.

  METHOD get_syntax_setttings.
    DATA t1 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t2) = me->config.
    t1 = t2->syntax.
    result = t1.

  ENDMETHOD.

  METHOD get_release.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t7) = me->config.
      t6 = t7->syntax.
      t5 = t6->version.
      t4 = t5.
      t2 = t4.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      t2 = t8.
    ENDIF.
    t1 = t2.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t11.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    t9 = t10.
    IF t10 = abap_true.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE string( ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t22) = t1.
      t21 = t22.
      IF t21 IS BOUND.
        t20 = t21->type_of( ).
      ELSE.
        t20 = `undefined`.
      ENDIF.
      DATA(t23) = |string|.
      t19 = xsdbool( t20 = t23 ).
      t18 = xsdbool( t19 = abap_false ).
      t9 = t18.
    ENDIF.
    IF t9 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t26.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t26 = zcl_lnt_version_module=>release_b8cd.
      DATA t27 TYPE string.
      DATA t28 TYPE REF TO zcl_lnt_version_new.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t30) = t1.
      t29 = t30.
      DATA t31 TYPE REF TO object.
      t31 = t29->as_ref( ).
      t28 ?= t31.
      t27 = t28->release_3664.
      t25 = t26->get( p0 = t27 ).
      t24 = t25.
      result = t24.
      RETURN.
    ENDIF.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t35 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t36) = me->config.
    t35 = t36->global.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t34.
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t33 = t39.
    t32 = t33.
    IF t33 = abap_false.
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t43) = t1.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t42.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      t41 = t46.
      t32 = t41.
    ENDIF.
    IF t32 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t48.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t48 = zcl_lnt_version_module=>default_release.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_abap_release.
    DATA t50 TYPE string.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = t1.
    t51 = t52.
    t50 = t51->as_string( ).
    t49 = zcl_lnt_version_module=>version_to_abap_release( i_v = t50 ).
    result = t49.

  ENDMETHOD.

  METHOD is_open_abap.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t4.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t10 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA(t11) = me->config.
        t10 = t11->syntax.
        t9 = t10->version.
        t8 = t9.
        t6 = t8.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        t6 = t12.
      ENDIF.
      t5 = t6.
      DATA t13 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t13.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t17) = t5.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      t18 = t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = t16.
      IF t22 IS INITIAL.
        t21 = abap_true.
      ENDIF.
      t20 = xsdbool( t21 = abap_false ).
      t15 = t20.
      t14 = t15.
      IF t15 = abap_true.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = VALUE string( ).
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t27) = t5.
        t26 = t27.
        IF t26 IS BOUND.
          t25 = t26->type_of( ).
        ELSE.
          t25 = `undefined`.
        ENDIF.
        DATA(t28) = |string|.
        t24 = xsdbool( t25 = t28 ).
        t23 = xsdbool( t24 = abap_false ).
        t14 = t23.
      ENDIF.
      IF t14 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t29.
        DATA t30 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t31.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t31 = zcl_lnt_version_module=>release_b8cd.
        DATA t32 TYPE string.
        DATA t33 TYPE REF TO zcl_lnt_version_new.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t35) = t5.
        t34 = t35.
        DATA t36 TYPE REF TO object.
        t36 = t34->as_ref( ).
        t33 ?= t36.
        t32 = t33->release_3664.
        t30 = t31->get( p0 = t32 ).
        t29 = t30.
        t13 = t29.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE REF TO zcl_lnt_iglobal_config.
        DATA t41 TYPE REF TO zcl_lnt_iglobal_config.
        DATA(t42) = me->config.
        t41 = t42->global.
        t40 = t41.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t43 = t44.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = t40.
        IF t46 IS INITIAL.
          t45 = abap_true.
        ENDIF.
        t39 = t45.
        t38 = t39.
        IF t39 = abap_false.
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t49) = t5.
          t48 = t49.
          DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t51.
          t50 = t51.
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = t48.
          IF t53 IS INITIAL.
            t52 = abap_true.
          ENDIF.
          t47 = t52.
          t38 = t47.
        ENDIF.
        IF t38 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t54.
          IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
            zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
          ENDIF.
          t54 = zcl_lnt_version_module=>default_release.
          t37 = t54.
        ELSE.
          DATA t55 TYPE REF TO zcl_lnt_abap_release.
          DATA t56 TYPE string.
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t58) = t5.
          t57 = t58.
          t56 = t57->as_string( ).
          t55 = zcl_lnt_version_module=>version_to_abap_release( i_v = t56 ).
          t37 = t55.
        ENDIF.
        t13 = t37.
      ENDIF.
      t4 = t13.
      t2 = t4.
    ELSE.
      DATA t59 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t59.
      t2 = t59.
    ENDIF.
    DATA t60 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t61.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t61 = zcl_lnt_version_module=>release_b8cd.
    DATA(t62) = |open-abap|.
    t60 = t61->get( p0 = t62 ).
    t1 = xsdbool( t2 = t60 ).
    result = t1.

  ENDMETHOD.

  METHOD get_version.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/config.ts:169|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t7) = me->config.
      t6 = t7->syntax.
      t5 = t6->version.
      t4 = t5.
      t2 = t4.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      t2 = t8.
    ENDIF.
    t1 = t2.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t11.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    t9 = t10.
    IF t10 = abap_true.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE string( ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t22) = t1.
      t21 = t22.
      IF t21 IS BOUND.
        t20 = t21->type_of( ).
      ELSE.
        t20 = `undefined`.
      ENDIF.
      DATA(t23) = |string|.
      t19 = xsdbool( t20 = t23 ).
      t18 = xsdbool( t19 = abap_false ).
      t9 = t18.
    ENDIF.
    IF t9 = abap_true.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_version_new.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t27) = t1.
      t26 = t27.
      DATA t28 TYPE REF TO object.
      t28 = t26->as_ref( ).
      t25 ?= t28.
      t24 = t25->language.
      result = t24.
      RETURN.
    ENDIF.
    DATA(t29) = |Normal|.
    result = t29.

  ENDMETHOD.

  METHOD check_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t7) = me->config.
      t6 = t7->syntax.
      t5 = t6->version.
      t4 = t5.
      t2 = t4.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      t2 = t8.
    ENDIF.
    t1 = t2.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    t9 = t10.
    IF t10 = abap_false.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t21) = t1.
      t20 = t21.
      IF t20 IS BOUND.
        t19 = t20->type_of( ).
      ELSE.
        t19 = `undefined`.
      ENDIF.
      DATA(t22) = |string|.
      t18 = xsdbool( t19 = t22 ).
      t17 = xsdbool( t18 = abap_false ).
      t9 = t17.
    ENDIF.
    IF t9 = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE abap_bool.
    DATA(t24) = abap_false.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t27 = zcl_lnt_version_module=>version_namespace.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    LOOP AT t27->entries INTO DATA(t28).
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t29->sval = t28-v.
      APPEND VALUE #( k = t28-k v = t29 ) TO t26->entries.
    ENDLOOP.
    t25 = t26.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t31 = zcl_lnt_version_module=>version_namespace.
    t30 = t31->keys( ).
    DATA(t32) = VALUE string( ).
    LOOP AT t30->items INTO t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t35) = t25.
      DATA(t36) = t32.
      t34 = t35->get( p0 = t36 ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t38 TYPE string.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t40) = t1.
      t39 = t40.
      t38 = t39->as_string( ).
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t37->sval = t38.
      IF t34 IS NOT BOUND.
        t33 = xsdbool( t37 IS NOT BOUND ).
      ELSE.
        t33 = t34->strict_equals( t37 ).
      ENDIF.
      IF t33 = abap_true.
        DATA(t41) = abap_true.
        t23 = t41.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA t42 TYPE abap_bool.
    DATA(t43) = t23.
    DATA(t44) = abap_false.
    t42 = xsdbool( t43 = t44 ).
    IF t42 = abap_true.
      DATA t45 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t46) = me->config.
      t45 = t46->syntax.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t45->version = t47.
      RETURN.
    ENDIF.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE string.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = t1.
    t50 = t51.
    t49 = t50->as_string( ).
    DATA(t52) = |Cloud|.
    t48 = xsdbool( t49 = t52 ).
    IF t48 = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t54) = me->config.
      t53 = t54->syntax.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t60) = |\{\}|.
        t59 = zlnt_runtime_json_7c6b3012af76=>parse( t60 ).
        t58 = t59.
        DATA(t61) = t58.
        DATA(t62) = |release|.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        DATA(t64) = VALUE string( ).
        DATA t65 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t67.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t67 = zcl_lnt_version_module=>release_b8cd.
        DATA(t68) = |Newest|.
        t66 = t67->get( p0 = t68 ).
        t65 = t66.
        t64 = t65->name.
        CREATE OBJECT t63.
        t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t63->sval = t64.
        t61->put( p0 = t62 p1 = t63 ).
        DATA(t69) = t58.
        DATA(t70) = |language|.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t72) = |Cloud|.
        CREATE OBJECT t71.
        t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t71->sval = t72.
        t69->put( p0 = t70 p1 = t71 ).
        DATA(t73) = t58.
        t57 = t73.
        t55 = t57.
      ELSE.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        t55 = t74.
      ENDIF.
      t53->version = t55.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1050_37307363eb17.
  ENDMETHOD.

  METHOD zif_lnt_configuration~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_enabled_rules.
    result = me->get_enabled_rules( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_global.
    result = me->get_global( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_version.
    result = me->get_version( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_release.
    result = me->get_release( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_language_version.
    result = me->get_language_version( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~is_open_abap.
    result = me->is_open_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~get_syntax_setttings.
    result = me->get_syntax_setttings( ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~read_by_rule.
    result = me->read_by_rule( i_rule = i_rule ).
  ENDMETHOD.

  METHOD zif_lnt_configuration~read_by_key.
    result = me->read_by_key( i_rule = i_rule i_key = i_key ).
  ENDMETHOD.
ENDCLASS.
