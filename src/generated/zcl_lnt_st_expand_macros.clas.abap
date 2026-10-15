* TS: src/abap/2_statements/expand_macros.ts:64:1 ExpandMacros
CLASS zcl_lnt_st_expand_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA macros TYPE REF TO zcl_lnt_macros.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA language_version TYPE string.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_release_7928 TYPE REF TO zcl_lnt_abap_release i_reg_f149 TYPE REF TO zif_lnt_registry OPTIONAL i_language_version_0e1d TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS list_macro_names RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS find_8f95 IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file i_clear_b22e TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS handle_macros IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file i_seen TYPE REF TO zlnt_runtime_set__1827558fd4c7 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_df3d0820.
    METHODS expand_contents IMPORTING i_name TYPE string i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_input IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-METHODS find_name IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS tokens_to_nodes IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS tokens_to_nodes_one IMPORTING i_x TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expand_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_global_macros_5535.
    DATA(t2) = i_release_7928.
    DATA(t3) = i_reg_f149.
    DATA(t4) = i_language_version_0e1d.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = |Normal|.
        DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_macros.
    DATA(t13) = t1.
    t12 = NEW zcl_lnt_macros( i_global_macros_5535 = t13 ).
    me->macros = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macros`.
    DATA(t14) = t2.
    me->release_3664 = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    DATA t15 TYPE string.
    DATA(t16) = t4.
    t15 = t16->value.
    me->language_version = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
    DATA(t17) = t1.
    me->global_macros = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
    DATA(t18) = t3.
    me->reg = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list_macro_names.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zcl_lnt_macros.
    DATA(t3) = me->macros.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    DATA(t6) = t2.
    t5 = t6->macros.
    t4 = t5->keys( ).
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_statements.
    DATA(t2) = i_file.
    DATA(t3) = i_clear_b22e.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t3.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = abap_true.
        DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_position.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    CLEAR t14.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_macro_references.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_macro_references.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_registry.
    CLEAR t19.
    DATA(t20) = me->reg.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_macro_references.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t19.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zif_lnt_macro_references.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zif_lnt_macro_references.
      CLEAR t25.
      DATA t26 TYPE REF TO zif_lnt_registry.
      CLEAR t26.
      DATA(t27) = t19.
      t26 = t27.
      t25 = t26->get_macro_references( ).
      t21 = t25.
    ENDIF.
    t18 = t21.
    t17 = t18.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t3.
    t28 = t29->value.
    IF t28 = abap_true.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zif_lnt_macro_references.
      CLEAR t31.
      DATA(t32) = t17.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t31.
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      t34 = xsdbool( t35 = abap_false ).
      IF t34 = abap_true.
        DATA t37 TYPE REF TO zif_lnt_macro_references.
        CLEAR t37.
        DATA(t38) = t31.
        t37 = t38.
        DATA(t39) = VALUE string( ).
        DATA(t40) = t2.
        t39 = t40->get_filename( ).
        t37->clear_feba( i_filename = t39 ).
      ENDIF.
      DATA(t41) = abap_false.
      t33 = t41.
      t30 = t33.
    ENDIF.
    DATA(t42) = VALUE i( ).
    DATA(t43) = 0.
    t42 = t43.
    DO.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t42.
      DATA(t46) = VALUE i( ).
      DATA(t47) = t1.
      t47->load( ).
      t46 = lines( t47->items ).
      t44 = xsdbool( t45 < t46 ).
      IF t44 = abap_false.
        EXIT.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t49.
      DATA(t50) = t1.
      DATA(t51) = t42.
      t51 = t51 + 1.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      t50->load( ).
      CLEAR t52.
      READ TABLE t50->items INDEX t51 INTO t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t49.
      IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t52.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        t54 = t53->as_ref( ).
        t49 ?= t54.
      ELSE.
        t49 ?= t52.
      ENDIF.
      t48 = t49.
      DATA t55 TYPE REF TO zif_lnt_statement.
      CLEAR t55.
      DATA t56 TYPE REF TO zif_lnt_statement.
      CLEAR t56.
      DATA(t57) = t48.
      t56 = t57->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t55 = t56.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = t55.
      t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_define ).
      IF t58 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t62.
          DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t63.
          DATA(t64) = t48.
          t63 = t64->get_tokens( ).
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          t63->load( ).
          CLEAR t65.
          READ TABLE t63->items INDEX 2 INTO t65.
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t66.
          CLEAR t62.
          IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t66 ?= t65.
            DATA t67 TYPE REF TO object.
            CLEAR t67.
            t67 = t66->as_ref( ).
            t62 ?= t67.
          ELSE.
            t62 ?= t65.
          ENDIF.
          t60 = t62.
        ELSE.
          DATA t68 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t68.
          t60 = t68.
        ENDIF.
        t11 = t60.
        DATA t69 TYPE REF TO zcl_lnt_position.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_position.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t73.
          DATA(t74) = t48.
          t73 = t74->get_first_token( ).
          t72 = t73.
          DATA t75 TYPE REF TO zcl_lnt_position.
          CLEAR t75.
          DATA(t76) = t72.
          t75 = t76->start.
          t71 = t75.
          t69 = t71.
        ELSE.
          DATA t77 TYPE REF TO zcl_lnt_position.
          CLEAR t77.
          t69 = t77.
        ENDIF.
        t13 = t69.
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t78.
        CREATE OBJECT t78.
        t15 = t78.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = t55.
        t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_include ).
        IF t79 = abap_true.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t83.
          DATA t84 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t84.
          DATA(t85) = t48.
          DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
          t84 = t85->find_direct_expression( i_type_9913 = t86 ).
          t83 = t84.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = t83.
          IF t89 IS INITIAL.
            t88 = abap_true.
          ENDIF.
          IF t88 = abap_true.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            t87 = t90.
          ELSE.
            DATA(t91) = VALUE string( ).
            DATA t92 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t92.
            DATA(t93) = t83.
            t92 = t93.
            t91 = t92->concat_tokens( ).
            DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t94->has = abap_true.
            t94->value = t91.
            t87 = t94.
          ENDIF.
          t82 = t87.
          t81 = t82.
          DATA t95 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t95.
          DATA t96 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          DATA t98 TYPE REF TO zif_lnt_object.
          CLEAR t98.
          DATA t99 TYPE REF TO zif_lnt_object.
          CLEAR t99.
          DATA t100 TYPE REF TO zif_lnt_registry.
          CLEAR t100.
          DATA(t101) = me->reg.
          t100 = t101.
          DATA t102 TYPE REF TO zif_lnt_object.
          CLEAR t102.
          DATA(t103) = VALUE abap_bool( ).
          DATA(t104) = t100.
          IF t104 IS INITIAL.
            t103 = abap_true.
          ENDIF.
          IF t103 = abap_true.
            DATA t105 TYPE REF TO zif_lnt_object.
            CLEAR t105.
            t102 = t105.
          ELSE.
            DATA t106 TYPE REF TO zif_lnt_object.
            CLEAR t106.
            DATA t107 TYPE REF TO zif_lnt_registry.
            CLEAR t107.
            DATA(t108) = t100.
            t107 = t108.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            DATA(t110) = abap_true.
            IF t110 = abap_true.
              DATA(t111) = |PROG|.
              DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t112->has = abap_true.
              t112->value = t111.
              t109 = t112.
            ELSE.
              DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t113.
              t109 = t113.
            ENDIF.
            DATA(t114) = t81.
            t106 = t107->get_object( i_type_9913 = t109 i_name = t114 ).
            t102 = t106.
          ENDIF.
          t99 = t102.
          t98 = t99.
          CLEAR t97.
          IF t98 IS BOUND.
            DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t115.
            DATA t116 TYPE REF TO object.
            CLEAR t116.
            CLEAR t115.
            t116 = t98.
            TRY.
                t97 ?= t116.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t97 IS NOT BOUND.
              TRY.
                  t115 ?= t98.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t115 IS BOUND.
                t97 = t115->source( ).
              ENDIF.
              IF t97 IS NOT BOUND.
                CREATE OBJECT t97.
                t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t97->oval = t98.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t96.
          IF t97 IS BOUND.
            IF t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t96 ?= t97->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t96 IS NOT BOUND.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
            ENDIF.
          ENDIF.
          t95 = t96.
          DATA(t117) = VALUE abap_bool( ).
          DATA(t118) = t95.
          t117 = xsdbool( t118 IS BOUND ).
          IF t117 = abap_true.
            DATA t119 TYPE REF TO zcl_lnt_iparse_result.
            CLEAR t119.
            DATA t120 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t120.
            DATA(t121) = t95.
            t120 = t121.
            DATA t122 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t122.
            DATA(t123) = abap_true.
            IF t123 = abap_true.
              DATA(t124) = me->release_3664.
              t122 = t124.
            ELSE.
              DATA t125 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t125.
              t122 = t125.
            ENDIF.
            DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t126.
            DATA(t127) = abap_true.
            IF t127 = abap_true.
              DATA(t128) = me->global_macros.
              t126 = t128.
            ELSE.
              DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t129.
              t126 = t129.
            ENDIF.
            DATA(t130) = me->reg.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA(t132) = abap_true.
            IF t132 = abap_true.
              DATA(t133) = CONV string( me->language_version ).
              DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t134->has = abap_true.
              t134->value = t133.
              t131 = t134.
            ELSE.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t135.
              t131 = t135.
            ENDIF.
            t119 = t120->parse( i_release_7928 = t122 i_global_macros_5535 = t126 i_reg_f149 = t130 i_language_version_0e1d = t131 ).
            DATA t136 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t136.
            DATA t137 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t137.
            DATA t138 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t138.
            DATA(t139) = t95.
            t138 = t139.
            t137 = t138->get_main_abap_file( ).
            t136 = t137.
            DATA(t140) = VALUE abap_bool( ).
            DATA(t141) = t136.
            t140 = xsdbool( t141 IS BOUND ).
            IF t140 = abap_true.
              DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t142.
              DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t143.
              DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t144.
              CREATE OBJECT t144.
              t143 = t144.
              DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t145.
              DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t146.
              DATA(t147) = t143.
              DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t148.
              DATA t149 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t149.
              DATA t150 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t150.
              DATA(t151) = t136.
              t150 = t151.
              t149 = t150.
              DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t152.
              DATA(t153) = t149.
              t152 = t153->statements.
              t148 = t152.
              t146 = t147->concat( p0 = t148 ).
              t145 = t146.
              DATA(t154) = t145.
              t142 = t154.
              DATA t155 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t155.
              DATA(t156) = t136.
              t155 = t156.
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
              me->find_8f95( i_statements = t142 i_file = t155 i_clear_b22e = t157 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = t11.
          t162 = xsdbool( t163 IS BOUND ).
          IF t162 = abap_true.
            DATA(t164) = VALUE abap_bool( ).
            DATA(t165) = t55.
            t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_end_of_definition ).
            IF t164 = abap_true.
              DATA t166 TYPE REF TO zcl_lnt_macros.
              CLEAR t166.
              DATA(t167) = me->macros.
              t166 = t167.
              DATA(t168) = VALUE string( ).
              DATA(t169) = VALUE string( ).
              DATA t170 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t170.
              DATA t171 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t171.
              DATA(t172) = t11.
              t171 = t172.
              t170 = t171.
              DATA(t173) = VALUE string( ).
              DATA(t174) = t170.
              t173 = t174->str.
              t169 = t173.
              t168 = t169.
              DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t175.
              DATA(t176) = t15.
              t175 = t176.
              DATA(t177) = VALUE string( ).
              DATA(t178) = VALUE string( ).
              DATA(t179) = t2.
              t178 = t179->get_filename( ).
              t177 = t178.
              DATA(t180) = VALUE abap_bool( ).
              DATA(t181) = VALUE string( ).
              DATA(t182) = t168.
              t181 = t182.
              DATA(t183) = VALUE abap_bool( ).
              DATA(t184) = VALUE abap_bool( ).
              DATA t185 TYPE REF TO zcl_lnt_shape_9d228663.
              CLEAR t185.
              DATA t186 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
              CLEAR t186.
              DATA(t187) = t166.
              t186 = t187->macros.
              DATA(t188) = VALUE string( ).
              DATA(t189) = t181.
              DATA(t190) = strlen( t189 ).
              t188 = t189.
              IF t188 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t188 TO UPPER CASE.
              ELSE.
                t188 = zlnt_runtime_uppe_91169605024d=>full( t188 ).
              ENDIF.
              t185 = t186->get( p0 = t188 ).
              t184 = xsdbool( t185 IS BOUND ).
              IF t184 = abap_true.
                DATA(t191) = abap_true.
                t183 = t191.
              ELSE.
                DATA(t192) = abap_false.
                t183 = t192.
              ENDIF.
              t180 = t183.
              IF t180 = abap_true.
              ELSE.
                DATA t193 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
                CLEAR t193.
                DATA t194 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
                CLEAR t194.
                DATA(t195) = t166.
                t194 = t195->macros.
                DATA(t196) = VALUE string( ).
                DATA(t197) = t168.
                DATA(t198) = strlen( t197 ).
                t196 = t197.
                IF t196 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t196 TO UPPER CASE.
                ELSE.
                  t196 = zlnt_runtime_uppe_91169605024d=>full( t196 ).
                ENDIF.
                DATA t199 TYPE REF TO zcl_lnt_shape_9d228663.
                CLEAR t199.
                DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t200.
                DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t201.
                DATA(t202) = abap_true.
                IF t202 = abap_true.
                  DATA(t203) = t175.
                  t201 = t203.
                ELSE.
                  DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t204.
                  t201 = t204.
                ENDIF.
                t200 = t201.
                DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t205.
                DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t206.
                DATA(t207) = abap_true.
                IF t207 = abap_true.
                  DATA(t208) = t177.
                  DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t209->has = abap_true.
                  t209->value = t208.
                  t206 = t209.
                ELSE.
                  DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t210.
                  t206 = t210.
                ENDIF.
                t205 = t206.
                t199 = NEW zcl_lnt_shape_9d228663( i_statements = t200 i_filename = t205 ).
                CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
                t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t211.
                IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t211 ).
                ENDIF.
                DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t212.
                IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t212 ).
                ENDIF.
                CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
                t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t213) = |statements|.
                DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t214.
                IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
                ENDIF.
                DATA(t215) = |filename|.
                DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t216.
                IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
                ENDIF.
                t193 = t194->set( p0 = t196 p1 = t199 ).
              ENDIF.
              DATA(t217) = VALUE abap_bool( ).
              DATA t218 TYPE REF TO zif_lnt_macro_references.
              CLEAR t218.
              DATA(t219) = t17.
              t218 = t219.
              DATA(t220) = VALUE abap_bool( ).
              DATA(t221) = VALUE abap_bool( ).
              DATA(t222) = VALUE abap_bool( ).
              DATA(t223) = t218.
              IF t223 IS INITIAL.
                t222 = abap_true.
              ENDIF.
              t221 = xsdbool( t222 = abap_false ).
              IF t221 = abap_true.
                DATA t224 TYPE REF TO zif_lnt_macro_references.
                CLEAR t224.
                DATA(t225) = t218.
                t224 = t225.
                DATA t226 TYPE REF TO zcl_lnt_ifilename_and_token.
                CLEAR t226.
                DATA(t227) = VALUE string( ).
                DATA(t228) = VALUE string( ).
                DATA(t229) = t2.
                t228 = t229->get_filename( ).
                t227 = t228.
                DATA t230 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t230.
                DATA t231 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t231.
                DATA(t232) = t11.
                t231 = t232.
                t230 = t231.
                t226 = NEW zcl_lnt_ifilename_and_token( i_filename = t227 i_token = t230 ).
                CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
                t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t233.
                IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t233 ).
                ENDIF.
                DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t234.
                IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t234 ).
                ENDIF.
                CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
                t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t235) = |filename|.
                DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t236.
                IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
                ENDIF.
                DATA(t237) = |token|.
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t238.
                IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
                ENDIF.
                DATA t239 TYPE REF TO zcl_lnt_position.
                CLEAR t239.
                DATA(t240) = t13.
                t239 = t240.
                DATA t241 TYPE REF TO zcl_lnt_position.
                CLEAR t241.
                DATA t242 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t242.
                DATA t243 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t243.
                DATA(t244) = t48.
                t243 = t244->get_last_token( ).
                t242 = t243.
                DATA t245 TYPE REF TO zcl_lnt_position.
                CLEAR t245.
                DATA(t246) = VALUE f( ).
                DATA t247 TYPE REF TO zcl_lnt_position.
                CLEAR t247.
                DATA t248 TYPE REF TO zcl_lnt_position.
                CLEAR t248.
                DATA(t249) = t242.
                t248 = t249->start.
                t247 = t248.
                DATA(t250) = VALUE f( ).
                DATA(t251) = t247.
                t250 = t251->row.
                t246 = t250.
                DATA t252 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t252.
                DATA t253 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t253.
                DATA t254 TYPE REF TO zcl_lnt_position.
                CLEAR t254.
                DATA t255 TYPE REF TO zcl_lnt_position.
                CLEAR t255.
                DATA(t256) = t242.
                t255 = t256->start.
                t254 = t255.
                DATA t257 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t257.
                DATA(t258) = t254.
                t257 = t258->col.
                t253 = t257.
                DATA(t259) = VALUE f( ).
                DATA(t260) = VALUE i( ).
                DATA(t261) = VALUE string( ).
                DATA(t262) = t242.
                t261 = t262->str.
                DATA(t263) = strlen( t261 ).
                t260 = t263.
                t259 = t260.
                DATA(t264) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t264->has = abap_true.
                t264->value = t259.
                t252 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t253 right = t264 op = `+` ).
                t245 = NEW zcl_lnt_position( i_row = t246 i_col = t252 ).
                t241 = t245.
                t224->add_definition( i_ref = t226 i_start = t239 i_end = t241 ).
              ENDIF.
              DATA(t265) = abap_false.
              t220 = t265.
              t217 = t220.
              DATA t266 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t266.
              t11 = t266.
            ELSE.
              DATA(t267) = VALUE abap_bool( ).
              DATA(t268) = VALUE abap_bool( ).
              DATA(t269) = t55.
              t268 = xsdbool( t269 IS BOUND AND t269 IS INSTANCE OF zcl_lnt_st_comment ).
              t267 = xsdbool( t268 = abap_false ).
              IF t267 = abap_true.
                DATA(t270) = t1.
                DATA(t271) = t42.
                DATA t272 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t272.
                DATA t273 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t273.
                DATA(t274) = NEW zcl_lnt_macro_content( ).
                DATA t275 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t275.
                DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t276.
                t273 = NEW zcl_lnt_statement_node( i_statement = t274 i_colon = t275 i_pragmas = t276 ).
                DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t277.
                DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t278.
                DATA(t279) = t48.
                t278 = t279->get_tokens( ).
                t277 = me->tokens_to_nodes( i_tokens = t278 ).
                t272 = t273->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t277 ).
                t270->put( p0 = t271 p1 = t272 ).
                DATA(t280) = t15.
                DATA t281 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t281.
                DATA(t282) = t1.
                DATA(t283) = t42.
                t283 = t283 + 1.
                DATA t284 TYPE REF TO object.
                CLEAR t284.
                t282->load( ).
                CLEAR t284.
                READ TABLE t282->items INDEX t283 INTO t284.
                DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t285.
                CLEAR t281.
                IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t285 ?= t284.
                  DATA t286 TYPE REF TO object.
                  CLEAR t286.
                  t286 = t285->as_ref( ).
                  t281 ?= t286.
                ELSE.
                  t281 ?= t284.
                ENDIF.
                t280->load( ).
                APPEND t281 TO t280->items.
                t280->save( ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t287) = VALUE i( ).
      DATA(t288) = t42.
      DATA(t289) = 1.
      t287 = t288 + t289.
      t42 = t287.
    ENDDO.
  ENDMETHOD.

  METHOD handle_macros.
    DATA(t1) = i_statements.
    DATA(t2) = i_file.
    DATA(t3) = i_seen.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t3.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = NEW zlnt_runtime_set__1827558fd4c7( ).
        t6 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t9.
        t6 = t9.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA(t13) = abap_false.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_macro_references.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_macro_references.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_registry.
    DATA(t17) = me->reg.
    t16 = t17.
    DATA t18 TYPE REF TO zif_lnt_macro_references.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t16.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zif_lnt_macro_references.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_macro_references.
      DATA t23 TYPE REF TO zif_lnt_registry.
      DATA(t24) = t16.
      t23 = t24.
      t22 = t23->get_macro_references( ).
      t18 = t22.
    ENDIF.
    t15 = t18.
    t14 = t15.
    DATA(t25) = t1.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    DATA(t28) = VALUE i( ).
    DO.
      t25->load( ).
      IF t28 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t25->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA t31 TYPE REF TO zif_lnt_statement.
      DATA t32 TYPE REF TO zif_lnt_statement.
      DATA(t33) = t26.
      t32 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t31 = t32.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t31.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_unknown ).
      t34 = t35.
      IF t35 = abap_false.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t31.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_macro_call ).
        t34 = t37.
      ENDIF.
      IF t34 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t42) = t26.
        t41 = t42->get_tokens( ).
        t40 = zcl_lnt_st_expand_macros=>find_name( i_tokens = t41 ).
        t39 = t40.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = t39.
        IF t45 IS BOUND.
          IF t45->has = abap_true.
            t44 = xsdbool( strlen( t45->value ) > 0 ).
          ENDIF.
        ENDIF.
        t43 = t44.
        IF t44 = abap_true.
          DATA(t46) = VALUE abap_bool( ).
          DATA t47 TYPE REF TO zcl_lnt_macros.
          DATA(t48) = me->macros.
          t47 = t48.
          DATA t49 TYPE string.
          DATA t50 TYPE string.
          DATA(t51) = t39.
          t50 = t51->value.
          t49 = t50.
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA t54 TYPE REF TO zcl_lnt_shape_9d228663.
          CLEAR t54.
          DATA t55 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
          DATA(t56) = t47.
          t55 = t56->macros.
          DATA t57 TYPE string.
          DATA(t58) = t49.
          DATA(t59) = strlen( t58 ).
          t57 = t58.
          IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t57 TO UPPER CASE.
          ELSE.
            t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
          ENDIF.
          t54 = t55->get( p0 = t57 ).
          t53 = xsdbool( t54 IS BOUND ).
          IF t53 = abap_true.
            DATA(t60) = abap_true.
            t52 = t60.
          ELSE.
            DATA(t61) = abap_false.
            t52 = t61.
          ENDIF.
          t46 = t52.
          t43 = t46.
        ENDIF.
        IF t43 = abap_true.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_macros.
          DATA(t65) = me->macros.
          t64 = t65.
          DATA t66 TYPE string.
          DATA t67 TYPE string.
          DATA(t68) = t39.
          t67 = t68->value.
          t66 = t67.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          DATA t70 TYPE REF TO zcl_lnt_shape_9d228663.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_shape_9d228663.
          CLEAR t71.
          DATA t72 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
          DATA(t73) = t64.
          t72 = t73->macros.
          DATA t74 TYPE string.
          DATA(t75) = t66.
          DATA(t76) = strlen( t75 ).
          t74 = t75.
          IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t74 TO UPPER CASE.
          ELSE.
            t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
          ENDIF.
          t71 = t72->get( p0 = t74 ).
          t70 = t71.
          t69 = t70->filename.
          t63 = t69.
          t62 = t63.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = t62.
          IF t78 IS BOUND.
            IF t78->has = abap_true.
              t77 = xsdbool( strlen( t78->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t77 = abap_true.
            DATA(t79) = VALUE abap_bool( ).
            DATA t80 TYPE REF TO zif_lnt_macro_references.
            DATA(t81) = t14.
            t80 = t81.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = VALUE abap_bool( ).
            DATA(t84) = VALUE abap_bool( ).
            DATA(t85) = t80.
            IF t85 IS INITIAL.
              t84 = abap_true.
            ENDIF.
            t83 = xsdbool( t84 = abap_false ).
            IF t83 = abap_true.
              DATA t86 TYPE REF TO zif_lnt_macro_references.
              DATA(t87) = t80.
              t86 = t87.
              DATA t88 TYPE REF TO zcl_lnt_ifilename_and_token.
              DATA t89 TYPE string.
              DATA t90 TYPE string.
              DATA(t91) = t62.
              t90 = t91->value.
              t89 = t90.
              DATA t92 TYPE REF TO zcl_lnt_abstract_token.
              DATA t93 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t94) = t26.
              t93 = t94->get_first_token( ).
              t92 = t93.
              t88 = NEW zcl_lnt_ifilename_and_token( i_filename = t89 i_token = t92 ).
              CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
              t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t95.
              IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t95 ).
              ENDIF.
              DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t96.
              IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t96 ).
              ENDIF.
              CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
              t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t97) = |filename|.
              DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t98.
              IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
              ENDIF.
              DATA(t99) = |token|.
              DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t100.
              IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
              ENDIF.
              t86->add_reference( i_ref = t88 ).
            ENDIF.
            DATA(t101) = abap_false.
            t82 = t101.
            t79 = t82.
          ENDIF.
          DATA(t102) = t10.
          DATA t103 TYPE REF TO zcl_lnt_statement_node.
          DATA t104 TYPE REF TO zcl_lnt_statement_node.
          DATA(t105) = NEW zcl_lnt_macro_call( ).
          DATA t106 TYPE REF TO zcl_lnt_abstract_token.
          DATA t107 TYPE REF TO zcl_lnt_statement_node.
          DATA(t108) = t26.
          t107 = t108.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t110) = t107.
          t109 = t110->colon.
          t106 = t109.
          DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t111.
          t104 = NEW zcl_lnt_statement_node( i_statement = t105 i_colon = t106 i_pragmas = t111 ).
          DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t114) = t26.
          t113 = t114->get_tokens( ).
          t112 = me->tokens_to_nodes( i_tokens = t113 ).
          t103 = t104->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t112 ).
          t102->load( ).
          APPEND t103 TO t102->items.
          t102->save( ).
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = VALUE abap_bool( ).
          DATA t117 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          DATA(t118) = t3.
          t117 = t118.
          DATA t119 TYPE string.
          DATA t120 TYPE string.
          DATA(t121) = t39.
          t120 = t121->value.
          DATA(t122) = strlen( t120 ).
          t119 = t120.
          IF t119 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t119 TO UPPER CASE.
          ELSE.
            t119 = zlnt_runtime_uppe_91169605024d=>full( t119 ).
          ENDIF.
          t116 = t117->has( p0 = t119 ).
          t115 = xsdbool( t116 = abap_false ).
          IF t115 = abap_true.
            DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t125 TYPE string.
            DATA(t126) = t39.
            t125 = t126->value.
            DATA(t127) = t26.
            t124 = me->expand_contents( i_name = t125 i_statement = t127 ).
            t123 = t124.
            DATA t128 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            CLEAR t128.
            DATA t129 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            CLEAR t129.
            DATA t130 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA t131 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t132) = t3.
            t131 = t132.
            DATA t133 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t134) = t3.
            t133 = t134.
            t130 = t131->copy( p0 = t133 ).
            DATA t135 TYPE string.
            DATA t136 TYPE string.
            DATA(t137) = t39.
            t136 = t137->value.
            DATA(t138) = strlen( t136 ).
            t135 = t136.
            IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t135 TO UPPER CASE.
            ELSE.
              t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
            ENDIF.
            t129 = t130->add( p0 = t135 ).
            t128 = t129.
            DATA t139 TYPE REF TO zcl_lnt_shape_df3d0820.
            CLEAR t139.
            DATA t140 TYPE REF TO zcl_lnt_shape_df3d0820.
            CLEAR t140.
            DATA(t141) = t123.
            DATA(t142) = t2.
            DATA t143 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            CLEAR t143.
            DATA(t144) = abap_true.
            IF t144 = abap_true.
              DATA(t145) = t128.
              t143 = t145.
            ELSE.
              DATA t146 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              CLEAR t146.
              t143 = t146.
            ENDIF.
            t140 = me->handle_macros( i_statements = t141 i_file = t142 i_seen = t143 ).
            t139 = t140.
            DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t148) = t139.
            t147 = t148->statements.
            DATA t149 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t149.
            DATA t150 TYPE REF TO object.
            CLEAR t150.
            DATA(t151) = VALUE i( ).
            DO.
              t147->load( ).
              IF t151 >= lines( t147->items ).
                EXIT.
              ENDIF.
              CLEAR t150.
              READ TABLE t147->items INDEX t151 + 1 INTO t150.
              t151 = t151 + 1.
              DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t152.
              CLEAR t149.
              IF t150 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t152 ?= t150.
                DATA t153 TYPE REF TO object.
                t153 = t152->as_ref( ).
                t149 ?= t153.
              ELSE.
                t149 ?= t150.
              ENDIF.
              DATA(t154) = t10.
              DATA(t155) = t149.
              t154->load( ).
              APPEND t155 TO t154->items.
              t154->save( ).
            ENDDO.
            DATA t156 TYPE abap_bool.
            DATA t157 TYPE abap_bool.
            DATA(t158) = t139.
            t157 = t158->contains_unknown.
            DATA(t159) = abap_true.
            t156 = xsdbool( t157 = t159 ).
            IF t156 = abap_true.
              DATA(t160) = abap_true.
              t12 = t160.
            ENDIF.
          ELSE.
            DATA t161 TYPE REF TO zcl_lnt_statement_node.
            DATA t162 TYPE REF TO zcl_lnt_statement_node.
            DATA(t163) = NEW zcl_lnt_macro_recursion( ).
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            DATA t165 TYPE REF TO zcl_lnt_statement_node.
            DATA(t166) = t26.
            t165 = t166.
            DATA t167 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t168) = t165.
            t167 = t168->colon.
            t164 = t167.
            DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t169.
            t162 = NEW zcl_lnt_statement_node( i_statement = t163 i_colon = t164 i_pragmas = t169 ).
            t161 = t162.
            DATA(t170) = t10.
            DATA t171 TYPE REF TO zcl_lnt_statement_node.
            DATA(t172) = t161.
            DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t175) = t26.
            t174 = t175->get_tokens( ).
            t173 = me->tokens_to_nodes( i_tokens = t174 ).
            t171 = t172->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t173 ).
            t170->load( ).
            APPEND t171 TO t170->items.
            t170->save( ).
          ENDIF.
          CONTINUE.
        ELSE.
          DATA(t176) = abap_true.
          t12 = t176.
        ENDIF.
      ENDIF.
      DATA(t177) = t10.
      DATA(t178) = t26.
      t177->load( ).
      APPEND t178 TO t177->items.
      t177->save( ).
    ENDDO.
    DATA t179 TYPE REF TO zcl_lnt_shape_df3d0820.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    DATA(t182) = abap_true.
    IF t182 = abap_true.
      DATA(t183) = t10.
      t181 = t183.
    ELSE.
      DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t184.
      t181 = t184.
    ENDIF.
    t180 = t181.
    DATA t185 TYPE abap_bool.
    DATA(t186) = t12.
    t185 = t186.
    t179 = NEW zcl_lnt_shape_df3d0820( i_statements = t180 i_contains_unknown = t185 ).
    CREATE OBJECT t179->zlnt_view_ownkeys_b0e8086400eb.
    t179->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    IF t179->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t187 ).
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    IF t179->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `containsUnknown` p1 = t188 ).
    ENDIF.
    CREATE OBJECT t179->zlnt_json_ownkeys_70e5fd461788.
    t179->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t189) = |statements|.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    IF t179->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t179->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
    ENDIF.
    DATA(t191) = |containsUnknown|.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    IF t179->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t179->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
    ENDIF.
    result = t179.

  ENDMETHOD.

  METHOD expand_contents.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_name.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_macros.
    DATA(t6) = me->macros.
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_shape_9d228663.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_shape_9d228663.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
      DATA(t15) = t5.
      t14 = t15->macros.
      DATA t16 TYPE string.
      DATA(t17) = t7.
      DATA(t18) = strlen( t17 ).
      t16 = t17.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      t13 = t14->get( p0 = t16 ).
      t12 = t13.
      t11 = t12->statements.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = t3.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    t20 = t21.
    IF t21 = abap_false.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE i.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t3.
      t30 = t31.
      t30->load( ).
      t29 = lines( t30->items ).
      DATA(t32) = 0.
      t28 = xsdbool( t29 = t32 ).
      t20 = t28.
    ENDIF.
    IF t20 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE string.
    DATA(t35) = ||.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t37) = t3.
    t36 = t37.
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t38.
    DATA t39 TYPE REF TO object.
    CLEAR t39.
    DATA(t40) = VALUE i( ).
    DO.
      t36->load( ).
      IF t40 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t36->items INDEX t40 + 1 INTO t39.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t38.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t39.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t38 ?= t42.
      ELSE.
        t38 ?= t39.
      ENDIF.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA(t45) = t38.
      t44 = t45->concat_tokens( ).
      t43 = t44.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE string.
      DATA t48 TYPE REF TO zcl_lnt_statement_node.
      DATA(t49) = t38.
      t48 = t49.
      DATA t50 TYPE string.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t53) = t48.
      t52 = t53->get_last_token( ).
      t51 = t52.
      DATA t54 TYPE string.
      DATA(t55) = t51.
      t54 = t55->str.
      t50 = t54.
      t47 = t50.
      DATA(t56) = |,|.
      t46 = xsdbool( t47 = t56 ).
      IF t46 = abap_true.
        DATA t57 TYPE string.
        DATA(t58) = t43.
        DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t59.
        DATA(t60) = |,$|.
        DATA(t61) = ||.
        CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t60 flags = t61.
        DATA(t62) = |.|.
        DATA(t63) = strlen( t58 ).
        t57 = t59->replace( p0 = t58 p1 = t62 ).
        t43 = t57.
      ENDIF.
      DATA t64 TYPE string.
      DATA(t65) = t34.
      DATA t66 TYPE string.
      DATA(t67) = t43.
      DATA(t68) = |\n|.
      DATA(t69) = strlen( t67 ).
      t66 = |{ t67 }{ t68 }|.
      DATA(t70) = strlen( t65 ).
      t64 = |{ t65 }{ t66 }|.
      t34 = t64.
    ENDDO.
    DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t73) = t2.
    t72 = me->build_input( i_statement = t73 ).
    t71 = t72.
    DATA t74 TYPE f.
    DATA(t75) = CONV f( 1 ).
    t74 = t75.
    DATA(t76) = t71.
    DATA(t77) = VALUE string( ).
    t76->dense( ).
    DATA(t78) = VALUE i( ).
    DO.
      t76->load( ).
      IF t78 >= lines( t76->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t76->items INDEX t78 + 1 INTO t77.
      IF t76->has( t78 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t78 = t78 + 1.
      DATA(t79) = VALUE string( ).
      DATA(t80) = VALUE string( ).
      DATA(t81) = |&|.
      DATA(t82) = VALUE string( ).
      DATA(t83) = t74.
      IF t83 <> trunc( t83 ) OR t83 > range_safe_integer OR t83 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t84) = CONV int8( t83 ).
      t82 = |{ t84 }|.
      DATA(t85) = strlen( t81 ).
      t80 = |{ t81 }{ t82 }|.
      t79 = t80.
      DATA t86 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t87 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t87.
      DATA(t88) = t79.
      DATA(t89) = |g|.
      CREATE OBJECT t87 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t88 flags = t89 checked = abap_true.
      t86 = t87.
      DATA(t90) = VALUE string( ).
      DATA(t91) = t34.
      DATA(t92) = t86.
      DATA(t93) = t77.
      DATA(t94) = strlen( t91 ).
      IF t93 CS '$'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t90 = t92->replace( p0 = t91 p1 = t93 ).
      t34 = t90.
      DATA t95 TYPE f.
      DATA(t96) = t74.
      DATA(t97) = CONV f( 1 ).
      t95 = t96 + t97.
      t74 = t95.
    ENDDO.
    DATA t98 TYPE REF TO zcl_lnt_memory_file.
    DATA t99 TYPE REF TO zcl_lnt_memory_file.
    DATA(t100) = |expand_macros.abap.prog|.
    DATA(t101) = t34.
    t99 = NEW zcl_lnt_memory_file( i_filename = t100 i_raw = t101 ).
    t98 = t99.
    DATA t102 TYPE REF TO zcl_lnt_iabaplexer_result.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_iabaplexer_result.
    CLEAR t103.
    DATA t104 TYPE REF TO zcl_lnt_lexer.
    DATA(t105) = NEW zcl_lnt_lexer( ).
    t104 = t105.
    DATA t106 TYPE REF TO zif_lnt_file.
    DATA(t107) = t98.
    t106 = t107.
    DATA t108 TYPE REF TO zcl_lnt_position.
    CLEAR t108.
    DATA t109 TYPE REF TO zcl_lnt_position.
    CLEAR t109.
    DATA(t110) = abap_true.
    IF t110 = abap_true.
      DATA t111 TYPE REF TO zcl_lnt_position.
      DATA t112 TYPE REF TO zcl_lnt_abstract_token.
      DATA t113 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t114) = t2.
      t113 = t114->get_first_token( ).
      t112 = t113.
      DATA t115 TYPE REF TO zcl_lnt_position.
      DATA(t116) = t112.
      t115 = t116->start.
      t111 = t115.
      t109 = t111.
    ELSE.
      DATA t117 TYPE REF TO zcl_lnt_position.
      CLEAR t117.
      t109 = t117.
    ENDIF.
    t108 = t109.
    DATA t118 TYPE REF TO zcl_lnt_iabaplexer_result.
    CLEAR t118.
    DATA(t119) = t104.
    DATA(t120) = t108.
    t119->virtual = t120.
    DELETE t119->zlnt_record_delet_0597644d88b4 WHERE table_line = `virtual`.
    DATA(t121) = t104.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t121->tokens = t122.
    DELETE t121->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    DATA(t123) = t104.
    DATA t124 TYPE f.
    DATA(t125) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
    t124 = t125.
    t123->m = t124.
    DELETE t123->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
    DATA(t126) = t104.
    DATA t127 TYPE string.
    DATA(t128) = t106.
    t127 = t128->get_raw( ).
    t126->process( i_raw = t127 ).
    DATA t129 TYPE REF TO zcl_lnt_iabaplexer_result.
    DATA t130 TYPE REF TO zif_lnt_file.
    DATA(t131) = t106.
    t130 = t131.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t134) = t104.
    t133 = t134->tokens.
    t132 = t133.
    t129 = NEW zcl_lnt_iabaplexer_result( i_file = t130 i_tokens = t132 ).
    CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
    t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t135 ).
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t136 ).
    ENDIF.
    CREATE OBJECT t129->zlnt_json_ownkeys_70e5fd461788.
    t129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t137) = |file|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
    ENDIF.
    DATA(t139) = |tokens|.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
    ENDIF.
    t118 = t129.
    t103 = t118.
    t102 = t103.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t142.
    DATA t143 TYPE REF TO zcl_lnt_statement_parser.
    CLEAR t143.
    DATA(t144) = me->release_3664.
    DATA(t145) = me->reg.
    DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t146.
    DATA(t147) = abap_true.
    IF t147 = abap_true.
      DATA(t148) = CONV string( me->language_version ).
      DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t149->has = abap_true.
      t149->value = t148.
      t146 = t149.
    ELSE.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t150.
      t146 = t150.
    ENDIF.
    t143 = NEW zcl_lnt_statement_parser( i_release_7928 = t144 i_reg_f149 = t145 i_language_version_0e1d = t146 ).
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA(t154) = t152.
    DATA(t155) = t102.
    t154->load( ).
    APPEND t155 TO t154->items.
    t154->save( ).
    DATA(t156) = t152.
    t151 = t156.
    DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t158 TYPE REF TO zcl_lnt_macros.
    DATA(t159) = me->macros.
    t158 = t159.
    DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t161 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    DATA(t162) = t158.
    t161 = t162->macros.
    t160 = t161->keys( ).
    t157 = t160.
    t142 = t143->run( i_input_967e = t151 i_global_macros_5535 = t157 ).
    t141 = t142.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    DATA t164 TYPE REF TO zcl_lnt_istatement_result.
    CLEAR t164.
    DATA(t165) = t141.
    DATA t166 TYPE REF TO object.
    CLEAR t166.
    t165->load( ).
    CLEAR t166.
    READ TABLE t165->items INDEX 1 INTO t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    CLEAR t164.
    IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t167 ?= t166.
      DATA t168 TYPE REF TO object.
      t168 = t167->as_ref( ).
      t164 ?= t168.
    ELSE.
      t164 ?= t166.
    ENDIF.
    t163 = t164->statements.
    result = t163.

  ENDMETHOD.

  METHOD build_input.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->get_tokens( ).
    t4 = t5.
    DATA t7 TYPE string.
    DATA(t8) = ||.
    t7 = t8.
    DATA t9 TYPE i.
    DATA(t10) = 1.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      DATA(t15) = t4.
      t15->load( ).
      t14 = lines( t15->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA(t19) = t4.
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t19->load( ).
      CLEAR t21.
      READ TABLE t19->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t18.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t27.
        DATA(t28) = t4.
        DATA t29 TYPE i.
        DATA(t30) = t9.
        DATA(t31) = 1.
        t29 = t30 + t31.
        t29 = t29 + 1.
        DATA t32 TYPE REF TO object.
        CLEAR t32.
        t28->load( ).
        CLEAR t32.
        READ TABLE t28->items INDEX t29 INTO t32.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t27.
        IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t32.
          DATA t34 TYPE REF TO object.
          t34 = t33->as_ref( ).
          t27 ?= t34.
        ELSE.
          t27 ?= t32.
        ENDIF.
        t25 = t27.
      ELSE.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t35.
        t25 = t35.
      ENDIF.
      t24 = t25.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE i.
      DATA(t38) = t9.
      DATA(t39) = 2.
      t37 = t38 + t39.
      DATA t40 TYPE i.
      DATA(t41) = t4.
      t41->load( ).
      t40 = lines( t41->items ).
      t36 = xsdbool( t37 = t40 ).
      IF t36 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t42.
        t24 = t42.
      ENDIF.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_position.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t17.
      t45 = t46.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t45.
      t47 = t48->start.
      t44 = t47.
      t43 = t44.
      DATA t49 TYPE abap_bool.
      DATA(t50) = t43.
      t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_virtual_position.
        DATA t52 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t53) = t43.
        t52 ?= t53.
        DATA t54 TYPE f.
        DATA t55 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t56) = t43.
        t55 ?= t56.
        t54 = t55->vrow.
        DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t59 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t60) = t43.
        t59 ?= t60.
        t58 = t59->vcol.
        DATA t61 TYPE f.
        DATA t62 TYPE i.
        DATA t63 TYPE string.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t65) = t17.
        t64 = t65.
        DATA t66 TYPE string.
        DATA(t67) = t64.
        t66 = t67->str.
        t63 = t66.
        DATA(t68) = strlen( t63 ).
        t62 = t68.
        t61 = t62.
        DATA(t69) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t69->has = abap_true.
        t69->value = t61.
        t57 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t58 right = t69 op = `+` ).
        t51 = NEW zcl_lnt_virtual_position( i_virtual = t52 i_row = t54 i_col = t57 ).
        t43 = t51.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_position.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t72) = t17.
        t71 = t72.
        DATA t73 TYPE REF TO zcl_lnt_position.
        DATA t74 TYPE f.
        DATA t75 TYPE REF TO zcl_lnt_position.
        DATA t76 TYPE REF TO zcl_lnt_position.
        DATA(t77) = t71.
        t76 = t77->start.
        t75 = t76.
        DATA t78 TYPE f.
        DATA(t79) = t75.
        t78 = t79->row.
        t74 = t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t82 TYPE REF TO zcl_lnt_position.
        DATA t83 TYPE REF TO zcl_lnt_position.
        DATA(t84) = t71.
        t83 = t84->start.
        t82 = t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t86) = t82.
        t85 = t86->col.
        t81 = t85.
        DATA t87 TYPE f.
        DATA t88 TYPE i.
        DATA t89 TYPE string.
        DATA(t90) = t71.
        t89 = t90->str.
        DATA(t91) = strlen( t89 ).
        t88 = t91.
        t87 = t88.
        DATA(t92) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t92->has = abap_true.
        t92->value = t87.
        t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t92 op = `+` ).
        t73 = NEW zcl_lnt_position( i_row = t74 i_col = t80 ).
        t70 = t73.
        t43 = t70.
      ENDIF.
      DATA t93 TYPE abap_bool.
      DATA t94 TYPE abap_bool.
      DATA(t95) = t24.
      t94 = xsdbool( t95 IS BOUND ).
      t93 = t94.
      IF t94 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE REF TO zcl_lnt_position.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t100) = t24.
        t99 = t100.
        t98 = t99.
        DATA t101 TYPE REF TO zcl_lnt_position.
        DATA(t102) = t98.
        t101 = t102->start.
        t97 = t101.
        DATA(t103) = t43.
        t96 = t97->equals( i_p = t103 ).
        t93 = t96.
      ENDIF.
      IF t93 = abap_true.
        DATA t104 TYPE string.
        DATA(t105) = t7.
        DATA t106 TYPE string.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t108) = t17.
        t107 = t108.
        DATA t109 TYPE string.
        DATA(t110) = t107.
        t109 = t110->str.
        t106 = t109.
        DATA(t111) = strlen( t105 ).
        t104 = |{ t105 }{ t106 }|.
        t7 = t104.
      ELSE.
        DATA t112 TYPE string.
        DATA(t113) = t7.
        DATA t114 TYPE string.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t116) = t17.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = t115.
        t117 = t118->str.
        t114 = t117.
        DATA(t119) = strlen( t113 ).
        t112 = |{ t113 }{ t114 }|.
        t7 = t112.
        DATA(t120) = t2.
        DATA(t121) = t7.
        t120->load( ).
        APPEND t121 TO t120->items.
        t120->save( ).
        DATA(t122) = ||.
        t7 = t122.
      ENDIF.
      DATA t123 TYPE i.
      DATA(t124) = t9.
      DATA(t125) = 1.
      t123 = t124 + t125.
      t9 = t123.
    ENDDO.
    DATA(t126) = t2.
    result = t126.

  ENDMETHOD.

  METHOD find_name.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = t4.
      t13 = xsdbool( t14 IS BOUND ).
      t12 = t13.
      IF t13 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_position.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_position.
        CLEAR t18.
        DATA t19 TYPE REF TO zcl_lnt_abstract_token.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t21) = t4.
        t20 = t21.
        t19 = t20.
        DATA t22 TYPE REF TO zcl_lnt_position.
        CLEAR t22.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = t19.
        IF t24 IS INITIAL.
          t23 = abap_true.
        ENDIF.
        IF t23 = abap_true.
          DATA t25 TYPE REF TO zcl_lnt_position.
          CLEAR t25.
          t22 = t25.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_position.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t28) = t19.
          t27 = t28.
          DATA t29 TYPE REF TO zcl_lnt_position.
          DATA t30 TYPE f.
          DATA t31 TYPE REF TO zcl_lnt_position.
          DATA t32 TYPE REF TO zcl_lnt_position.
          DATA(t33) = t27.
          t32 = t33->start.
          t31 = t32.
          DATA t34 TYPE f.
          DATA(t35) = t31.
          t34 = t35->row.
          t30 = t34.
          DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t38 TYPE REF TO zcl_lnt_position.
          DATA t39 TYPE REF TO zcl_lnt_position.
          DATA(t40) = t27.
          t39 = t40->start.
          t38 = t39.
          DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t42) = t38.
          t41 = t42->col.
          t37 = t41.
          DATA t43 TYPE f.
          DATA t44 TYPE i.
          DATA t45 TYPE string.
          DATA(t46) = t27.
          t45 = t46->str.
          DATA(t47) = strlen( t45 ).
          t44 = t47.
          t43 = t44.
          DATA(t48) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t48->has = abap_true.
          t48->value = t43.
          t36 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t37 right = t48 op = `+` ).
          t29 = NEW zcl_lnt_position( i_row = t30 i_col = t36 ).
          t26 = t29.
          t22 = t26.
        ENDIF.
        t18 = t22.
        t17 = t18.
        DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t17.
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t52.
          t49 = t52.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t54 TYPE REF TO zcl_lnt_position.
          DATA t55 TYPE REF TO zcl_lnt_position.
          DATA(t56) = t17.
          t55 = t56.
          t54 = t55.
          DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t58) = t54.
          t57 = t58->col.
          t53 = t57.
          t49 = t53.
        ENDIF.
        t16 = t49.
        DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t62 TYPE REF TO zcl_lnt_position.
          DATA t63 TYPE REF TO zcl_lnt_position.
          DATA t64 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t65) = t7.
          t64 = t65.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA(t67) = t64.
          t66 = t67->start.
          t63 = t66.
          t62 = t63.
          DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t69) = t62.
          t68 = t69->col.
          t61 = t68.
          t59 = t61.
        ELSE.
          DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t70.
          t59 = t70.
        ENDIF.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        IF t16 IS BOUND.
          t71 = t16->has.
        ENDIF.
        IF t59 IS BOUND.
          t72 = t59->has.
        ENDIF.
        IF t71 = t72.
          IF t71 = abap_false.
            t15 = abap_true.
          ELSE.
            IF t16->number_special <> 0 OR t59->number_special <> 0.
              t15 = xsdbool( t16->number_special = t59->number_special AND t16->number_special <> 1 ).
            ELSE.
              t15 = xsdbool( t16->value = t59->value ).
            ENDIF.
          ENDIF.
        ENDIF.
        IF t15 = abap_true.
          t15 = abap_false.
        ELSE.
          t15 = abap_true.
        ENDIF.
        t12 = t15.
      ENDIF.
      IF t12 = abap_true.
        EXIT.
      ELSE.
        DATA t73 TYPE abap_bool.
        DATA t74 TYPE abap_bool.
        DATA(t75) = t7.
        t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_lx_identifier ).
        t73 = t74.
        IF t74 = abap_false.
          DATA t76 TYPE abap_bool.
          DATA t77 TYPE string.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t79) = t7.
          t78 = t79.
          DATA t80 TYPE string.
          DATA(t81) = t78.
          t80 = t81->str.
          t77 = t80.
          DATA(t82) = |-|.
          t76 = xsdbool( t77 = t82 ).
          t73 = t76.
        ENDIF.
        IF t73 = abap_true.
          DATA(t83) = VALUE abap_bool( ).
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t85) = t2.
          t84 = t85.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          t86 = t87.
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = t84.
          IF t89 IS INITIAL.
            t88 = abap_true.
          ELSEIF t89->has = abap_false.
            t88 = abap_true.
          ENDIF.
          t83 = t88.
          IF t83 = abap_true.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            DATA(t91) = abap_true.
            IF t91 = abap_true.
              DATA t92 TYPE string.
              DATA t93 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t94) = t7.
              t93 = t94.
              DATA t95 TYPE string.
              DATA(t96) = t93.
              t95 = t96->str.
              t92 = t95.
              DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t97->has = abap_true.
              t97->value = t92.
              t90 = t97.
            ELSE.
              DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t98.
              t90 = t98.
            ENDIF.
            t2 = t90.
          ELSE.
            DATA t99 TYPE string.
            DATA t100 TYPE string.
            DATA(t101) = t2.
            t100 = t101->value.
            DATA t102 TYPE string.
            DATA t103 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t104) = t7.
            t103 = t104.
            DATA t105 TYPE string.
            DATA(t106) = t103.
            t105 = t106->str.
            t102 = t105.
            DATA(t107) = strlen( t100 ).
            t99 = |{ t100 }{ t102 }|.
            DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t108->has = abap_true.
            t108->value = t99.
            t2 = t108.
          ENDIF.
        ELSE.
          DATA t109 TYPE abap_bool.
          DATA(t110) = t7.
          t109 = xsdbool( t110 IS BOUND AND t110 IS INSTANCE OF zcl_lnt_pragma ).
          IF t109 = abap_true.
            CONTINUE.
          ELSE.
            EXIT.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = t7.
        t111 = t113.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t114.
        t111 = t114.
      ENDIF.
      t4 = t111.
    ENDDO.
    DATA(t115) = t2.
    result = t115.

  ENDMETHOD.

  METHOD tokens_to_nodes.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = t2.
      DATA t11 TYPE REF TO zcl_lnt_token_node.
      DATA(t12) = t5.
      t11 = NEW zcl_lnt_token_node( i_token = t12 ).
      t10->load( ).
      APPEND t11 TO t10->items.
      t10->save( ).
    ENDDO.
    DATA(t13) = t2.
    result = t13.

  ENDMETHOD.

  METHOD tokens_to_nodes_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = t1.
    t4 = t5.
    DATA(t6) = t2.
    DATA t7 TYPE REF TO zcl_lnt_token_node.
    DATA(t8) = t4.
    t7 = NEW zcl_lnt_token_node( i_token = t8 ).
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t9) = t2.
    result = t9.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
  ENDMETHOD.
ENDCLASS.
