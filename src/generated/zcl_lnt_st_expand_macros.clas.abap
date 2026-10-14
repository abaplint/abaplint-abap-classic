* TS: src/abap/2_statements/expand_macros.ts:64:1 ExpandMacros
CLASS zcl_lnt_st_expand_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
    DATA(t14) = t2.
    me->release_3664 = t14.
    DATA t15 TYPE string.
    DATA(t16) = t4.
    t15 = t16->value.
    me->language_version = t15.
    DATA(t17) = t1.
    me->global_macros = t17.
    DATA(t18) = t3.
    me->reg = t18.
  ENDMETHOD.

  METHOD list_macro_names.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/expand_macros.ts:81|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD find_8f95.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
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
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_position.
    CLEAR t14.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_macro_references.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_macro_references.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_registry.
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
      DATA t26 TYPE REF TO zif_lnt_registry.
      DATA(t27) = t19.
      t26 = t27.
      t25 = t26->get_macro_references( ).
      t21 = t25.
    ENDIF.
    t18 = t21.
    t17 = t18.
    DATA t28 TYPE abap_bool.
    DATA(t29) = t3.
    t28 = t29->value.
    IF t28 = abap_true.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zif_lnt_macro_references.
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
        DATA(t38) = t31.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = t2.
        t39 = t40->get_filename( ).
        t37->clear_feba( i_filename = t39 ).
      ENDIF.
      DATA(t41) = abap_false.
      t33 = t41.
      t30 = t33.
    ENDIF.
    DATA t42 TYPE i.
    DATA(t43) = 0.
    t42 = t43.
    DO.
      DATA t44 TYPE abap_bool.
      DATA(t45) = t42.
      DATA t46 TYPE i.
      DATA(t47) = t1.
      t46 = lines( t47->items ).
      t44 = xsdbool( t45 < t46 ).
      IF t44 = abap_false.
        EXIT.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_statement_node.
      DATA t49 TYPE REF TO zcl_lnt_statement_node.
      DATA(t50) = t1.
      DATA(t51) = t42.
      t51 = t51 + 1.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      READ TABLE t50->items INDEX t51 INTO t52.
      t49 ?= t52.
      t48 = t49.
      DATA t53 TYPE REF TO zif_lnt_statement.
      DATA t54 TYPE REF TO zif_lnt_statement.
      DATA(t55) = t48.
      t54 = t55->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t53 = t54.
      DATA t56 TYPE abap_bool.
      DATA(t57) = t53.
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_define ).
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_abstract_token.
          DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t62) = t48.
          t61 = t62->get_tokens( ).
          DATA t63 TYPE REF TO object.
          CLEAR t63.
          READ TABLE t61->items INDEX 2 INTO t63.
          t60 ?= t63.
          t58 = t60.
        ELSE.
          DATA t64 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t64.
          t58 = t64.
        ENDIF.
        t11 = t58.
        DATA t65 TYPE REF TO zcl_lnt_position.
        CLEAR t65.
        DATA(t66) = abap_true.
        IF t66 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_position.
          DATA t68 TYPE REF TO zcl_lnt_abstract_token.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t70) = t48.
          t69 = t70->get_first_token( ).
          t68 = t69.
          DATA t71 TYPE REF TO zcl_lnt_position.
          DATA(t72) = t68.
          t71 = t72->start.
          t67 = t71.
          t65 = t67.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_position.
          CLEAR t73.
          t65 = t73.
        ENDIF.
        t13 = t65.
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t74.
        t15 = t74.
      ELSE.
        DATA t75 TYPE abap_bool.
        DATA(t76) = t53.
        t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_include ).
        IF t75 = abap_true.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          DATA t79 TYPE REF TO zcl_lnt_expression_node.
          DATA t80 TYPE REF TO zcl_lnt_expression_node.
          DATA(t81) = t48.
          DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d83_c58d804fe3d16b.
          t80 = t81->find_direct_expression( i_type_9913 = t82 ).
          t79 = t80.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = t79.
          IF t85 IS INITIAL.
            t84 = abap_true.
          ENDIF.
          IF t84 = abap_true.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t83 = t86.
          ELSE.
            DATA t87 TYPE string.
            DATA t88 TYPE REF TO zcl_lnt_expression_node.
            DATA(t89) = t79.
            t88 = t89.
            t87 = t88->concat_tokens( ).
            DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t90->has = abap_true.
            t90->value = t87.
            t83 = t90.
          ENDIF.
          t78 = t83.
          t77 = t78.
          DATA t91 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t91.
          DATA t92 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t92.
          DATA t93 TYPE REF TO zif_lnt_object.
          CLEAR t93.
          DATA t94 TYPE REF TO zif_lnt_registry.
          DATA(t95) = me->reg.
          t94 = t95.
          DATA t96 TYPE REF TO zif_lnt_object.
          CLEAR t96.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = t94.
          IF t98 IS INITIAL.
            t97 = abap_true.
          ENDIF.
          IF t97 = abap_true.
            DATA t99 TYPE REF TO zif_lnt_object.
            CLEAR t99.
            t96 = t99.
          ELSE.
            DATA t100 TYPE REF TO zif_lnt_object.
            CLEAR t100.
            DATA t101 TYPE REF TO zif_lnt_registry.
            DATA(t102) = t94.
            t101 = t102.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA(t104) = abap_true.
            IF t104 = abap_true.
              DATA(t105) = |PROG|.
              DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t106->has = abap_true.
              t106->value = t105.
              t103 = t106.
            ELSE.
              DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t107.
              t103 = t107.
            ENDIF.
            DATA(t108) = t77.
            t100 = t101->get_object( i_type_9913 = t103 i_name = t108 ).
            t96 = t100.
          ENDIF.
          t93 = t96.
          DATA t109 TYPE REF TO object.
          t109 = t93.
          t92 ?= t109.
          t91 = t92.
          DATA t110 TYPE abap_bool.
          DATA(t111) = t91.
          t110 = xsdbool( t111 IS BOUND ).
          IF t110 = abap_true.
            DATA t112 TYPE REF TO zcl_lnt_iparse_result.
            CLEAR t112.
            DATA t113 TYPE REF TO zcl_lnt_ob_program.
            DATA(t114) = t91.
            t113 = t114.
            DATA t115 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t115.
            DATA(t116) = abap_true.
            IF t116 = abap_true.
              DATA(t117) = me->release_3664.
              t115 = t117.
            ELSE.
              DATA t118 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t118.
              t115 = t118.
            ENDIF.
            DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t119.
            DATA(t120) = abap_true.
            IF t120 = abap_true.
              DATA(t121) = me->global_macros.
              t119 = t121.
            ELSE.
              DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t122.
              t119 = t122.
            ENDIF.
            DATA(t123) = me->reg.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            DATA(t125) = abap_true.
            IF t125 = abap_true.
              DATA(t126) = CONV string( me->language_version ).
              DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t127->has = abap_true.
              t127->value = t126.
              t124 = t127.
            ELSE.
              DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t128.
              t124 = t128.
            ENDIF.
            t112 = t113->parse( i_release_7928 = t115 i_global_macros_5535 = t119 i_reg_f149 = t123 i_language_version_0e1d = t124 ).
            DATA t129 TYPE REF TO zcl_lnt_abap_file.
            DATA t130 TYPE REF TO zcl_lnt_abap_file.
            DATA t131 TYPE REF TO zcl_lnt_ob_program.
            DATA(t132) = t91.
            t131 = t132.
            t130 = t131->get_main_abap_file( ).
            t129 = t130.
            DATA t133 TYPE abap_bool.
            DATA(t134) = t129.
            t133 = xsdbool( t134 IS BOUND ).
            IF t133 = abap_true.
              DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t137.
              t136 = t137.
              DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t140) = t136.
              DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t142 TYPE REF TO zcl_lnt_abap_file.
              DATA t143 TYPE REF TO zcl_lnt_abap_file.
              DATA(t144) = t129.
              t143 = t144.
              t142 = t143.
              DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t146) = t142.
              t145 = t146->statements.
              t141 = t145.
              t139 = t140->concat( p0 = t141 ).
              t138 = t139.
              DATA(t147) = t138.
              t135 = t147.
              DATA t148 TYPE REF TO zcl_lnt_abap_file.
              DATA(t149) = t129.
              t148 = t149.
              DATA t150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t150.
              DATA(t151) = abap_true.
              IF t151 = abap_true.
                DATA(t152) = abap_false.
                DATA(t153) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t153->has = abap_true.
                t153->value = t152.
                t150 = t153.
              ELSE.
                DATA t154 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t154.
                t150 = t154.
              ENDIF.
              me->find_8f95( i_statements = t135 i_file = t148 i_clear_b22e = t150 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA t155 TYPE abap_bool.
          DATA(t156) = t11.
          t155 = xsdbool( t156 IS BOUND ).
          IF t155 = abap_true.
            DATA t157 TYPE abap_bool.
            DATA(t158) = t53.
            t157 = xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_end_of_definition ).
            IF t157 = abap_true.
              DATA(t159) = me->macros.
              DATA t160 TYPE string.
              DATA t161 TYPE REF TO zcl_lnt_abstract_token.
              DATA t162 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t163) = t11.
              t162 = t163.
              t161 = t162.
              DATA t164 TYPE string.
              DATA(t165) = t161.
              t164 = t165->str.
              t160 = t164.
              DATA(t166) = t15.
              DATA t167 TYPE string.
              DATA(t168) = t2.
              t167 = t168->get_filename( ).
              t159->add_macro( i_name = t160 i_contents = t166 i_filename = t167 ).
              DATA(t169) = VALUE abap_bool( ).
              DATA t170 TYPE REF TO zif_lnt_macro_references.
              DATA(t171) = t17.
              t170 = t171.
              DATA(t172) = VALUE abap_bool( ).
              DATA(t173) = VALUE abap_bool( ).
              DATA(t174) = VALUE abap_bool( ).
              DATA(t175) = t170.
              IF t175 IS INITIAL.
                t174 = abap_true.
              ENDIF.
              t173 = xsdbool( t174 = abap_false ).
              IF t173 = abap_true.
                DATA t176 TYPE REF TO zif_lnt_macro_references.
                DATA(t177) = t170.
                t176 = t177.
                DATA t178 TYPE REF TO zcl_lnt_ifilename_and_token.
                DATA t179 TYPE string.
                DATA(t180) = t2.
                t179 = t180->get_filename( ).
                DATA t181 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t182) = t11.
                t181 = t182.
                t178 = NEW zcl_lnt_ifilename_and_token( i_filename = t179 i_token = t181 ).
                DATA t183 TYPE REF TO zcl_lnt_position.
                DATA(t184) = t13.
                t183 = t184.
                DATA t185 TYPE REF TO zcl_lnt_position.
                CLEAR t185.
                DATA t186 TYPE REF TO zcl_lnt_abstract_token.
                DATA t187 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t188) = t48.
                t187 = t188->get_last_token( ).
                t186 = t187.
                DATA t189 TYPE REF TO zcl_lnt_position.
                CLEAR t189.
                DATA t190 TYPE int8.
                DATA t191 TYPE REF TO zcl_lnt_position.
                DATA t192 TYPE REF TO zcl_lnt_position.
                DATA(t193) = t186.
                t192 = t193->start.
                t191 = t192.
                DATA t194 TYPE int8.
                DATA(t195) = t191.
                t194 = t195->row.
                t190 = t194.
                DATA t196 TYPE int8.
                DATA t197 TYPE int8.
                DATA t198 TYPE REF TO zcl_lnt_position.
                DATA t199 TYPE REF TO zcl_lnt_position.
                DATA(t200) = t186.
                t199 = t200->start.
                t198 = t199.
                DATA t201 TYPE int8.
                DATA(t202) = t198.
                t201 = t202->col.
                t197 = t201.
                DATA t203 TYPE int8.
                DATA t204 TYPE i.
                DATA t205 TYPE string.
                DATA(t206) = t186.
                t205 = t206->str.
                DATA(t207) = strlen( t205 ).
                t204 = t207.
                t203 = t204.
                t196 = t197 + t203.
                IF t196 < range_int8_bound_min OR t196 > range_int8_bound_max.
                  RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                ENDIF.
                t189 = NEW zcl_lnt_position( i_row = t190 i_col = t196 ).
                t185 = t189.
                t176->add_definition( i_ref = t178 i_start = t183 i_end = t185 ).
              ENDIF.
              DATA(t208) = abap_false.
              t172 = t208.
              t169 = t172.
              DATA t209 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t209.
              t11 = t209.
            ELSE.
              DATA t210 TYPE abap_bool.
              DATA t211 TYPE abap_bool.
              DATA(t212) = t53.
              t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_st_comment ).
              t210 = xsdbool( t211 = abap_false ).
              IF t210 = abap_true.
                DATA(t213) = t1.
                DATA(t214) = t42.
                DATA t215 TYPE REF TO zcl_lnt_statement_node.
                DATA t216 TYPE REF TO zcl_lnt_statement_node.
                DATA(t217) = NEW zcl_lnt_macro_content( ).
                DATA t218 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t218.
                DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t219.
                t216 = NEW zcl_lnt_statement_node( i_statement = t217 i_colon = t218 i_pragmas = t219 ).
                DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t222) = t48.
                t221 = t222->get_tokens( ).
                t220 = me->tokens_to_nodes( i_tokens = t221 ).
                t215 = t216->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t220 ).
                t214 = t214 + 1.
                DATA t223 TYPE REF TO object.
                CLEAR t223.
                CLEAR t223.
                WHILE lines( t213->items ) < t214.
                  APPEND t223 TO t213->items.
                ENDWHILE.
                MODIFY t213->items FROM t215 INDEX t214.
                DATA(t224) = t15.
                DATA t225 TYPE REF TO zcl_lnt_statement_node.
                DATA(t226) = t1.
                DATA(t227) = t42.
                t227 = t227 + 1.
                DATA t228 TYPE REF TO object.
                CLEAR t228.
                READ TABLE t226->items INDEX t227 INTO t228.
                t225 ?= t228.
                APPEND t225 TO t224->items.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t229 TYPE i.
      DATA(t230) = t42.
      DATA(t231) = 1.
      t229 = t230 + t231.
      t42 = t229.
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
    LOOP AT t25->items INTO t27.
      t26 ?= t27.
      DATA t28 TYPE REF TO zif_lnt_statement.
      DATA t29 TYPE REF TO zif_lnt_statement.
      DATA(t30) = t26.
      t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t28 = t29.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t28.
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_unknown ).
      t31 = t32.
      IF t32 = abap_false.
        DATA t34 TYPE abap_bool.
        DATA(t35) = t28.
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_macro_call ).
        t31 = t34.
      ENDIF.
      IF t31 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t39) = t26.
        t38 = t39->get_tokens( ).
        t37 = zcl_lnt_st_expand_macros=>find_name( i_tokens = t38 ).
        t36 = t37.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = t36.
        IF t42 IS BOUND.
          IF t42->has = abap_true.
            t41 = xsdbool( strlen( t42->value ) > 0 ).
          ENDIF.
        ENDIF.
        t40 = t41.
        IF t41 = abap_true.
          DATA(t43) = VALUE abap_bool( ).
          DATA t44 TYPE REF TO zcl_lnt_macros.
          DATA(t45) = me->macros.
          t44 = t45.
          DATA t46 TYPE string.
          DATA t47 TYPE string.
          DATA(t48) = t36.
          t47 = t48->value.
          t46 = t47.
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = VALUE abap_bool( ).
          DATA t51 TYPE REF TO zcl_lnt_shape_9d228663.
          CLEAR t51.
          DATA t52 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
          DATA(t53) = t44.
          t52 = t53->macros.
          DATA t54 TYPE string.
          DATA(t55) = t46.
          DATA(t56) = strlen( t55 ).
          t54 = t55.
          IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t54 TO UPPER CASE.
          ELSE.
            t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
          ENDIF.
          t51 = t52->get( p0 = t54 ).
          t50 = xsdbool( t51 IS BOUND ).
          IF t50 = abap_true.
            DATA(t57) = abap_true.
            t49 = t57.
          ELSE.
            DATA(t58) = abap_false.
            t49 = t58.
          ENDIF.
          t43 = t49.
          t40 = t43.
        ENDIF.
        IF t40 = abap_true.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t61) = me->macros.
          DATA t62 TYPE string.
          DATA(t63) = t36.
          t62 = t63->value.
          t60 = t61->get_macro_filename( i_name = t62 ).
          t59 = t60.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = t59.
          IF t65 IS BOUND.
            IF t65->has = abap_true.
              t64 = xsdbool( strlen( t65->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t64 = abap_true.
            DATA(t66) = VALUE abap_bool( ).
            DATA t67 TYPE REF TO zif_lnt_macro_references.
            DATA(t68) = t14.
            t67 = t68.
            DATA(t69) = VALUE abap_bool( ).
            DATA(t70) = VALUE abap_bool( ).
            DATA(t71) = VALUE abap_bool( ).
            DATA(t72) = t67.
            IF t72 IS INITIAL.
              t71 = abap_true.
            ENDIF.
            t70 = xsdbool( t71 = abap_false ).
            IF t70 = abap_true.
              DATA t73 TYPE REF TO zif_lnt_macro_references.
              DATA(t74) = t67.
              t73 = t74.
              DATA t75 TYPE REF TO zcl_lnt_ifilename_and_token.
              DATA t76 TYPE string.
              DATA(t77) = t59.
              t76 = t77->value.
              DATA t78 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t79) = t26.
              t78 = t79->get_first_token( ).
              t75 = NEW zcl_lnt_ifilename_and_token( i_filename = t76 i_token = t78 ).
              t73->add_reference( i_ref = t75 ).
            ENDIF.
            DATA(t80) = abap_false.
            t69 = t80.
            t66 = t69.
          ENDIF.
          DATA(t81) = t10.
          DATA t82 TYPE REF TO zcl_lnt_statement_node.
          DATA t83 TYPE REF TO zcl_lnt_statement_node.
          DATA(t84) = NEW zcl_lnt_macro_call( ).
          DATA t85 TYPE REF TO zcl_lnt_abstract_token.
          DATA t86 TYPE REF TO zcl_lnt_statement_node.
          DATA(t87) = t26.
          t86 = t87.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t89) = t86.
          t88 = t89->colon.
          t85 = t88.
          DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t90.
          t83 = NEW zcl_lnt_statement_node( i_statement = t84 i_colon = t85 i_pragmas = t90 ).
          DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t93) = t26.
          t92 = t93->get_tokens( ).
          t91 = me->tokens_to_nodes( i_tokens = t92 ).
          t82 = t83->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t91 ).
          APPEND t82 TO t81->items.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = VALUE abap_bool( ).
          DATA t96 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          DATA(t97) = t3.
          t96 = t97.
          DATA t98 TYPE string.
          DATA t99 TYPE string.
          DATA(t100) = t36.
          t99 = t100->value.
          DATA(t101) = strlen( t99 ).
          t98 = t99.
          IF t98 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t98 TO UPPER CASE.
          ELSE.
            t98 = zlnt_runtime_uppe_91169605024d=>full( t98 ).
          ENDIF.
          t95 = t96->has( p0 = t98 ).
          t94 = xsdbool( t95 = abap_false ).
          IF t94 = abap_true.
            DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t104 TYPE string.
            DATA(t105) = t36.
            t104 = t105->value.
            DATA(t106) = t26.
            t103 = me->expand_contents( i_name = t104 i_statement = t106 ).
            t102 = t103.
            DATA t107 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            CLEAR t107.
            DATA t108 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            CLEAR t108.
            DATA t109 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA t110 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t111) = t3.
            t110 = t111.
            DATA t112 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t113) = t3.
            t112 = t113.
            t109 = t110->copy( p0 = t112 ).
            DATA t114 TYPE string.
            DATA t115 TYPE string.
            DATA(t116) = t36.
            t115 = t116->value.
            DATA(t117) = strlen( t115 ).
            t114 = t115.
            IF t114 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t114 TO UPPER CASE.
            ELSE.
              t114 = zlnt_runtime_uppe_91169605024d=>full( t114 ).
            ENDIF.
            t108 = t109->add( p0 = t114 ).
            t107 = t108.
            DATA t118 TYPE REF TO zcl_lnt_shape_df3d0820.
            CLEAR t118.
            DATA t119 TYPE REF TO zcl_lnt_shape_df3d0820.
            CLEAR t119.
            DATA(t120) = t102.
            DATA(t121) = t2.
            DATA t122 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            CLEAR t122.
            DATA(t123) = abap_true.
            IF t123 = abap_true.
              DATA(t124) = t107.
              t122 = t124.
            ELSE.
              DATA t125 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              CLEAR t125.
              t122 = t125.
            ENDIF.
            t119 = me->handle_macros( i_statements = t120 i_file = t121 i_seen = t122 ).
            t118 = t119.
            DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t127) = t118.
            t126 = t127->statements.
            DATA t128 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t128.
            DATA t129 TYPE REF TO object.
            CLEAR t129.
            LOOP AT t126->items INTO t129.
              t128 ?= t129.
              DATA(t130) = t10.
              DATA(t131) = t128.
              APPEND t131 TO t130->items.
            ENDLOOP.
            DATA t132 TYPE abap_bool.
            DATA t133 TYPE abap_bool.
            DATA(t134) = t118.
            t133 = t134->contains_unknown.
            DATA(t135) = abap_true.
            t132 = xsdbool( t133 = t135 ).
            IF t132 = abap_true.
              DATA(t136) = abap_true.
              t12 = t136.
            ENDIF.
          ELSE.
            DATA t137 TYPE REF TO zcl_lnt_statement_node.
            DATA t138 TYPE REF TO zcl_lnt_statement_node.
            DATA(t139) = NEW zcl_lnt_macro_recursion( ).
            DATA t140 TYPE REF TO zcl_lnt_abstract_token.
            DATA t141 TYPE REF TO zcl_lnt_statement_node.
            DATA(t142) = t26.
            t141 = t142.
            DATA t143 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t144) = t141.
            t143 = t144->colon.
            t140 = t143.
            DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t145.
            t138 = NEW zcl_lnt_statement_node( i_statement = t139 i_colon = t140 i_pragmas = t145 ).
            t137 = t138.
            DATA(t146) = t10.
            DATA t147 TYPE REF TO zcl_lnt_statement_node.
            DATA(t148) = t137.
            DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t151) = t26.
            t150 = t151->get_tokens( ).
            t149 = me->tokens_to_nodes( i_tokens = t150 ).
            t147 = t148->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t149 ).
            APPEND t147 TO t146->items.
          ENDIF.
          CONTINUE.
        ELSE.
          DATA(t152) = abap_true.
          t12 = t152.
        ENDIF.
      ENDIF.
      DATA(t153) = t10.
      DATA(t154) = t26.
      APPEND t154 TO t153->items.
    ENDLOOP.
    DATA t155 TYPE REF TO zcl_lnt_shape_df3d0820.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t156.
    DATA(t157) = abap_true.
    IF t157 = abap_true.
      DATA(t158) = t10.
      t156 = t158.
    ELSE.
      DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t159.
      t156 = t159.
    ENDIF.
    DATA(t160) = t12.
    t155 = NEW zcl_lnt_shape_df3d0820( i_statements = t156 i_contains_unknown = t160 ).
    result = t155.

  ENDMETHOD.

  METHOD expand_contents.
    DATA(t1) = i_name.
    DATA(t2) = i_statement.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/2_statements/expand_macros.ts:182|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD build_input.
    DATA(t1) = i_statement.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/expand_macros.ts:214|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_name.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
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
    LOOP AT t6->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t4.
      t10 = xsdbool( t11 IS BOUND ).
      t9 = t10.
      IF t10 = abap_true.
        DATA(t12) = VALUE abap_bool( ).
        DATA t13 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t13.
        DATA t14 TYPE REF TO zcl_lnt_position.
        CLEAR t14.
        DATA t15 TYPE REF TO zcl_lnt_position.
        CLEAR t15.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t18) = t4.
        t17 = t18.
        t16 = t17.
        DATA t19 TYPE REF TO zcl_lnt_position.
        CLEAR t19.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = t16.
        IF t21 IS INITIAL.
          t20 = abap_true.
        ENDIF.
        IF t20 = abap_true.
          DATA t22 TYPE REF TO zcl_lnt_position.
          CLEAR t22.
          t19 = t22.
        ELSE.
          DATA t23 TYPE REF TO zcl_lnt_position.
          CLEAR t23.
          DATA t24 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t25) = t16.
          t24 = t25.
          DATA t26 TYPE REF TO zcl_lnt_position.
          CLEAR t26.
          DATA t27 TYPE int8.
          DATA t28 TYPE REF TO zcl_lnt_position.
          DATA t29 TYPE REF TO zcl_lnt_position.
          DATA(t30) = t24.
          t29 = t30->start.
          t28 = t29.
          DATA t31 TYPE int8.
          DATA(t32) = t28.
          t31 = t32->row.
          t27 = t31.
          DATA t33 TYPE int8.
          DATA t34 TYPE int8.
          DATA t35 TYPE REF TO zcl_lnt_position.
          DATA t36 TYPE REF TO zcl_lnt_position.
          DATA(t37) = t24.
          t36 = t37->start.
          t35 = t36.
          DATA t38 TYPE int8.
          DATA(t39) = t35.
          t38 = t39->col.
          t34 = t38.
          DATA t40 TYPE int8.
          DATA t41 TYPE i.
          DATA t42 TYPE string.
          DATA(t43) = t24.
          t42 = t43->str.
          DATA(t44) = strlen( t42 ).
          t41 = t44.
          t40 = t41.
          t33 = t34 + t40.
          IF t33 < range_int8_bound_min OR t33 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t26 = NEW zcl_lnt_position( i_row = t27 i_col = t33 ).
          t23 = t26.
          t19 = t23.
        ENDIF.
        t15 = t19.
        t14 = t15.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t14.
        IF t47 IS INITIAL.
          t46 = abap_true.
        ENDIF.
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t48.
          t45 = t48.
        ELSE.
          DATA t49 TYPE int8.
          DATA t50 TYPE REF TO zcl_lnt_position.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t14.
          t51 = t52.
          t50 = t51.
          DATA t53 TYPE int8.
          DATA(t54) = t50.
          t53 = t54->col.
          t49 = t53.
          DATA(t55) = NEW zlnt_runtime_opti_4a236cd5714d( ).
          t55->has = abap_true.
          t55->value = t49.
          t45 = t55.
        ENDIF.
        t13 = t45.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE int8.
          DATA t59 TYPE REF TO zcl_lnt_position.
          DATA t60 TYPE REF TO zcl_lnt_position.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t62) = t7.
          t61 = t62.
          DATA t63 TYPE REF TO zcl_lnt_position.
          DATA(t64) = t61.
          t63 = t64->start.
          t60 = t63.
          t59 = t60.
          DATA t65 TYPE int8.
          DATA(t66) = t59.
          t65 = t66->col.
          t58 = t65.
          DATA(t67) = NEW zlnt_runtime_opti_4a236cd5714d( ).
          t67->has = abap_true.
          t67->value = t58.
          t56 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t68.
          t56 = t68.
        ENDIF.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = VALUE abap_bool( ).
        IF t13 IS BOUND.
          t69 = t13->has.
        ENDIF.
        IF t56 IS BOUND.
          t70 = t56->has.
        ENDIF.
        IF t69 = t70.
          IF t69 = abap_false.
            t12 = abap_true.
          ELSEIF t13->value = t56->value.
            t12 = abap_true.
          ENDIF.
        ENDIF.
        IF t12 = abap_true.
          t12 = abap_false.
        ELSE.
          t12 = abap_true.
        ENDIF.
        t9 = t12.
      ENDIF.
      IF t9 = abap_true.
        EXIT.
      ELSE.
        DATA t71 TYPE abap_bool.
        DATA t72 TYPE abap_bool.
        DATA(t73) = t7.
        t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_lx_identifier ).
        t71 = t72.
        IF t72 = abap_false.
          DATA t74 TYPE abap_bool.
          DATA t75 TYPE string.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t77) = t7.
          t76 = t77.
          DATA t78 TYPE string.
          DATA(t79) = t76.
          t78 = t79->str.
          t75 = t78.
          DATA(t80) = |-|.
          t74 = xsdbool( t75 = t80 ).
          t71 = t74.
        ENDIF.
        IF t71 = abap_true.
          DATA(t81) = VALUE abap_bool( ).
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t83) = t2.
          t82 = t83.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          t84 = t85.
          DATA(t86) = VALUE abap_bool( ).
          DATA(t87) = t82.
          IF t87 IS INITIAL.
            t86 = abap_true.
          ELSEIF t87->has = abap_false.
            t86 = abap_true.
          ENDIF.
          t81 = t86.
          IF t81 = abap_true.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA(t89) = abap_true.
            IF t89 = abap_true.
              DATA t90 TYPE string.
              DATA t91 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t92) = t7.
              t91 = t92.
              DATA t93 TYPE string.
              DATA(t94) = t91.
              t93 = t94->str.
              t90 = t93.
              DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t95->has = abap_true.
              t95->value = t90.
              t88 = t95.
            ELSE.
              DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t96.
              t88 = t96.
            ENDIF.
            t2 = t88.
          ELSE.
            DATA t97 TYPE string.
            DATA t98 TYPE string.
            DATA(t99) = t2.
            t98 = t99->value.
            DATA t100 TYPE string.
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t102) = t7.
            t101 = t102.
            DATA t103 TYPE string.
            DATA(t104) = t101.
            t103 = t104->str.
            t100 = t103.
            DATA(t105) = strlen( t98 ).
            t97 = |{ t98 }{ t100 }|.
            DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t106->has = abap_true.
            t106->value = t97.
            t2 = t106.
          ENDIF.
        ELSE.
          DATA t107 TYPE abap_bool.
          DATA(t108) = t7.
          t107 = xsdbool( t108 IS BOUND AND t108 IS INSTANCE OF zcl_lnt_pragma ).
          IF t107 = abap_true.
            CONTINUE.
          ELSE.
            EXIT.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t109.
      DATA(t110) = abap_true.
      IF t110 = abap_true.
        DATA(t111) = t7.
        t109 = t111.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t112.
        t109 = t112.
      ENDIF.
      t4 = t109.
    ENDLOOP.
    DATA(t113) = t2.
    result = t113.

  ENDMETHOD.

  METHOD tokens_to_nodes.
    DATA(t1) = i_tokens.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/expand_macros.ts:268|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD tokens_to_nodes_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    APPEND t7 TO t6->items.
    DATA(t8) = t4.
    t3 = t8.
    t2 = me->tokens_to_nodes( i_tokens = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d84_6c3754131a0578.
  ENDMETHOD.
ENDCLASS.
