* TS: src/config.ts:8:1 Config
CLASS zcl_lnt_config DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_config IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_json.
    DATA t2 TYPE REF TO zcl_lnt_iconfig.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = zlnt_runtime_json_3bdc898797fb=>parse( t4 ).
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t5 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t5->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        DATA t6 TYPE REF TO zcl_lnt_iglobal_config.
        CLEAR t6.
        DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t7.
        DATA t8 TYPE REF TO zcl_lnt_isyntax_settings.
        CLEAR t8.
        DATA t9 TYPE REF TO zcl_lnt_irename_settings.
        CLEAR t9.
        DATA t10 TYPE REF TO zcl_lnt_iabaplint_app_settings.
        CLEAR t10.
        DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t11.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        t2 = NEW zcl_lnt_iconfig( view_source = t3 i_global = t6 i_dependencies = t7 i_syntax = t8 i_rename = t9 i_app = t10 i_rules = t11 i_target_rules = t12 ).
      ENDIF.
    ENDIF.
    me->config = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `config`.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t15.
    DATA(t16) = me->config.
    t15 = t16->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t14.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    t13 = t19.
    IF t13 = abap_true.
      DATA(t21) = me->config.
      DATA t22 TYPE REF TO zcl_lnt_iglobal_config.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_config.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_config.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t24 = zcl_lnt_config=>get_default( i_ver = t25 i_lang_ver = t26 ).
      t23 = t24.
      DATA t27 TYPE REF TO zcl_lnt_iglobal_config.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_iconfig.
      CLEAR t28.
      DATA(t29) = t23.
      t28 = t29->config.
      t27 = t28->zlnt_view_read_sr_2cb20cf2c0e9( ).
      t22 = t27.
      t21->zlnt_view_write_s_5c569edd2912( p0 = t22 ).
    ENDIF.
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t32.
    DATA(t33) = me->config.
    t32 = t33->zlnt_view_read_sr_21ff5b77be46( ).
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    t34 = t35.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = t31.
    IF t37 IS INITIAL.
      t36 = abap_true.
    ENDIF.
    t30 = t36.
    IF t30 = abap_true.
      DATA(t38) = me->config.
      DATA t39 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_config.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_config.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t41 = zcl_lnt_config=>get_default( i_ver = t42 i_lang_ver = t43 ).
      t40 = t41.
      DATA t44 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_iconfig.
      CLEAR t45.
      DATA(t46) = t40.
      t45 = t46->config.
      t44 = t45->zlnt_view_read_sr_21ff5b77be46( ).
      t39 = t44.
      t38->zlnt_view_write_s_37fa673e301e( p0 = t39 ).
    ENDIF.
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t50.
    DATA(t51) = me->config.
    t50 = t51->zlnt_view_read_sr_21ff5b77be46( ).
    t49 = t50->zlnt_view_read_sr_94cd949ccfb3( ).
    t48 = t49.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    t52 = t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = t48.
    IF t55 IS INITIAL.
      t54 = abap_true.
    ENDIF.
    t47 = t54.
    IF t47 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t56.
      DATA(t57) = me->config.
      t56 = t57->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t60.
        CREATE OBJECT t60.
        t58 = t60.
      ELSE.
        DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t61.
        t58 = t61.
      ENDIF.
      t56->zlnt_view_write_s_02b0b76da504( p0 = t58 ).
    ENDIF.
    DATA(t62) = VALUE abap_bool( ).
    DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t65.
    DATA(t66) = me->config.
    t65 = t66->zlnt_view_read_sr_21ff5b77be46( ).
    t64 = t65->zlnt_view_read_sr_3e1871ae1d38( ).
    t63 = t64.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    t67 = t68.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = t63.
    IF t70 IS INITIAL.
      t69 = abap_true.
    ENDIF.
    t62 = t69.
    IF t62 = abap_true.
      DATA t71 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t71.
      DATA(t72) = me->config.
      t71 = t72->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t75.
        CREATE OBJECT t75.
        t73 = t75.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        t73 = t76.
      ENDIF.
      t71->zlnt_view_write_s_e0e37d2dcaf3( p0 = t73 ).
    ELSE.
      DATA t77 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t77.
      DATA(t78) = me->config.
      t77 = t78->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t79.
      DATA(t80) = abap_true.
      IF t80 = abap_true.
        DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t83.
        CREATE OBJECT t83.
        t82 = t83.
        DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t85.
        DATA(t86) = t82.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t88.
        DATA(t89) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t91.
        DATA t92 TYPE REF TO zcl_lnt_isyntax_settings.
        CLEAR t92.
        DATA(t93) = me->config.
        t92 = t93->zlnt_view_read_sr_21ff5b77be46( ).
        t91 = t92->zlnt_view_read_sr_3e1871ae1d38( ).
        t90 = t91.
        t88 = t89->fromarray( p0 = t90 ).
        t87 = t88->values( ).
        t85 = t86->concat( p0 = t87 ).
        t84 = t85.
        DATA(t94) = t84.
        t81 = t94.
        t79 = t81.
      ELSE.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t95.
        t79 = t95.
      ENDIF.
      t77->zlnt_view_write_s_e0e37d2dcaf3( p0 = t79 ).
    ENDIF.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t98.
    DATA t99 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t99.
    DATA(t100) = me->config.
    t99 = t100->zlnt_view_read_sr_21ff5b77be46( ).
    t98 = t99->zlnt_view_read_sr_340722ed73f5( ).
    t97 = t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    t101 = t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA(t104) = t97.
    IF t104 IS INITIAL.
      t103 = abap_true.
    ENDIF.
    t96 = t103.
    IF t96 = abap_true.
      DATA t105 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t105.
      DATA(t106) = me->config.
      t105 = t106->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t109.
        CREATE OBJECT t109.
        t107 = t109.
      ELSE.
        DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t110.
        t107 = t110.
      ENDIF.
      t105->zlnt_view_write_s_b5c34cf51ea8( p0 = t107 ).
    ELSE.
      DATA t111 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t111.
      DATA(t112) = me->config.
      t111 = t112->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t115.
        DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t117.
        CREATE OBJECT t117.
        t116 = t117.
        DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t118.
        DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t119.
        DATA(t120) = t116.
        DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t122.
        DATA(t123) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t125.
        DATA t126 TYPE REF TO zcl_lnt_isyntax_settings.
        CLEAR t126.
        DATA(t127) = me->config.
        t126 = t127->zlnt_view_read_sr_21ff5b77be46( ).
        t125 = t126->zlnt_view_read_sr_340722ed73f5( ).
        t124 = t125.
        t122 = t123->fromarray( p0 = t124 ).
        t121 = t122->values( ).
        t119 = t120->concat( p0 = t121 ).
        t118 = t119.
        DATA(t128) = t118.
        t115 = t128.
        t113 = t115.
      ELSE.
        DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t129.
        t113 = t129.
      ENDIF.
      t111->zlnt_view_write_s_b5c34cf51ea8( p0 = t113 ).
    ENDIF.
    DATA(t130) = VALUE abap_bool( ).
    DATA t131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t133.
    DATA(t134) = me->config.
    t133 = t134->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t132 = t133->zlnt_view_read_sr_ce2a50732551( ).
    t131 = t132.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    t135 = t136.
    DATA(t137) = VALUE abap_bool( ).
    DATA(t138) = t131.
    IF t138 IS INITIAL.
      t137 = abap_true.
    ELSEIF t138->has = abap_false.
      t137 = abap_true.
    ENDIF.
    t130 = t137.
    IF t130 = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_iglobal_config.
      CLEAR t139.
      DATA(t140) = me->config.
      t139 = t140->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t141.
      DATA(t142) = abap_true.
      IF t142 = abap_true.
        DATA(t143) = abap_false.
        DATA(t144) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t144->has = abap_true.
        t144->value = t143.
        t141 = t144.
      ELSE.
        DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t145.
        t141 = t145.
      ENDIF.
      t139->zlnt_view_write_s_6b600dd0f06d( p0 = t141 ).
    ENDIF.
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t148.
    DATA t149 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t149.
    DATA(t150) = me->config.
    t149 = t150->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t148 = t149->zlnt_view_read_sr_4799a82dd6de( ).
    t147 = t148.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    t151 = t152.
    DATA(t153) = VALUE abap_bool( ).
    DATA(t154) = t147.
    IF t154 IS INITIAL.
      t153 = abap_true.
    ELSEIF t154->has = abap_false.
      t153 = abap_true.
    ENDIF.
    t146 = t153.
    IF t146 = abap_true.
      DATA t155 TYPE REF TO zcl_lnt_iglobal_config.
      CLEAR t155.
      DATA(t156) = me->config.
      t155 = t156->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t157.
      DATA(t158) = abap_true.
      IF t158 = abap_true.
        DATA(t159) = abap_false.
        DATA(t160) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t160->has = abap_true.
        t160->value = t159.
        t157 = t160.
      ELSE.
        DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t161.
        t157 = t161.
      ENDIF.
      t155->zlnt_view_write_s_e400ffda6d35( p0 = t157 ).
    ENDIF.
    me->check_version( ).
  ENDMETHOD.

  METHOD get_default.
    DATA(t1) = i_ver.
    DATA(t2) = i_lang_ver.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t5.
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
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_rules=>get_rules( ) ).
    t10 = t11.
    DATA(t12) = VALUE i( ).
    DATA(t13) = VALUE i( ).
    DATA(t14) = t10.
    t14->load( ).
    t13 = lines( t14->items ).
    t12 = t13.
    DATA(t15) = VALUE i( ).
    DATA(t16) = 1.
    t15 = t16.
    DO.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t15.
      DATA(t19) = t12.
      t17 = xsdbool( t18 < t19 ).
      IF t17 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zif_lnt_rule.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_rule.
      CLEAR t21.
      DATA t22 TYPE REF TO zif_lnt_rule.
      CLEAR t22.
      DATA(t23) = t10.
      DATA(t24) = t15.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      t25 = t23->get( p0 = t24 ).
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t22.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t25.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t27 = t26->as_ref( ).
        t22 ?= t27.
      ELSE.
        t22 ?= t25.
      ENDIF.
      t21 = t22.
      t20 = t21.
      DATA(t28) = VALUE i( ).
      DATA(t29) = t15.
      t28 = t29.
      DO.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t28.
        DATA(t32) = 0.
        t30 = xsdbool( t31 > t32 ).
        IF t30 = abap_false.
          EXIT.
        ENDIF.
        DATA t33 TYPE REF TO zif_lnt_rule.
        CLEAR t33.
        DATA t34 TYPE REF TO zif_lnt_rule.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_rule.
        CLEAR t35.
        DATA(t36) = t10.
        DATA(t37) = VALUE i( ).
        DATA(t38) = t28.
        DATA(t39) = 1.
        t37 = t38 - t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        t40 = t36->get( p0 = t37 ).
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t35.
        IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t40.
          DATA t42 TYPE REF TO object.
          CLEAR t42.
          t42 = t41->as_ref( ).
          t35 ?= t42.
        ELSE.
          t35 ?= t40.
        ENDIF.
        t34 = t35.
        t33 = t34.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE i( ).
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        DATA(t47) = t33.
        t46 = t47->get_metadata( ).
        t45 = t46->key.
        DATA(t48) = VALUE string( ).
        DATA t49 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t49.
        DATA(t50) = t20.
        t49 = t50->get_metadata( ).
        t48 = t49->key.
        t44 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t45 p1 = t48 ).
        DATA(t51) = 0.
        t43 = xsdbool( t44 <= t51 ).
        IF t43 = abap_true.
          EXIT.
        ENDIF.
        DATA(t52) = t10.
        DATA(t53) = t28.
        DATA(t54) = t33.
        t52->put( p0 = t53 p1 = t54 ).
        DATA(t55) = VALUE i( ).
        DATA(t56) = t28.
        DATA(t57) = 1.
        t55 = t56 - t57.
        t28 = t55.
      ENDDO.
      DATA(t58) = t10.
      DATA(t59) = t28.
      DATA(t60) = t20.
      t58->put( p0 = t59 p1 = t60 ).
      DATA(t61) = VALUE i( ).
      DATA(t62) = t15.
      DATA(t63) = 1.
      t61 = t62 + t63.
      t15 = t61.
    ENDDO.
    DATA(t64) = t10.
    t9 = t64.
    t8 = t9.
    DATA(t65) = t8.
    DATA t66 TYPE REF TO zif_lnt_rule.
    CLEAR t66.
    DATA t67 TYPE REF TO object.
    CLEAR t67.
    DATA(t68) = VALUE i( ).
    DO.
      t65->load( ).
      IF t68 >= lines( t65->items ).
        EXIT.
      ENDIF.
      CLEAR t67.
      READ TABLE t65->items INDEX t68 + 1 INTO t67.
      t68 = t68 + 1.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      CLEAR t66.
      IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t69 ?= t67.
        DATA t70 TYPE REF TO object.
        CLEAR t70.
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t67.
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t71.
      DATA(t72) = t3.
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t74.
      DATA(t75) = t66.
      t74 = t75->get_metadata( ).
      t73 = t74->key.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      DATA(t78) = t66.
      t77 = t78->get_config_value( ).
      CLEAR t76.
      IF t77 IS BOUND.
        DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t79.
        DATA t80 TYPE REF TO object.
        CLEAR t80.
        CLEAR t79.
        t80 = t77.
        TRY.
            t76 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS NOT BOUND.
          TRY.
              t79 ?= t77.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t79 IS BOUND.
            t76 = t79->source( ).
          ENDIF.
          IF t76 IS NOT BOUND.
            CREATE OBJECT t76.
            t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t76->oval = t77.
          ENDIF.
        ENDIF.
      ENDIF.
      t71 = t72->set( p0 = t73 p1 = t76 ).
    ENDDO.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t84.
    DATA(t85) = t2.
    t84 = t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    t86 = t87.
    DATA(t88) = VALUE abap_bool( ).
    DATA(t89) = VALUE abap_bool( ).
    DATA(t90) = t84.
    IF t90 IS INITIAL.
      t89 = abap_true.
    ELSEIF t90->has = abap_false.
      t89 = abap_true.
    ENDIF.
    t88 = xsdbool( t89 = abap_false ).
    t83 = t88.
    IF t83 = abap_true.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      DATA(t94) = |\{\}|.
      TRY.
          t93 = zlnt_runtime_json_7c6b3012af76=>parse( t94 ).
        CATCH zlnt_exception_js_ebcc2df7d5e4.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = `Invalid JSON`.
          DATA(t96) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t95 ).
          DATA(t97) = NEW zlnt_exception_cl_30eec8e8805d( ).
          t97->payload = t96.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          CLEAR t98.
          IF t96 IS BOUND.
            DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t99.
            DATA t100 TYPE REF TO object.
            CLEAR t100.
            CLEAR t99.
            t100 = t96.
            TRY.
                t98 ?= t100.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t98 IS NOT BOUND.
              TRY.
                  t99 ?= t96.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t99 IS BOUND.
                t98 = t99->source( ).
              ENDIF.
              IF t98 IS NOT BOUND.
                CREATE OBJECT t98.
                t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t98->oval = t96.
              ENDIF.
            ENDIF.
          ENDIF.
          t97->source_value = t98.
          RAISE EXCEPTION t97.
      ENDTRY.
      t92 = t93.
      DATA(t101) = t92.
      DATA(t102) = |release|.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      DATA(t104) = VALUE string( ).
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = VALUE abap_bool( ).
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA(t108) = t1.
      t107 = t108.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      t109 = t110.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = t107.
      IF t112 IS INITIAL.
        t111 = abap_true.
      ENDIF.
      t106 = t111.
      t105 = t106.
      IF t106 = abap_false.
        DATA(t113) = VALUE abap_bool( ).
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        DATA(t115) = t1.
        t114 = t115.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        DATA(t117) = |Cloud|.
        CLEAR t116.
        CREATE OBJECT t116.
        t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t116->sval = t117.
        IF t114 IS NOT BOUND.
          t113 = xsdbool( t116 IS NOT BOUND ).
        ELSE.
          t113 = t114->strict_equals( t116 ).
        ENDIF.
        t105 = t113.
      ENDIF.
      IF t105 = abap_true.
        DATA(t118) = VALUE string( ).
        DATA t119 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t120.
        DATA t121 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t121.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t121 = zcl_lnt_version_module=>release_b8cd.
        DATA(t122) = |Newest|.
        t120 = t121->get( p0 = t122 ).
        t119 = t120.
        t118 = t119->zlnt_view_read_sr_8e17f9b6728c( ).
        t104 = t118.
      ELSE.
        DATA(t123) = VALUE string( ).
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = VALUE string( ).
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        DATA(t127) = t1.
        t126 = t127.
        IF t126 IS BOUND.
          t125 = t126->type_of( ).
          IF t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t126->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t125 = `function`.
          ENDIF.
        ELSE.
          t125 = `undefined`.
        ENDIF.
        DATA(t128) = |string|.
        t124 = xsdbool( t125 = t128 ).
        IF t124 = abap_true.
          DATA(t129) = VALUE string( ).
          DATA t130 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t130.
          DATA(t131) = VALUE string( ).
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          DATA(t133) = t1.
          t132 = t133.
          t131 = t132->as_string( ).
          t130 = zcl_lnt_version_module=>version_to_abap_release( i_v = t131 ).
          t129 = t130->zlnt_view_read_sr_8e17f9b6728c( ).
          t123 = t129.
        ELSE.
          DATA(t134) = VALUE string( ).
          DATA t135 TYPE REF TO zcl_lnt_version_new.
          CLEAR t135.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          DATA(t137) = t1.
          t136 = t137.
          CLEAR t135.
          IF t136 IS BOUND.
            IF t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t135 ?= t136->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t135 IS NOT BOUND.
              IF t136->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t138.
                IF t136->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t138 ?= t136->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t138->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t139) = VALUE string( ).
              DATA(t140) = VALUE string( ).
              t135 = NEW zcl_lnt_version_new( view_source = t136 i_release_7928 = t139 i_language = t140 ).
            ENDIF.
          ENDIF.
          t134 = t135->zlnt_view_read_sr_6daa33b3cb6b( ).
          t123 = t134.
        ENDIF.
        t104 = t123.
      ENDIF.
      CLEAR t103.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t103->sval = t104.
      t101->put( p0 = t102 p1 = t103 ).
      DATA(t141) = t92.
      DATA(t142) = |language|.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      DATA(t144) = VALUE string( ).
      DATA(t145) = t2.
      t144 = t145->value.
      CLEAR t143.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t143->sval = t144.
      t141->put( p0 = t142 p1 = t143 ).
      DATA(t146) = t92.
      t91 = t146.
      t82 = t91.
    ELSE.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      DATA(t149) = t1.
      t148 = t149.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      DATA(t151) = VALUE abap_bool( ).
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      DATA(t153) = t148.
      t152 = t153.
      IF t152 IS NOT BOUND.
        t151 = abap_true.
      ELSE.
        t151 = xsdbool( t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t151 = abap_true.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        DATA(t157) = |\{\}|.
        TRY.
            t156 = zlnt_runtime_json_7c6b3012af76=>parse( t157 ).
          CATCH zlnt_exception_js_ebcc2df7d5e4.
            DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t158->has = abap_true.
            t158->value = `Invalid JSON`.
            DATA(t159) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t158 ).
            DATA(t160) = NEW zlnt_exception_cl_30eec8e8805d( ).
            t160->payload = t159.
            DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t161.
            CLEAR t161.
            IF t159 IS BOUND.
              DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t162.
              DATA t163 TYPE REF TO object.
              CLEAR t163.
              CLEAR t162.
              t163 = t159.
              TRY.
                  t161 ?= t163.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t161 IS NOT BOUND.
                TRY.
                    t162 ?= t159.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t162 IS BOUND.
                  t161 = t162->source( ).
                ENDIF.
                IF t161 IS NOT BOUND.
                  CREATE OBJECT t161.
                  t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t161->oval = t159.
                ENDIF.
              ENDIF.
            ENDIF.
            t160->source_value = t161.
            RAISE EXCEPTION t160.
        ENDTRY.
        t155 = t156.
        DATA(t164) = t155.
        DATA(t165) = |release|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        DATA(t167) = VALUE string( ).
        DATA t168 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t168.
        DATA t169 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t169.
        DATA t170 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t170.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t170 = zcl_lnt_version_module=>release_b8cd.
        DATA(t171) = |Newest|.
        t169 = t170->get( p0 = t171 ).
        t168 = t169.
        t167 = t168->zlnt_view_read_sr_8e17f9b6728c( ).
        CLEAR t166.
        CREATE OBJECT t166.
        t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t166->sval = t167.
        t164->put( p0 = t165 p1 = t166 ).
        DATA(t172) = t155.
        DATA(t173) = |language|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        DATA(t175) = |Normal|.
        CLEAR t174.
        CREATE OBJECT t174.
        t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t174->sval = t175.
        t172->put( p0 = t173 p1 = t174 ).
        DATA(t176) = t155.
        t154 = t176.
        t150 = t154.
      ELSE.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        DATA(t178) = t148.
        t177 = t178.
        t150 = t177.
      ENDIF.
      t147 = t150.
      t82 = t147.
    ENDIF.
    t81 = t82.
    DATA t179 TYPE REF TO zcl_lnt_iconfig.
    CLEAR t179.
    DATA t180 TYPE REF TO zcl_lnt_iconfig.
    CLEAR t180.
    DATA t181 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t181.
    DATA t182 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = |/src/**/*.*|.
    CLEAR t184.
    CREATE OBJECT t184.
    t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t184->sval = t185.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t187.
    DATA(t188) = abap_true.
    IF t188 = abap_true.
      DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t189.
      CREATE OBJECT t189.
      t187 = t189.
    ELSE.
      DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t190.
      t187 = t190.
    ENDIF.
    t186 = t187.
    DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t192.
    DATA(t193) = abap_true.
    IF t193 = abap_true.
      DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t194.
      CREATE OBJECT t194.
      t192 = t194.
    ELSE.
      DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t195.
      t192 = t195.
    ENDIF.
    t191 = t192.
    DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t197.
    DATA(t198) = abap_true.
    IF t198 = abap_true.
      DATA(t199) = abap_false.
      DATA(t200) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t200->has = abap_true.
      t200->value = t199.
      t197 = t200.
    ELSE.
      DATA t201 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t201.
      t197 = t201.
    ENDIF.
    t196 = t197.
    DATA t202 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t203.
    DATA(t204) = abap_true.
    IF t204 = abap_true.
      DATA(t205) = abap_false.
      DATA(t206) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t206->has = abap_true.
      t206->value = t205.
      t203 = t206.
    ELSE.
      DATA t207 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t207.
      t203 = t207.
    ENDIF.
    t202 = t203.
    DATA t208 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t209.
    DATA(t210) = abap_true.
    IF t210 = abap_true.
      DATA(t211) = abap_false.
      DATA(t212) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t212->has = abap_true.
      t212->value = t211.
      t209 = t212.
    ELSE.
      DATA t213 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t213.
      t209 = t213.
    ENDIF.
    t208 = t209.
    DATA t214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t215.
    DATA(t216) = abap_true.
    IF t216 = abap_true.
      DATA(t217) = abap_false.
      DATA(t218) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t218->has = abap_true.
      t218->value = t217.
      t215 = t218.
    ELSE.
      DATA t219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t219.
      t215 = t219.
    ENDIF.
    t214 = t215.
    DATA t220 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t221.
    DATA(t222) = abap_true.
    IF t222 = abap_true.
      DATA(t223) = abap_false.
      DATA(t224) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t224->has = abap_true.
      t224->value = t223.
      t221 = t224.
    ELSE.
      DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t225.
      t221 = t225.
    ENDIF.
    t220 = t221.
    DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t227.
    DATA(t228) = abap_true.
    IF t228 = abap_true.
      DATA(t229) = abap_false.
      DATA(t230) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t230->has = abap_true.
      t230->value = t229.
      t227 = t230.
    ELSE.
      DATA t231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t231.
      t227 = t231.
    ENDIF.
    t226 = t227.
    DATA t232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t233.
    DATA(t234) = abap_true.
    IF t234 = abap_true.
      DATA(t235) = abap_false.
      DATA(t236) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t236->has = abap_true.
      t236->value = t235.
      t233 = t236.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t237.
      t233 = t237.
    ENDIF.
    t232 = t233.
    DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t239.
    DATA(t240) = abap_true.
    IF t240 = abap_true.
      DATA(t241) = abap_false.
      DATA(t242) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t242->has = abap_true.
      t242->value = t241.
      t239 = t242.
    ELSE.
      DATA t243 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t243.
      t239 = t243.
    ENDIF.
    t238 = t239.
    DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t245.
    DATA(t246) = abap_true.
    IF t246 = abap_true.
      DATA(t247) = abap_false.
      DATA(t248) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t248->has = abap_true.
      t248->value = t247.
      t245 = t248.
    ELSE.
      DATA t249 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t249.
      t245 = t249.
    ENDIF.
    t244 = t245.
    t182 = NEW zcl_lnt_iglobal_config( i_files = t183 i_skp_gnrtd_bpf_intrfcs = t196 i_skp_gnrtd_fnctn_grps = t202 i_skp_gnrtd_gtwy_clsss = t208 i_skp_gnrtd_prsstnt_clsss = t214 i_skip_generated_proxy_classes = t220 i_skp_gnrtd_prxy_intrfcs
    = t226 i_use_apack_dependencies = t232 i_skip_includes_without_main = t238 i_error_on_duplicate_filenames = t244 i_exclude = t186 i_no_issues = t191 ).
    CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
    t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `files` p1 = t250 ).
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `exclude` p1 = t251 ).
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `noIssues` p1 = t252 ).
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedBOPFInterfaces` p1 = t253 ).
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedFunctionGroups` p1 = t254 ).
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedGatewayClasses` p1 = t255 ).
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedPersistentClasses` p1 = t256 ).
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedProxyClasses` p1 = t257 ).
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedProxyInterfaces` p1 = t258 ).
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `useApackDependencies` p1 = t259 ).
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipIncludesWithoutMain` p1 = t260 ).
    ENDIF.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorOnDuplicateFilenames` p1 = t261 ).
    ENDIF.
    CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
    t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t262) = |files|.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
    ENDIF.
    DATA(t264) = |exclude|.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
    ENDIF.
    DATA(t266) = |noIssues|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    ENDIF.
    DATA(t268) = |skipGeneratedBOPFInterfaces|.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
    ENDIF.
    DATA(t270) = |skipGeneratedFunctionGroups|.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
    ENDIF.
    DATA(t272) = |skipGeneratedGatewayClasses|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
    ENDIF.
    DATA(t274) = |skipGeneratedPersistentClasses|.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
    ENDIF.
    DATA(t276) = |skipGeneratedProxyClasses|.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
    ENDIF.
    DATA(t278) = |skipGeneratedProxyInterfaces|.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
    ENDIF.
    DATA(t280) = |useApackDependencies|.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
    ENDIF.
    DATA(t282) = |skipIncludesWithoutMain|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
    ENDIF.
    DATA(t284) = |errorOnDuplicateFilenames|.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
    ENDIF.
    t181 = t182.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t287.
    DATA(t288) = abap_true.
    IF t288 = abap_true.
      DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t289.
      DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t291.
      CREATE OBJECT t291.
      t290 = t291.
      DATA(t292) = t290.
      DATA t293 TYPE REF TO zcl_lnt_idependency.
      CLEAR t293.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t295.
      DATA(t296) = abap_true.
      IF t296 = abap_true.
        DATA(t297) = |https://github.com/abaplint/deps|.
        DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t298->has = abap_true.
        t298->value = t297.
        t295 = t298.
      ELSE.
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t299.
        t295 = t299.
      ENDIF.
      t294 = t295.
      DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t300.
      DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t301.
      DATA(t302) = abap_true.
      IF t302 = abap_true.
        DATA(t303) = |/deps|.
        DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t304->has = abap_true.
        t304->value = t303.
        t301 = t304.
      ELSE.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        t301 = t305.
      ENDIF.
      t300 = t301.
      DATA(t306) = VALUE string( ).
      DATA(t307) = |/src/**/*.*|.
      t306 = t307.
      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t308.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      t308 = t309.
      t293 = NEW zcl_lnt_idependency( i_url_8ce1 = t294 i_branch = t308 i_folder_5c67 = t300 i_files = t306 ).
      CREATE OBJECT t293->zlnt_view_ownkeys_b0e8086400eb.
      t293->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t310.
      IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `url` p1 = t310 ).
      ENDIF.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `folder` p1 = t311 ).
      ENDIF.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `files` p1 = t312 ).
      ENDIF.
      CREATE OBJECT t293->zlnt_json_ownkeys_70e5fd461788.
      t293->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t313) = |url|.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
      ENDIF.
      DATA(t315) = |folder|.
      DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t316.
      IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
      ENDIF.
      DATA(t317) = |files|.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
      ENDIF.
      t292->load( ).
      APPEND t293 TO t292->items.
      t292->save( ).
      DATA(t319) = t290.
      t289 = t319.
      t287 = t289.
    ELSE.
      DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t320.
      t287 = t320.
    ENDIF.
    t286 = t287.
    DATA t321 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t321.
    DATA t322 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = abap_true.
    IF t325 = abap_true.
      DATA(t326) = t81.
      t324 = t326.
    ELSE.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t327.
      t324 = t327.
    ENDIF.
    t323 = t324.
    DATA(t328) = VALUE string( ).
    DATA(t329) = |^(Z\|Y\|LCL_\|TY_\|LIF_)|.
    t328 = t329.
    DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t331.
    DATA(t332) = abap_true.
    IF t332 = abap_true.
      DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t333.
      CREATE OBJECT t333.
      t331 = t333.
    ELSE.
      DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t334.
      t331 = t334.
    ENDIF.
    t330 = t331.
    DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t336.
    DATA(t337) = abap_true.
    IF t337 = abap_true.
      DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t338.
      CREATE OBJECT t338.
      t336 = t338.
    ELSE.
      DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t339.
      t336 = t339.
    ENDIF.
    t335 = t336.
    DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t341.
    DATA(t342) = abap_true.
    IF t342 = abap_true.
      DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t343.
      CREATE OBJECT t343.
      t341 = t343.
    ELSE.
      DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t344.
      t341 = t344.
    ENDIF.
    t340 = t341.
    t322 = NEW zcl_lnt_isyntax_settings( i_version = t323 i_error_namespace = t328 i_global_constants = t330 i_ambigious_voids = t335 i_global_macros_5535 = t340 ).
    CREATE OBJECT t322->zlnt_view_ownkeys_b0e8086400eb.
    t322->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t345 ).
    ENDIF.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorNamespace` p1 = t346 ).
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalConstants` p1 = t347 ).
    ENDIF.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ambigiousVoids` p1 = t348 ).
    ENDIF.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalMacros` p1 = t349 ).
    ENDIF.
    CREATE OBJECT t322->zlnt_json_ownkeys_70e5fd461788.
    t322->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t350) = |version|.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
    ENDIF.
    DATA(t352) = |errorNamespace|.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
    ENDIF.
    DATA(t354) = |globalConstants|.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
    ENDIF.
    DATA(t356) = |ambigiousVoids|.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
    ENDIF.
    DATA(t358) = |globalMacros|.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
    ENDIF.
    t321 = t322.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA(t362) = t3.
    CLEAR t361.
    IF t362 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t363.
      DATA t364 TYPE REF TO object.
      CLEAR t364.
      CLEAR t363.
      t364 = t362.
      TRY.
          t361 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t363 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t361 = t363->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = t361.
    DATA t365 TYPE REF TO zcl_lnt_irename_settings.
    CLEAR t365.
    DATA t366 TYPE REF TO zcl_lnt_irename_settings.
    CLEAR t366.
    t365 = t366.
    DATA t367 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t367.
    DATA t368 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t368.
    t367 = t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    t369 = t370.
    t180 = NEW zcl_lnt_iconfig( i_global = t181 i_dependencies = t286 i_syntax = t321 i_rename = t365 i_app = t367 i_rules = t360 i_target_rules = t369 ).
    CREATE OBJECT t180->zlnt_view_ownkeys_b0e8086400eb.
    t180->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `global` p1 = t371 ).
    ENDIF.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t372 ).
    ENDIF.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `syntax` p1 = t373 ).
    ENDIF.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rules` p1 = t374 ).
    ENDIF.
    CREATE OBJECT t180->zlnt_json_ownkeys_70e5fd461788.
    t180->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t375) = |global|.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
    ENDIF.
    DATA(t377) = |dependencies|.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
    ENDIF.
    DATA(t379) = |syntax|.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t379 p1 = t380 ).
    ENDIF.
    DATA(t381) = |rules|.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
    ENDIF.
    t179 = t180.
    DATA t383 TYPE REF TO zcl_lnt_config.
    CLEAR t383.
    DATA(t384) = VALUE string( ).
    DATA(t385) = t179.
    DATA(t386) = t1.
    DATA(t387) = t2.
    DATA t388 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
    CLEAR t388.
    IF t385 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA t389 TYPE REF TO zcl_lnt_version_new.
    CLEAR t389.
    IF ( t387 IS NOT BOUND OR t387->has = abap_false ) AND t386 IS BOUND.
      IF t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t389 ?= t386->oval.
          CATCH cx_sy_move_cast_error.
            CLEAR t389.
        ENDTRY.
        IF t389 IS BOUND.
          RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
        ENDIF.
      ENDIF.
    ENDIF.
    CREATE OBJECT t388.
    t384 = t388->zlnt_json_write_c_619ca918a7b3( t385 ).
    t383 = NEW zcl_lnt_config( i_json = t384 ).
    result = t383.

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
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t13) = me->config.
      t12 = t13->zlnt_view_read_sr_0c3f68125cb5( ).
      t11 = t12.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS NOT BOUND.
        t15 = abap_true.
      ELSE.
        t15 = xsdbool( t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t19) = t11.
        DATA t20 TYPE string.
        DATA t21 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t22) = t4.
        t21 = t22->get_metadata( ).
        t20 = t21->key.
        t18 = t19->get( p0 = t20 ).
        t14 = t18.
      ENDIF.
      t10 = t14.
      t9 = t10.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t9.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        t24 = t27.
      ELSE.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t29) = t9.
        t28 = t29.
        t24 = t28.
      ENDIF.
      t23 = t24.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t33) = t23.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t32.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      t36 = xsdbool( t37 = abap_false ).
      t31 = t36.
      t30 = t31.
      DATA(t39) = t30.
      IF t39 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        DATA(t42) = t23.
        CLEAR t41.
        IF t42 IS BOUND.
          t41 = t42.
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        DATA(t44) = abap_false.
        CLEAR t43.
        CREATE OBJECT t43.
        t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t43->bval = t44.
        IF t41 IS NOT BOUND.
          t40 = xsdbool( t43 IS NOT BOUND ).
        ELSE.
          t40 = t41->strict_equals( t43 ).
        ENDIF.
        IF t40 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t45) = VALUE abap_bool( ).
          DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t46.
          DATA(t47) = t23.
          CLEAR t46.
          IF t47 IS BOUND.
            t46 = t47.
          ENDIF.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t48.
          DATA(t49) = abap_true.
          CLEAR t48.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          t48->bval = t49.
          IF t46 IS NOT BOUND.
            t45 = xsdbool( t48 IS NOT BOUND ).
          ELSE.
            t45 = t46->strict_equals( t48 ).
          ENDIF.
          IF t45 = abap_true.
            DATA(t50) = t1.
            DATA(t51) = t4.
            t50->load( ).
            APPEND t51 TO t50->items.
            t50->save( ).
          ELSE.
            DATA(t52) = VALUE abap_bool( ).
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t54) = t23.
            t53 = t54.
            DATA(t55) = VALUE abap_bool( ).
            DATA(t56) = VALUE string( ).
            DATA(t57) = VALUE abap_bool( ).
            DATA(t58) = t53.
            IF t58 IS INITIAL.
              t57 = abap_true.
            ENDIF.
            IF t57 = abap_true.
              DATA(t59) = |undefined|.
              t56 = t59.
            ELSE.
              DATA(t60) = VALUE string( ).
              DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t62) = t53.
              t61 = t62.
              IF t61 IS BOUND.
                t60 = t61->type_of( ).
                IF t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t61->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
                  t60 = `function`.
                ENDIF.
              ELSE.
                t60 = `undefined`.
              ENDIF.
              t56 = t60.
            ENDIF.
            DATA(t63) = |object|.
            t55 = xsdbool( t56 = t63 ).
            t52 = t55.
            IF t52 = abap_true.
              DATA(t64) = t4.
              DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t65.
              DATA(t66) = t23.
              CLEAR t65.
              IF t66 IS BOUND.
                t65 = t66.
              ENDIF.
              t64->set_config( i_conf = t65 ).
              DATA(t67) = t1.
              DATA(t68) = t4.
              t67->load( ).
              APPEND t68 TO t67->items.
              t67->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t69) = t1.
    result = t69.

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
    t4 = t5->zlnt_view_read_sr_0c3f68125cb5( ).
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
      t9 = t10->zlnt_view_read_sr_0c3f68125cb5( ).
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
        t14 = t15->zlnt_view_read_sr_0c3f68125cb5( ).
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
        CLEAR t18.
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
      CLEAR t20.
      IF t21 IS BOUND.
        t20 = t21.
      ENDIF.
      result = t20.

    ENDIF.
  ENDMETHOD.

  METHOD read_by_rule.
    DATA(t1) = i_rule.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = me->config.
    t3 = t4->zlnt_view_read_sr_0c3f68125cb5( ).
    DATA(t5) = t1.
    t2 = t3->get( p0 = t5 ).
    result = t2.

  ENDMETHOD.

  METHOD get_global.
    DATA t1 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t2) = me->config.
    t1 = t2->zlnt_view_read_sr_2cb20cf2c0e9( ).
    result = t1.

  ENDMETHOD.

  METHOD get_syntax_setttings.
    DATA t1 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t2) = me->config.
    t1 = t2->zlnt_view_read_sr_21ff5b77be46( ).
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
      CLEAR t4.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t5.
      DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t6.
      DATA(t7) = me->config.
      t6 = t7->zlnt_view_read_sr_21ff5b77be46( ).
      t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
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
    CLEAR t11.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
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
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      DATA(t21) = t1.
      t20 = t21.
      IF t20 IS BOUND.
        t19 = t20->type_of( ).
        IF t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t20->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t19 = `function`.
        ENDIF.
      ELSE.
        t19 = `undefined`.
      ENDIF.
      DATA(t22) = |string|.
      t18 = xsdbool( t19 <> t22 ).
      t9 = t18.
    ENDIF.
    IF t9 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t25.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t25 = zcl_lnt_version_module=>release_b8cd.
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE REF TO zcl_lnt_version_new.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      DATA(t29) = t1.
      t28 = t29.
      CLEAR t27.
      IF t28 IS BOUND.
        IF t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t27 ?= t28->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t27 IS NOT BOUND.
          IF t28->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t30.
            IF t28->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t30 ?= t28->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t30->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t31) = VALUE string( ).
          DATA(t32) = VALUE string( ).
          t27 = NEW zcl_lnt_version_new( view_source = t28 i_release_7928 = t31 i_language = t32 ).
        ENDIF.
      ENDIF.
      t26 = t27->zlnt_view_read_sr_6daa33b3cb6b( ).
      t24 = t25->get( p0 = t26 ).
      t23 = t24.
      result = t23.
      RETURN.
    ENDIF.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_iglobal_config.
    CLEAR t36.
    DATA(t37) = me->config.
    t36 = t37->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    t38 = t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = t35.
    IF t41 IS INITIAL.
      t40 = abap_true.
    ENDIF.
    t34 = t40.
    t33 = t34.
    IF t34 = abap_false.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      DATA(t44) = t1.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t45 = t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t43.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      t42 = t47.
      t33 = t42.
    ENDIF.
    IF t33 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t49.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t49 = zcl_lnt_version_module=>default_release.
      result = t49.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t50.
    DATA(t51) = VALUE string( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = t1.
    t52 = t53.
    t51 = t52->as_string( ).
    t50 = zcl_lnt_version_module=>version_to_abap_release( i_v = t51 ).
    result = t50.

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
        CLEAR t8.
        DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t9.
        DATA t10 TYPE REF TO zcl_lnt_isyntax_settings.
        CLEAR t10.
        DATA(t11) = me->config.
        t10 = t11->zlnt_view_read_sr_21ff5b77be46( ).
        t9 = t10->zlnt_view_read_sr_594c1657eb91( ).
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
      CLEAR t16.
      DATA(t17) = t5.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
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
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        DATA(t26) = t5.
        t25 = t26.
        IF t25 IS BOUND.
          t24 = t25->type_of( ).
          IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t25->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t24 = `function`.
          ENDIF.
        ELSE.
          t24 = `undefined`.
        ENDIF.
        DATA(t27) = |string|.
        t23 = xsdbool( t24 <> t27 ).
        t14 = t23.
      ENDIF.
      IF t14 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t30.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t30 = zcl_lnt_version_module=>release_b8cd.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE REF TO zcl_lnt_version_new.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        DATA(t34) = t5.
        t33 = t34.
        CLEAR t32.
        IF t33 IS BOUND.
          IF t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t32 ?= t33->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t32 IS NOT BOUND.
            IF t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t35.
              IF t33->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t35 ?= t33->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t35->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t36) = VALUE string( ).
            DATA(t37) = VALUE string( ).
            t32 = NEW zcl_lnt_version_new( view_source = t33 i_release_7928 = t36 i_language = t37 ).
          ENDIF.
        ENDIF.
        t31 = t32->zlnt_view_read_sr_6daa33b3cb6b( ).
        t29 = t30->get( p0 = t31 ).
        t28 = t29.
        t13 = t28.
      ELSE.
        DATA t38 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t38.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zcl_lnt_iglobal_config.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_iglobal_config.
        CLEAR t42.
        DATA(t43) = me->config.
        t42 = t43->zlnt_view_read_sr_2cb20cf2c0e9( ).
        t41 = t42.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        t44 = t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t41.
        IF t47 IS INITIAL.
          t46 = abap_true.
        ENDIF.
        t40 = t46.
        t39 = t40.
        IF t40 = abap_false.
          DATA(t48) = VALUE abap_bool( ).
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          DATA(t50) = t5.
          t49 = t50.
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t51.
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          t51 = t52.
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = t49.
          IF t54 IS INITIAL.
            t53 = abap_true.
          ENDIF.
          t48 = t53.
          t39 = t48.
        ENDIF.
        IF t39 = abap_true.
          DATA t55 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t55.
          IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
            zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
          ENDIF.
          t55 = zcl_lnt_version_module=>default_release.
          t38 = t55.
        ELSE.
          DATA t56 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t56.
          DATA(t57) = VALUE string( ).
          DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t58.
          DATA(t59) = t5.
          t58 = t59.
          t57 = t58->as_string( ).
          t56 = zcl_lnt_version_module=>version_to_abap_release( i_v = t57 ).
          t38 = t56.
        ENDIF.
        t13 = t38.
      ENDIF.
      t4 = t13.
      t2 = t4.
    ELSE.
      DATA t60 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t60.
      t2 = t60.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t62.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t62 = zcl_lnt_version_module=>release_b8cd.
    DATA(t63) = |open-abap|.
    t61 = t62->get( p0 = t63 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    CLEAR t64.
    IF t2 IS BOUND.
      CLEAR t64.
      IF t2 IS BOUND.
        DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t66.
        DATA t67 TYPE REF TO object.
        CLEAR t67.
        CLEAR t66.
        t67 = t2.
        TRY.
            t64 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS NOT BOUND.
          TRY.
              t66 ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t66 IS BOUND.
            t64 = t66->source( ).
          ENDIF.
          IF t64 IS NOT BOUND.
            CREATE OBJECT t64.
            t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t64->oval = t2.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t65.
    IF t61 IS BOUND.
      CLEAR t65.
      IF t61 IS BOUND.
        DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t68.
        DATA t69 TYPE REF TO object.
        CLEAR t69.
        CLEAR t68.
        t69 = t61.
        TRY.
            t65 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS NOT BOUND.
          TRY.
              t68 ?= t61.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t68 IS BOUND.
            t65 = t68->source( ).
          ENDIF.
          IF t65 IS NOT BOUND.
            CREATE OBJECT t65.
            t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t65->oval = t61.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t64 IS BOUND.
      t1 = t64->strict_equals( t65 ).
    ELSE.
      t1 = xsdbool( t65 IS NOT BOUND ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_version.
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
      t6 = t7->zlnt_view_read_sr_21ff5b77be46( ).
      t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
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
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t13 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t14) = me->config.
    t13 = t14->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t12.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t11 = t17.
    t10 = t11.
    IF t11 = abap_false.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t21) = t1.
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t20.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t19 = t24.
      t10 = t19.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE string( ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t29) = t1.
      t28 = t29.
      IF t28 IS BOUND.
        t27 = t28->type_of( ).
        IF t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t28->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t27 = `function`.
        ENDIF.
      ELSE.
        t27 = `undefined`.
      ENDIF.
      DATA(t30) = |string|.
      t26 = xsdbool( t27 <> t30 ).
      t9 = t26.
    ENDIF.
    IF t9 = abap_true.
      DATA(t31) = |v816|.
      result = t31.
      RETURN.
    ENDIF.
    DATA t32 TYPE string.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = t1.
    t33 = t34.
    t32 = t33->as_string( ).
    result = t32.

  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t5.
      DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t6.
      DATA(t7) = me->config.
      t6 = t7->zlnt_view_read_sr_21ff5b77be46( ).
      t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
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
    CLEAR t11.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
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
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      DATA(t21) = t1.
      t20 = t21.
      IF t20 IS BOUND.
        t19 = t20->type_of( ).
        IF t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t20->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t19 = `function`.
        ENDIF.
      ELSE.
        t19 = `undefined`.
      ENDIF.
      DATA(t22) = |string|.
      t18 = xsdbool( t19 <> t22 ).
      t9 = t18.
    ENDIF.
    IF t9 = abap_true.
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE REF TO zcl_lnt_version_new.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      DATA(t26) = t1.
      t25 = t26.
      CLEAR t24.
      IF t25 IS BOUND.
        IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t24 ?= t25->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t24 IS NOT BOUND.
          IF t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t27.
            IF t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t27 ?= t25->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t27->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t28) = VALUE string( ).
          DATA(t29) = VALUE string( ).
          t24 = NEW zcl_lnt_version_new( view_source = t25 i_release_7928 = t28 i_language = t29 ).
        ENDIF.
      ENDIF.
      t23 = t24->zlnt_view_read_sr_61201d354c21( ).
      result = t23.
      RETURN.
    ENDIF.
    DATA(t30) = |Normal|.
    result = t30.

  ENDMETHOD.

  METHOD check_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t5.
      DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t6.
      DATA(t7) = me->config.
      t6 = t7->zlnt_view_read_sr_21ff5b77be46( ).
      t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
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
    CLEAR t11.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
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
      DATA(t18) = VALUE string( ).
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      DATA(t20) = t1.
      t19 = t20.
      IF t19 IS BOUND.
        t18 = t19->type_of( ).
        IF t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t19->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t18 = `function`.
        ENDIF.
      ELSE.
        t18 = `undefined`.
      ENDIF.
      DATA(t21) = |string|.
      t17 = xsdbool( t18 <> t21 ).
      t9 = t17.
    ENDIF.
    IF t9 = abap_true.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = abap_false.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t26.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t26 = zcl_lnt_version_module=>version_namespace.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    LOOP AT t26->entries INTO DATA(t27).
      CLEAR t28.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t28->sval = t27-v.
      APPEND VALUE #( k = t27-k v = t28 ) TO t25->entries.
    ENDLOOP.
    t24 = t25.
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t30.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t30 = zcl_lnt_version_module=>version_namespace.
    t29 = t30->keys( ).
    DATA(t31) = VALUE string( ).
    t29->dense( ).
    DATA(t32) = VALUE i( ).
    DO.
      t29->load( ).
      IF t32 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t29->items INDEX t32 + 1 INTO t31.
      IF t29->has( t32 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t32 = t32 + 1.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA(t35) = t24.
      DATA(t36) = t31.
      t34 = t35->get( p0 = t36 ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      DATA(t38) = t1.
      t37 = t38.
      IF t34 IS NOT BOUND.
        t33 = xsdbool( t37 IS NOT BOUND ).
      ELSE.
        t33 = t34->strict_equals( t37 ).
      ENDIF.
      IF t33 = abap_true.
        DATA(t39) = abap_true.
        t22 = t39.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = t22.
    DATA(t42) = abap_false.
    t40 = xsdbool( t41 = t42 ).
    IF t40 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t43.
      DATA(t44) = me->config.
      t43 = t44->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t43->zlnt_view_write_s_1249975545ca( p0 = t45 ).
      RETURN.
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = t1.
    t48 = t49.
    t47 = t48->as_string( ).
    DATA(t50) = |Cloud|.
    t46 = xsdbool( t47 = t50 ).
    IF t46 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_isyntax_settings.
      CLEAR t51.
      DATA(t52) = me->config.
      t51 = t52->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        DATA(t58) = |\{\}|.
        TRY.
            t57 = zlnt_runtime_json_7c6b3012af76=>parse( t58 ).
          CATCH zlnt_exception_js_ebcc2df7d5e4.
            DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t59->has = abap_true.
            t59->value = `Invalid JSON`.
            DATA(t60) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t59 ).
            DATA(t61) = NEW zlnt_exception_cl_30eec8e8805d( ).
            t61->payload = t60.
            DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t62.
            CLEAR t62.
            IF t60 IS BOUND.
              DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t63.
              DATA t64 TYPE REF TO object.
              CLEAR t64.
              CLEAR t63.
              t64 = t60.
              TRY.
                  t62 ?= t64.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t62 IS NOT BOUND.
                TRY.
                    t63 ?= t60.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t63 IS BOUND.
                  t62 = t63->source( ).
                ENDIF.
                IF t62 IS NOT BOUND.
                  CREATE OBJECT t62.
                  t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t62->oval = t60.
                ENDIF.
              ENDIF.
            ENDIF.
            t61->source_value = t62.
            RAISE EXCEPTION t61.
        ENDTRY.
        t56 = t57.
        DATA(t65) = t56.
        DATA(t66) = |release|.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        DATA(t68) = VALUE string( ).
        DATA t69 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t71.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t71 = zcl_lnt_version_module=>release_b8cd.
        DATA(t72) = |Newest|.
        t70 = t71->get( p0 = t72 ).
        t69 = t70.
        t68 = t69->zlnt_view_read_sr_8e17f9b6728c( ).
        CLEAR t67.
        CREATE OBJECT t67.
        t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t67->sval = t68.
        t65->put( p0 = t66 p1 = t67 ).
        DATA(t73) = t56.
        DATA(t74) = |language|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        DATA(t76) = |Cloud|.
        CLEAR t75.
        CREATE OBJECT t75.
        t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t75->sval = t76.
        t73->put( p0 = t74 p1 = t75 ).
        DATA(t77) = t56.
        t55 = t77.
        t53 = t55.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t53 = t78.
      ENDIF.
      t51->zlnt_view_write_s_1249975545ca( p0 = t53 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1119_825059f46cef.
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
