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
    DATA t2 TYPE REF TO zcl_lnt_iconfig.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = i_json.
    t3 = zlnt_runtime_json_3bdc898797fb=>parse( t4 ).
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
        DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t8 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA t9 TYPE REF TO zcl_lnt_irename_settings.
        DATA t10 TYPE REF TO zcl_lnt_iabaplint_app_settings.
        DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t2 = NEW zcl_lnt_iconfig( view_source = t3 i_global = t6 i_dependencies = t7 i_syntax = t8 i_rename = t9 i_app = t10 i_rules = t11 i_target_rules = t12 ).
      ENDIF.
    ENDIF.
    me->config = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `config`.
    DATA(t13) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_iglobal_config.
    t15 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t13 = xsdbool( t15 IS INITIAL ).
    IF t13 = abap_true.
      DATA(t21) = me->config.
      DATA t22 TYPE REF TO zcl_lnt_iglobal_config.
      DATA t24 TYPE REF TO zcl_lnt_config.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t24 = zcl_lnt_config=>get_default( i_ver = t25 i_lang_ver = t26 ).
      DATA t27 TYPE REF TO zcl_lnt_iglobal_config.
      DATA t28 TYPE REF TO zcl_lnt_iconfig.
      t28 = t24->config.
      t27 = t28->zlnt_view_read_sr_2cb20cf2c0e9( ).
      t22 = t27.
      t21->zlnt_view_write_s_5c569edd2912( p0 = t22 ).
    ENDIF.
    DATA(t30) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zcl_lnt_isyntax_settings.
    t32 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30 = xsdbool( t32 IS INITIAL ).
    IF t30 = abap_true.
      DATA(t38) = me->config.
      DATA t39 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA t41 TYPE REF TO zcl_lnt_config.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t41 = zcl_lnt_config=>get_default( i_ver = t42 i_lang_ver = t43 ).
      DATA t44 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA t45 TYPE REF TO zcl_lnt_iconfig.
      t45 = t41->config.
      t44 = t45->zlnt_view_read_sr_21ff5b77be46( ).
      t39 = t44.
      t38->zlnt_view_write_s_37fa673e301e( p0 = t39 ).
    ENDIF.
    DATA(t47) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t50 TYPE REF TO zcl_lnt_isyntax_settings.
    t50 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t49 = t50->zlnt_view_read_sr_94cd949ccfb3( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47 = xsdbool( t49 IS INITIAL ).
    IF t47 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_isyntax_settings.
      t56 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t60.
      t58 = t60.
      t56->zlnt_view_write_s_02b0b76da504( p0 = t58 ).
    ENDIF.
    DATA(t62) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t65 TYPE REF TO zcl_lnt_isyntax_settings.
    t65 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t64 = t65->zlnt_view_read_sr_3e1871ae1d38( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t62 = xsdbool( t64 IS INITIAL ).
    IF t62 = abap_true.
      DATA t71 TYPE REF TO zcl_lnt_isyntax_settings.
      t71 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t75.
      t73 = t75.
      t71->zlnt_view_write_s_e0e37d2dcaf3( p0 = t73 ).
    ELSE.
      DATA t77 TYPE REF TO zcl_lnt_isyntax_settings.
      t77 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t83.
      DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t88 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t89) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t92 TYPE REF TO zcl_lnt_isyntax_settings.
      t92 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      t91 = t92->zlnt_view_read_sr_3e1871ae1d38( ).
      t90 = t91.
      t88 = t89->fromarray( p0 = t90 ).
      t87 = t88->values( ).
      t85 = t83->concat( p0 = t87 ).
      t79 = t85.
      t77->zlnt_view_write_s_e0e37d2dcaf3( p0 = t79 ).
    ENDIF.
    DATA(t96) = VALUE abap_bool( ).
    DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t99 TYPE REF TO zcl_lnt_isyntax_settings.
    t99 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t98 = t99->zlnt_view_read_sr_340722ed73f5( ).
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t96 = xsdbool( t98 IS INITIAL ).
    IF t96 = abap_true.
      DATA t105 TYPE REF TO zcl_lnt_isyntax_settings.
      t105 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t109.
      t107 = t109.
      t105->zlnt_view_write_s_b5c34cf51ea8( p0 = t107 ).
    ELSE.
      DATA t111 TYPE REF TO zcl_lnt_isyntax_settings.
      t111 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t117.
      DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t122 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t123) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t126 TYPE REF TO zcl_lnt_isyntax_settings.
      t126 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      t125 = t126->zlnt_view_read_sr_340722ed73f5( ).
      t124 = t125.
      t122 = t123->fromarray( p0 = t124 ).
      t121 = t122->values( ).
      t119 = t117->concat( p0 = t121 ).
      t113 = t119.
      t111->zlnt_view_write_s_b5c34cf51ea8( p0 = t113 ).
    ENDIF.
    DATA(t130) = VALUE abap_bool( ).
    DATA t131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t133 TYPE REF TO zcl_lnt_iglobal_config.
    t133 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t132 = t133->zlnt_view_read_sr_ce2a50732551( ).
    t131 = t132.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = VALUE abap_bool( ).
    IF t131 IS INITIAL.
      t137 = abap_true.
    ELSEIF t131->has = abap_false.
      t137 = abap_true.
    ENDIF.
    t130 = t137.
    IF t130 = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_iglobal_config.
      t139 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t144) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t144->has = abap_true.
      t144->value = abap_false.
      t141 = t144.
      t139->zlnt_view_write_s_6b600dd0f06d( p0 = t141 ).
    ENDIF.
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t148 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t149 TYPE REF TO zcl_lnt_iglobal_config.
    t149 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    t148 = t149->zlnt_view_read_sr_4799a82dd6de( ).
    t147 = t148.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = VALUE abap_bool( ).
    IF t147 IS INITIAL.
      t153 = abap_true.
    ELSEIF t147->has = abap_false.
      t153 = abap_true.
    ENDIF.
    t146 = t153.
    IF t146 = abap_true.
      DATA t155 TYPE REF TO zcl_lnt_iglobal_config.
      t155 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t160) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t160->has = abap_true.
      t160->value = abap_false.
      t157 = t160.
      t155->zlnt_view_write_s_e400ffda6d35( p0 = t157 ).
    ENDIF.
    me->check_version( ).
  ENDMETHOD.

  METHOD get_default.
    DATA(t1) = i_ver.
    DATA(t2) = i_lang_ver.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    t3 = NEW zlnt_runtime_map__abd6fd794ffb( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_rules=>get_rules( ) ).
    DATA(t12) = VALUE i( ).
    DATA(t13) = VALUE i( ).
    t10->load( ).
    t13 = lines( t10->items ).
    t12 = t13.
    DATA(t15) = VALUE i( ).
    t15 = 1.
    DO.
      DATA(t17) = VALUE abap_bool( ).
      t17 = xsdbool( t15 < t12 ).
      IF t17 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zif_lnt_rule.
      CLEAR t20.
      DATA t22 TYPE REF TO zif_lnt_rule.
      CLEAR t22.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      t25 = t10->get( p0 = t15 ).
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
      t20 = t22.
      DATA(t28) = VALUE i( ).
      t28 = t15.
      DO.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t32) = 0.
        t30 = xsdbool( t28 > t32 ).
        IF t30 = abap_false.
          EXIT.
        ENDIF.
        DATA t33 TYPE REF TO zif_lnt_rule.
        CLEAR t33.
        DATA t35 TYPE REF TO zif_lnt_rule.
        CLEAR t35.
        DATA(t37) = VALUE i( ).
        DATA(t39) = 1.
        t37 = t28 - t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        t40 = t10->get( p0 = t37 ).
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
        t33 = t35.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE i( ).
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        t46 = t33->get_metadata( ).
        t45 = t46->key.
        DATA(t48) = VALUE string( ).
        DATA t49 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t49.
        t49 = t20->get_metadata( ).
        t48 = t49->key.
        t44 = zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t45 p1 = t48 ).
        DATA(t51) = 0.
        t43 = xsdbool( t44 <= t51 ).
        IF t43 = abap_true.
          EXIT.
        ENDIF.
        t10->put( p0 = t28 p1 = t33 ).
        DATA(t55) = VALUE i( ).
        DATA(t57) = 1.
        t55 = t28 - t57.
        t28 = t55.
      ENDDO.
      t10->put( p0 = t28 p1 = t20 ).
      DATA(t61) = VALUE i( ).
      DATA(t63) = 1.
      t61 = t15 + t63.
      t15 = t61.
    ENDDO.
    t8 = t10.
    DATA t66 TYPE REF TO zif_lnt_rule.
    DATA t67 TYPE REF TO object.
    DATA(t68) = VALUE i( ).
    DO.
      t8->load( ).
      IF t68 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t67.
      READ TABLE t8->items INDEX t68 + 1 INTO t67.
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
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t74.
      t74 = t66->get_metadata( ).
      t73 = t74->key.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      t77 = t66->get_config_value( ).
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
      t71 = t3->set( p0 = t73 p1 = t76 ).
    ENDDO.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = VALUE abap_bool( ).
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t84 = t2.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = VALUE abap_bool( ).
    DATA(t89) = VALUE abap_bool( ).
    IF t84 IS INITIAL.
      t89 = abap_true.
    ELSEIF t84->has = abap_false.
      t89 = abap_true.
    ENDIF.
    t88 = xsdbool( t89 = abap_false ).
    t83 = t88.
    IF t83 = abap_true.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
          DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t100 TYPE REF TO object.
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
          t97->source_value = t98.
          RAISE EXCEPTION t97.
      ENDTRY.
      t92 = t93.
      DATA(t102) = |release|.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t104) = VALUE string( ).
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = VALUE abap_bool( ).
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t106 = xsdbool( t1 IS INITIAL ).
      t105 = t106.
      IF t106 = abap_false.
        DATA(t113) = VALUE abap_bool( ).
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t114 = t1.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t117) = |Cloud|.
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
        DATA t120 TYPE REF TO zcl_lnt_abap_release.
        DATA t121 TYPE REF TO zlnt_runtime_map__201f3699a39e.
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
        t126 = t1.
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
          DATA(t131) = VALUE string( ).
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t132 = t1.
          t131 = t132->as_string( ).
          t130 = zcl_lnt_version_module=>version_to_abap_release( i_v = t131 ).
          t129 = t130->zlnt_view_read_sr_8e17f9b6728c( ).
          t123 = t129.
        ELSE.
          DATA(t134) = VALUE string( ).
          DATA t135 TYPE REF TO zcl_lnt_version_new.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t136 = t1.
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
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t103->sval = t104.
      t92->put( p0 = t102 p1 = t103 ).
      DATA(t142) = |language|.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t144) = VALUE string( ).
      t144 = t2->value.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t143->sval = t144.
      t92->put( p0 = t142 p1 = t143 ).
      t82 = t92.
    ELSE.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t148 = t1.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t151) = VALUE abap_bool( ).
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t152 = t148.
      IF t152 IS NOT BOUND.
        t151 = abap_true.
      ELSE.
        t151 = xsdbool( t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t151 = abap_true.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
            DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t163 TYPE REF TO object.
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
            t160->source_value = t161.
            RAISE EXCEPTION t160.
        ENDTRY.
        t155 = t156.
        DATA(t165) = |release|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t167) = VALUE string( ).
        DATA t168 TYPE REF TO zcl_lnt_abap_release.
        DATA t169 TYPE REF TO zcl_lnt_abap_release.
        DATA t170 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t170 = zcl_lnt_version_module=>release_b8cd.
        DATA(t171) = |Newest|.
        t169 = t170->get( p0 = t171 ).
        t168 = t169.
        t167 = t168->zlnt_view_read_sr_8e17f9b6728c( ).
        CREATE OBJECT t166.
        t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t166->sval = t167.
        t155->put( p0 = t165 p1 = t166 ).
        DATA(t173) = |language|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t175) = |Normal|.
        CREATE OBJECT t174.
        t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t174->sval = t175.
        t155->put( p0 = t173 p1 = t174 ).
        t150 = t155.
      ELSE.
        t150 = t148.
      ENDIF.
      t82 = t150.
    ENDIF.
    DATA t179 TYPE REF TO zcl_lnt_iconfig.
    DATA t180 TYPE REF TO zcl_lnt_iconfig.
    DATA t181 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t182 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t185) = |/src/**/*.*|.
    CREATE OBJECT t184.
    t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t184->sval = t185.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t189.
    t186 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t194.
    t191 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t200) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t200->has = abap_true.
    t200->value = abap_false.
    t196 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t206) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t206->has = abap_true.
    t206->value = abap_false.
    t202 = t206.
    DATA t208 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t212) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t212->has = abap_true.
    t212->value = abap_false.
    t208 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t218) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t218->has = abap_true.
    t218->value = abap_false.
    t214 = t218.
    DATA t220 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t224) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t224->has = abap_true.
    t224->value = abap_false.
    t220 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t230) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t230->has = abap_true.
    t230->value = abap_false.
    t226 = t230.
    DATA t232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t236) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t236->has = abap_true.
    t236->value = abap_false.
    t232 = t236.
    DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t242) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t242->has = abap_true.
    t242->value = abap_false.
    t238 = t242.
    DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t248) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t248->has = abap_true.
    t248->value = abap_false.
    t244 = t248.
    t182 = NEW zcl_lnt_iglobal_config( i_files = t183 i_skp_gnrtd_bpf_intrfcs = t196 i_skp_gnrtd_fnctn_grps = t202 i_skp_gnrtd_gtwy_clsss = t208 i_skp_gnrtd_prsstnt_clsss = t214 i_skip_generated_proxy_classes = t220 i_skp_gnrtd_prxy_intrfcs
    = t226 i_use_apack_dependencies = t232 i_skip_includes_without_main = t238 i_error_on_duplicate_filenames = t244 i_exclude = t186 i_no_issues = t191 ).
    CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
    t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `files` p1 = t250 ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `exclude` p1 = t251 ).
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `noIssues` p1 = t252 ).
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedBOPFInterfaces` p1 = t253 ).
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedFunctionGroups` p1 = t254 ).
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedGatewayClasses` p1 = t255 ).
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedPersistentClasses` p1 = t256 ).
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedProxyClasses` p1 = t257 ).
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedProxyInterfaces` p1 = t258 ).
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `useApackDependencies` p1 = t259 ).
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipIncludesWithoutMain` p1 = t260 ).
    ENDIF.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorOnDuplicateFilenames` p1 = t261 ).
    ENDIF.
    CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
    t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t262) = |files|.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
    DATA(t264) = |exclude|.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
    ENDIF.
    DATA(t266) = |noIssues|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    ENDIF.
    DATA(t268) = |skipGeneratedBOPFInterfaces|.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
    ENDIF.
    DATA(t270) = |skipGeneratedFunctionGroups|.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
    ENDIF.
    DATA(t272) = |skipGeneratedGatewayClasses|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
    ENDIF.
    DATA(t274) = |skipGeneratedPersistentClasses|.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
    ENDIF.
    DATA(t276) = |skipGeneratedProxyClasses|.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
    ENDIF.
    DATA(t278) = |skipGeneratedProxyInterfaces|.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
    ENDIF.
    DATA(t280) = |useApackDependencies|.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
    ENDIF.
    DATA(t282) = |skipIncludesWithoutMain|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
    ENDIF.
    DATA(t284) = |errorOnDuplicateFilenames|.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
    ENDIF.
    t181 = t182.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t291.
    t290 = t291.
    DATA t293 TYPE REF TO zcl_lnt_idependency.
    DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t297) = |https://github.com/abaplint/deps|.
    DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t298->has = abap_true.
    t298->value = t297.
    t294 = t298.
    DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t303) = |/deps|.
    DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t304->has = abap_true.
    t304->value = t303.
    t300 = t304.
    DATA(t306) = VALUE string( ).
    t306 = |/src/**/*.*|.
    DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t293 = NEW zcl_lnt_idependency( i_url_8ce1 = t294 i_branch = t308 i_folder_5c67 = t300 i_files = t306 ).
    CREATE OBJECT t293->zlnt_view_ownkeys_b0e8086400eb.
    t293->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `url` p1 = t310 ).
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `folder` p1 = t311 ).
    ENDIF.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `files` p1 = t312 ).
    ENDIF.
    CREATE OBJECT t293->zlnt_json_ownkeys_70e5fd461788.
    t293->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t313) = |url|.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
    DATA(t315) = |folder|.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
    ENDIF.
    DATA(t317) = |files|.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
    ENDIF.
    t290->load( ).
    APPEND t293 TO t290->items.
    t290->save( ).
    t286 = t290.
    DATA t321 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t322 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t323 = t82.
    DATA(t328) = VALUE string( ).
    t328 = |^(Z\|Y\|LCL_\|TY_\|LIF_)|.
    DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t333.
    t330 = t333.
    DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t338.
    t335 = t338.
    DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t343.
    t340 = t343.
    t322 = NEW zcl_lnt_isyntax_settings( i_version = t323 i_error_namespace = t328 i_global_constants = t330 i_ambigious_voids = t335 i_global_macros_5535 = t340 ).
    CREATE OBJECT t322->zlnt_view_ownkeys_b0e8086400eb.
    t322->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t345 ).
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorNamespace` p1 = t346 ).
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalConstants` p1 = t347 ).
    ENDIF.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ambigiousVoids` p1 = t348 ).
    ENDIF.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalMacros` p1 = t349 ).
    ENDIF.
    CREATE OBJECT t322->zlnt_json_ownkeys_70e5fd461788.
    t322->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t350) = |version|.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
    DATA(t352) = |errorNamespace|.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
    ENDIF.
    DATA(t354) = |globalConstants|.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
    ENDIF.
    DATA(t356) = |ambigiousVoids|.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
    ENDIF.
    DATA(t358) = |globalMacros|.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
    ENDIF.
    t321 = t322.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t364 TYPE REF TO object.
      t364 = t3.
      TRY.
          t361 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t363 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t361 = t363->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = t361.
    DATA t365 TYPE REF TO zcl_lnt_irename_settings.
    DATA t367 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t180 = NEW zcl_lnt_iconfig( i_global = t181 i_dependencies = t286 i_syntax = t321 i_rename = t365 i_app = t367 i_rules = t360 i_target_rules = t369 ).
    CREATE OBJECT t180->zlnt_view_ownkeys_b0e8086400eb.
    t180->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `global` p1 = t371 ).
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t372 ).
    ENDIF.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `syntax` p1 = t373 ).
    ENDIF.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rules` p1 = t374 ).
    ENDIF.
    CREATE OBJECT t180->zlnt_json_ownkeys_70e5fd461788.
    t180->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t375) = |global|.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
    DATA(t377) = |dependencies|.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
    ENDIF.
    DATA(t379) = |syntax|.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t379 p1 = t380 ).
    ENDIF.
    DATA(t381) = |rules|.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
    ENDIF.
    t179 = t180.
    DATA t383 TYPE REF TO zcl_lnt_config.
    DATA(t384) = VALUE string( ).
    DATA t388 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
    IF t179 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA t389 TYPE REF TO zcl_lnt_version_new.
    IF ( t2 IS NOT BOUND OR t2->has = abap_false ) AND t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t389 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
            CLEAR t389.
        ENDTRY.
        IF t389 IS BOUND.
          RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
        ENDIF.
      ENDIF.
    ENDIF.
    CREATE OBJECT t388.
    t384 = t388->zlnt_json_write_c_619ca918a7b3( t179 ).
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
    DATA t5 TYPE REF TO object.
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
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12 = me->config->zlnt_view_read_sr_0c3f68125cb5( ).
      t11 = t12.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t15) = VALUE abap_bool( ).
      IF t11 IS NOT BOUND.
        t15 = abap_true.
      ELSE.
        t15 = xsdbool( t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t15 = abap_true.
        CLEAR t14.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t20 TYPE string.
        DATA t21 TYPE REF TO zcl_lnt_irule_metadata.
        t21 = t4->get_metadata( ).
        t20 = t21->key.
        t18 = t11->get( p0 = t20 ).
        t14 = t18.
      ENDIF.
      t9 = t14.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      DATA(t25) = xsdbool( t9 IS INITIAL ).
      IF t25 = abap_true.
        CLEAR t24.
      ELSE.
        t24 = t9.
      ENDIF.
      t23 = t24.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = xsdbool( t23 IS INITIAL ).
      t36 = xsdbool( t37 = abap_false ).
      t31 = t36.
      t30 = t31.
      IF t30 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t41.
        IF t23 IS BOUND.
          t41 = t23.
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        CLEAR t43.
        CREATE OBJECT t43.
        t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t43->bval = abap_false.
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
          CLEAR t46.
          IF t23 IS BOUND.
            t46 = t23.
          ENDIF.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t48.
          CLEAR t48.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          t48->bval = abap_true.
          IF t46 IS NOT BOUND.
            t45 = xsdbool( t48 IS NOT BOUND ).
          ELSE.
            t45 = t46->strict_equals( t48 ).
          ENDIF.
          IF t45 = abap_true.
            t1->load( ).
            APPEND t4 TO t1->items.
            t1->save( ).
          ELSE.
            DATA(t52) = VALUE abap_bool( ).
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t53 = t23.
            DATA(t55) = VALUE abap_bool( ).
            DATA(t56) = VALUE string( ).
            DATA(t57) = xsdbool( t53 IS INITIAL ).
            IF t57 = abap_true.
              t56 = |undefined|.
            ELSE.
              DATA(t60) = VALUE string( ).
              DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t61 = t53.
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
              DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t65.
              CLEAR t65.
              IF t23 IS BOUND.
                t65 = t23.
              ENDIF.
              t4->set_config( i_conf = t65 ).
              t1->load( ).
              APPEND t4 TO t1->items.
              t1->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_db65.
    result = me->config.

  ENDMETHOD.

  METHOD read_by_key.
    DATA(t1) = i_rule.
    DATA(t2) = i_key.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = me->config->zlnt_view_read_sr_0c3f68125cb5( ).
    IF t4 IS BOUND.
      t3 = t4->truth( ).
    ENDIF.
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9 = me->config->zlnt_view_read_sr_0c3f68125cb5( ).
      t8 = t9->get( p0 = t1 ).
      IF t8 IS BOUND.
        t7 = t8->truth( ).
      ENDIF.
      IF t7 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t14 = me->config->zlnt_view_read_sr_0c3f68125cb5( ).
        t13 = t14->get( p0 = t1 ).
        t12 = t13->get( p0 = t2 ).
        t6 = t12.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t6.
      ENDIF.
      result = t6.
      RETURN.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR result.

    ENDIF.
  ENDMETHOD.

  METHOD read_by_rule.
    DATA(t1) = i_rule.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = me->config->zlnt_view_read_sr_0c3f68125cb5( ).
    t2 = t3->get( p0 = t1 ).
    result = t2.

  ENDMETHOD.

  METHOD get_global.
    DATA t1 TYPE REF TO zcl_lnt_iglobal_config.
    t1 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    result = t1.

  ENDMETHOD.

  METHOD get_syntax_setttings.
    DATA t1 TYPE REF TO zcl_lnt_isyntax_settings.
    t1 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    result = t1.

  ENDMETHOD.

  METHOD get_release.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
    t6 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
    t1 = t5.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = xsdbool( t1 IS INITIAL ).
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    t9 = t10.
    IF t10 = abap_true.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t20 = t1.
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
      DATA t24 TYPE REF TO zcl_lnt_abap_release.
      DATA t25 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t25 = zcl_lnt_version_module=>release_b8cd.
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE REF TO zcl_lnt_version_new.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t28 = t1.
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
      result = t24.
      RETURN.
    ENDIF.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zcl_lnt_iglobal_config.
    t36 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t34 = xsdbool( t36 IS INITIAL ).
    t33 = t34.
    IF t34 = abap_false.
      DATA(t42) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t42 = xsdbool( t1 IS INITIAL ).
      t33 = t42.
    ENDIF.
    IF t33 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t49 = zcl_lnt_version_module=>default_release.
      result = t49.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    DATA(t51) = VALUE string( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t52 = t1.
    t51 = t52->as_string( ).
    t50 = zcl_lnt_version_module=>version_to_abap_release( i_v = t51 ).
    result = t50.

  ENDMETHOD.

  METHOD is_open_abap.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zcl_lnt_isyntax_settings.
    t10 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t9 = t10->zlnt_view_read_sr_594c1657eb91( ).
    t5 = t9.
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = xsdbool( t5 IS INITIAL ).
    t20 = xsdbool( t21 = abap_false ).
    t15 = t20.
    t14 = t15.
    IF t15 = abap_true.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE string( ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25 = t5.
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
      DATA t29 TYPE REF TO zcl_lnt_abap_release.
      DATA t30 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t30 = zcl_lnt_version_module=>release_b8cd.
      DATA(t31) = VALUE string( ).
      DATA t32 TYPE REF TO zcl_lnt_version_new.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t33 = t5.
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
      t13 = t29.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_abap_release.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zcl_lnt_iglobal_config.
      t42 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40 = xsdbool( t42 IS INITIAL ).
      t39 = t40.
      IF t40 = abap_false.
        DATA(t48) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t48 = xsdbool( t5 IS INITIAL ).
        t39 = t48.
      ENDIF.
      IF t39 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_abap_release.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t55 = zcl_lnt_version_module=>default_release.
        t38 = t55.
      ELSE.
        DATA t56 TYPE REF TO zcl_lnt_abap_release.
        DATA(t57) = VALUE string( ).
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58 = t5.
        t57 = t58->as_string( ).
        t56 = zcl_lnt_version_module=>version_to_abap_release( i_v = t57 ).
        t38 = t56.
      ENDIF.
      t13 = t38.
    ENDIF.
    t2 = t13.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    DATA t62 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t62 = zcl_lnt_version_module=>release_b8cd.
    DATA(t63) = |open-abap|.
    t61 = t62->get( p0 = t63 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2 IS BOUND.
      IF t2 IS BOUND.
        DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t67 TYPE REF TO object.
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
    IF t61 IS BOUND.
      IF t61 IS BOUND.
        DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t69 TYPE REF TO object.
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
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
    t6 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
    t1 = t5.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_iglobal_config.
    t13 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t11 = xsdbool( t13 IS INITIAL ).
    t10 = t11.
    IF t11 = abap_false.
      DATA(t19) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t19 = xsdbool( t1 IS INITIAL ).
      t10 = t19.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE string( ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t28 = t1.
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
      result = |v816|.
      RETURN.
    ENDIF.
    DATA t32 TYPE string.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33 = t1.
    t32 = t33->as_string( ).
    result = t32.

  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
    t6 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
    t1 = t5.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = xsdbool( t1 IS INITIAL ).
    t15 = xsdbool( t16 = abap_false ).
    t10 = t15.
    t9 = t10.
    IF t10 = abap_true.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t20 = t1.
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
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25 = t1.
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
    result = |Normal|.

  ENDMETHOD.

  METHOD check_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_isyntax_settings.
    t6 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    t5 = t6->zlnt_view_read_sr_594c1657eb91( ).
    t1 = t5.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t1 IS INITIAL ).
    t9 = t10.
    IF t10 = abap_false.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE string( ).
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t19 = t1.
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
    t22 = abap_false.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t26 = zcl_lnt_version_module=>version_namespace.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
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
      t34 = t24->get( p0 = t31 ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      t37 = t1.
      IF t34 IS NOT BOUND.
        t33 = xsdbool( t37 IS NOT BOUND ).
      ELSE.
        t33 = t34->strict_equals( t37 ).
      ENDIF.
      IF t33 = abap_true.
        t22 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t40) = VALUE abap_bool( ).
    t40 = xsdbool( t22 = abap_false ).
    IF t40 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_isyntax_settings.
      t43 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t43->zlnt_view_write_s_1249975545ca( p0 = t45 ).
      RETURN.
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48 = t1.
    t47 = t48->as_string( ).
    DATA(t50) = |Cloud|.
    t46 = xsdbool( t47 = t50 ).
    IF t46 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_isyntax_settings.
      t51 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
          DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t64 TYPE REF TO object.
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
          t61->source_value = t62.
          RAISE EXCEPTION t61.
      ENDTRY.
      t56 = t57.
      DATA(t66) = |release|.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t68) = VALUE string( ).
      DATA t69 TYPE REF TO zcl_lnt_abap_release.
      DATA t70 TYPE REF TO zcl_lnt_abap_release.
      DATA t71 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t71 = zcl_lnt_version_module=>release_b8cd.
      DATA(t72) = |Newest|.
      t70 = t71->get( p0 = t72 ).
      t69 = t70.
      t68 = t69->zlnt_view_read_sr_8e17f9b6728c( ).
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t67->sval = t68.
      t56->put( p0 = t66 p1 = t67 ).
      DATA(t74) = |language|.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t76) = |Cloud|.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t75->sval = t76.
      t56->put( p0 = t74 p1 = t75 ).
      t53 = t56.
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
