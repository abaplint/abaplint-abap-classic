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
    DATA t15 TYPE REF TO zcl_lnt_iglobal_config.
    t15 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      me->config->zlnt_view_write_s_5c569edd2912( p0 = zcl_lnt_config=>get_default( i_ver = t25 i_lang_ver = t26 )->config->zlnt_view_read_sr_2cb20cf2c0e9( ) ).
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_isyntax_settings.
    t32 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t32 IS INITIAL ) = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      me->config->zlnt_view_write_s_37fa673e301e( p0 = zcl_lnt_config=>get_default( i_ver = t42 i_lang_ver = t43 )->config->zlnt_view_read_sr_21ff5b77be46( ) ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t49 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_94cd949ccfb3( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t49 IS INITIAL ) = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_isyntax_settings.
      t56 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t58.
      t56->zlnt_view_write_s_02b0b76da504( p0 = t58 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t64 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_3e1871ae1d38( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t64 IS INITIAL ) = abap_true.
      DATA t71 TYPE REF TO zcl_lnt_isyntax_settings.
      t71 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t73.
      t71->zlnt_view_write_s_e0e37d2dcaf3( p0 = t73 ).
    ELSE.
      DATA t77 TYPE REF TO zcl_lnt_isyntax_settings.
      t77 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t83.
      t77->zlnt_view_write_s_e0e37d2dcaf3( p0 = t83->concat( p0 = NEW zlnt_runtime_set__1827558fd4c7( )->fromarray( p0 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_3e1871ae1d38( ) )->values( ) ) ).
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t98 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_340722ed73f5( ).
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t98 IS INITIAL ) = abap_true.
      DATA t105 TYPE REF TO zcl_lnt_isyntax_settings.
      t105 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t107.
      t105->zlnt_view_write_s_b5c34cf51ea8( p0 = t107 ).
    ELSE.
      DATA t111 TYPE REF TO zcl_lnt_isyntax_settings.
      t111 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t117.
      t111->zlnt_view_write_s_b5c34cf51ea8( p0 = t117->concat( p0 = NEW zlnt_runtime_set__1827558fd4c7( )->fromarray( p0 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_340722ed73f5( ) )->values( ) ) ).
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t131 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( )->zlnt_view_read_sr_ce2a50732551( ).
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = VALUE abap_bool( ).
    IF t131 IS INITIAL.
      t137 = abap_true.
    ELSEIF t131->has = abap_false.
      t137 = abap_true.
    ENDIF.
    IF t137 = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_iglobal_config.
      t139 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA(t144) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t144->has = abap_true.
      t144->value = abap_false.
      t139->zlnt_view_write_s_6b600dd0f06d( p0 = t144 ).
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t147 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( )->zlnt_view_read_sr_4799a82dd6de( ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = VALUE abap_bool( ).
    IF t147 IS INITIAL.
      t153 = abap_true.
    ELSEIF t147->has = abap_false.
      t153 = abap_true.
    ENDIF.
    IF t153 = abap_true.
      DATA t155 TYPE REF TO zcl_lnt_iglobal_config.
      t155 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
      DATA(t160) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t160->has = abap_true.
      t160->value = abap_false.
      t155->zlnt_view_write_s_e400ffda6d35( p0 = t160 ).
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
    t10->load( ).
    t12 = lines( t10->items ).
    DATA(t15) = VALUE i( ).
    t15 = 1.
    DO.
      IF xsdbool( t15 < t12 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zif_lnt_rule.
      CLEAR t20.
      DATA t22 TYPE REF TO zif_lnt_rule.
      CLEAR t22.
      DATA t25 TYPE REF TO object.
      t25 = t10->get( p0 = t15 ).
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t22.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t25.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t22 ?= t27.
      ELSE.
        t22 ?= t25.
      ENDIF.
      t20 = t22.
      DATA(t28) = VALUE i( ).
      t28 = t15.
      DO.
        IF xsdbool( t28 > 0 ) = abap_false.
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
        t40 = t10->get( p0 = t37 ).
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t35.
        IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t40.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t35 ?= t42.
        ELSE.
          t35 ?= t40.
        ENDIF.
        t33 = t35.
        DATA(t45) = VALUE string( ).
        t45 = t33->get_metadata( )->key.
        DATA(t48) = VALUE string( ).
        t48 = t20->get_metadata( )->key.
        IF xsdbool( zlnt_runtime_orde_654b9c3be2c1=>rule_key( p0 = t45 p1 = t48 ) <= 0 ) = abap_true.
          EXIT.
        ENDIF.
        t10->put( p0 = t28 p1 = t33 ).
        DATA(t57) = 1.
        t28 = t28 - t57.
      ENDDO.
      t10->put( p0 = t28 p1 = t20 ).
      DATA(t63) = 1.
      t15 = t15 + t63.
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
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t67.
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t71.
      DATA(t73) = VALUE string( ).
      t73 = t66->get_metadata( )->key.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      t77 = t66->get_config_value( ).
      CLEAR t76.
      IF t77 IS BOUND.
        DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t79.
        DATA t80 TYPE REF TO object.
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
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t84 = t2.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = VALUE abap_bool( ).
    IF t84 IS INITIAL.
      t89 = abap_true.
    ELSEIF t84->has = abap_false.
      t89 = abap_true.
    ENDIF.
    IF xsdbool( t89 = abap_false ) = abap_true.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      TRY.
          t93 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
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
        CREATE OBJECT t116.
        t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t116->sval = |Cloud|.
        IF t114 IS NOT BOUND.
          t113 = xsdbool( t116 IS NOT BOUND ).
        ELSE.
          t113 = t114->strict_equals( t116 ).
        ENDIF.
        t105 = t113.
      ENDIF.
      IF t105 = abap_true.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t104 = zcl_lnt_version_module=>release_b8cd->get( p0 = |Newest| )->zlnt_view_read_sr_8e17f9b6728c( ).
      ELSE.
        DATA(t123) = VALUE string( ).
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
        IF xsdbool( t125 = |string| ) = abap_true.
          t123 = zcl_lnt_version_module=>version_to_abap_release( i_v = t1->as_string( ) )->zlnt_view_read_sr_8e17f9b6728c( ).
        ELSE.
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
              t135 = NEW zcl_lnt_version_new( view_source = t136 i_release_7928 = VALUE string( ) i_language = VALUE string( ) ).
            ENDIF.
          ENDIF.
          t123 = t135->zlnt_view_read_sr_6daa33b3cb6b( ).
        ENDIF.
        t104 = t123.
      ENDIF.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t103->sval = t104.
      t92->put( p0 = |release| p1 = t103 ).
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t144) = VALUE string( ).
      t144 = t2->value.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t143->sval = t144.
      t92->put( p0 = |language| p1 = t143 ).
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
        TRY.
            t156 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
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
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t167) = VALUE string( ).
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t167 = zcl_lnt_version_module=>release_b8cd->get( p0 = |Newest| )->zlnt_view_read_sr_8e17f9b6728c( ).
        CREATE OBJECT t166.
        t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t166->sval = t167.
        t155->put( p0 = |release| p1 = t166 ).
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t174.
        t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t174->sval = |Normal|.
        t155->put( p0 = |language| p1 = t174 ).
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
    CREATE OBJECT t184.
    t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t184->sval = |/src/**/*.*|.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t186.
    DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t191.
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
    DATA(t248) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t248->has = abap_true.
    t248->value = abap_false.
    t182 = NEW zcl_lnt_iglobal_config( i_files = t183 i_skp_gnrtd_bpf_intrfcs = t196 i_skp_gnrtd_fnctn_grps = t202 i_skp_gnrtd_gtwy_clsss = t208 i_skp_gnrtd_prsstnt_clsss = t214 i_skip_generated_proxy_classes = t220 i_skp_gnrtd_prxy_intrfcs
    = t226 i_use_apack_dependencies = t232 i_skip_includes_without_main = t238 i_error_on_duplicate_filenames = t248 i_exclude = t186 i_no_issues = t191 ).
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
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |files| p1 = t263 ).
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |exclude| p1 = t265 ).
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |noIssues| p1 = t267 ).
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipGeneratedBOPFInterfaces| p1 = t269 ).
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipGeneratedFunctionGroups| p1 = t271 ).
    ENDIF.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipGeneratedGatewayClasses| p1 = t273 ).
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipGeneratedPersistentClasses| p1 = t275 ).
    ENDIF.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipGeneratedProxyClasses| p1 = t277 ).
    ENDIF.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipGeneratedProxyInterfaces| p1 = t279 ).
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |useApackDependencies| p1 = t281 ).
    ENDIF.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |skipIncludesWithoutMain| p1 = t283 ).
    ENDIF.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorOnDuplicateFilenames| p1 = t285 ).
    ENDIF.
    t181 = t182.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t290.
    DATA t293 TYPE REF TO zcl_lnt_idependency.
    DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t298->has = abap_true.
    t298->value = |https://github.com/abaplint/deps|.
    t294 = t298.
    DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t304->has = abap_true.
    t304->value = |/deps|.
    DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t293 = NEW zcl_lnt_idependency( i_url_8ce1 = t294 i_branch = t308 i_folder_5c67 = t304 i_files = |/src/**/*.*| ).
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
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = |url| p1 = t314 ).
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = |folder| p1 = t316 ).
    ENDIF.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = |files| p1 = t318 ).
    ENDIF.
    t290->load( ).
    APPEND t293 TO t290->items.
    t290->save( ).
    t286 = t290.
    DATA t321 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t322 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t323 = t82.
    DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t330.
    DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t335.
    DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t340.
    t322 = NEW zcl_lnt_isyntax_settings( i_version = t323 i_error_namespace = |^(Z\|Y\|LCL_\|TY_\|LIF_)| i_global_constants = t330 i_ambigious_voids = t335 i_global_macros_5535 = t340 ).
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
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t351 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = |errorNamespace| p1 = t353 ).
    ENDIF.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = |globalConstants| p1 = t355 ).
    ENDIF.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ambigiousVoids| p1 = t357 ).
    ENDIF.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = |globalMacros| p1 = t359 ).
    ENDIF.
    t321 = t322.
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
    DATA t365 TYPE REF TO zcl_lnt_irename_settings.
    DATA t367 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t180 = NEW zcl_lnt_iconfig( i_global = t181 i_dependencies = t286 i_syntax = t321 i_rename = t365 i_app = t367 i_rules = t361 i_target_rules = t369 ).
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
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |global| p1 = t376 ).
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dependencies| p1 = t378 ).
    ENDIF.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |syntax| p1 = t380 ).
    ENDIF.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |rules| p1 = t382 ).
    ENDIF.
    t179 = t180.
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
    result = NEW zcl_lnt_config( i_json = t388->zlnt_json_write_c_619ca918a7b3( t179 ) ).

  ENDMETHOD.

  METHOD get_enabled_rules.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
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
      t11 = me->config->zlnt_view_read_sr_0c3f68125cb5( ).
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
        DATA t20 TYPE string.
        t20 = t4->get_metadata( )->key.
        t14 = t11->get( p0 = t20 ).
      ENDIF.
      t9 = t14.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF xsdbool( t9 IS INITIAL ) = abap_true.
        CLEAR t24.
      ELSE.
        t24 = t9.
      ENDIF.
      t23 = t24.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      IF xsdbool( xsdbool( t23 IS INITIAL ) = abap_false ) = abap_true.
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
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t53 = t23.
            DATA(t56) = VALUE string( ).
            IF xsdbool( t53 IS INITIAL ) = abap_true.
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
            IF xsdbool( t56 = |object| ) = abap_true.
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
      t8 = me->config->zlnt_view_read_sr_0c3f68125cb5( )->get( p0 = t1 ).
      IF t8 IS BOUND.
        t7 = t8->truth( ).
      ENDIF.
      IF t7 = abap_true.
        t6 = me->config->zlnt_view_read_sr_0c3f68125cb5( )->get( p0 = t1 )->get( p0 = t2 ).
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t6.
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR result.


  ENDMETHOD.

  METHOD read_by_rule.
    DATA(t1) = i_rule.
    result = me->config->zlnt_view_read_sr_0c3f68125cb5( )->get( p0 = t1 ).

  ENDMETHOD.

  METHOD get_global.
    result = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).

  ENDMETHOD.

  METHOD get_syntax_setttings.
    result = me->config->zlnt_view_read_sr_21ff5b77be46( ).

  ENDMETHOD.

  METHOD get_release.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_594c1657eb91( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ).
    t9 = t10.
    IF t10 = abap_true.
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
      t9 = xsdbool( t19 <> |string| ).
    ENDIF.
    IF t9 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t25 = zcl_lnt_version_module=>release_b8cd.
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
          t27 = NEW zcl_lnt_version_new( view_source = t28 i_release_7928 = VALUE string( ) i_language = VALUE string( ) ).
        ENDIF.
      ENDIF.
      result = t25->get( p0 = t27->zlnt_view_read_sr_6daa33b3cb6b( ) ).
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
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t33 = xsdbool( t1 IS INITIAL ).
    ENDIF.
    IF t33 = abap_true.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      result = zcl_lnt_version_module=>default_release.
      RETURN.
    ENDIF.
    result = zcl_lnt_version_module=>version_to_abap_release( i_v = t1->as_string( ) ).

  ENDMETHOD.

  METHOD is_open_abap.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_594c1657eb91( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t15 = xsdbool( xsdbool( t5 IS INITIAL ) = abap_false ).
    t14 = t15.
    IF t15 = abap_true.
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
      t14 = xsdbool( t24 <> |string| ).
    ENDIF.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t30 = zcl_lnt_version_module=>release_b8cd.
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
          t32 = NEW zcl_lnt_version_new( view_source = t33 i_release_7928 = VALUE string( ) i_language = VALUE string( ) ).
        ENDIF.
      ENDIF.
      t13 = t30->get( p0 = t32->zlnt_view_read_sr_6daa33b3cb6b( ) ).
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
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t39 = xsdbool( t5 IS INITIAL ).
      ENDIF.
      IF t39 = abap_true.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t38 = zcl_lnt_version_module=>default_release.
      ELSE.
        t38 = zcl_lnt_version_module=>version_to_abap_release( i_v = t5->as_string( ) ).
      ENDIF.
      t13 = t38.
    ENDIF.
    t2 = t13.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t61 = zcl_lnt_version_module=>release_b8cd->get( p0 = |open-abap| ).
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
    t1 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_594c1657eb91( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_iglobal_config.
    t13 = me->config->zlnt_view_read_sr_2cb20cf2c0e9( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t11 = xsdbool( t13 IS INITIAL ).
    t10 = t11.
    IF t11 = abap_false.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t10 = xsdbool( t1 IS INITIAL ).
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
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
      t9 = xsdbool( t27 <> |string| ).
    ENDIF.
    IF t9 = abap_true.
      result = |v816|.
      RETURN.
    ENDIF.
    result = t1->as_string( ).

  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_594c1657eb91( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ).
    t9 = t10.
    IF t10 = abap_true.
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
      t9 = xsdbool( t19 <> |string| ).
    ENDIF.
    IF t9 = abap_true.
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
          t24 = NEW zcl_lnt_version_new( view_source = t25 i_release_7928 = VALUE string( ) i_language = VALUE string( ) ).
        ENDIF.
      ENDIF.
      result = t24->zlnt_view_read_sr_61201d354c21( ).
      RETURN.
    ENDIF.
    result = |Normal|.

  ENDMETHOD.

  METHOD check_version.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_read_sr_594c1657eb91( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t1 IS INITIAL ).
    t9 = t10.
    IF t10 = abap_false.
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
      t9 = xsdbool( t18 <> |string| ).
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
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t28->sval = t27-v.
      APPEND VALUE #( k = t27-k v = t28 ) TO t25->entries.
    ENDLOOP.
    t24 = t25.
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t29 = zcl_lnt_version_module=>version_namespace->keys( ).
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
    IF xsdbool( t22 = abap_false ) = abap_true.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      me->config->zlnt_view_read_sr_21ff5b77be46( )->zlnt_view_write_s_1249975545ca( p0 = t45 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1->as_string( ) = |Cloud| ) = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_isyntax_settings.
      t51 = me->config->zlnt_view_read_sr_21ff5b77be46( ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      TRY.
          t57 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
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
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t68) = VALUE string( ).
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t68 = zcl_lnt_version_module=>release_b8cd->get( p0 = |Newest| )->zlnt_view_read_sr_8e17f9b6728c( ).
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t67->sval = t68.
      t56->put( p0 = |release| p1 = t67 ).
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t75->sval = |Cloud|.
      t56->put( p0 = |language| p1 = t75 ).
      t51->zlnt_view_write_s_1249975545ca( p0 = t56 ).
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
